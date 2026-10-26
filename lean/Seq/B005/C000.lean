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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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

/-! ## A038815.P659222631407016470

`A038814(10*(n+1))`
-/

namespace A038815.P659222631407016470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038814 (10 * (n + 1))

end

end A038815.P659222631407016470

noncomputable section

/-- A038815: Number of primes less than n*10^6.

Offset 1, canonical program `A038815.P659222631407016470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038815 (n : ℕ) : ℤ :=
  A038815.P659222631407016470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055230.P2629812307315848114

`gcd(A055071(n+1), A055204(n+1))`
-/

namespace A055230.P2629812307315848114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055071 (n + 1)) (A055204 (n + 1))

end

end A055230.P2629812307315848114

noncomputable section

/-- A055230: Greatest common divisor of largest square dividing n! and squarefree part of n!.

Offset 1, canonical program `A055230.P2629812307315848114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055230 (n : ℕ) : ℤ :=
  (A055230.P2629812307315848114.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056043.P13365125051087703237

`A055772(n+1)/A081123(n+1)`
-/

namespace A056043.P13365125051087703237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055772 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A056043.P13365125051087703237

noncomputable section

/-- A056043: Let k be largest number such that k^2 divides n!; a(n) = k/floor(n/2)!.

Offset 1, canonical program `A056043.P13365125051087703237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056043.P13365125051087703237.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065887.P4570226576753041376

`sqrt(A065886(n))`
-/

namespace A065887.P4570226576753041376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065886 n : ℝ)

end

end A065887.P4570226576753041376

noncomputable section

/-- A065887: Smallest number whose square is divisible by n!.

Offset 0, canonical program `A065887.P4570226576753041376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065887 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065887.P4570226576753041376.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103895.P2049527979397506863

`A000203(A103890(n+1))`
-/

namespace A103895.P2049527979397506863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A103890 (n + 1)).toNat

end

end A103895.P2049527979397506863

noncomputable section

/-- A103895: Sum of divisors of prime(n)! / prime(n)# + 1.

Offset 1, canonical program `A103895.P2049527979397506863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103895 (n : ℕ) : ℤ :=
  A103895.P2049527979397506863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116568.P1270163907824059920

`n+1-abs(A097454(n+1))`
-/

namespace A116568.P1270163907824059920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A097454 (n + 1)|

end

end A116568.P1270163907824059920

noncomputable section

/-- A116568: Difference between n and the absolute value of the difference between number of nonprimes not exceeding n and number of primes not exceeding n.

Offset 1, canonical program `A116568.P1270163907824059920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116568 (n : ℕ) : ℤ :=
  A116568.P1270163907824059920.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007413.P5220170299432131247

`4-A036585(n+1)`
-/

namespace A007413.P5220170299432131247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A036585 (n + 1)

end

end A007413.P5220170299432131247

noncomputable section

/-- A007413: A squarefree (or Thue-Morse) ternary sequence: closed under 1->123, 2->13, 3->2. Start with 1.

Offset 1, canonical program `A007413.P5220170299432131247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413 (n : ℕ) : ℤ :=
  A007413.P5220170299432131247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020985.P937884151096334327

`(-1)^A014081(n)`
-/

namespace A020985.P937884151096334327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014081 n : ℤ)

end

end A020985.P937884151096334327

noncomputable section

/-- A020985: The Rudin-Shapiro or Golay-Rudin-Shapiro sequence (coefficients of the Shapiro polynomials).

Offset 0, canonical program `A020985.P937884151096334327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020985.P937884151096334327.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033265.P2197321529465223578

`A014081(n+1)+A023416(n+1)`
-/

namespace A033265.P2197321529465223578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + A023416 (n + 1)

end

end A033265.P2197321529465223578

noncomputable section

/-- A033265: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A033265.P2197321529465223578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265 (n : ℕ) : ℤ :=
  A033265.P2197321529465223578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039622.P10330240831742726338

`A088020(n)/A107254(n)`
-/

namespace A039622.P10330240831742726338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088020 n : ℚ) / (A107254 n : ℚ)

end

end A039622.P10330240831742726338

noncomputable section

/-- A039622: Number of n X n Young tableaux.

Offset 0, canonical program `A039622.P10330240831742726338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A039622.P10330240831742726338.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055941.P14455058881262499734

`A161511(n)-A000120(n)`
-/

namespace A055941.P14455058881262499734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 n - A000120 n

end

end A055941.P14455058881262499734

noncomputable section

/-- A055941: a(n) = Sum_{j=0..k-1} (i(j) - j) where n = Sum_{j=0..k-1} 2^i(j).

Offset 0, canonical program `A055941.P14455058881262499734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941 (n : ℕ) : ℤ :=
  A055941.P14455058881262499734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055941.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A056973.P10216103084788388741

`A023416(n+1)-A033264(n+1)`
-/

namespace A056973.P10216103084788388741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A033264 (n + 1)

end

end A056973.P10216103084788388741

noncomputable section

/-- A056973: Number of blocks of {0,0} in the binary expansion of n.

Offset 1, canonical program `A056973.P10216103084788388741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056973 (n : ℕ) : ℤ :=
  A056973.P10216103084788388741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064106.P240912047226861259

`A064105(n+1)+A202342(n+1)`
-/

namespace A064106.P240912047226861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + A202342 (n + 1)

end

end A064106.P240912047226861259

noncomputable section

/-- A064106: 3rd column of 3rd-order Zeckendorf array A136189.

Offset 1, canonical program `A064106.P240912047226861259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106 (n : ℕ) : ℤ :=
  A064106.P240912047226861259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096351.P17769226119472261959

`(n+1)!/2^A268289(n)`
-/

namespace A096351.P17769226119472261959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (2 : ℚ) ^ (A268289 n : ℤ)

end

end A096351.P17769226119472261959

noncomputable section

/-- A096351: Number of meaningfully different ways to design a neutral single-elimination tournament with n teams.

Offset 1, canonical program `A096351.P17769226119472261959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096351.P17769226119472261959.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101651.P2336243589466442413

`2^A245710(n)`
-/

namespace A101651.P2336243589466442413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A245710 n : ℤ)

end

end A101651.P2336243589466442413

noncomputable section

/-- A101651: a(n) = Product_{k=0..n} (1 + 0^A010060(k))/2.

Offset 0, canonical program `A101651.P2336243589466442413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101651.P2336243589466442413.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023506.P8238075321002430413

`A007814(A006093(n+1))`
-/

namespace A023506.P8238075321002430413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006093 (n + 1)).toNat

end

end A023506.P8238075321002430413

noncomputable section

/-- A023506: Exponent of 2 in prime factorization of prime(n) - 1.

Offset 1, canonical program `A023506.P8238075321002430413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023506 (n : ℕ) : ℤ :=
  A023506.P8238075321002430413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023512.P10956487217838497278

`A007814(A008864(n+1))`
-/

namespace A023512.P10956487217838497278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008864 (n + 1)).toNat

end

end A023512.P10956487217838497278

noncomputable section

/-- A023512: Exponent of 2 in prime factorization of prime(n) + 1.

Offset 1, canonical program `A023512.P10956487217838497278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023512 (n : ℕ) : ℤ :=
  A023512.P10956487217838497278.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023579.P9595567503422635053

`A007814(A113935(n+1))`
-/

namespace A023579.P9595567503422635053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A113935 (n + 1)).toNat

end

end A023579.P9595567503422635053

noncomputable section

/-- A023579: Exponent of 2 in prime factorization of prime(n)+3.

Offset 1, canonical program `A023579.P9595567503422635053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023579 (n : ℕ) : ℤ :=
  A023579.P9595567503422635053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037227.P1481052513991100259

`2*A007814(n+1)+1`
-/

namespace A037227.P1481052513991100259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 1

end

end A037227.P1481052513991100259

noncomputable section

/-- A037227: If n = 2^m*k, k odd, then a(n) = 2*m+1.

Offset 1, canonical program `A037227.P1481052513991100259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227 (n : ℕ) : ℤ :=
  A037227.P1481052513991100259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039963.P7442074612233397869

`A035263(1+floor(n/2))`
-/

namespace A039963.P7442074612233397869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (1 + ⌊(n : ℚ) / 2⌋).toNat

end

end A039963.P7442074612233397869

noncomputable section

/-- A039963: The period-doubling sequence A035263 repeated.

Offset 0, canonical program `A039963.P7442074612233397869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963 (n : ℕ) : ℤ :=
  A039963.P7442074612233397869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050603.P12712608073834541420

`A007814(n+1)+A007814(n+2)`
-/

namespace A050603.P12712608073834541420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2)

end

end A050603.P12712608073834541420

noncomputable section

/-- A050603: A001511 with every term repeated.

Offset 0, canonical program `A050603.P12712608073834541420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603 (n : ℕ) : ℤ :=
  A050603.P12712608073834541420.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050605.P11206776989193119858

`A007814(n+1)+A007814(n+2)-1`
-/

namespace A050605.P11206776989193119858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) - 1

end

end A050605.P11206776989193119858

noncomputable section

/-- A050605: Column/row 2 of A050602: a(n) = add3c(n,2).

Offset 0, canonical program `A050605.P11206776989193119858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605 (n : ℕ) : ℤ :=
  A050605.P11206776989193119858.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`
-/

namespace A054272.P16500536369367462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2

end

end A054272.P16500536369367462355

noncomputable section

/-- A054272: Number of primes in the interval [prime(n), prime(n)^2].

Offset 1, canonical program `A054272.P16500536369367462355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054272 (n : ℕ) : ℤ :=
  A054272.P16500536369367462355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056832.P3449662837231089589

`2-A035263(n+1)`
-/

namespace A056832.P3449662837231089589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035263 (n + 1)

end

end A056832.P3449662837231089589

noncomputable section

/-- A056832: All a(n) = 1 or 2; a(1) = 1; get next 2^k terms by repeating first 2^k terms and changing last element so sum of first 2^(k+1) terms is odd.

Offset 1, canonical program `A056832.P3449662837231089589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832 (n : ℕ) : ℤ :=
  A056832.P3449662837231089589.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059132.P10830951508121782954

`4+6*A007814(n+1)`
-/

namespace A059132.P10830951508121782954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 6 * A007814 (n + 1)

end

end A059132.P10830951508121782954

noncomputable section

/-- A059132: A hierarchical sequence (W2{2}c - see A059126).

Offset 0, canonical program `A059132.P10830951508121782954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132 (n : ℕ) : ℤ :=
  A059132.P10830951508121782954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059139.P8007015464797935688

`4+3*A007814(n+1)`
-/

namespace A059139.P8007015464797935688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 3 * A007814 (n + 1)

end

end A059139.P8007015464797935688

noncomputable section

/-- A059139: A hierarchical sequence (W2{2}*c - see A059126).

Offset 0, canonical program `A059139.P8007015464797935688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139 (n : ℕ) : ℤ :=
  A059139.P8007015464797935688.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059152.P1141809837012285539

`4*4^A007814(n+1)`
-/

namespace A059152.P1141809837012285539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (4 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059152.P1141809837012285539

noncomputable section

/-- A059152: A hierarchical sequence (W'2{2}c - see A059126).

Offset 0, canonical program `A059152.P1141809837012285539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059152.P1141809837012285539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059154.P4388372018061316421

`12*8^A007814(n+1)`
-/

namespace A059154.P4388372018061316421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * (8 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059154.P4388372018061316421

noncomputable section

/-- A059154: A hierarchical sequence (W'2{3}c - see A059126).

Offset 0, canonical program `A059154.P4388372018061316421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059154.P4388372018061316421.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059157.P6751361432800768077

`24*16^A007814(n+1)`
-/

namespace A059157.P6751361432800768077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (16 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A059157.P6751361432800768077

noncomputable section

/-- A059157: A hierarchical sequence (W'3{2,2}cc - see A059126).

Offset 0, canonical program `A059157.P6751361432800768077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059157.P6751361432800768077.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064614.P2027219799619674142

`A065330(n+1)*2^A007949(n+1)*3^A007814(n+1)`
-/

namespace A064614.P2027219799619674142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065330 (n + 1) : ℚ) * (2 : ℚ) ^ (A007949 (n + 1) : ℤ) * (3 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A064614.P2027219799619674142

noncomputable section

/-- A064614: Exchange 2 and 3 in the prime factorization of n.

Offset 1, canonical program `A064614.P2027219799619674142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064614.P2027219799619674142.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065040.P314453470668768770

`A007814(A007318(n))`
-/

namespace A065040.P314453470668768770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007318 n).toNat

end

end A065040.P314453470668768770

noncomputable section

/-- A065040: Triangle read by rows: T(m,k) = exponent of the highest power of 2 dividing the binomial coefficient binomial(m,k).

Offset 0, canonical program `A065040.P314453470668768770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065040 (n : ℕ) : ℤ :=
  A065040.P314453470668768770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070046.P5794988103684771228

`A063124(n+1)-1`
-/

namespace A070046.P5794988103684771228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1) - 1

end

end A070046.P5794988103684771228

noncomputable section

/-- A070046: Number of primes between prime(n) and 2*prime(n) exclusive.

Offset 1, canonical program `A070046.P5794988103684771228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070046 (n : ℕ) : ℤ :=
  A070046.P5794988103684771228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072078.P15683580229449578343

`(A007814(n+1)+1)*(A007949(n+1)+1)`
-/

namespace A072078.P15683580229449578343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * (A007949 (n + 1) + 1)

end

end A072078.P15683580229449578343

noncomputable section

/-- A072078: Number of 3-smooth divisors of n.

Offset 1, canonical program `A072078.P15683580229449578343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078 (n : ℕ) : ℤ :=
  A072078.P15683580229449578343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078734.P4094134609094270230

`1+A010872(A007814(n+1))`
-/

namespace A078734.P4094134609094270230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A010872 (A007814 (n + 1)).toNat

end

end A078734.P4094134609094270230

noncomputable section

/-- A078734: Start with 1,2, concatenate 2^k previous terms and change last term as follows: 1->2, 2->3, 3->1.

Offset 1, canonical program `A078734.P4094134609094270230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734 (n : ℕ) : ℤ :=
  A078734.P4094134609094270230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080791.P6131873509789506769

`a(n-1)+A007814(n)+A036987(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A080791.P6131873509789506769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A007814 n + A036987 (n - 1) - 1

end

end A080791.P6131873509789506769

noncomputable section

/-- A080791: Number of nonleading 0's in binary expansion of n.

Offset 0, canonical program `A080791.P6131873509789506769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791 (n : ℕ) : ℤ :=
  A080791.P6131873509789506769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084623.P2915288955471641731

`2^(n-A007814(n+1))`
-/

namespace A084623.P2915288955471641731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A007814 (n + 1) : ℤ)

end

end A084623.P2915288955471641731

noncomputable section

/-- A084623: Numerator of 2^(n-1)/n.

Offset 1, canonical program `A084623.P2915288955471641731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084623.P2915288955471641731.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085060.P3128455452568235012

`(3/2)^A085058(n)*(2*n+2)-3/2`
-/

namespace A085060.P3128455452568235012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ (A085058 n : ℤ) * (2 * n + 2 : ℚ) - (3 : ℚ) / 2

end

end A085060.P3128455452568235012

noncomputable section

/-- A085060: Integer reached in A085058.

Offset 0, canonical program `A085060.P3128455452568235012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085060.P3128455452568235012.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085296.P17068606846671607086

`(9*3^A007814(n+1)-1)/2-1`
-/

namespace A085296.P17068606846671607086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (3 : ℚ) ^ (A007814 (n + 1) : ℤ) - 1) / 2 - 1

end

end A085296.P17068606846671607086

noncomputable section

/-- A085296: Runs of zeros in Catalan sequence modulo 3: consecutive occurrences of binomial(2*k,k)/(k+1) == 0 (mod 3).

Offset 1, canonical program `A085296.P17068606846671607086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085296.P17068606846671607086.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087229.P9926633542854857690

`A007814(A017569(n))`
-/

namespace A087229.P9926633542854857690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A017569 n).toNat

end

end A087229.P9926633542854857690

noncomputable section

/-- A087229: Exponent of p=2 in 12n+4 = 3(4n+1)+1.

Offset 0, canonical program `A087229.P9926633542854857690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229 (n : ℕ) : ℤ :=
  A087229.P9926633542854857690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087230.P12877807738838144473

`A007814(A016957(n))`
-/

namespace A087230.P12877807738838144473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A016957 n).toNat

end

end A087230.P12877807738838144473

noncomputable section

/-- A087230: a(n) is the 2-adic valuation of 6*n + 4.

Offset 0, canonical program `A087230.P12877807738838144473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230 (n : ℕ) : ℤ :=
  A087230.P12877807738838144473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088840.P2952349459098341905

`A213243(A007814(n+1)+1)`
-/

namespace A088840.P2952349459098341905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (A007814 (n + 1) + 1).toNat

end

end A088840.P2952349459098341905

noncomputable section

/-- A088840: Denominator of sigma(4n)/sigma(n).

Offset 1, canonical program `A088840.P2952349459098341905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840 (n : ℕ) : ℤ :=
  A088840.P2952349459098341905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089265.P11891266049107648867

`A007814(n+1)+2*A025480(n)`
-/

namespace A089265.P11891266049107648867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 2 * A025480 n

end

end A089265.P11891266049107648867

noncomputable section

/-- A089265: a(1) = 0; thereafter a(2*n) = a(n) + 1, a(2*n+1) = 2*n.

Offset 1, canonical program `A089265.P11891266049107648867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265 (n : ℕ) : ℤ :=
  A089265.P11891266049107648867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089608.P1685059396836438671

`5-4*A035263(n+1)`
-/

namespace A089608.P1685059396836438671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A035263 (n + 1)

end

end A089608.P1685059396836438671

noncomputable section

/-- A089608: a(n) = ((-1)^(n+1)*A002425(n)) modulo 6.

Offset 1, canonical program `A089608.P1685059396836438671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608 (n : ℕ) : ℤ :=
  A089608.P1685059396836438671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090739.P11795774143711516918

`A007814(n+1)+3`
-/

namespace A090739.P11795774143711516918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 3

end

end A090739.P11795774143711516918

noncomputable section

/-- A090739: Exponent of 2 in 9^n - 1.

Offset 1, canonical program `A090739.P11795774143711516918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739 (n : ℕ) : ℤ :=
  A090739.P11795774143711516918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090740.P6461673759266152283

`A007814(n+1)+A059841(n+1)+1`
-/

namespace A090740.P6461673759266152283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A059841 (n + 1) + 1

end

end A090740.P6461673759266152283

noncomputable section

/-- A090740: Exponent of 2 in 3^n - 1.

Offset 1, canonical program `A090740.P6461673759266152283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740 (n : ℕ) : ℤ :=
  A090740.P6461673759266152283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091512.P12959083986982032109

`A069895(n+1)/2`
-/

namespace A091512.P12959083986982032109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069895 (n + 1) : ℚ) / 2

end

end A091512.P12959083986982032109

noncomputable section

/-- A091512: a(n) is the largest integer m such that 2^m divides (2*n)^n, i.e., the exponent of 2 in (2*n)^n.

Offset 1, canonical program `A091512.P12959083986982032109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091512.P12959083986982032109.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096268.P10327595005272142114

`1-A035263(n+1)`
-/

namespace A096268.P10327595005272142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (n + 1)

end

end A096268.P10327595005272142114

noncomputable section

/-- A096268: Period-doubling sequence (or period-doubling word): fixed point of the morphism 0 -> 01, 1 -> 00.

Offset 0, canonical program `A096268.P10327595005272142114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268 (n : ℕ) : ℤ :=
  A096268.P10327595005272142114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096271.P6013698454028657699

`A007814(n+1)%3`
-/

namespace A096271.P6013698454028657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 3

end

end A096271.P6013698454028657699

noncomputable section

/-- A096271: Ternary sequence that is a fixed point of the morphism 0 -> 01, 1 -> 02, 2 -> 00.

Offset 0, canonical program `A096271.P6013698454028657699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096271 (n : ℕ) : ℤ :=
  A096271.P6013698454028657699.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128474.P6134518486314641698

`A007814(n+3)+A011371(n)`
-/

namespace A128474.P6134518486314641698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 3) + A011371 n

end

end A128474.P6134518486314641698

noncomputable section

/-- A128474: Largest number k such that 2^k divides n*(n-3)!.

Offset 3, canonical program `A128474.P6134518486314641698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474 (n : ℕ) : ℤ :=
  A128474.P6134518486314641698.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129628.P17919949017180811330

`A115364(n+1)*A001227(n+1)`
-/

namespace A129628.P17919949017180811330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (n + 1) * A001227 (n + 1)

end

end A129628.P17919949017180811330

noncomputable section

/-- A129628: Inverse Moebius transform of A001511.

Offset 1, canonical program `A129628.P17919949017180811330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628 (n : ℕ) : ℤ :=
  A129628.P17919949017180811330.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132741.P5410821295142061741

`2^A007814(n+1)*5^A112765(n+1)`
-/

namespace A132741.P5410821295142061741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A132741.P5410821295142061741

noncomputable section

/-- A132741: Largest divisor of n having the form 2^i*5^j.

Offset 1, canonical program `A132741.P5410821295142061741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132741.P5410821295142061741.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133539.P3067376241285040569

`A133525(n+1)+A030078(n+5)`
-/

namespace A133539.P3067376241285040569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) + A030078 (n + 5)

end

end A133539.P3067376241285040569

noncomputable section

/-- A133539: Sum of third powers of five consecutive primes.

Offset 1, canonical program `A133539.P3067376241285040569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133539 (n : ℕ) : ℤ :=
  A133539.P3067376241285040569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133540.P13751763277394668418

`A133526(n+1)+A030514(n+5)`
-/

namespace A133540.P13751763277394668418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) + A030514 (n + 5)

end

end A133540.P13751763277394668418

noncomputable section

/-- A133540: Sum of fourth powers of five consecutive primes.

Offset 1, canonical program `A133540.P13751763277394668418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133540 (n : ℕ) : ℤ :=
  A133540.P13751763277394668418.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133541.P18226434130076836402

`A133527(n+1)+A050997(n+5)`
-/

namespace A133541.P18226434130076836402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1) + A050997 (n + 5)

end

end A133541.P18226434130076836402

noncomputable section

/-- A133541: Sum of fifth powers of five consecutive primes.

Offset 1, canonical program `A133541.P18226434130076836402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133541 (n : ℕ) : ℤ :=
  A133541.P18226434130076836402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133542.P11638819903937518053

`A133528(n+1)+A030516(n+5)`
-/

namespace A133542.P11638819903937518053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) + A030516 (n + 5)

end

end A133542.P11638819903937518053

noncomputable section

/-- A133542: Sum of sixth powers of five consecutive primes.

Offset 1, canonical program `A133542.P11638819903937518053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133542 (n : ℕ) : ℤ :=
  A133542.P11638819903937518053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135560.P7118035102855316106

`A007814(n+1)+A036987(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135560.P7118035102855316106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A036987 n + 1

end

end A135560.P7118035102855316106

noncomputable section

/-- A135560: a(n) = A007814(n) + A036987(n-1) + 1.

Offset 1, canonical program `A135560.P7118035102855316106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560 (n : ℕ) : ℤ :=
  A135560.P7118035102855316106.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138342.P15743762624797914969

`A059482(A007814(n+1))`
-/

namespace A138342.P15743762624797914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 (A007814 (n + 1)).toNat

end

end A138342.P15743762624797914969

noncomputable section

/-- A138342: First differences of A007088.

Offset 1, canonical program `A138342.P15743762624797914969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342 (n : ℕ) : ℤ :=
  A138342.P15743762624797914969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003484.P6209277204586873753

`A003485(A007814(n+1))`
-/

namespace A003484.P6209277204586873753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A007814 (n + 1)).toNat

end

end A003484.P6209277204586873753

noncomputable section

/-- A003484: Radon function, also called Hurwitz-Radon numbers.

Offset 1, canonical program `A003484.P6209277204586873753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484 (n : ℕ) : ℤ :=
  A003484.P6209277204586873753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053866.P7754923131584660837

`A063524(A286357(n+1))`
-/

namespace A053866.P7754923131584660837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A286357 (n + 1)).toNat

end

end A053866.P7754923131584660837

noncomputable section

/-- A053866: Parity of A000203(n), the sum of the divisors of n; a(n) = 1 when n is a square or twice a square, 0 otherwise.

Offset 1, canonical program `A053866.P7754923131584660837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866 (n : ℕ) : ℤ :=
  A053866.P7754923131584660837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005681.P11362584673414120459

`A268676(n)+A010060(n+1)`
-/

namespace A005681.P11362584673414120459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + A010060 (n + 1)

end

end A005681.P11362584673414120459

noncomputable section

/-- A005681: A squarefree quaternary sequence.

Offset 1, canonical program `A005681.P11362584673414120459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681 (n : ℕ) : ℤ :=
  A005681.P11362584673414120459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006287.P6441187741628273080

`2*A053735(n)-A007814(A006047(n))`
-/

namespace A006287.P6441187741628273080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n - A007814 (A006047 n).toNat

end

end A006287.P6441187741628273080

noncomputable section

/-- A006287: Sum of squares of digits of ternary representation of n.

Offset 0, canonical program `A006287.P6441187741628273080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287 (n : ℕ) : ℤ :=
  A006287.P6441187741628273080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008417.P12539990022854185462

`∑[A008416(n)]`
-/

namespace A008417.P12539990022854185462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008417.P12539990022854185462

noncomputable section

/-- A008417: Crystal ball sequence for 8-dimensional cubic lattice.

Offset 0, canonical program `A008417.P12539990022854185462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417 (n : ℕ) : ℤ :=
  A008417.P12539990022854185462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008419.P5285812897450645151

`∑[A008418(n)]`
-/

namespace A008419.P5285812897450645151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008419.P5285812897450645151

noncomputable section

/-- A008419: Crystal ball sequence for 9-dimensional cubic lattice.

Offset 0, canonical program `A008419.P5285812897450645151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419 (n : ℕ) : ℤ :=
  A008419.P5285812897450645151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008420.P15915323523869300231

`A008416(n)+2*A035603(n)`
-/

namespace A008420.P15915323523869300231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n + 2 * A035603 n

end

end A008420.P15915323523869300231

noncomputable section

/-- A008420: Coordination sequence for 10-dimensional cubic lattice.

Offset 0, canonical program `A008420.P15915323523869300231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420 (n : ℕ) : ℤ :=
  A008420.P15915323523869300231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008862.P15109180093103356418

`A008861(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008862.P15109180093103356418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008861 (n - 1) + a (n - 1)

end

end A008862.P15109180093103356418

noncomputable section

/-- A008862: a(n) = Sum_{k=0..9} binomial(n,k).

Offset 0, canonical program `A008862.P15109180093103356418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008862 (n : ℕ) : ℤ :=
  A008862.P15109180093103356418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011585.P5061405384106382312

`A062157(A070481(n)+A007814(2*n+1))`
-/

namespace A011585.P5061405384106382312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A070481 n + A007814 (2 * n + 1)).toNat

end

end A011585.P5061405384106382312

noncomputable section

/-- A011585: Legendre symbol (n,19).

Offset 0, canonical program `A011585.P5061405384106382312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585 (n : ℕ) : ℤ :=
  A011585.P5061405384106382312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A011585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013619.P11563524332984274693

`A013613(n)*A059268(n)`
-/

namespace A013619.P11563524332984274693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 n * A059268 n

end

end A013619.P11563524332984274693

noncomputable section

/-- A013619: Triangle of coefficients in expansion of (1+12x)^n.

Offset 0, canonical program `A013619.P11563524332984274693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A013619 (n : ℕ) : ℤ :=
  A013619.P11563524332984274693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. -/
def A013619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014082.P16446960074050354385

`A014081(and(n, 2*n))`
-/

namespace A014082.P16446960074050354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (2 * n))

end

end A014082.P16446960074050354385

noncomputable section

/-- A014082: Number of occurrences of '111' in binary expansion of n.

Offset 0, canonical program `A014082.P16446960074050354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082 (n : ℕ) : ℤ :=
  A014082.P16446960074050354385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019564.P17251219287643129102

`A008416(2*n)`
-/

namespace A019564.P17251219287643129102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 (2 * n)

end

end A019564.P17251219287643129102

noncomputable section

/-- A019564: Coordination sequence for C_8 lattice.

Offset 0, canonical program `A019564.P17251219287643129102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008416, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019564 (n : ℕ) : ℤ :=
  A019564.P17251219287643129102.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008416, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A019564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020987.P9597873820712649968

`A014081(n)%2`
-/

namespace A020987.P9597873820712649968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014081 n) 2

end

end A020987.P9597873820712649968

noncomputable section

/-- A020987: Zero-one version of Golay-Rudin-Shapiro sequence (or word).

Offset 0, canonical program `A020987.P9597873820712649968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987 (n : ℕ) : ℤ :=
  A020987.P9597873820712649968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022156.P8060597449158036699

`A276391(n+1)+A276391(n+2)-A115716(n)`
-/

namespace A022156.P8060597449158036699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1) + (A276391 (n + 2) - A115716 n)

end

end A022156.P8060597449158036699

noncomputable section

/-- A022156: Difference sequence of A020991.

Offset 0, canonical program `A022156.P8060597449158036699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156 (n : ℕ) : ℤ :=
  A022156.P8060597449158036699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2366 terms. -/
def A022156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022423.P3878848537184093492

`A374359(n+1)+A022421(n)`
-/

namespace A022423.P3878848537184093492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A022421 n

end

end A022423.P3878848537184093492

noncomputable section

/-- A022423: Kim-sums: "Kimberling sums" K_n + K_12.

Offset 0, canonical program `A022423.P3878848537184093492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423 (n : ℕ) : ℤ :=
  A022423.P3878848537184093492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023489.P10868598948325569583

`A023488(n)+Δ[A001911(n)]`
-/

namespace A023489.P10868598948325569583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023488 n + (f1 (n + 1) - f1 n)

end

end A023489.P10868598948325569583

noncomputable section

/-- A023489: Sum of n-th Lucas number greater than 3 and n-th number that is 1 or is not a Fibonacci number.

Offset 1, canonical program `A023489.P10868598948325569583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489 (n : ℕ) : ℤ :=
  A023489.P10868598948325569583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A023489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023696.P1765320762815526595

`eq[5, A007814(A006047(n))]`
-/

namespace A023696.P1765320762815526595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023696.P1765320762815526595

noncomputable section

/-- A023696: Numbers with exactly 5 1's in ternary expansion.

Offset 1, canonical program `A023696.P1765320762815526595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696 (n : ℕ) : ℤ :=
  (A023696.P1765320762815526595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1568 terms. -/
def A023696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023697.P3220481640824258587

`eq[6, A007814(A006047(n))]`
-/

namespace A023697.P3220481640824258587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023697.P3220481640824258587

noncomputable section

/-- A023697: Numbers with exactly 6 1's in their ternary expansion.

Offset 1, canonical program `A023697.P3220481640824258587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697 (n : ℕ) : ℤ :=
  (A023697.P3220481640824258587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. -/
def A023697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024449.P16431338297242596881

`∑[A000040(n+4)*A024448(n+1)]`
-/

namespace A024449.P16431338297242596881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) * A024448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P16431338297242596881

noncomputable section

/-- A024449: 4th elementary symmetric function of the first n+3 primes.

Offset 1, canonical program `A024449.P16431338297242596881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449 (n : ℕ) : ℤ :=
  A024449.P16431338297242596881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024453.P7505489460028250605

`floor(A024448(n+1)/A007504(n+3))`
-/

namespace A024453.P7505489460028250605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A007504 (n + 3) : ℚ)⌋

end

end A024453.P7505489460028250605

noncomputable section

/-- A024453: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024453.P7505489460028250605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024453 (n : ℕ) : ℤ :=
  A024453.P7505489460028250605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024455.P11382679767047507144

`floor(A024448(n+1)/A024447(n+3))`
-/

namespace A024455.P11382679767047507144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A024447 (n + 3) : ℚ)⌋

end

end A024455.P11382679767047507144

noncomputable section

/-- A024455: [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024455.P11382679767047507144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455 (n : ℕ) : ℤ :=
  A024455.P11382679767047507144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024523.P15062515241422550493

`∑[A024522(n+2)*A065091(n+1)]`
-/

namespace A024523.P15062515241422550493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024522 (n + 2) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P15062515241422550493

noncomputable section

/-- A024523: a(n) = 3rd elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 3, canonical program `A024523.P15062515241422550493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523 (n : ℕ) : ℤ :=
  A024523.P15062515241422550493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024531.P4098472389079834350

`floor(A024522(n+2)/A014284(n+2))`
-/

namespace A024531.P4098472389079834350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024522 (n + 2) : ℚ) / (A014284 (n + 2) : ℚ)⌋

end

end A024531.P4098472389079834350

noncomputable section

/-- A024531: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 2, canonical program `A024531.P4098472389079834350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531 (n : ℕ) : ℤ :=
  A024531.P4098472389079834350.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024877.P16584012869159844224

`A024315(n+1)+2*A024313(n+1)`
-/

namespace A024877.P16584012869159844224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + 2 * A024313 (n + 1)

end

end A024877.P16584012869159844224

noncomputable section

/-- A024877: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (Lucas numbers).

Offset 2, canonical program `A024877.P16584012869159844224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024877 (n : ℕ) : ℤ :=
  A024877.P16584012869159844224.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024878.P13264414261582248090

`A024315(n+1)+A024313(n+1)`
-/

namespace A024878.P13264414261582248090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + A024313 (n + 1)

end

end A024878.P13264414261582248090

noncomputable section

/-- A024878: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (natural numbers >= 3), t = (F(2), F(3), F(4), ...).

Offset 2, canonical program `A024878.P13264414261582248090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024878 (n : ℕ) : ℤ :=
  A024878.P13264414261582248090.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A024878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025092.P5540335712594963880

`2*(A023610(n+2)-A024458(n+4))-A025082(n+1)`
-/

namespace A025092.P5540335712594963880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023610 (n + 2) - A024458 (n + 4)) - A025082 (n + 1)

end

end A025092.P5540335712594963880

noncomputable section

/-- A025092: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (F(2), F(3), F(4), ...).

Offset 1, canonical program `A025092.P5540335712594963880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092 (n : ℕ) : ℤ :=
  A025092.P5540335712594963880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A025092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026031.P15128004399576730173

`A026027(n+3)-A026030(n+2)`
-/

namespace A026031.P15128004399576730173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026027 (n + 3) - A026030 (n + 2)

end

end A026031.P15128004399576730173

noncomputable section

/-- A026031: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 3, s(2n) = 7. Also a(n) = T(2n,n-2), where T is defined in A026022.

Offset 2, canonical program `A026031.P15128004399576730173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031 (n : ℕ) : ℤ :=
  A026031.P15128004399576730173.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A026031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026357.P9448903342911315199

`A026353(n+2)+n`
-/

namespace A026357.P9448903342911315199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2) + (n : ℤ)

end

end A026357.P9448903342911315199

noncomputable section

/-- A026357: a(n) = sum of the numbers between the two n's in A026354.

Offset 3, canonical program `A026357.P9448903342911315199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357 (n : ℕ) : ℤ :=
  A026357.P9448903342911315199.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027933.P2138915729023418697

`A027932(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A027933.P2138915729023418697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027932 (n + 4) + a (n - 1)

end

end A027933.P2138915729023418697

noncomputable section

/-- A027933: a(n) = T(n, 2*n-10), T given by A027926.

Offset 5, canonical program `A027933.P2138915729023418697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027933 (n : ℕ) : ℤ :=
  A027933.P2138915729023418697.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027972.P3797829496454005148

`A027971(n+4)+a(n-1)` with `a(0)=1`
-/

namespace A027972.P3797829496454005148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027971 (n + 4) + a (n - 1)

end

end A027972.P3797829496454005148

noncomputable section

/-- A027972: T(n, 2n-10), T given by A027960.

Offset 5, canonical program `A027972.P3797829496454005148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972 (n : ℕ) : ℤ :=
  A027972.P3797829496454005148.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031451.P5833261908256610895

`eq[2, A124754(A003188(n))-2]`
-/

namespace A031451.P5833261908256610895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031451.P5833261908256610895

noncomputable section

/-- A031451: Numbers whose base-2 representation has 4 fewer 0's than 1's.

Offset 1, canonical program `A031451.P5833261908256610895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451 (n : ℕ) : ℤ :=
  (A031451.P5833261908256610895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1728 terms. -/
def A031451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035041.P5013102862860512790

`A000079(n)-A008861(n)`
-/

namespace A035041.P5013102862860512790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A008861 n

end

end A035041.P5013102862860512790

noncomputable section

/-- A035041: a(n) = 2^n - C(n,0) - C(n,1) - ... - C(n,8).

Offset 0, canonical program `A035041.P5013102862860512790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035041 (n : ℕ) : ℤ :=
  A035041.P5013102862860512790.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035488.P7581911865808934078

`A007067(A035487(n+1))`
-/

namespace A035488.P7581911865808934078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A035487 (n + 1)).toNat

end

end A035488.P7581911865808934078

noncomputable section

/-- A035488: 3rd column of Stolarsky array.

Offset 0, canonical program `A035488.P7581911865808934078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488 (n : ℕ) : ℤ :=
  A035488.P7581911865808934078.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035511.P16503924714337673631

`A004957(A035510(n))+1`
-/

namespace A035511.P16503924714337673631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A035510 n).toNat + 1

end

end A035511.P16503924714337673631

noncomputable section

/-- A035511: 3rd column of Inverse Stolarsky array.

Offset 0, canonical program `A035511.P16503924714337673631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511 (n : ℕ) : ℤ :=
  A035511.P16503924714337673631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A035511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035746.P11342363624555630469

`A008418(2*n)`
-/

namespace A035746.P11342363624555630469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 (2 * n)

end

end A035746.P11342363624555630469

noncomputable section

/-- A035746: Coordination sequence for C_9 lattice.

Offset 0, canonical program `A035746.P11342363624555630469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746 (n : ℕ) : ℤ :=
  A035746.P11342363624555630469.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A035746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036266.P11903525488543457057

`Δ[A036265(n+1)]`
-/

namespace A036266.P11903525488543457057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036266.P11903525488543457057

noncomputable section

/-- A036266: 5th differences of primes.

Offset 1, canonical program `A036266.P11903525488543457057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266 (n : ℕ) : ℤ :=
  A036266.P11903525488543457057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036274.P11002584314295623650

`abs(Δ[A036273(n)])`
-/

namespace A036274.P11002584314295623650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036274.P11002584314295623650

noncomputable section

/-- A036274: Absolute values of differences of A036273.

Offset 0, canonical program `A036274.P11002584314295623650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274 (n : ℕ) : ℤ :=
  A036274.P11002584314295623650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036578.P17041184954175712032

`A005679(n+1)-1`
-/

namespace A036578.P17041184954175712032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (n + 1) - 1

end

end A036578.P17041184954175712032

noncomputable section

/-- A036578: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036578.P17041184954175712032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578 (n : ℕ) : ℤ :=
  A036578.P17041184954175712032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038210.P16937682952618424332

`A038208(n)*A059268(n)`
-/

namespace A038210.P16937682952618424332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 n * A059268 n

end

end A038210.P16937682952618424332

noncomputable section

/-- A038210: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*4^j.

Offset 0, canonical program `A038210.P16937682952618424332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8600 terms. -/
def A038210 (n : ℕ) : ℤ :=
  A038210.P16937682952618424332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8600 terms. -/
def A038210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038226.P14999637500471650341

`A038222(n)*A059268(n)`
-/

namespace A038226.P14999637500471650341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A059268 n

end

end A038226.P14999637500471650341

noncomputable section

/-- A038226: Triangle read by rows: (i,j)-th entry is binomial(i,j)*3^(i-j)*8^j.

Offset 0, canonical program `A038226.P14999637500471650341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A038226 (n : ℕ) : ℤ :=
  A038226.P14999637500471650341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A038226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038234.P3698139505430010627

`A038232(n)*A059268(n)`
-/

namespace A038234.P3698139505430010627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A059268 n

end

end A038234.P3698139505430010627

noncomputable section

/-- A038234: Triangle whose (n, k)-th entry is binomial(n, k)*4^(n - k)*4^k.

Offset 0, canonical program `A038234.P3698139505430010627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234 (n : ℕ) : ℤ :=
  A038234.P3698139505430010627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038236.P5554220315760387373

`A036561(n)*A038208(n)`
-/

namespace A038236.P5554220315760387373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038208 n

end

end A038236.P5554220315760387373

noncomputable section

/-- A038236: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*6^j.

Offset 0, canonical program `A038236.P5554220315760387373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236 (n : ℕ) : ℤ :=
  A038236.P5554220315760387373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5305 terms. -/
def A038236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038250.P15038229439455009426

`A038246(n)*A059268(n)`
-/

namespace A038250.P15038229439455009426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 n * A059268 n

end

end A038250.P15038229439455009426

noncomputable section

/-- A038250: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*8^j.

Offset 0, canonical program `A038250.P15038229439455009426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250 (n : ℕ) : ℤ :=
  A038250.P15038229439455009426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038258.P18171415489042003972

`A038256(n)*A059268(n)`
-/

namespace A038258.P18171415489042003972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A059268 n

end

end A038258.P18171415489042003972

noncomputable section

/-- A038258: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*4^j.

Offset 0, canonical program `A038258.P18171415489042003972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258 (n : ℕ) : ℤ :=
  A038258.P18171415489042003972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038266.P12892791961704358879

`A036561(n)*A038222(n)`
-/

namespace A038266.P12892791961704358879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038222 n

end

end A038266.P12892791961704358879

noncomputable section

/-- A038266: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*12^j.

Offset 0, canonical program `A038266.P12892791961704358879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266 (n : ℕ) : ℤ :=
  A038266.P12892791961704358879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038270.P14616798434417100428

`A038268(n)*A059268(n)`
-/

namespace A038270.P14616798434417100428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038268 n * A059268 n

end

end A038270.P14616798434417100428

noncomputable section

/-- A038270: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*4^j.

Offset 0, canonical program `A038270.P14616798434417100428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270 (n : ℕ) : ℤ :=
  A038270.P14616798434417100428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038278.P9937745698125142218

`A038272(n)*A059268(n)`
-/

namespace A038278.P9937745698125142218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038272 n * A059268 n

end

end A038278.P9937745698125142218

noncomputable section

/-- A038278: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*12^j.

Offset 0, canonical program `A038278.P9937745698125142218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A038278 (n : ℕ) : ℤ :=
  A038278.P9937745698125142218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A038278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038282.P9263401761127382137

`A038280(n)*A059268(n)`
-/

namespace A038282.P9263401761127382137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038280 n * A059268 n

end

end A038282.P9263401761127382137

noncomputable section

/-- A038282: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*4^j.

Offset 0, canonical program `A038282.P9263401761127382137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4491 terms. -/
def A038282 (n : ℕ) : ℤ :=
  A038282.P9263401761127382137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4491 terms. -/
def A038282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038284.P16416775335584718601

`A036561(n)*A038232(n)`
-/

namespace A038284.P16416775335584718601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038232 n

end

end A038284.P16416775335584718601

noncomputable section

/-- A038284: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*6^j.

Offset 0, canonical program `A038284.P16416775335584718601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4034 terms. -/
def A038284 (n : ℕ) : ℤ :=
  A038284.P16416775335584718601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4034 terms. -/
def A038284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038294.P370950949061120703

`A038292(n)*A059268(n)`
-/

namespace A038294.P370950949061120703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038292 n * A059268 n

end

end A038294.P370950949061120703

noncomputable section

/-- A038294: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*4^j.

Offset 0, canonical program `A038294.P370950949061120703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294 (n : ℕ) : ℤ :=
  A038294.P370950949061120703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038310.P6116586220362870793

`A038306(n)*A059268(n)`
-/

namespace A038310.P6116586220362870793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038306 n * A059268 n

end

end A038310.P6116586220362870793

noncomputable section

/-- A038310: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*8^j.

Offset 0, canonical program `A038310.P6116586220362870793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A038310 (n : ℕ) : ℤ :=
  A038310.P6116586220362870793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3350 terms. -/
def A038310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038314.P15385511615733957854

`A036561(n)*A038246(n)`
-/

namespace A038314.P15385511615733957854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038246 n

end

end A038314.P15385511615733957854

noncomputable section

/-- A038314: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*12^j.

Offset 0, canonical program `A038314.P15385511615733957854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314 (n : ℕ) : ℤ :=
  A038314.P15385511615733957854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038318.P611432276331124910

`A038316(n)*A059268(n)`
-/

namespace A038318.P611432276331124910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038316 n * A059268 n

end

end A038318.P611432276331124910

noncomputable section

/-- A038318: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*4^j.

Offset 0, canonical program `A038318.P611432276331124910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318 (n : ℕ) : ℤ :=
  A038318.P611432276331124910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3761 terms. -/
def A038318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038326.P6367717680035470483

`A038320(n)*A059268(n)`
-/

namespace A038326.P6367717680035470483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038320 n * A059268 n

end

end A038326.P6367717680035470483

noncomputable section

/-- A038326: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*12^j.

Offset 0, canonical program `A038326.P6367717680035470483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A038326 (n : ℕ) : ℤ :=
  A038326.P6367717680035470483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A038326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038330.P7312664792564112654

`A038328(n)*A059268(n)`
-/

namespace A038330.P7312664792564112654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038328 n * A059268 n

end

end A038330.P7312664792564112654

noncomputable section

/-- A038330: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*4^j.

Offset 0, canonical program `A038330.P7312664792564112654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A038330 (n : ℕ) : ℤ :=
  A038330.P7312664792564112654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3588 terms. -/
def A038330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038332.P474245065712382521

`A036561(n)*A038256(n)`
-/

namespace A038332.P474245065712382521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038256 n

end

end A038332.P474245065712382521

noncomputable section

/-- A038332: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*6^j.

Offset 0, canonical program `A038332.P474245065712382521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332 (n : ℕ) : ℤ :=
  A038332.P474245065712382521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038825.P9275625098868966113

`A038814(n+1)%A038814(A000038(n)+n)`
-/

namespace A038825.P9275625098868966113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038814 (n + 1)) (A038814 (A000038 n + (n : ℤ)).toNat)

end

end A038825.P9275625098868966113

noncomputable section

/-- A038825: Number of primes between n*100000 and (n+1)*100000.

Offset 0, canonical program `A038825.P9275625098868966113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038825 (n : ℕ) : ℤ :=
  A038825.P9275625098868966113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039000.P9830512540759238437

`eq[A007814(A006047(n)), A077267(n)]`
-/

namespace A039000.P9830512540759238437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P9830512540759238437

noncomputable section

/-- A039000: Numbers whose base-3 representation has the same number of 0's and 1's.

Offset 1, canonical program `A039000.P9830512540759238437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000 (n : ℕ) : ℤ :=
  (A039000.P9830512540759238437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. -/
def A039000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041682.P14233085707334064769

`A041066(n)*A276391(n²+2)`
-/

namespace A041682.P14233085707334064769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041066 n * A276391 (n ^ 2 + 2)

end

end A041682.P14233085707334064769

noncomputable section

/-- A041682: Numerators of continued fraction convergents to sqrt(360).

Offset 0, canonical program `A041682.P14233085707334064769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041682 (n : ℕ) : ℤ :=
  A041682.P14233085707334064769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043742.P8132510292686517253

`eq[gcd(2, n)², A037800(n)]`
-/

namespace A043742.P8132510292686517253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043742.P8132510292686517253

noncomputable section

/-- A043742: Numbers whose number of runs in the base-2 representation is congruent to 3 mod 7.

Offset 1, canonical program `A043742.P8132510292686517253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742 (n : ℕ) : ℤ :=
  (A043742.P8132510292686517253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A043742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045038.P652347557463449643

`∩[A023705(n+1), A023714(n+1)]`
-/

namespace A045038.P652347557463449643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045038.P652347557463449643

noncomputable section

/-- A045038: Numbers whose base-4 representation contains no 0's and exactly one 2.

Offset 1, canonical program `A045038.P652347557463449643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038 (n : ℕ) : ℤ :=
  (A045038.P652347557463449643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. -/
def A045038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045039.P3937333405223488659

`∩[A023705(n+1), A023715(n+1)]`
-/

namespace A045039.P3937333405223488659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045039.P3937333405223488659

noncomputable section

/-- A045039: Numbers whose base-4 representation contains no 0's and exactly two 2's.

Offset 1, canonical program `A045039.P3937333405223488659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039 (n : ℕ) : ℤ :=
  (A045039.P3937333405223488659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A045039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045063.P8683003106930919168

`∩[A023705(n+1), A031467(n+1)]`
-/

namespace A045063.P8683003106930919168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045063.P8683003106930919168

noncomputable section

/-- A045063: Numbers whose base-4 representation contains no 0's and exactly two 3's.

Offset 1, canonical program `A045063.P8683003106930919168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063 (n : ℕ) : ℤ :=
  (A045063.P8683003106930919168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. -/
def A045063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046325.P13404196471714545955

`A000040(n+1)*A046324(n+2)`
-/

namespace A046325.P13404196471714545955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046324 (n + 2)

end

end A046325.P13404196471714545955

noncomputable section

/-- A046325: Product of 7 successive primes.

Offset 1, canonical program `A046325.P13404196471714545955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325 (n : ℕ) : ℤ :=
  A046325.P13404196471714545955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047664.P16577422671529071248

`floor((A008416(n+1)-A001849(n))/2)`
-/

namespace A047664.P16577422671529071248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008416 (n + 1) - A001849 n : ℚ) / 2⌋

end

end A047664.P16577422671529071248

noncomputable section

/-- A047664: Row 7 of square array defined in A047662.

Offset 1, canonical program `A047664.P16577422671529071248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664 (n : ℕ) : ℤ :=
  A047664.P16577422671529071248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049502.P5742727287573319742

`A037800(n)+a(A004526(n))` with `a(0)=0`
-/

namespace A049502.P5742727287573319742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037800 n + a (A004526 n).toNat

end

end A049502.P5742727287573319742

noncomputable section

/-- A049502: Major index of n, 2nd definition.

Offset 0, canonical program `A049502.P5742727287573319742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502 (n : ℕ) : ℤ :=
  A049502.P5742727287573319742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053398.P10674164959808445662

`A007814(A003986(n)+1)`
-/

namespace A053398.P10674164959808445662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003986 n + 1).toNat

end

end A053398.P10674164959808445662

noncomputable section

/-- A053398: Nim-values from game of Kopper's Nim.

Offset 1, canonical program `A053398.P10674164959808445662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398 (n : ℕ) : ℤ :=
  A053398.P10674164959808445662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055372.P3710115892001001327

`ceil(A038208(n)/2)`
-/

namespace A055372.P3710115892001001327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038208 n : ℚ) / 2⌉

end

end A055372.P3710115892001001327

noncomputable section

/-- A055372: Invert transform of Pascal's triangle A007318.

Offset 0, canonical program `A055372.P3710115892001001327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055372 (n : ℕ) : ℤ :=
  A055372.P3710115892001001327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056560.P14693903049238240332

`A056557(n)-A056558(n)`
-/

namespace A056560.P14693903049238240332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056557 n - A056558 n

end

end A056560.P14693903049238240332

noncomputable section

/-- A056560: Tetrahedron with T(t,n,k)=n-k; succession of growing finite triangles with increasing values towards bottom left.

Offset 0, canonical program `A056560.P14693903049238240332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560 (n : ℕ) : ℤ :=
  A056560.P14693903049238240332.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056980.P3532527099701014271

`A033264(and(n, 2*(n+1))+1)`
-/

namespace A056980.P3532527099701014271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (Nat.land n (2 * (n + 1)) + 1)

end

end A056980.P3532527099701014271

noncomputable section

/-- A056980: Number of blocks of {1, 1, 0} in binary expansion of n.

Offset 1, canonical program `A056980.P3532527099701014271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980 (n : ℕ) : ℤ :=
  A056980.P3532527099701014271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057849.P12722118216804034040

`A049202(A000040(n+1))`
-/

namespace A057849.P12722118216804034040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049202 (A000040 (n + 1)).toNat

end

end A057849.P12722118216804034040

noncomputable section

/-- A057849: Primes p whose order of primeness A078442(p) is at least 7.

Offset 1, canonical program `A057849.P12722118216804034040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849 (n : ℕ) : ℤ :=
  A057849.P12722118216804034040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059126.P15563603059737863123

`A131534(n)+2*A007814(A008620(n))`
-/

namespace A059126.P15563603059737863123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 n + 2 * A007814 (A008620 n).toNat

end

end A059126.P15563603059737863123

noncomputable section

/-- A059126: A hierarchical sequence (W2{2} according to the description in the attached file - see link).

Offset 0, canonical program `A059126.P15563603059737863123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126 (n : ℕ) : ℤ :=
  A059126.P15563603059737863123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064894.P11778441932188558359

`gcd(-a(and(n, n-1)), A007814(n))` with `a(0)=0`
-/

namespace A064894.P11778441932188558359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (-(a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ)) (A007814 n)

end

end A064894.P11778441932188558359

noncomputable section

/-- A064894: Binary dilution of n. GCD of exponents in binary expansion of n.

Offset 0, canonical program `A064894.P11778441932188558359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894 (n : ℕ) : ℤ :=
  (A064894.P11778441932188558359.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065334.P13791881819872043413

`A007814(n+1)*A065333(n+1)`
-/

namespace A065334.P13791881819872043413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A065333 (n + 1)

end

end A065334.P13791881819872043413

noncomputable section

/-- A065334: 2-exponents to represent 3-smooth numbers (A065332).

Offset 1, canonical program `A065334.P13791881819872043413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065334 (n : ℕ) : ℤ :=
  A065334.P13791881819872043413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066990.P6526794843317406672

`(n+1)/A295657(n+1)²`
-/

namespace A066990.P6526794843317406672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295657 (n + 1) ^ 2 : ℚ)

end

end A066990.P6526794843317406672

noncomputable section

/-- A066990: In canonical prime factorization of n replace even exponents with 2 and odd exponents with 1.

Offset 1, canonical program `A066990.P6526794843317406672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066990.P6526794843317406672.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070139.P10794529069713137926

`A004526(A057918(Δ[A004526(n)²]+1))`
-/

namespace A070139.P10794529069713137926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (f1 (n + 1) - f1 n + 1).toNat).toNat

end

end A070139.P10794529069713137926

noncomputable section

/-- A070139: Number of isosceles integer triangles with perimeter n having integral area.

Offset 1, canonical program `A070139.P10794529069713137926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139 (n : ℕ) : ℤ :=
  A070139.P10794529069713137926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070770.P9804462315160195560

`A056556(n)+A056557(n)+A056558(n)`
-/

namespace A070770.P9804462315160195560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 n + A056557 n + A056558 n

end

end A070770.P9804462315160195560

noncomputable section

/-- A070770: b + c + d where b >= c >= d >= 0 ordered by b then c then d.

Offset 0, canonical program `A070770.P9804462315160195560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770 (n : ℕ) : ℤ :=
  A070770.P9804462315160195560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070770.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072114.P17969581037488263158

`∑[floor(A007814(∑{e}[n, #]+13)/4)]`
-/

namespace A072114.P17969581037488263158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 13) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P17969581037488263158

noncomputable section

/-- A072114: Number of 3-almost primes (A014612) <= n.

Offset 0, canonical program `A072114.P17969581037488263158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114 (n : ℕ) : ℤ :=
  A072114.P17969581037488263158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072580.P18037671959808370065

`A000040(A072577(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072580.P18037671959808370065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072577 (n + 1)).toNat

end

end A072580.P18037671959808370065

noncomputable section

/-- A072580: a(n) = A000040(A072577(n)).

Offset 1, canonical program `A072580.P18037671959808370065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072580 (n : ℕ) : ℤ :=
  A072580.P18037671959808370065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072577, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072580.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072582.P8651059492277123430

`A000040(A072579(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072582.P8651059492277123430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072579 (n + 1)).toNat

end

end A072582.P8651059492277123430

noncomputable section

/-- A072582: a(n) = A000040(A072579(n)).

Offset 1, canonical program `A072582.P8651059492277123430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072582 (n : ℕ) : ℤ :=
  A072582.P8651059492277123430.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076368.P2146344704707354385

`A054541(n+1)%(n+1)+1`
-/

namespace A076368.P2146344704707354385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 1)) (n + 1 : ℤ) + 1

end

end A076368.P2146344704707354385

noncomputable section

/-- A076368: a(1) = 1; for n > 1, a(n) = prime(n) - prime(n-1) + 1.

Offset 1, canonical program `A076368.P2146344704707354385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368 (n : ℕ) : ℤ :=
  A076368.P2146344704707354385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078285.P17863953192826726886

`A377565(A000040(n+1))`
-/

namespace A078285.P17863953192826726886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377565 (A000040 (n + 1)).toNat

end

end A078285.P17863953192826726886

noncomputable section

/-- A078285: Least nontrivial multiple of the n-th prime beginning with 1.

Offset 1, canonical program `A078285.P17863953192826726886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285 (n : ℕ) : ℤ :=
  A078285.P17863953192826726886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079702.P8447432609584050613

`A053177(n+1)-1`
-/

namespace A079702.P8447432609584050613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1) - 1

end

end A079702.P8447432609584050613

noncomputable section

/-- A079702: Numbers 2p where p is prime and 2p + 1 is composite.

Offset 1, canonical program `A079702.P8447432609584050613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702 (n : ℕ) : ℤ :=
  A079702.P8447432609584050613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082510.P15430433622704550580

`filter[A082509(n+1), A079978(#)]`
-/

namespace A082510.P15430433622704550580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P15430433622704550580

noncomputable section

/-- A082510: Differences of consecutive primes being divisible by 6 in order of their appearance in A001223: terms not divisible by 6 are omitted from A001223.

Offset 1, canonical program `A082510.P15430433622704550580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510 (n : ℕ) : ℤ :=
  A082510.P15430433622704550580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085144.P12304076021569329000

`(A010060(n)-A124754(n))*A106400(n)`
-/

namespace A085144.P12304076021569329000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n - A124754 n) * A106400 n

end

end A085144.P12304076021569329000

noncomputable section

/-- A085144: a(0)=0, a(2n) = a(n)+1, a(2n+1) = -a(n).

Offset 0, canonical program `A085144.P12304076021569329000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144 (n : ℕ) : ℤ :=
  A085144.P12304076021569329000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085145.P15264563296604716477

`eq[A010060(n), A124754(n)]`
-/

namespace A085145.P15264563296604716477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085145.P15264563296604716477

noncomputable section

/-- A085145: Positions of 0 in A085144.

Offset 1, canonical program `A085145.P15264563296604716477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145 (n : ℕ) : ℤ :=
  (A085145.P15264563296604716477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A085145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085704.P554284013092023272

`p?[A054541(n+1)+A000040(n+1)]`
-/

namespace A085704.P554284013092023272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085704.P554284013092023272

noncomputable section

/-- A085704: Primes of the form prime(k)*2 - prime(k-1), k>1.

Offset 1, canonical program `A085704.P554284013092023272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704 (n : ℕ) : ℤ :=
  A085704.P554284013092023272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. -/
def A085704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086450.P12606238815758101308

`A085765(A025480(n))`
-/

namespace A086450.P12606238815758101308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085765 (A025480 n).toNat

end

end A086450.P12606238815758101308

noncomputable section

/-- A086450: a(0) = 1, a(2n+1) = a(n), a(2n) = a(n) + a(n-1) + ... + a(n-m) + ... where a(n

Offset 0, canonical program `A086450.P12606238815758101308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450 (n : ℕ) : ℤ :=
  A086450.P12606238815758101308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088696.P11522645216660844429

`A072339(A006257(n+1))`
-/

namespace A088696.P11522645216660844429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072339 (A006257 (n + 1)).toNat

end

end A088696.P11522645216660844429

noncomputable section

/-- A088696: Triangle read by rows, giving number of partial quotients in continued fraction representation of terms in the left branch of the infinite Stern-Brocot tree.

Offset 1, canonical program `A088696.P11522645216660844429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696 (n : ℕ) : ℤ :=
  A088696.P11522645216660844429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088764.P11806142455434414841

`(A087680(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088764.P11806142455434414841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087680 (n + 1) - 1 : ℚ) / 2

end

end A088764.P11806142455434414841

noncomputable section

/-- A088764: a(n) = (A087680(n)-1)/2.

Offset 1, canonical program `A088764.P11806142455434414841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088764.P11806142455434414841.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090658.P13517223795634800117

`A087915(n+1)+A089257(n+1)`
-/

namespace A090658.P13517223795634800117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089257 (n + 1)

end

end A090658.P13517223795634800117

noncomputable section

/-- A090658: Numbers n such that n-1 is a prime of the form 4k+3.

Offset 1, canonical program `A090658.P13517223795634800117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658 (n : ℕ) : ℤ :=
  A090658.P13517223795634800117.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089257, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095283.P2938136508596588952

`p?[n*(A035263(n+1)+1)]`
-/

namespace A095283.P2938136508596588952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035263 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095283.P2938136508596588952

noncomputable section

/-- A095283: Primes whose binary-expansion ends with an odd number of 1's.

Offset 1, canonical program `A095283.P2938136508596588952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283 (n : ℕ) : ℤ :=
  A095283.P2938136508596588952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A095283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097363.P9324045915537457052

`A097338(n+1)+1`
-/

namespace A097363.P9324045915537457052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 1

end

end A097363.P9324045915537457052

noncomputable section

/-- A097363: Positive integers n such that 2n-13 is prime.

Offset 1, canonical program `A097363.P9324045915537457052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363 (n : ℕ) : ℤ :=
  A097363.P9324045915537457052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098387.P16796846972825336619

`∑[A054541(n+1)]+floor(log2(n+1))`
-/

namespace A098387.P16796846972825336619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.log 2 (n + 1) : ℤ)

end

end A098387.P16796846972825336619

noncomputable section

/-- A098387: Prime(n)+Log2(n), where Log2=A000523.

Offset 1, canonical program `A098387.P16796846972825336619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387 (n : ℕ) : ℤ :=
  A098387.P16796846972825336619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099033.P12921075024038566039

`A005599(n+1)-(A293162(n+1)+A293162(n+1))`
-/

namespace A099033.P12921075024038566039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (n + 1) - (A293162 (n + 1) + A293162 (n + 1))

end

end A099033.P12921075024038566039

noncomputable section

/-- A099033: a(n) = Sum_{k=1..n} (-1)^A000120(3*k).

Offset 1, canonical program `A099033.P12921075024038566039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033 (n : ℕ) : ℤ :=
  A099033.P12921075024038566039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102563.P3663340639075979939

`ceil(n/2-A102396(n))`
-/

namespace A102563.P3663340639075979939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A102396 n : ℚ)⌉

end

end A102563.P3663340639075979939

noncomputable section

/-- A102563: a(n) = A000120(A001045(n)) - A001045(A000120(n)).

Offset 0, canonical program `A102563.P3663340639075979939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102563 (n : ℕ) : ℤ :=
  A102563.P3663340639075979939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103583.P14747149407642762519

`A000007(and(A002262(n), A057728(n+1)))`
-/

namespace A103583.P14747149407642762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A002262 n) (A057728 (n + 1))).toNat

end

end A103583.P14747149407642762519

noncomputable section

/-- A103583: Same as A103582, but read antidiagonals in upward direction.

Offset 0, canonical program `A103583.P14747149407642762519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583 (n : ℕ) : ℤ :=
  A103583.P14747149407642762519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A103583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103842.P14597058008389114036

`1-A083651(A061579(n))`
-/

namespace A103842.P14597058008389114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A083651 (A061579 n).toNat

end

end A103842.P14597058008389114036

noncomputable section

/-- A103842: Triangle read by rows: row n is binary expansion of 2^n-n, n >= 1.

Offset 1, canonical program `A103842.P14597058008389114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842 (n : ℕ) : ℤ :=
  A103842.P14597058008389114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A103842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107345.P952422273759515519

`C(A023416(n), A087116(n))`
-/

namespace A107345.P952422273759515519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 n).toNat (A087116 n).toNat

end

end A107345.P952422273759515519

noncomputable section

/-- A107345: From the binary representation of n: binomial(number of zeros, number of blocks of contiguous zeros).

Offset 0, canonical program `A107345.P952422273759515519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345 (n : ℕ) : ℤ :=
  (A107345.P952422273759515519.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107757.P7873322615201436145

`or(1, A089118(n+1))`
-/

namespace A107757.P7873322615201436145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089118 (n + 1))

end

end A107757.P7873322615201436145

noncomputable section

/-- A107757: Numbers k such that Sum_{j=1..k} Catalan(j) == 2 (mod 3).

Offset 1, canonical program `A107757.P7873322615201436145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757 (n : ℕ) : ℤ :=
  A107757.P7873322615201436145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107782.P10954405074000137432

`A023416(n)-A087116(n)`
-/

namespace A107782.P10954405074000137432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A087116 n

end

end A107782.P10954405074000137432

noncomputable section

/-- A107782: In binary representation of n: (number of zeros) minus (number of blocks of contiguous zeros).

Offset 0, canonical program `A107782.P10954405074000137432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782 (n : ℕ) : ℤ :=
  A107782.P10954405074000137432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109923.P355927586159164800

`A099795(n+2)/A006254(n+1)`
-/

namespace A109923.P355927586159164800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099795 (n + 2) : ℚ) / (A006254 (n + 1) : ℚ)

end

end A109923.P355927586159164800

noncomputable section

/-- A109923: a(n) = lcm(1,2,3,...,prime(n))/(1 + 2 + ... + prime(n)).

Offset 2, canonical program `A109923.P355927586159164800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109923.P355927586159164800.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110650.P11710532808952762772

`A110009(A092486(n))`
-/

namespace A110650.P11710532808952762772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A092486 n).toNat

end

end A110650.P11710532808952762772

noncomputable section

/-- A110650: n^2 followed by n^4 followed by n followed by n^3.

Offset 1, canonical program `A110650.P11710532808952762772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650 (n : ℕ) : ℤ :=
  A110650.P11710532808952762772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110653.P15905790512607003949

`A110009(xor(2, n)+1)`
-/

namespace A110653.P15905790512607003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (Nat.xor 2 n + 1)

end

end A110653.P15905790512607003949

noncomputable section

/-- A110653: n^2 followed by n^3 followed by n followed by n^4.

Offset 1, canonical program `A110653.P15905790512607003949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653 (n : ℕ) : ℤ :=
  A110653.P15905790512607003949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115638.P2858482046055591846

`A276391(n+2)-2*A115716(n)`
-/

namespace A115638.P2858482046055591846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 2) - 2 * A115716 n

end

end A115638.P2858482046055591846

noncomputable section

/-- A115638: A Jacobsthal-related divide-and-conquer sequence.

Offset 0, canonical program `A115638.P2858482046055591846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638 (n : ℕ) : ℤ :=
  A115638.P2858482046055591846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. -/
def A115638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115733.P2511198496598610954

`A062298(A115732(n+1)-1)`
-/

namespace A115733.P2511198496598610954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A115732 (n + 1) - 1).toNat

end

end A115733.P2511198496598610954

noncomputable section

/-- A115733: prime(n)-n, repeated (prime(n)-n) times.

Offset 1, canonical program `A115733.P2511198496598610954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733 (n : ℕ) : ℤ :=
  A115733.P2511198496598610954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118824.P16499052940195568067

`-A118821(n+1)`
-/

namespace A118824.P16499052940195568067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A118821 (n + 1)

end

end A118824.P16499052940195568067

noncomputable section

/-- A118824: 2-adic continued fraction of zero, where a(n) = -2 if n is odd, A006519(n/2) otherwise.

Offset 1, canonical program `A118824.P16499052940195568067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824 (n : ℕ) : ℤ :=
  A118824.P16499052940195568067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119356.P3406510715932935683

`eq[1, A375970(n+1)]+1`
-/

namespace A119356.P3406510715932935683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119356.P3406510715932935683

noncomputable section

/-- A119356: Numbers k such that A000330(k) is squarefree.

Offset 1, canonical program `A119356.P3406510715932935683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356 (n : ℕ) : ℤ :=
  (A119356.P3406510715932935683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A119356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122698.P18060644383630824103

`A000108(A014081(n))*A036987(n)`
-/

namespace A122698.P18060644383630824103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A014081 n).toNat * A036987 n

end

end A122698.P18060644383630824103

noncomputable section

/-- A122698: a(1)=a(2)=1 then a(n) = Sum_{d|n, 1

Offset 1, canonical program `A122698.P18060644383630824103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698 (n : ℕ) : ℤ :=
  A122698.P18060644383630824103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123477.P8743366837065388473

`A035263(n+1)*A112848(n+1)`
-/

namespace A123477.P8743366837065388473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A112848 (n + 1)

end

end A123477.P8743366837065388473

noncomputable section

/-- A123477: Expansion of (1 - b(q)) / 3 in powers of q where b(q) is a cubic AGM theta function.

Offset 1, canonical program `A123477.P8743366837065388473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477 (n : ℕ) : ℤ :=
  A123477.P8743366837065388473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. -/
def A123477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123575.P4742146334013980851

`∑[A056558(abs(1-n))]`
-/

namespace A123575.P4742146334013980851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123575.P4742146334013980851

noncomputable section

/-- A123575: The Kruskal-Macaulay function L_3(n).

Offset 0, canonical program `A123575.P4742146334013980851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575 (n : ℕ) : ℤ :=
  A123575.P4742146334013980851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124585.P9964939614639913661

`A000040(lt[10, A054541(n+1)])`
-/

namespace A124585.P9964939614639913661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124585.P9964939614639913661

noncomputable section

/-- A124585: Primes p such that q-p >= 12, where q is the next prime after p.

Offset 1, canonical program `A124585.P9964939614639913661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585 (n : ℕ) : ℤ :=
  A124585.P9964939614639913661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A124585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125185.P11360573012885096283

`A115068(n+1)+A119468(n)-A038207(n)`
-/

namespace A125185.P11360573012885096283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A119468 n - A038207 n)

end

end A125185.P11360573012885096283

noncomputable section

/-- A125185: Triangle read by rows: T(n,k) is the coefficient of t^k in the polynomial S(n,t)=[(1+t)(2+t)^n+(1-t)t^n]/2 (0<=k<=n).

Offset 0, canonical program `A125185.P11360573012885096283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185 (n : ℕ) : ℤ :=
  A125185.P11360573012885096283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125266.P13168429370287137297

`A054541(n+1)+C(2, n+2)`
-/

namespace A125266.P13168429370287137297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A125266.P13168429370287137297

noncomputable section

/-- A125266: Number of repetitions in A007918.

Offset 1, canonical program `A125266.P13168429370287137297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266 (n : ℕ) : ℤ :=
  A125266.P13168429370287137297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126096.P4702891818207861137

`p?[A102655(n+1)]`
-/

namespace A126096.P4702891818207861137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126096.P4702891818207861137

noncomputable section

/-- A126096: Primes that are the arithmetic mean of four successive primes.

Offset 1, canonical program `A126096.P4702891818207861137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096 (n : ℕ) : ℤ :=
  A126096.P4702891818207861137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A126096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127335.P9630767717206448625

`A127334(n+2)+A000040(n+1)`
-/

namespace A127335.P9630767717206448625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 2) + A000040 (n + 1)

end

end A127335.P9630767717206448625

noncomputable section

/-- A127335: Numbers that are the sum of 8 successive primes.

Offset 1, canonical program `A127335.P9630767717206448625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335 (n : ℕ) : ℤ :=
  A127335.P9630767717206448625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127439.P6533677718592646859

`A054541(A002260(n+1))`
-/

namespace A127439.P6533677718592646859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A002260 (n + 1)).toNat

end

end A127439.P6533677718592646859

noncomputable section

/-- A127439: Triangle read by rows, in which row n consists of first n terms of A054541.

Offset 1, canonical program `A127439.P6533677718592646859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439 (n : ℕ) : ℤ :=
  A127439.P6533677718592646859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128078.P385746566403988126

`A127733(n+1)-A048151(n+1)`
-/

namespace A128078.P385746566403988126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127733 (n + 1) - A048151 (n + 1)

end

end A128078.P385746566403988126

noncomputable section

/-- A128078: A002260 * A128064.

Offset 1, canonical program `A128078.P385746566403988126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078 (n : ℕ) : ℤ :=
  A128078.P385746566403988126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128307.P14549488108935088319

`Δ[floor((A089633(n)+1)/2)]`
-/

namespace A128307.P14549488108935088319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089633 n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128307.P14549488108935088319

noncomputable section

/-- A128307: Triangle, (1, 0, 1, 2, 4, 8, ...) in every column.

Offset 1, canonical program `A128307.P14549488108935088319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307 (n : ℕ) : ℤ :=
  A128307.P14549488108935088319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128975.P3355518548198694362

`A079318(∑[n]%(n+1))-1`
-/

namespace A128975.P3355518548198694362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079318 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) - 1

end

end A128975.P3355518548198694362

noncomputable section

/-- A128975: a(n) = the number of unordered triples of integers (a,b,c) with a+b+c=n, whose bitwise XOR is zero. Equivalently, the number of three-heap nim games with n stones which are in a losing position for the first player.

Offset 1, canonical program `A128975.P3355518548198694362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975 (n : ℕ) : ℤ :=
  A128975.P3355518548198694362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129996.P8436117696571961404

`A129110(n+1)-A129110(n)`
-/

namespace A129996.P8436117696571961404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129110 (n + 1) - A129110 n

end

end A129996.P8436117696571961404

noncomputable section

/-- A129996: a(n) = (-1)^[(n+1)/2] A000108([n/2]+1).

Offset 0, canonical program `A129996.P8436117696571961404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996 (n : ℕ) : ℤ :=
  A129996.P8436117696571961404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130123.P13186316548061333637

`ceil(A131436(n+1)/2)`
-/

namespace A130123.P13186316548061333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131436 (n + 1) : ℚ) / 2⌉

end

end A130123.P13186316548061333637

noncomputable section

/-- A130123: Infinite lower triangular matrix with 2^k in the right diagonal and the rest zeros. Triangle, T(n,k), n zeros followed by the term 2^k. Triangle by columns, (2^k, 0, 0, 0, ...).

Offset 0, canonical program `A130123.P13186316548061333637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123 (n : ℕ) : ℤ :=
  A130123.P13186316548061333637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130493.P8627485629605810220

`∏[A130296(n+1)]`
-/

namespace A130493.P8627485629605810220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A130493.P8627485629605810220

noncomputable section

/-- A130493: Triangle read by rows in which row n contains n! repeated n times.

Offset 1, canonical program `A130493.P8627485629605810220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A130493 (n : ℕ) : ℤ :=
  A130493.P8627485629605810220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A130493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130654.P16019514325048993052

`A007814(A092505(n+1))`
-/

namespace A130654.P16019514325048993052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A092505 (n + 1)).toNat

end

end A130654.P16019514325048993052

noncomputable section

/-- A130654: Exponent m such that 2^m = A092505(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A130654.P16019514325048993052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654 (n : ℕ) : ℤ :=
  A130654.P16019514325048993052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131033.P4849263893902669054

`A130296(n+1)+A023532(n)`
-/

namespace A131033.P4849263893902669054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A023532 n

end

end A131033.P4849263893902669054

noncomputable section

/-- A131033: A130296 * A097806.

Offset 1, canonical program `A131033.P4849263893902669054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131033 (n : ℕ) : ℤ :=
  A131033.P4849263893902669054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131230.P12113415605304049017

`2*A130296(n+1)-A128174(n+1)`
-/

namespace A131230.P12113415605304049017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130296 (n + 1) - A128174 (n + 1)

end

end A131230.P12113415605304049017

noncomputable section

/-- A131230: Triangle read by rows: 2*A130296 - A128174.

Offset 1, canonical program `A131230.P12113415605304049017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131230 (n : ℕ) : ℤ :=
  A131230.P12113415605304049017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131819.P2025527271162077959

`A049777(n+1)+A130296(n+1)-1`
-/

namespace A131819.P2025527271162077959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A130296 (n + 1) - 1)

end

end A131819.P2025527271162077959

noncomputable section

/-- A131819: A131818 * A000012 as infinite lower triangular matrices. Triangle read by rows, partial sums starting from the right of A131818.

Offset 1, canonical program `A131819.P2025527271162077959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131819 (n : ℕ) : ℤ :=
  A131819.P2025527271162077959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131821.P13312494062197045656

`val(A131816(n), 2)+1`
-/

namespace A131821.P13312494062197045656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131816 n).toNat 2 + 1

end

end A131821.P13312494062197045656

noncomputable section

/-- A131821: Triangle read by rows: row n consists of n followed by (n-2) ones then n.

Offset 1, canonical program `A131821.P13312494062197045656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821 (n : ℕ) : ℤ :=
  (A131821.P13312494062197045656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131889.P15177915861031452150

`A000244(A343754(n))`
-/

namespace A131889.P15177915861031452150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A343754 n).toNat

end

end A131889.P15177915861031452150

noncomputable section

/-- A131889: a(n) is the number of shapes of balanced trees with constant branching factor 3 and n nodes. The node is balanced if the size, measured in nodes, of each pair of its children differ by at most one node.

Offset 0, canonical program `A131889.P15177915861031452150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889 (n : ℕ) : ℤ :=
  A131889.P15177915861031452150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A131889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131896.P2691452553355634035

`A094727(n+1)*A130296(n+1)`
-/

namespace A131896.P2691452553355634035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A130296 (n + 1)

end

end A131896.P2691452553355634035

noncomputable section

/-- A131896: A000012 * A131843.

Offset 1, canonical program `A131896.P2691452553355634035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131896 (n : ℕ) : ℤ :=
  A131896.P2691452553355634035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131953.P6052148491130598522

`A131816(n)+1-A097807(n)`
-/

namespace A131953.P6052148491130598522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + (1 - A097807 n)

end

end A131953.P6052148491130598522

noncomputable section

/-- A131953: A130321 + A059268 - A000012(signed).

Offset 0, canonical program `A131953.P6052148491130598522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953 (n : ℕ) : ℤ :=
  A131953.P6052148491130598522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132119.P14999219633576669522

`A000027(A130296(n+1)+n)`
-/

namespace A132119.P14999219633576669522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130296 (n + 1) + (n : ℤ)).toNat

end

end A132119.P14999219633576669522

noncomputable section

/-- A132119: A002260 + A000027 - A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A132119.P14999219633576669522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132119 (n : ℕ) : ℤ :=
  A132119.P14999219633576669522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132808.P15259316369820012761

`A000108(A130296(n+1))*A001263(n+1)`
-/

namespace A132808.P15259316369820012761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A130296 (n + 1)).toNat * A001263 (n + 1)

end

end A132808.P15259316369820012761

noncomputable section

/-- A132808: A001263 * A103451 as infinite lower triangular matrices.

Offset 1, canonical program `A132808.P15259316369820012761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132808 (n : ℕ) : ℤ :=
  A132808.P15259316369820012761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133545.P7259488329024112066

`A131415(n)+A014473(n)`
-/

namespace A133545.P7259488329024112066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 n + A014473 n

end

end A133545.P7259488329024112066

noncomputable section

/-- A133545: (A000012 * A007318 - A007318 * A000012) - A000012.

Offset 1, canonical program `A133545.P7259488329024112066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545 (n : ℕ) : ℤ :=
  A133545.P7259488329024112066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133562.P2922805213875527912

`A131686(n+3)+A069484(n+1)`
-/

namespace A133562.P2922805213875527912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 3) + A069484 (n + 1)

end

end A133562.P2922805213875527912

noncomputable section

/-- A133562: Numbers which are the sum of the squares of seven consecutive primes.

Offset 1, canonical program `A133562.P2922805213875527912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562 (n : ℕ) : ℤ :=
  A133562.P2922805213875527912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A133562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134566.P16325399016545697471

`A000045(A085058(record[A048724(n)+1]))`
-/

namespace A134566.P16325399016545697471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A134566.P16325399016545697471

noncomputable section

/-- A134566: a(n) = least m such that {-m*tau} > {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

Offset 1, canonical program `A134566.P16325399016545697471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566 (n : ℕ) : ℤ :=
  A134566.P16325399016545697471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A134566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135764.P14448543870011279856

`A075302(n)+1`
-/

namespace A135764.P14448543870011279856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 n + 1

end

end A135764.P14448543870011279856

noncomputable section

/-- A135764: Distribute the natural numbers in columns based on the occurrence of "2" in each prime factorization; square array A(row,col) = 2^(row-1) * ((2*col)-1), read by descending antidiagonals.

Offset 1, canonical program `A135764.P14448543870011279856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764 (n : ℕ) : ℤ :=
  A135764.P14448543870011279856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138454.P7090914024500942586

`A138442(n+1)-A138419(n+1)`
-/

namespace A138454.P7090914024500942586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138442 (n + 1) - A138419 (n + 1)

end

end A138454.P7090914024500942586

noncomputable section

/-- A138454: a(n) = ((n-th prime)^6-(n-th prime)^4)/3.

Offset 1, canonical program `A138454.P7090914024500942586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454 (n : ℕ) : ℤ :=
  A138454.P7090914024500942586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138455.P8102202229354700522

`A138443(n+1)-A138420(n+1)`
-/

namespace A138455.P8102202229354700522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138443 (n + 1) - A138420 (n + 1)

end

end A138455.P8102202229354700522

noncomputable section

/-- A138455: a(n) = ((n-th prime)^6-(n-th prime)^4)/4.

Offset 1, canonical program `A138455.P8102202229354700522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455 (n : ℕ) : ℤ :=
  A138455.P8102202229354700522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138456.P16217539803196154374

`A138445(n+1)-A138421(n+1)`
-/

namespace A138456.P16217539803196154374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A138421 (n + 1)

end

end A138456.P16217539803196154374

noncomputable section

/-- A138456: a(n) = ((n-th prime)^6-(n-th prime)^4)/6.

Offset 1, canonical program `A138456.P16217539803196154374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456 (n : ℕ) : ℤ :=
  A138456.P16217539803196154374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138830.P7169071661950621730

`A132999(2*(n+1))`
-/

namespace A138830.P7169071661950621730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (2 * (n + 1))

end

end A138830.P7169071661950621730

noncomputable section

/-- A138830: Bisection of imperfect numbers A132999.

Offset 1, canonical program `A138830.P7169071661950621730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830 (n : ℕ) : ℤ :=
  A138830.P7169071661950621730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004732.P14447255711085556585

`gcd(A004730(n), A126120(n+1))`
-/

namespace A004732.P14447255711085556585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004730 n) (A126120 (n + 1))

end

end A004732.P14447255711085556585

noncomputable section

/-- A004732: Numerator of n!!/(n+3)!!.

Offset 0, canonical program `A004732.P14447255711085556585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732 (n : ℕ) : ℤ :=
  (A004732.P14447255711085556585.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A004732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004733.P5302531551978956282

`lcm(A004730(n+3), A004731(n+2))`
-/

namespace A004733.P5302531551978956282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004730 (n + 3)) (A004731 (n + 2))

end

end A004733.P5302531551978956282

noncomputable section

/-- A004733: Denominator of n!!/(n+3)!!.

Offset 0, canonical program `A004733.P5302531551978956282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733 (n : ℕ) : ℤ :=
  (A004733.P5302531551978956282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A004733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004734.P8169358669113051099

`A004730(n+1)*A010685(n)`
-/

namespace A004734.P8169358669113051099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (n + 1) * A010685 n

end

end A004734.P8169358669113051099

noncomputable section

/-- A004734: Numerator of average distance traveled by n-dimensional fly.

Offset 1, canonical program `A004734.P8169358669113051099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734 (n : ℕ) : ℤ :=
  A004734.P8169358669113051099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A004734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007932.P4019058118128328590

`A007090(A023705(n+1))`
-/

namespace A007932.P4019058118128328590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023705 (n + 1)).toNat

end

end A007932.P4019058118128328590

noncomputable section

/-- A007932: Numbers that contain only 1's, 2's and 3's.

Offset 1, canonical program `A007932.P4019058118128328590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932 (n : ℕ) : ℤ :=
  A007932.P4019058118128328590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A007932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008358.P11668116640377738616

`∑[A008357(n)]`
-/

namespace A008358.P11668116640377738616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008358.P11668116640377738616

noncomputable section

/-- A008358: Crystal ball sequence for D_6 lattice.

Offset 0, canonical program `A008358.P11668116640377738616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008358 (n : ℕ) : ℤ :=
  A008358.P11668116640377738616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008366.P17453301044158756852

`eq[1, gcd(n, A046324(gcd(n, n+1)))]`
-/

namespace A008366.P17453301044158756852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046324 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008366.P17453301044158756852

noncomputable section

/-- A008366: Smallest prime factor is >= 17.

Offset 1, canonical program `A008366.P17453301044158756852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366 (n : ℕ) : ℤ :=
  (A008366.P17453301044158756852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A008366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008495.P17411499091848740106

`∑[A008494(n)+A001287(n)]-A008494(n)`
-/

namespace A008495.P17411499091848740106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008494 n + A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008494 n

end

end A008495.P17411499091848740106

noncomputable section

/-- A008495: Expansion of (1-x^13) / (1-x)^13.

Offset 0, canonical program `A008495.P17411499091848740106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495 (n : ℕ) : ℤ :=
  A008495.P17411499091848740106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014311.P14315375804036944727

`2^A056558(n)+2^A194848(n)+2^A194847(n)`
-/

namespace A014311.P14315375804036944727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056558 n : ℤ) + (2 : ℚ) ^ (A194848 n : ℤ) + (2 : ℚ) ^ (A194847 n : ℤ)

end

end A014311.P14315375804036944727

noncomputable section

/-- A014311: Numbers with exactly 3 ones in binary expansion.

Offset 1, canonical program `A014311.P14315375804036944727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014311.P14315375804036944727.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056558, A194847, A194848, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A014311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A019465.P1486875116561325780

`A019464(n)+A065033(n)!`
-/

namespace A019465.P1486875116561325780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019465.P1486875116561325780

noncomputable section

/-- A019465: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 2.

Offset 0, canonical program `A019465.P1486875116561325780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465 (n : ℕ) : ℤ :=
  A019465.P1486875116561325780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A019465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019551.P12101301121661445223

`A248038(n+1)/3+2*(n+1)`
-/

namespace A019551.P12101301121661445223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248038 (n + 1) : ℚ) / 3 + (2 * (n + 1) : ℚ)

end

end A019551.P12101301121661445223

noncomputable section

/-- A019551: a(n) is the concatenation of n and 3n.

Offset 1, canonical program `A019551.P12101301121661445223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019551.P12101301121661445223.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020944.P8623549795546838227

`A020952(n)-3*A020951(n)`
-/

namespace A020944.P8623549795546838227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020952 n - 3 * A020951 n

end

end A020944.P8623549795546838227

noncomputable section

/-- A020944: a(2n+1) = |a(2n) - a(2n-1)|, a(2n) = a(n) + a(n-1), a(0) = -1.

Offset 0, canonical program `A020944.P8623549795546838227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944 (n : ℕ) : ℤ :=
  A020944.P8623549795546838227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022306.P10782893219587604583

`A022305(n)/2`
-/

namespace A022306.P10782893219587604583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022305 n : ℚ) / 2

end

end A022306.P10782893219587604583

noncomputable section

/-- A022306: Sequence A022305 divided by 2.

Offset 0, canonical program `A022306.P10782893219587604583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022306.P10782893219587604583.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022433.P5885580325791089761

`xor(n%2, A022429(n))`
-/

namespace A022433.P5885580325791089761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A022429 n)

end

end A022433.P5885580325791089761

noncomputable section

/-- A022433: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

Offset 0, canonical program `A022433.P5885580325791089761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433 (n : ℕ) : ℤ :=
  A022433.P5885580325791089761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022888.P5027841816580517114

`eq[A054541(n+1), A054541(n+5)]`
-/

namespace A022888.P5027841816580517114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022888.P5027841816580517114

noncomputable section

/-- A022888: n-th prime p(k) such that p(k) + p(k+5) = p(k+1) + p(k+4).

Offset 1, canonical program `A022888.P5027841816580517114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888 (n : ℕ) : ℤ :=
  (A022888.P5027841816580517114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A022888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022891.P5018532674174448617

`A000040(A022890(n+1))`
-/

namespace A022891.P5018532674174448617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022890 (n + 1)).toNat

end

end A022891.P5018532674174448617

noncomputable section

/-- A022891: n-th prime p(k) such that p(k) + p(k+6) = p(k+2) + p(k+4).

Offset 1, canonical program `A022891.P5018532674174448617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022891 (n : ℕ) : ℤ :=
  A022891.P5018532674174448617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A022891.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023134.P11930322177379065047

`∑{d}[3^A073189(n), A007814(2*#)]`
-/

namespace A023134.P11930322177379065047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A073189 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007814 (2 * d)

end

end A023134.P11930322177379065047

noncomputable section

/-- A023134: Signature sequence of 1/Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

Offset 1, canonical program `A023134.P11930322177379065047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134 (n : ℕ) : ℤ :=
  A023134.P11930322177379065047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A023134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023520.P5755508264215607282

`A007814(A023515(n+2))`
-/

namespace A023520.P5755508264215607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023515 (n + 2)).toNat

end

end A023520.P5755508264215607282

noncomputable section

/-- A023520: Exponent of 2 in prime factorization of prime(n)*prime(n-1) - 1.

Offset 2, canonical program `A023520.P5755508264215607282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520 (n : ℕ) : ℤ :=
  A023520.P5755508264215607282.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023524.P17182310907286821232

`∑{e}[A023523(n+1), gcd(11, #)]`
-/

namespace A023524.P17182310907286821232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 11 (Nat.factorization (f1 n).natAbs p)

end

end A023524.P17182310907286821232

noncomputable section

/-- A023524: Number of distinct prime divisors of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023524.P17182310907286821232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524 (n : ℕ) : ℤ :=
  (A023524.P17182310907286821232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023528.P14073637690515097702

`A007814(A023523(n+1))`
-/

namespace A023528.P14073637690515097702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A023523 (n + 1)).toNat

end

end A023528.P14073637690515097702

noncomputable section

/-- A023528: Exponent of 2 in prime factorization of prime(n)*prime(n-1) + 1.

Offset 1, canonical program `A023528.P14073637690515097702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528 (n : ℕ) : ℤ :=
  A023528.P14073637690515097702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A023528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A023529.P12403804853711803308

`∑{p}[A023523(n+1), #]`
-/

namespace A023529.P12403804853711803308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A023529.P12403804853711803308

noncomputable section

/-- A023529: Sum of distinct prime divisors of p(n)*p(n-1) + 1.

Offset 1, canonical program `A023529.P12403804853711803308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529 (n : ℕ) : ℤ :=
  (A023529.P12403804853711803308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A023529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023758.P2175844917401416234

`A057728(n)+a(n-1)` with `a(0)=0`
-/

namespace A023758.P2175844917401416234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057728 n + a (n - 1)

end

end A023758.P2175844917401416234

noncomputable section

/-- A023758: Numbers of the form 2^i - 2^j with i >= j.

Offset 1, canonical program `A023758.P2175844917401416234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758 (n : ℕ) : ℤ :=
  A023758.P2175844917401416234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024314.P2143404515256360905

`A024310(n+1)+A024310(n+1)-A023861(n+1)`
-/

namespace A024314.P2143404515256360905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) + (A024310 (n + 1) - A023861 (n + 1))

end

end A024314.P2143404515256360905

noncomputable section

/-- A024314: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3), t = A023532.

Offset 1, canonical program `A024314.P2143404515256360905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024314 (n : ℕ) : ℤ :=
  A024314.P2143404515256360905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A024314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024592.P4824825726536328379

`A213774(∑[n+1]-(or(1, n)-1)/2)`
-/

namespace A024592.P4824825726536328379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A024592.P4824825726536328379

noncomputable section

/-- A024592: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (F(2), F(3), ...), t = (odd natural numbers).

Offset 1, canonical program `A024592.P4824825726536328379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A024592 (n : ℕ) : ℤ :=
  A024592.P4824825726536328379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A024592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024718.P9617034669250128048

`1/2*(1+A006134(n))`
-/

namespace A024718.P9617034669250128048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A006134 n : ℚ)

end

end A024718.P9617034669250128048

noncomputable section

/-- A024718: a(n) = (1/2)*(1 + Sum_{k=0..n} binomial(2*k, k)).

Offset 0, canonical program `A024718.P9617034669250128048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024718.P9617034669250128048.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025093.P5417694836519234021

`A025106(n+1)+A025106(n+1)-A025083(n+1)`
-/

namespace A025093.P5417694836519234021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025106 (n + 1) + (A025106 (n + 1) - A025083 (n + 1))

end

end A025093.P5417694836519234021

noncomputable section

/-- A025093: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (Lucas numbers), t = (odd natural numbers).

Offset 1, canonical program `A025093.P5417694836519234021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025093 (n : ℕ) : ℤ :=
  A025093.P5417694836519234021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A025093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026086.P5314015387268716224

`Δ[A026070(n+3)]`
-/

namespace A026086.P5314015387268716224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026086.P5314015387268716224

noncomputable section

/-- A026086: Number of (s(0), s(1), ..., s(n)) such that s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 3; also a(n) = T(n,n-3), where T is the array defined in A026082.

Offset 4, canonical program `A026086.P5314015387268716224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086 (n : ℕ) : ℤ :=
  A026086.P5314015387268716224.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A026086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026124.P5705506064951519193

`Δ[A026123(n+2)-A026107(n+2)]`
-/

namespace A026124.P5705506064951519193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 2) - A026107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026124.P5705506064951519193

noncomputable section

/-- A026124: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 3, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-2), where T is the array in A026120.

Offset 2, canonical program `A026124.P5705506064951519193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124 (n : ℕ) : ℤ :=
  A026124.P5705506064951519193.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026325.P12326969144217981572

`2*A026134(n+1)-A005322(n+2)`
-/

namespace A026325.P12326969144217981572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (n + 1) - A005322 (n + 2)

end

end A026325.P12326969144217981572

noncomputable section

/-- A026325: Number of paths in the plane x >= 0 and y >= -2, from (0,0) to (n,0), and consisting of steps U = (1,1), D = (1,-1) and H = (1,0).

Offset 0, canonical program `A026325.P12326969144217981572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325 (n : ℕ) : ℤ :=
  A026325.P12326969144217981572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A026325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026610.P12474859572976114036

`2-A026608(n+1)`
-/

namespace A026610.P12474859572976114036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026608 (n + 1)

end

end A026610.P12474859572976114036

noncomputable section

/-- A026610: a(n) = number of 1's between n-th 2 and (n+1)st 2 in A026600.

Offset 1, canonical program `A026610.P12474859572976114036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610 (n : ℕ) : ℤ :=
  A026610.P12474859572976114036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026726.P4620029716739878414

`A026674(n+1)+A000108(n)-A026671(n)`
-/

namespace A026726.P4620029716739878414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) + (A000108 n - A026671 n)

end

end A026726.P4620029716739878414

noncomputable section

/-- A026726: a(n) = T(2n,n), T given by A026725.

Offset 0, canonical program `A026726.P4620029716739878414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026726 (n : ℕ) : ℤ :=
  A026726.P4620029716739878414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A026726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026844.P16406587500471255430

`A026674(n+3)-Δ[A000344(n+3)]`
-/

namespace A026844.P16406587500471255430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 3) - (f1 (n + 1) - f1 n)

end

end A026844.P16406587500471255430

noncomputable section

/-- A026844: a(n) = T(2n,n+4), T given by A026725.

Offset 4, canonical program `A026844.P16406587500471255430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844 (n : ℕ) : ℤ :=
  A026844.P16406587500471255430.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A026844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027260.P16526017121427228600

`A026070(2*(n+3))`
-/

namespace A027260.P16526017121427228600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (2 * (n + 3))

end

end A027260.P16526017121427228600

noncomputable section

/-- A027260: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A025177.

Offset 3, canonical program `A027260.P16526017121427228600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260 (n : ℕ) : ℤ :=
  A027260.P16526017121427228600.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A027260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027707.P15810114307957499977

`A000040(A027708(n))`
-/

namespace A027707.P15810114307957499977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027708 n).toNat

end

end A027707.P15810114307957499977

noncomputable section

/-- A027707: Primes with odd number of 1's in binary expansion such that next prime also has odd number of 1's.

Offset 0, canonical program `A027707.P15810114307957499977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707 (n : ℕ) : ℤ :=
  A027707.P15810114307957499977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A027707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028264.P3210421839007678457

`A028262(eq[1, A028262(n)%2])`
-/

namespace A028264.P3210421839007678457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028262 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P3210421839007678457

noncomputable section

/-- A028264: Odd elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028264.P3210421839007678457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3214 terms. -/
def A028264 (n : ℕ) : ℤ :=
  A028264.P3210421839007678457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3214 terms. -/
def A028264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028271.P5697614823521881732

`A028262(eq[0, A152815(n)])`
-/

namespace A028271.P5697614823521881732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P5697614823521881732

noncomputable section

/-- A028271: Elements to right of central elements in 3-Pascal triangle A028262.

Offset 0, canonical program `A028271.P5697614823521881732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A028271 (n : ℕ) : ℤ :=
  A028271.P5697614823521881732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A028271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028278.P8792746108487648138

`A028277(lt[1, A028277(n)])`
-/

namespace A028278.P8792746108487648138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028278.P8792746108487648138

noncomputable section

/-- A028278: Odd elements in 4-Pascal triangle A028275 (by row) that are not 1.

Offset 0, canonical program `A028278.P8792746108487648138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9162 terms. -/
def A028278 (n : ℕ) : ℤ :=
  A028278.P8792746108487648138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9162 terms. -/
def A028278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028287.P12035701407687927913

`A028277(lt[A028277(n+1), A028277(n)])`
-/

namespace A028287.P12035701407687927913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028287.P12035701407687927913

noncomputable section

/-- A028287: Odd elements (greater than 1) to right of central elements in 4-Pascal triangle A028275.

Offset 0, canonical program `A028287.P12035701407687927913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A028287 (n : ℕ) : ℤ :=
  A028287.P12035701407687927913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. -/
def A028287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028315.P11191738613000279177

`A028313(eq[1, A028313(n)%2])`
-/

namespace A028315.P11191738613000279177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028313 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028315.P11191738613000279177

noncomputable section

/-- A028315: Odd elements in the 5-Pascal triangle A028313.

Offset 0, canonical program `A028315.P11191738613000279177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A028315 (n : ℕ) : ℤ :=
  A028315.P11191738613000279177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A028315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028954.P10015280007482825137

`lt[A007814(A211422(n)), A028609(n)]`
-/

namespace A028954.P10015280007482825137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A211422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P10015280007482825137

noncomputable section

/-- A028954: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 6 ]. (divided by 2).

Offset 1, canonical program `A028954.P10015280007482825137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954 (n : ℕ) : ℤ :=
  (A028954.P10015280007482825137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A028954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029235.P12349426323057609679

`A025827(n)+A029202(n)-A029213(n)`
-/

namespace A029235.P12349426323057609679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n + (A029202 n - A029213 n)

end

end A029235.P12349426323057609679

noncomputable section

/-- A029235: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029235.P12349426323057609679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235 (n : ℕ) : ℤ :=
  A029235.P12349426323057609679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029446.P13331593502067792089

`A029411(n)+∑[A029428(n)-A029411(n)]`
-/

namespace A029446.P13331593502067792089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n - A029411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029446.P13331593502067792089

noncomputable section

/-- A029446: Expansion of 1/((1-x^9)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029446.P13331593502067792089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446 (n : ℕ) : ℤ :=
  A029446.P13331593502067792089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029632.P1805722220011820677

`A029621(lt[A029621(n), A029620(n)])`
-/

namespace A029632.P1805722220011820677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029632.P1805722220011820677

noncomputable section

/-- A029632: Numbers to right of central elements of the (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029632.P1805722220011820677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A029632 (n : ℕ) : ℤ :=
  A029632.P1805722220011820677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A029632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029657.P10201678815065626017

`A029669(lt[1, A029669(n)])`
-/

namespace A029657.P10201678815065626017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029657.P10201678815065626017

noncomputable section

/-- A029657: Odd numbers in (2,1)-Pascal triangle A029653 that are different from 1.

Offset 0, canonical program `A029657.P10201678815065626017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657 (n : ℕ) : ℤ :=
  A029657.P10201678815065626017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031925.P10904826335426229622

`A031924(n+1)+6`
-/

namespace A031925.P10904826335426229622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) + 6

end

end A031925.P10904826335426229622

noncomputable section

/-- A031925: Upper prime of a difference of 6 between consecutive primes.

Offset 1, canonical program `A031925.P10904826335426229622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925 (n : ℕ) : ℤ :=
  A031925.P10904826335426229622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031948.P11177612134455942008

`eq[A290825(n)+A088917(n), A189820(n+1)]`
-/

namespace A031948.P11177612134455942008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A088917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031948.P11177612134455942008

noncomputable section

/-- A031948: Numbers with exactly two distinct base-3 digits.

Offset 1, canonical program `A031948.P11177612134455942008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948 (n : ℕ) : ℤ :=
  (A031948.P11177612134455942008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A031948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032939.P14752265326544919997

`record[A123108(abs(A320283(n)))]`
-/

namespace A032939.P14752265326544919997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 |A320283 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032939.P14752265326544919997

noncomputable section

/-- A032939: Numbers whose base-4 representation Sum_{i=0..m} d(i)*4^(m-i) has d(i)=0 for all odd i.

Offset 1, canonical program `A032939.P14752265326544919997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939 (n : ℕ) : ℤ :=
  A032939.P14752265326544919997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A032939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033157.P10781485780208723287

`A185256(n+1)+1`
-/

namespace A033157.P10781485780208723287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + 1

end

end A033157.P10781485780208723287

noncomputable section

/-- A033157: Begins with (1, 4); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033157.P10781485780208723287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157 (n : ℕ) : ℤ :=
  A033157.P10781485780208723287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033549.P17073948200287688934

`∩[A154313(n+1), A258876(n+1)]`
-/

namespace A033549.P17073948200287688934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033549.P17073948200287688934

noncomputable section

/-- A033549: Numbers k such that sum of digits of k-th prime equals sum of digits of k.

Offset 1, canonical program `A033549.P17073948200287688934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549 (n : ℕ) : ℤ :=
  (A033549.P17073948200287688934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A033549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033597.P3717635916819908974

`ceil(sqrt(A013638(n+4)))`
-/

namespace A033597.P3717635916819908974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A013638 (n + 4) : ℝ)⌉

end

end A033597.P3717635916819908974

noncomputable section

/-- A033597: (nextprime(n)+prevprime(n))/2.

Offset 4, canonical program `A033597.P3717635916819908974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597 (n : ℕ) : ℤ :=
  A033597.P3717635916819908974.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033873.P18414686977204439608

`A003617(n+1)-10^n`
-/

namespace A033873.P18414686977204439608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) - (10 ^ n : ℤ)

end

end A033873.P18414686977204439608

noncomputable section

/-- A033873: Difference between first prime > 10^n (A003617) and 10^n.

Offset 0, canonical program `A033873.P18414686977204439608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873 (n : ℕ) : ℤ :=
  A033873.P18414686977204439608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033873.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033946.P5008854941610242731

`lt[A048050(n+1), A054541(xor(1, n)+1)]+1`
-/

namespace A033946.P5008854941610242731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033946.P5008854941610242731

noncomputable section

/-- A033946: Values of n corresponding to A033945.

Offset 1, canonical program `A033946.P5008854941610242731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946 (n : ℕ) : ℤ :=
  (A033946.P5008854941610242731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. -/
def A033946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035252.P13797268032333054032

`lt[0, A035186(n+1)]+1`
-/

namespace A035252.P13797268032333054032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035252.P13797268032333054032

noncomputable section

/-- A035252: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= 3.

Offset 1, canonical program `A035252.P13797268032333054032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252 (n : ℕ) : ℤ :=
  (A035252.P13797268032333054032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2094 terms. -/
def A035252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036069.P1575067081743271746

`gcd(2, n+1)*A004730(abs(A024000(n)))`
-/

namespace A036069.P1575067081743271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A004730 |A024000 n|.toNat

end

end A036069.P1575067081743271746

noncomputable section

/-- A036069: Denominator of rational part of Haar measure on Grassmannian space G(n,1).

Offset 0, canonical program `A036069.P1575067081743271746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069 (n : ℕ) : ℤ :=
  A036069.P1575067081743271746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A036069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037958.P1538083685878928086

`A037954(n+1)-A037957(n)`
-/

namespace A037958.P1538083685878928086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037954 (n + 1) - A037957 n

end

end A037958.P1538083685878928086

noncomputable section

/-- A037958: a(n) = binomial(n, floor((n-8)/2)).

Offset 0, canonical program `A037958.P1538083685878928086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958 (n : ℕ) : ℤ :=
  A037958.P1538083685878928086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A037958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038302.P8800221940297156874

`A038296(n)*A059268(n)`
-/

namespace A038302.P8800221940297156874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038296 n * A059268 n

end

end A038302.P8800221940297156874

noncomputable section

/-- A038302: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*12^j.

Offset 0, canonical program `A038302.P8800221940297156874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302 (n : ℕ) : ℤ :=
  A038302.P8800221940297156874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039276.P4466623649426209317

`∩[A031452(n+1), A081605(n+1)]`
-/

namespace A039276.P4466623649426209317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039276.P4466623649426209317

noncomputable section

/-- A039276: Numbers whose base-3 representation has the same nonzero number of 0's and 2's.

Offset 1, canonical program `A039276.P4466623649426209317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276 (n : ℕ) : ℤ :=
  (A039276.P4466623649426209317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A039276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043575.P18156973941041410115

`filter[A043740(n+2), A354034(#)]`
-/

namespace A043575.P18156973941041410115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043740 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A043575.P18156973941041410115

noncomputable section

/-- A043575: Numbers whose base-2 representation has exactly 8 runs.

Offset 1, canonical program `A043575.P18156973941041410115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575 (n : ℕ) : ℤ :=
  A043575.P18156973941041410115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. -/
def A043575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043707.P15463448008099908181

`eq[1, A043556(n+1)%2]+1`
-/

namespace A043707.P15463448008099908181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A043707.P15463448008099908181

noncomputable section

/-- A043707: Numbers whose base-4 representation has an odd number of runs.

Offset 1, canonical program `A043707.P15463448008099908181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707 (n : ℕ) : ℤ :=
  (A043707.P15463448008099908181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5022 terms. -/
def A043707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043827.P12446963303425026454

`lt[1, A043556(n)%3]`
-/

namespace A043827.P12446963303425026454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043827.P12446963303425026454

noncomputable section

/-- A043827: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 3.

Offset 1, canonical program `A043827.P12446963303425026454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827 (n : ℕ) : ℤ :=
  (A043827.P12446963303425026454.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3320 terms. -/
def A043827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043830.P1846640742485076920

`eq[2, A043556(n)%4]`
-/

namespace A043830.P1846640742485076920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043556 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043830.P1846640742485076920

noncomputable section

/-- A043830: Numbers k such that number of runs in the base 4 representation of k is congruent to 2 mod 4.

Offset 1, canonical program `A043830.P1846640742485076920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830 (n : ℕ) : ℤ :=
  (A043830.P1846640742485076920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3053 terms. -/
def A043830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045023.P5595946791580993158

`∩[A023707(n+1), A023709(n+1)]`
-/

namespace A045023.P5595946791580993158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045023.P5595946791580993158

noncomputable section

/-- A045023: Numbers whose base-4 representation contains exactly two 0's and no 1's.

Offset 1, canonical program `A045023.P5595946791580993158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023 (n : ℕ) : ℤ :=
  (A045023.P5595946791580993158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. -/
def A045023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045043.P7689654534827955149

`∩[A023714(n+1), A043333(n+1)]`
-/

namespace A045043.P7689654534827955149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P7689654534827955149

noncomputable section

/-- A045043: Numbers whose base-4 representation contains exactly one 0 and one 2.

Offset 1, canonical program `A045043.P7689654534827955149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043 (n : ℕ) : ℤ :=
  (A045043.P7689654534827955149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. -/
def A045043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045047.P1732137570799864261

`∩[A023707(n+1), A023713(n+1)]`
-/

namespace A045047.P1732137570799864261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045047.P1732137570799864261

noncomputable section

/-- A045047: Numbers whose base-4 representation contains exactly two 0's and no 2's.

Offset 1, canonical program `A045047.P1732137570799864261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047 (n : ℕ) : ℤ :=
  (A045047.P1732137570799864261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A045047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045048.P8487223918955922511

`∩[A023707(n+1), A023714(n+1)]`
-/

namespace A045048.P8487223918955922511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045048.P8487223918955922511

noncomputable section

/-- A045048: Numbers whose base-4 representation contains exactly two 0's and one 2.

Offset 1, canonical program `A045048.P8487223918955922511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048 (n : ℕ) : ℤ :=
  (A045048.P8487223918955922511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A045048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045049.P13394764454737454766

`∩[A023707(n+1), A023715(n+1)]`
-/

namespace A045049.P13394764454737454766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P13394764454737454766

noncomputable section

/-- A045049: Numbers whose base-4 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045049.P13394764454737454766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049 (n : ℕ) : ℤ :=
  (A045049.P13394764454737454766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A045049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045062.P7454481286317021680

`∩[A023705(n+1), A031466(n+1)]`
-/

namespace A045062.P7454481286317021680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045062.P7454481286317021680

noncomputable section

/-- A045062: Numbers whose base-4 representation contains no 0's and exactly one 3.

Offset 1, canonical program `A045062.P7454481286317021680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062 (n : ℕ) : ℤ :=
  (A045062.P7454481286317021680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A045062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045072.P10813795932210976576

`∩[A023707(n+1), A031462(n+1)]`
-/

namespace A045072.P10813795932210976576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045072.P10813795932210976576

noncomputable section

/-- A045072: Numbers whose base-4 representation contains exactly two 0's and one 3.

Offset 1, canonical program `A045072.P10813795932210976576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072 (n : ℕ) : ℤ :=
  (A045072.P10813795932210976576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A045072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045073.P1760494440290000566

`∩[A023707(n+1), A023719(n+1)]`
-/

namespace A045073.P1760494440290000566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P1760494440290000566

noncomputable section

/-- A045073: Numbers whose base-4 representation contains exactly two 0's and two 3's.

Offset 1, canonical program `A045073.P1760494440290000566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073 (n : ℕ) : ℤ :=
  (A045073.P1760494440290000566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A045073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045074.P14332834374997068054

`∩[A023707(n+1), A031466(n+1)]`
-/

namespace A045074.P14332834374997068054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045074.P14332834374997068054

noncomputable section

/-- A045074: Numbers whose base-4 representation contains exactly two 0's and three 3's.

Offset 1, canonical program `A045074.P14332834374997068054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074 (n : ℕ) : ℤ :=
  (A045074.P14332834374997068054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. -/
def A045074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045154.P2972587594266397419

`eq[48, A338854(n)]`
-/

namespace A045154.P2972587594266397419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045154.P2972587594266397419

noncomputable section

/-- A045154: Numbers whose base-4 representation contains exactly four 2's and one 3.

Offset 1, canonical program `A045154.P2972587594266397419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154 (n : ℕ) : ℤ :=
  (A045154.P2972587594266397419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A045154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045166.P14364888551667959188

`∩[A023723(n+1), A023726(n+1)]`
-/

namespace A045166.P14364888551667959188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045166.P14364888551667959188

noncomputable section

/-- A045166: Numbers whose base-5 representation contains exactly two 0's and one 1.

Offset 1, canonical program `A045166.P14364888551667959188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166 (n : ℕ) : ℤ :=
  (A045166.P14364888551667959188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A045166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045182.P1485399016686548528

`∩[A023723(n+1), A023731(n+1)]`
-/

namespace A045182.P1485399016686548528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P1485399016686548528

noncomputable section

/-- A045182: Numbers whose base-5 representation contains exactly two 0's and two 2's.

Offset 1, canonical program `A045182.P1485399016686548528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182 (n : ℕ) : ℤ :=
  (A045182.P1485399016686548528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A045182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045211.P7222316058856117847

`∩[A023723(n+1), A023738(n+1)]`
-/

namespace A045211.P7222316058856117847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045211.P7222316058856117847

noncomputable section

/-- A045211: Numbers whose base-5 representation contains exactly two 0's and one 4.

Offset 1, canonical program `A045211.P7222316058856117847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211 (n : ℕ) : ℤ :=
  (A045211.P7222316058856117847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A045211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045212.P3245334097446540218

`∩[A023723(n+1), A023739(n+1)]`
-/

namespace A045212.P3245334097446540218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P3245334097446540218

noncomputable section

/-- A045212: Numbers whose base-5 representation contains exactly two 0's and two 4's.

Offset 1, canonical program `A045212.P3245334097446540218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212 (n : ℕ) : ℤ :=
  (A045212.P3245334097446540218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. -/
def A045212.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A048717.P2461125811461192478

`∩[A004742(n+1), A077459(n+1)]`
-/

namespace A048717.P2461125811461192478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048717.P2461125811461192478

noncomputable section

/-- A048717: Binary expansion matches ((0)*00(1*)11)*(0*).

Offset 0, canonical program `A048717.P2461125811461192478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717 (n : ℕ) : ℤ :=
  (A048717.P2461125811461192478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A048717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049080.P2111203104462640786

`A000040(A049079(n+1))`
-/

namespace A049080.P2111203104462640786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049079 (n + 1)).toNat

end

end A049080.P2111203104462640786

noncomputable section

/-- A049080: Primes prime(k) for which A049076(k) = 4.

Offset 1, canonical program `A049080.P2111203104462640786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049080 (n : ℕ) : ℤ :=
  A049080.P2111203104462640786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049080.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A050207.P7324394721812478698

`p?[A050200(n)]`
-/

namespace A050207.P7324394721812478698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050207.P7324394721812478698

noncomputable section

/-- A050207: Primes of the form p + (smallest prime >= p+1) + (smallest prime >= p+3) where p is a prime.

Offset 1, canonical program `A050207.P7324394721812478698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207 (n : ℕ) : ℤ :=
  A050207.P7324394721812478698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. -/
def A050207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050438.P7936861514397192088

`A002808(A050436(n+1))`
-/

namespace A050438.P7936861514397192088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A050436 (n + 1)).toNat

end

end A050438.P7936861514397192088

noncomputable section

/-- A050438: Fourth-order composites.

Offset 1, canonical program `A050438.P7936861514397192088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438 (n : ℕ) : ℤ :=
  A050438.P7936861514397192088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050615.P3198622266931088097

`a(A004526(n))*A050614(n)` with `a(0)=1`
-/

namespace A050615.P3198622266931088097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A050614 n

end

end A050615.P3198622266931088097

noncomputable section

/-- A050615: Products of distinct terms of Fibonacci(2^(i+2)): a(n) = Product_{i=0..floor(log_2(n+1))} F(2^(i+2))^bit(n,i).

Offset 0, canonical program `A050615.P3198622266931088097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615 (n : ℕ) : ℤ :=
  A050615.P3198622266931088097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050874.P14166334163977989316

`eq[3, A037888(n+1)]+1`
-/

namespace A050874.P14166334163977989316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050874.P14166334163977989316

noncomputable section

/-- A050874: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 6 values of i.

Offset 1, canonical program `A050874.P14166334163977989316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874 (n : ℕ) : ℤ :=
  (A050874.P14166334163977989316.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A050874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051244.P1245185252982384370

`eq[1, A037888(n+1)]+1`
-/

namespace A051244.P1245185252982384370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051244.P1245185252982384370

noncomputable section

/-- A051244: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but two values of i.

Offset 1, canonical program `A051244.P1245185252982384370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A051244 (n : ℕ) : ℤ :=
  (A051244.P1245185252982384370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. -/
def A051244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051247.P10908392662730010603

`eq[2, A037888(n+1)]+1`
-/

namespace A051247.P10908392662730010603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051247.P10908392662730010603

noncomputable section

/-- A051247: Binary numbers d(1)...d(j) such that d(i) = d(j+1-i) for all but 4 values of i.

Offset 1, canonical program `A051247.P10908392662730010603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A051247 (n : ℕ) : ℤ :=
  (A051247.P10908392662730010603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. -/
def A051247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051358.P15468894680895557215

`A028279(n)/2`
-/

namespace A051358.P15468894680895557215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028279 n : ℚ) / 2

end

end A051358.P15468894680895557215

noncomputable section

/-- A051358: (Terms in A028279)/2.

Offset 0, canonical program `A051358.P15468894680895557215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051358 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051358.P15468894680895557215.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051429.P11525553807131597753

`A029659(n)/2`
-/

namespace A051429.P11525553807131597753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029659 n : ℚ) / 2

end

end A051429.P11525553807131597753

noncomputable section

/-- A051429: (Terms in A029659)/2.

Offset 0, canonical program `A051429.P11525553807131597753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051429.P11525553807131597753.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051668.P17142553008796260612

`A134636(n)+A051666(n)`
-/

namespace A051668.P17142553008796260612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n + A051666 n

end

end A051668.P17142553008796260612

noncomputable section

/-- A051668: Rows of triangle formed using Pascal's rule except begin and end n-th row with (n+1)^2.

Offset 0, canonical program `A051668.P17142553008796260612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051668 (n : ℕ) : ℤ :=
  A051668.P17142553008796260612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051838.P6178273382808269284

`eq[1, A121755(n+1)]+1`
-/

namespace A051838.P6178273382808269284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051838.P6178273382808269284

noncomputable section

/-- A051838: Numbers k such that sum of first k primes divides product of first k primes.

Offset 1, canonical program `A051838.P6178273382808269284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A051838 (n : ℕ) : ℤ :=
  (A051838.P6178273382808269284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A051838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052158.P11227404252294711369

`p?[A031924(n+1)%3*A031924(n+1)]`
-/

namespace A052158.P11227404252294711369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031924 (n + 1)) 3 * A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052158.P11227404252294711369

noncomputable section

/-- A052158: Lower prime of a difference of 6 (G-minor-6 primes) between consecutive primes of 6k+1 form.

Offset 1, canonical program `A052158.P11227404252294711369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158 (n : ℕ) : ℤ :=
  A052158.P11227404252294711369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3702 terms. -/
def A052158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052217.P2954763341326095250

`10^A056556(n)+10^A056557(n)+10^A056558(n)`
-/

namespace A052217.P2954763341326095250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A056556 n : ℤ) + (10 : ℚ) ^ (A056557 n : ℤ) + (10 : ℚ) ^ (A056558 n : ℤ)

end

end A052217.P2954763341326095250

noncomputable section

/-- A052217: Numbers whose sum of digits is 3.

Offset 1, canonical program `A052217.P2954763341326095250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052217.P2954763341326095250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052468.P15776435723576855453

`A162441(n+2)/(2*(n+1)+1)`
-/

namespace A052468.P15776435723576855453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162441 (n + 2) : ℚ) / (2 * (n + 1) + 1 : ℚ)

end

end A052468.P15776435723576855453

noncomputable section

/-- A052468: Numerators in the Taylor series for arccosh(x) - log(2*x).

Offset 1, canonical program `A052468.P15776435723576855453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052468.P15776435723576855453.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053118.P15405571042866260593

`A053117(A061579(n))`
-/

namespace A053118.P15405571042866260593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A061579 n).toNat

end

end A053118.P15405571042866260593

noncomputable section

/-- A053118: Triangle of coefficients of Chebyshev's U(n,x) polynomials (exponents in decreasing order).

Offset 0, canonical program `A053118.P15405571042866260593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A053118 (n : ℕ) : ℤ :=
  A053118.P15405571042866260593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A053118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053321.P8026973044884624945

`Δ[A031924(n+1)]`
-/

namespace A053321.P8026973044884624945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053321.P8026973044884624945

noncomputable section

/-- A053321: First differences of A031924.

Offset 1, canonical program `A053321.P8026973044884624945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321 (n : ℕ) : ℤ :=
  A053321.P8026973044884624945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053323.P4529439221988552431

`Δ[A031929(n)]`
-/

namespace A053323.P4529439221988552431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053323.P4529439221988552431

noncomputable section

/-- A053323: First differences of A031928.

Offset 1, canonical program `A053323.P4529439221988552431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053323 (n : ℕ) : ℤ :=
  A053323.P4529439221988552431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053692.P15159050845030527958

`A052343(Δ[n²])`
-/

namespace A053692.P15159050845030527958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053692.P15159050845030527958

noncomputable section

/-- A053692: Number of self-conjugate 4-core partitions of n.

Offset 0, canonical program `A053692.P15159050845030527958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692 (n : ℕ) : ℤ :=
  A053692.P15159050845030527958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A053692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053997.P5947380031336642127

`Δ[A109724(A004273(n))]`
-/

namespace A053997.P5947380031336642127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P5947380031336642127

noncomputable section

/-- A053997: Sum of primes in n-th shell of prime spiral.

Offset 0, canonical program `A053997.P5947380031336642127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997 (n : ℕ) : ℤ :=
  A053997.P5947380031336642127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054398.P13802336251738312636

`A276391(A057716(n+1))`
-/

namespace A054398.P13802336251738312636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A057716 (n + 1)).toNat

end

end A054398.P13802336251738312636

noncomputable section

/-- A054398: Define a sequence of 2^n X 2^n squares as follows: S_0 = [1], S_1 = [1,2; 3,4]; S_2 = [1,2,5,6; 3,4,7,8; 9,10,13,14; 11,12,15,16], etc.; sequence gives triangular array whose n-th row gives differences between successive columns of n-th square.

Offset 1, canonical program `A054398.P13802336251738312636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398 (n : ℕ) : ℤ :=
  A054398.P13802336251738312636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054403.P10855021196834469793

`∪[A042988(n), A070884(n)]`
-/

namespace A054403.P10855021196834469793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054403.P10855021196834469793

noncomputable section

/-- A054403: Result of third stage of sieve of Eratosthenes (after eliminating multiples of 2, 3 and 5).

Offset 1, canonical program `A054403.P10855021196834469793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403 (n : ℕ) : ℤ :=
  (A054403.P10855021196834469793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054523.P592142950605229816

`A130207(A286158(n+1))`
-/

namespace A054523.P592142950605229816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130207 (A286158 (n + 1)).toNat

end

end A054523.P592142950605229816

noncomputable section

/-- A054523: Triangle read by rows: T(n,k) = phi(n/k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054523.P592142950605229816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523 (n : ℕ) : ℤ :=
  A054523.P592142950605229816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054805.P10064582825251295720

`∩[A051634(n+1), A147812(n+1)]`
-/

namespace A054805.P10064582825251295720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054805.P10064582825251295720

noncomputable section

/-- A054805: Second term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054805.P10064582825251295720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805 (n : ℕ) : ℤ :=
  (A054805.P10064582825251295720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A055435.P11643938149336222448

`(A053061(n+1)-A055436(n+1))/18`
-/

namespace A055435.P11643938149336222448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053061 (n + 1) - A055436 (n + 1) : ℚ) / 18

end

end A055435.P11643938149336222448

noncomputable section

/-- A055435: (1/18)*Difference between concatenation of n and n^2 and concatenation of n^2 and n.

Offset 1, canonical program `A055435.P11643938149336222448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055435.P11643938149336222448.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, A055436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055460.P2633110437439138135

`A001221(A055204(n+1))`
-/

namespace A055460.P2633110437439138135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055204 (n + 1)).toNat

end

end A055460.P2633110437439138135

noncomputable section

/-- A055460: Number of primes with odd exponents in the prime power factorization of n!.

Offset 1, canonical program `A055460.P2633110437439138135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055460 (n : ℕ) : ℤ :=
  A055460.P2633110437439138135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055609.P6314505780929029689

`∑[A050531(n+1)-1]-A002620(n+1)`
-/

namespace A055609.P6314505780929029689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002620 (n + 1)

end

end A055609.P6314505780929029689

noncomputable section

/-- A055609: Number of 3 X n binary matrices with no zero rows or columns, up to row and column permutation.

Offset 1, canonical program `A055609.P6314505780929029689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055609 (n : ℕ) : ℤ :=
  A055609.P6314505780929029689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055609.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056140.P5331885712081055835

`A000290(n+3)-A013638(n+3)`
-/

namespace A056140.P5331885712081055835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 3) - A013638 (n + 3)

end

end A056140.P5331885712081055835

noncomputable section

/-- A056140: a(n) = n^2 - previousprime(n)*nextprime(n), for n>2.

Offset 3, canonical program `A056140.P5331885712081055835`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140 (n : ℕ) : ℤ :=
  A056140.P5331885712081055835.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056142.P638140004868031470

`A059995(A275238(n))`
-/

namespace A056142.P638140004868031470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A275238 n).toNat

end

end A056142.P638140004868031470

noncomputable section

/-- A056142: Concatenate n, floor[n/10], floor[n/100] ... (but do not continue if floor[.]=0).

Offset 0, canonical program `A056142.P638140004868031470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142 (n : ℕ) : ℤ :=
  A056142.P638140004868031470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056595.P14242287842452137538

`A000005(n+1)-A046951(n+1)`
-/

namespace A056595.P14242287842452137538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A046951 (n + 1)

end

end A056595.P14242287842452137538

noncomputable section

/-- A056595: Number of nonsquare divisors of n.

Offset 1, canonical program `A056595.P14242287842452137538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056595 (n : ℕ) : ℤ :=
  A056595.P14242287842452137538.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056595.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A056673.P2016486030983977128

`A056671(A001405(n+1))`
-/

namespace A056673.P2016486030983977128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A001405 (n + 1)).toNat

end

end A056673.P2016486030983977128

noncomputable section

/-- A056673: Number of unitary and squarefree divisors of binomial(n, floor(n/2)). Also the number of divisors of the powerfree part of A001405(n), A056060(n).

Offset 1, canonical program `A056673.P2016486030983977128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056673 (n : ℕ) : ℤ :=
  A056673.P2016486030983977128.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056674.P17578094997466486638

`A034444(n+1)-A056671(n+1)`
-/

namespace A056674.P17578094997466486638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A056671 (n + 1)

end

end A056674.P17578094997466486638

noncomputable section

/-- A056674: Number of squarefree divisors which are not unitary. Also number of unitary divisors which are not squarefree.

Offset 1, canonical program `A056674.P17578094997466486638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674 (n : ℕ) : ℤ :=
  A056674.P17578094997466486638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A056671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056931.P7289546216197052146

`A002378(n+2)-A056930(n+2)`
-/

namespace A056931.P7289546216197052146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2) - A056930 (n + 2)

end

end A056931.P7289546216197052146

noncomputable section

/-- A056931: Difference between n-th oblong (promic) number, n(n+1), and the average of the smallest prime greater than n^2 and the largest prime less than (n+1)^2.

Offset 2, canonical program `A056931.P7289546216197052146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931 (n : ℕ) : ℤ :=
  A056931.P7289546216197052146.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`
-/

namespace A057028.P8117438138446753169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A092543 (n + 1) - A209279 (n + 1))

end

end A057028.P8117438138446753169

noncomputable section

/-- A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

Offset 1, canonical program `A057028.P8117438138446753169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028 (n : ℕ) : ℤ :=
  A057028.P8117438138446753169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057847.P14928123273098948202

`A057851(A000040(n+1))`
-/

namespace A057847.P14928123273098948202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A000040 (n + 1)).toNat

end

end A057847.P14928123273098948202

noncomputable section

/-- A057847: Primes p whose order of primeness A078442(p) is at least 10.

Offset 1, canonical program `A057847.P14928123273098948202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847 (n : ℕ) : ℤ :=
  A057847.P14928123273098948202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A057847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058249.P13656201722121013867

`A092131(n+1)+A013603(n+1)`
-/

namespace A058249.P13656201722121013867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (n + 1) + A013603 (n + 1)

end

end A058249.P13656201722121013867

noncomputable section

/-- A058249: (Smallest prime >= 2^n) - (largest prime <= 2^n).

Offset 1, canonical program `A058249.P13656201722121013867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A058249 (n : ℕ) : ℤ :=
  A058249.P13656201722121013867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A058249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058296.P817858334841788841

`A162800(A004277(n))`
-/

namespace A058296.P817858334841788841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A004277 n).toNat

end

end A058296.P817858334841788841

noncomputable section

/-- A058296: Average of consecutive primes.

Offset 1, canonical program `A058296.P817858334841788841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296 (n : ℕ) : ℤ :=
  A058296.P817858334841788841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A058296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059399.P9766970929742721937

`A057944(n)+A057059(n+1)`
-/

namespace A059399.P9766970929742721937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A057059 (n + 1)

end

end A059399.P9766970929742721937

noncomputable section

/-- A059399: Triangular hopscotch.

Offset 1, canonical program `A059399.P9766970929742721937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399 (n : ℕ) : ℤ :=
  A059399.P9766970929742721937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060361.P4009678370881410838

`A060357(n)-A003418(n)`
-/

namespace A060361.P4009678370881410838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n - A003418 n

end

end A060361.P4009678370881410838

noncomputable section

/-- A060361: a(n) = { Smallest prime > k } - k, where k = lcm(1..n).

Offset 0, canonical program `A060361.P4009678370881410838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361 (n : ℕ) : ℤ :=
  A060361.P4009678370881410838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A060361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062046.P5666097150901793030

`(A162800(n+1)-A000040(n+1))*A162735(n+1)`
-/

namespace A062046.P5666097150901793030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162800 (n + 1) - A000040 (n + 1)) * A162735 (n + 1)

end

end A062046.P5666097150901793030

noncomputable section

/-- A062046: Sum of even numbers between consecutive primes.

Offset 1, canonical program `A062046.P5666097150901793030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046 (n : ℕ) : ℤ :=
  A062046.P5666097150901793030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062773.P16388033772693534914

`A000720(A062772(n+1))`
-/

namespace A062773.P16388033772693534914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062772 (n + 1)).toNat

end

end A062773.P16388033772693534914

noncomputable section

/-- A062773: Index of the smallest prime which follows square of n-th prime.

Offset 1, canonical program `A062773.P16388033772693534914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062773 (n : ℕ) : ℤ :=
  A062773.P16388033772693534914.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063112.P7730830427237507199

`A007089(A063113(n+1))`
-/

namespace A063112.P7730830427237507199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A063113 (n + 1)).toNat

end

end A063112.P7730830427237507199

noncomputable section

/-- A063112: a(1) = 1; a(n+1) = a(n) + product of nonzero digits of a(n) when written in base 3. Display sequence in base 3.

Offset 1, canonical program `A063112.P7730830427237507199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112 (n : ℕ) : ℤ :=
  A063112.P7730830427237507199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A063112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063775.P4217061199488976379

`A046951(A000188(n+1))`
-/

namespace A063775.P4217061199488976379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000188 (n + 1)).toNat

end

end A063775.P4217061199488976379

noncomputable section

/-- A063775: Number of 4th powers dividing n.

Offset 1, canonical program `A063775.P4217061199488976379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063775 (n : ℕ) : ℤ :=
  A063775.P4217061199488976379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063775.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A064031.P6654393610759162702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064031 (n : ℕ) : ℤ :=
  A064031.P6654393610759162702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064031.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A064033.P4449831178947753500`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064033 (n : ℕ) : ℤ :=
  A064033.P4449831178947753500.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064490.P14069633521972832065

`A003617(A000040(n+1))`
-/

namespace A064490.P14069633521972832065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000040 (n + 1)).toNat

end

end A064490.P14069633521972832065

noncomputable section

/-- A064490: Smallest prime with prime(n) decimal digits.

Offset 1, canonical program `A064490.P14069633521972832065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064490 (n : ℕ) : ℤ :=
  A064490.P14069633521972832065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064816.P8948604951401718138

`eq[2, ceil(A053603(n)/2)]`
-/

namespace A064816.P8948604951401718138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064816.P8948604951401718138

noncomputable section

/-- A064816: Numbers which are the sums of two positive triangular numbers (A000217) in exactly two different ways.

Offset 1, canonical program `A064816.P8948604951401718138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816 (n : ℕ) : ℤ :=
  (A064816.P8948604951401718138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1648 terms. -/
def A064816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064828.P10612756008420980911

`eq[3, ceil(A053603(n)/2)]`
-/

namespace A064828.P10612756008420980911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064828.P10612756008420980911

noncomputable section

/-- A064828: Numbers which are the sum of two positive triangular numbers in exactly three different ways.

Offset 1, canonical program `A064828.P10612756008420980911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828 (n : ℕ) : ℤ :=
  (A064828.P10612756008420980911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A064828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066039.P1848661495712138601

`A202301(n+1)-A001223(A061568(n+1))`
-/

namespace A066039.P1848661495712138601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (n + 1) - A001223 (A061568 (n + 1)).toNat

end

end A066039.P1848661495712138601

noncomputable section

/-- A066039: Largest prime less than or equal to the sum of first n primes (A007504).

Offset 1, canonical program `A066039.P1848661495712138601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039 (n : ℕ) : ℤ :=
  A066039.P1848661495712138601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. -/
def A066039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066122.P13442476758303456141

`eq[A178226(A055944(n))+1, A178226(n)]`
-/

namespace A066122.P13442476758303456141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A055944 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P13442476758303456141

noncomputable section

/-- A066122: Numbers that in base 2 need one 'Reverse and Add' step to reach a palindrome.

Offset 1, canonical program `A066122.P13442476758303456141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A066122 (n : ℕ) : ℤ :=
  (A066122.P13442476758303456141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A066122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066796.P3261242548129466086

`A006134(n+1)-1`
-/

namespace A066796.P3261242548129466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - 1

end

end A066796.P3261242548129466086

noncomputable section

/-- A066796: a(n) = Sum_{i=1..n} binomial(2*i,i).

Offset 1, canonical program `A066796.P3261242548129466086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796 (n : ℕ) : ℤ :=
  A066796.P3261242548129466086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066796.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067434.P13929793644750032362

`A056175(2*(n+1))+A056173(2*(n+1))`
-/

namespace A067434.P13929793644750032362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (2 * (n + 1)) + A056173 (2 * (n + 1))

end

end A067434.P13929793644750032362

noncomputable section

/-- A067434: Number of distinct prime factors in binomial(2*n,n).

Offset 1, canonical program `A067434.P13929793644750032362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434 (n : ℕ) : ℤ :=
  A067434.P13929793644750032362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068361.P16417839117735108684

`eq[A077063(n+1), A162800(n)]`
-/

namespace A068361.P16417839117735108684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068361.P16417839117735108684

noncomputable section

/-- A068361: Numbers n such that the number of squarefree numbers between prime(n) and prime(n+1) = prime(n+1)-prime(n)-1.

Offset 1, canonical program `A068361.P16417839117735108684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361 (n : ℕ) : ℤ :=
  (A068361.P16417839117735108684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A068361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069588.P13160061826596831233

`A003617(A028310(n)+1)`
-/

namespace A069588.P13160061826596831233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A028310 n + 1).toNat

end

end A069588.P13160061826596831233

noncomputable section

/-- A069588: Smallest prime in which the n-th significant digit is a 1.

Offset 1, canonical program `A069588.P13160061826596831233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588 (n : ℕ) : ℤ :=
  A069588.P13160061826596831233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`
-/

namespace A071124.P14915334261569632399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071124.P14915334261569632399

noncomputable section

/-- A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

Offset 1, canonical program `A071124.P14915334261569632399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124 (n : ℕ) : ℤ :=
  (A071124.P14915334261569632399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A071124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071325.P10142503002015730220

`A046951(n+1)-1`
-/

namespace A071325.P10142503002015730220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - 1

end

end A071325.P10142503002015730220

noncomputable section

/-- A071325: Number of squares > 1 dividing n.

Offset 1, canonical program `A071325.P10142503002015730220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071325 (n : ℕ) : ℤ :=
  A071325.P10142503002015730220.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071752.P14853445562846689292

`A071751(n+1)-A071731(n)`
-/

namespace A071752.P14853445562846689292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071751 (n + 1) - A071731 n

end

end A071752.P14853445562846689292

noncomputable section

/-- A071752: Expansion of (1+x^4*C^3)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071752.P14853445562846689292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752 (n : ℕ) : ℤ :=
  A071752.P14853445562846689292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072756.P6856512345765162209

`comp[A072757(n)]`
-/

namespace A072756.P6856512345765162209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A072756.P6856512345765162209

noncomputable section

/-- A072756: a(n) = least nonnegative integer not a(k) and not a(k)+floor(a(k)/2) for k

Offset 0, canonical program `A072756.P6856512345765162209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756 (n : ℕ) : ℤ :=
  (A072756.P6856512345765162209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073022.P10904957160869023436

`or(1, A055499(n))`
-/

namespace A073022.P10904957160869023436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055499 n)

end

end A073022.P10904957160869023436

noncomputable section

/-- A073022: Each term is the smallest prime > the sum of the previous 2 terms.

Offset 0, canonical program `A073022.P10904957160869023436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022 (n : ℕ) : ℤ :=
  A073022.P10904957160869023436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A073022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073627.P13490953195107515830

`A062042(n-a(C(2, n)))` with `a(0)=1, a(1)=1`
-/

namespace A073627.P13490953195107515830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A073627.P13490953195107515830

noncomputable section

/-- A073627: a(1)=a(2)=1; for n > 2, a(n) is the smallest integer such that a(n) > a(n-1) and a(n)+a(n-1) is prime.

Offset 1, canonical program `A073627.P13490953195107515830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627 (n : ℕ) : ℤ :=
  A073627.P13490953195107515830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073791.P4489210871171678278

`-(A320283(2*n)/2)`
-/

namespace A073791.P4489210871171678278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A320283 (2 * n) : ℚ) / 2)

end

end A073791.P4489210871171678278

noncomputable section

/-- A073791: Replace 4^k with (-4)^k in base 4 expansion of n.

Offset 0, canonical program `A073791.P4489210871171678278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073791.P4489210871171678278.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074928.P1039295149223078673

`A391804(n+1)-A006094(n+1)`
-/

namespace A074928.P1039295149223078673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391804 (n + 1) - A006094 (n + 1)

end

end A074928.P1039295149223078673

noncomputable section

/-- A074928: a(n) is the least k>0 such that prime(n)*prime(n+1) + k is prime.

Offset 1, canonical program `A074928.P1039295149223078673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928 (n : ℕ) : ℤ :=
  A074928.P1039295149223078673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075113.P11777112523547195368

`A000217(n)-A048702(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075113.P11777112523547195368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A048702 n

end

end A075113.P11777112523547195368

noncomputable section

/-- A075113: a(n) = A000217(n) - A048702(n).

Offset 0, canonical program `A075113.P11777112523547195368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113 (n : ℕ) : ℤ :=
  A075113.P11777112523547195368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075285.P9659011496630236086

`∩[A072568(n+1), A142342(n+1)]`
-/

namespace A075285.P9659011496630236086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075285.P9659011496630236086

noncomputable section

/-- A075285: Interprimes which are of the form s*prime, s=10.

Offset 1, canonical program `A075285.P9659011496630236086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285 (n : ℕ) : ℤ :=
  (A075285.P9659011496630236086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A075285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075295.P568193268372435100

`∩[2*A142342(n+1), A072568(n+1)]`
-/

namespace A075295.P568193268372435100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075295.P568193268372435100

noncomputable section

/-- A075295: Interprimes which are of the form s*prime, s=20.

Offset 1, canonical program `A075295.P568193268372435100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295 (n : ℕ) : ℤ :=
  (A075295.P568193268372435100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A075295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075402.P300143287191139796

`A065383(n+1)-∑[n+1]`
-/

namespace A075402.P300143287191139796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075402.P300143287191139796

noncomputable section

/-- A075402: Smallest number such that a(n) + T(n) is a prime, where T(n) is the n-th triangular number.

Offset 1, canonical program `A075402.P300143287191139796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402 (n : ℕ) : ℤ :=
  A075402.P300143287191139796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075798.P15243013555383215055

`(A005843(A007318(n))-A028262(n))*A318274(n)`
-/

namespace A075798.P15243013555383215055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (A007318 n).toNat - A028262 n) * A318274 n

end

end A075798.P15243013555383215055

noncomputable section

/-- A075798: Triangle T(n,k) = f(n,k,n-1), n >= 0, 0 <= k <= n, where f is given below.

Offset 1, canonical program `A075798.P15243013555383215055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A075798 (n : ℕ) : ℤ :=
  A075798.P15243013555383215055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A075798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076238.P18351837479544488770

`A050436(n+1)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076238.P18351837479544488770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (A002808 (n + 1))

end

end A076238.P18351837479544488770

noncomputable section

/-- A076238: a(n) = A050436(n) mod A002808(n).

Offset 1, canonical program `A076238.P18351837479544488770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A050436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076238 (n : ℕ) : ℤ :=
  A076238.P18351837479544488770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A050436, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076239.P17511644699145666000

`A050436(n+1)%(n+1)`
-/

namespace A076239.P17511644699145666000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050436 (n + 1)) (n + 1 : ℤ)

end

end A076239.P17511644699145666000

noncomputable section

/-- A076239: Remainder when 3rd-order composite ccc(n) = A050436(n) is divided by n.

Offset 1, canonical program `A076239.P17511644699145666000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076239 (n : ℕ) : ℤ :=
  A076239.P17511644699145666000.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050436, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076619.P16719581789657697159

`A076333(n+1)+1`
-/

namespace A076619.P16719581789657697159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076333 (n + 1) + 1

end

end A076619.P16719581789657697159

noncomputable section

/-- A076619: Least x>1 such that x^d == 1 (mod d) for each divisor d of n, for all nonsquarefree numbers n (cf. A013929).

Offset 1, canonical program `A076619.P16719581789657697159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076619 (n : ℕ) : ℤ :=
  A076619.P16719581789657697159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076619.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077070.P6224506992872465520

`A007814(A144816(n))`
-/

namespace A077070.P6224506992872465520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A144816 n).toNat

end

end A077070.P6224506992872465520

noncomputable section

/-- A077070: Triangle read by rows: T(n,k) is the power of 2 in denominator of coefficients of Legendre polynomials, where n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A077070.P6224506992872465520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070 (n : ℕ) : ℤ :=
  A077070.P6224506992872465520.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078156.P15055870167675829401

`A078153((n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078156.P15055870167675829401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (Nat.factorial (n + 1))

end

end A078156.P15055870167675829401

noncomputable section

/-- A078156: A078153(n!).

Offset 1, canonical program `A078156.P15055870167675829401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078156 (n : ℕ) : ℤ :=
  A078156.P15055870167675829401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078158.P4884813077665942233

`A078153(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078158.P4884813077665942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078153 (2 ^ (n + 1))

end

end A078158.P4884813077665942233

noncomputable section

/-- A078158: a(n) = A078153(2^n).

Offset 1, canonical program `A078158.P4884813077665942233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078158 (n : ℕ) : ℤ :=
  A078158.P4884813077665942233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078494.P14448011269337969638

`A218255(eq[1, A038800(n)])`
-/

namespace A078494.P14448011269337969638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078494.P14448011269337969638

noncomputable section

/-- A078494: Primes occurring only once in their decade.

Offset 1, canonical program `A078494.P14448011269337969638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494 (n : ℕ) : ℤ :=
  A078494.P14448011269337969638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4455 terms. -/
def A078494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079082.P9463845105595939532

`A023523(n+2)/A079080(n+1)`
-/

namespace A079082.P9463845105595939532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023523 (n + 2) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P9463845105595939532

noncomputable section

/-- A079082: Denominator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

Offset 1, canonical program `A079082.P9463845105595939532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079082.P9463845105595939532.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079409.P10018844493359524927

`C(A053616(A056023(n+1)), A002262(n))`
-/

namespace A079409.P10018844493359524927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053616 (A056023 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A079409.P10018844493359524927

noncomputable section

/-- A079409: Array T(m,n) (m>=0, n>=0) read by antidiagonals: T(0, 0) = 1, T(0, n) = 0 if n > 0, T(m, n) = T(m-1, n - T(m-1, n)) + T(m-1, n - T(m-1, n-1)) if m > 0.

Offset 0, canonical program `A079409.P10018844493359524927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409 (n : ℕ) : ℤ :=
  (A079409.P10018844493359524927.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A079409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080587.P4353599123797453831

`3*2^(A000523(A002264(n+6))-1)*(4-3*A080586(n))+A080586(n)*(n+7)-9`
-/

namespace A080587.P4353599123797453831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (A000523 (A002264 (n + 6)).toNat - 1 : ℤ) * (4 - 3 * A080586 n : ℚ) + (A080586 n * (n + 7 : ℤ) : ℚ) - 9

end

end A080587.P4353599123797453831

noncomputable section

/-- A080587: Partial sums of A080586.

Offset 0, canonical program `A080587.P4353599123797453831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080587.P4353599123797453831.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081386.P11376049931011802170

`A056173(2*(n+1))`
-/

namespace A081386.P11376049931011802170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (2 * (n + 1))

end

end A081386.P11376049931011802170

noncomputable section

/-- A081386: Number of unitary prime divisors of central binomial coefficient, C(2n,n) = A000984(n), i.e., number of those prime factors in C(2n,n), whose exponent equals one.

Offset 1, canonical program `A081386.P11376049931011802170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386 (n : ℕ) : ℤ :=
  A081386.P11376049931011802170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A081386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082233.P3094481268705208207

`A094727(A056023(n+1))`
-/

namespace A082233.P3094481268705208207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056023 (n + 1)).toNat

end

end A082233.P3094481268705208207

noncomputable section

/-- A082233: Square array T(n,k) = 2*n + k, read by antidiagonals in a zigzag fashion, n >= 0 and k >= 1.

Offset 0, canonical program `A082233.P3094481268705208207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233 (n : ℕ) : ℤ :=
  A082233.P3094481268705208207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082234.P13338439830342871460

`A036561(A056023(n+1)-1)`
-/

namespace A082234.P13338439830342871460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A056023 (n + 1) - 1).toNat

end

end A082234.P13338439830342871460

noncomputable section

/-- A082234: In the following square array numbers are entered like this A(1,1), A(1,2), A(2,1), A(3,1), A(2,2), A(1,3), A(1,4), A(2,3), A(3,2), A(4,1), A(5,1), A(4,2), ... such that every entry is the geometric mean of the two diametrically opposite neighbors (wherever a pair exists).

Offset 1, canonical program `A082234.P13338439830342871460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234 (n : ℕ) : ℤ :=
  A082234.P13338439830342871460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082267.P3341460620143484072

`A251749(A080513(n)+8)`
-/

namespace A082267.P3341460620143484072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A080513 n + 8).toNat

end

end A082267.P3341460620143484072

noncomputable section

/-- A082267: Number of palindromes that use nonzero digits and have a digit sum of n.

Offset 1, canonical program `A082267.P3341460620143484072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A082267 (n : ℕ) : ℤ :=
  A082267.P3341460620143484072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A082267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082853.P1640668448501088657

`n-A082852(n)`
-/

namespace A082853.P1640668448501088657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082852 n

end

end A082853.P1640668448501088657

noncomputable section

/-- A082853: Integers 0 to Catalan(n)-1 followed by integers 0 to Catalan(n+1)-1 etc.

Offset 0, canonical program `A082853.P1640668448501088657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853 (n : ℕ) : ℤ :=
  A082853.P1640668448501088657.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082934.P14654643793815549063

`∑[A082928(n+1)]`
-/

namespace A082934.P14654643793815549063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082934.P14654643793815549063

noncomputable section

/-- A082934: A082928(1) + A082928(2) + ... + A082928(n).

Offset 1, canonical program `A082934.P14654643793815549063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934 (n : ℕ) : ℤ :=
  A082934.P14654643793815549063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084197.P18366855963661557325

`A000040(lt[1, (n+1)*A084196(n+1)]+1)`
-/

namespace A084197.P18366855963661557325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A084197.P18366855963661557325

noncomputable section

/-- A084197: Primes p such that there exists at least one prime q

Offset 1, canonical program `A084197.P18366855963661557325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8443 terms. -/
def A084197 (n : ℕ) : ℤ :=
  A084197.P18366855963661557325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8443 terms. -/
def A084197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084198.P914758902079436018

`A000040(eq[1, A084196(n+1)]+1)`
-/

namespace A084198.P914758902079436018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A084198.P914758902079436018

noncomputable section

/-- A084198: Primes p such that there exists exactly one prime q

Offset 1, canonical program `A084198.P914758902079436018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A084198 (n : ℕ) : ℤ :=
  A084198.P914758902079436018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1013 terms. -/
def A084198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084682.P5210259654388311984

`filter[A179082(n+1), A254651(#)]`
-/

namespace A084682.P5210259654388311984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A084682.P5210259654388311984

noncomputable section

/-- A084682: Even evil numbers with an even digital sum.

Offset 1, canonical program `A084682.P5210259654388311984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682 (n : ℕ) : ℤ :=
  A084682.P5210259654388311984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5013 terms. -/
def A084682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085412.P5357625299025834806

`A000720(A085413(n+1))`
-/

namespace A085412.P5357625299025834806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A085413 (n + 1)).toNat

end

end A085412.P5357625299025834806

noncomputable section

/-- A085412: Numbers n such that concatenation of prime[n] and first digit of prime[n] is prime.

Offset 1, canonical program `A085412.P5357625299025834806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412 (n : ℕ) : ℤ :=
  A085412.P5357625299025834806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A085412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085691.P17951583978947504204

`C(A185914(n+1), 2)+abs(A122432(n))`
-/

namespace A085691.P17951583978947504204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A185914 (n + 1)).toNat 2 : ℤ) + |A122432 n|

end

end A085691.P17951583978947504204

noncomputable section

/-- A085691: Triangle read by rows: T(n,k) is the number of triangles of side k in triangular matchstick arrangement of side n; n>=1 and k>=1.

Offset 1, canonical program `A085691.P17951583978947504204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691 (n : ℕ) : ℤ :=
  A085691.P17951583978947504204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086767.P14820350050543062152

`A004731(n+1)/A004730(n)`
-/

namespace A086767.P14820350050543062152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 1) : ℚ) / (A004730 n : ℚ)

end

end A086767.P14820350050543062152

noncomputable section

/-- A086767: Last coefficient of the last term in the numerator of the simplified expansion of the solutions of FLT for n=2 for FLT n=1,2,3,..

Offset 0, canonical program `A086767.P14820350050543062152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086767.P14820350050543062152.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086971.P8267424955413097261

`A056170(n+1)+A079275(n+1)`
-/

namespace A086971.P8267424955413097261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A079275 (n + 1)

end

end A086971.P8267424955413097261

noncomputable section

/-- A086971: Number of semiprime divisors of n.

Offset 1, canonical program `A086971.P8267424955413097261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971 (n : ℕ) : ℤ :=
  A086971.P8267424955413097261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056170, A079275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087506.P14667531462698864031

`p?[A087461(n+2)]`
-/

namespace A087506.P14667531462698864031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087506.P14667531462698864031

noncomputable section

/-- A087506: Primes in A087461.

Offset 1, canonical program `A087506.P14667531462698864031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506 (n : ℕ) : ℤ :=
  A087506.P14667531462698864031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A087506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089252.P6506231424234606079

`2^n*n!*A006134(n)`
-/

namespace A089252.P6506231424234606079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n : ℤ) * A006134 n

end

end A089252.P6506231424234606079

noncomputable section

/-- A089252: a(n) = ((2*n-1)!!/sqrt(3))*(integral_{x=0..sqrt(3/4)} 1/(1-x^2)^(n+1/2) dx).

Offset 1, canonical program `A089252.P6506231424234606079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252 (n : ℕ) : ℤ :=
  A089252.P6506231424234606079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091366.P2947392388403710140

`p?[A225534(n+1)]`
-/

namespace A091366.P2947392388403710140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091366.P2947392388403710140

noncomputable section

/-- A091366: Primes p such that the sum of the cubes of the digits of p is prime.

Offset 1, canonical program `A091366.P2947392388403710140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366 (n : ℕ) : ℤ :=
  A091366.P2947392388403710140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A091366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091395.P2913392625701699350

`A035182(∏{p}[n+1, #])`
-/

namespace A091395.P2913392625701699350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091395.P2913392625701699350

noncomputable section

/-- A091395: a(n) = Product_{ p | n } (1 + Legendre(-7,p) ).

Offset 1, canonical program `A091395.P2913392625701699350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395 (n : ℕ) : ℤ :=
  A091395.P2913392625701699350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091397.P12586463803707334574

`A035186(∏{p}[n+1, #])`
-/

namespace A091397.P12586463803707334574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091397.P12586463803707334574

noncomputable section

/-- A091397: a(n) = Product_{ p | n } (1 + Legendre(3,p) ).

Offset 1, canonical program `A091397.P12586463803707334574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397 (n : ℕ) : ℤ :=
  A091397.P12586463803707334574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091666.P2525373801874084828

`A062772(n+1)-A001248(n+1)`
-/

namespace A091666.P2525373801874084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - A001248 (n + 1)

end

end A091666.P2525373801874084828

noncomputable section

/-- A091666: Difference between prime(n)^2 and the next prime.

Offset 1, canonical program `A091666.P2525373801874084828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666 (n : ℕ) : ℤ :=
  A091666.P2525373801874084828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092520.P5683000183497898863

`A046951((n+1)^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092520.P5683000183497898863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1) ^ 3)

end

end A092520.P5683000183497898863

noncomputable section

/-- A092520: Number of square divisors of n-th cube: a(n) = A046951(n^3).

Offset 1, canonical program `A092520.P5683000183497898863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092520 (n : ℕ) : ℤ :=
  A092520.P5683000183497898863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092542.P8192969525571053860

`A002260(A056023(n+1))`
-/

namespace A092542.P8192969525571053860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056023 (n + 1)).toNat

end

end A092542.P8192969525571053860

noncomputable section

/-- A092542: Table whose n-th row is constant and equal to n, read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092542.P8192969525571053860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542 (n : ℕ) : ℤ :=
  A092542.P8192969525571053860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A092542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093373.P5396455180272052482

`eq[0, A344438(n+1)]+1`
-/

namespace A093373.P5396455180272052482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093373.P5396455180272052482

noncomputable section

/-- A093373: Numbers that are not the product of factorials.

Offset 1, canonical program `A093373.P5396455180272052482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373 (n : ℕ) : ℤ :=
  (A093373.P5396455180272052482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095071.P691342850235203050

`∪[A095072(n+1), A095317(n+1)]`
-/

namespace A095071.P691342850235203050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095071.P691342850235203050

noncomputable section

/-- A095071: Zero-bit dominant primes, i.e., primes whose binary expansion contains more 0's than 1's.

Offset 1, canonical program `A095071.P691342850235203050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071 (n : ℕ) : ℤ :=
  (A095071.P691342850235203050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097070.P7474886704666409265

`A002740(n+1)+A097613(n+1)`
-/

namespace A097070.P7474886704666409265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 1) + A097613 (n + 1)

end

end A097070.P7474886704666409265

noncomputable section

/-- A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

Offset 1, canonical program `A097070.P7474886704666409265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070 (n : ℕ) : ℤ :=
  A097070.P7474886704666409265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098029.P12425777026168091225

`p?[A052288(n+2)+A024675(n+1)]`
-/

namespace A098029.P12425777026168091225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098029.P12425777026168091225

noncomputable section

/-- A098029: Primes of the form (prime(k)+ prime(k+3))/2.

Offset 1, canonical program `A098029.P12425777026168091225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029 (n : ℕ) : ℤ :=
  A098029.P12425777026168091225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A098029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098592.P11030886862082510298

`Δ[A000720(A218255(3*n))]`
-/

namespace A098592.P11030886862082510298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218255 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P11030886862082510298

noncomputable section

/-- A098592: Number of primes between n*30 and (n+1)*30.

Offset 0, canonical program `A098592.P11030886862082510298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592 (n : ℕ) : ℤ :=
  A098592.P11030886862082510298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A098592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098665.P5673322444532997734

`A084771(n)+n*A059231(n)`
-/

namespace A098665.P5673322444532997734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + (n : ℤ) * A059231 n

end

end A098665.P5673322444532997734

noncomputable section

/-- A098665: a(n) = Sum_{k = 0..n} binomial(n,k) * binomial(n+1,k+1) * 4^k.

Offset 0, canonical program `A098665.P5673322444532997734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A098665 (n : ℕ) : ℤ :=
  A098665.P5673322444532997734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A098665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099047.P83096896092586081

`comp[A045718(n)-1]+1`
-/

namespace A099047.P83096896092586081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A099047.P83096896092586081

noncomputable section

/-- A099047: Numbers n such that n-1 and n+1 are both composite.

Offset 1, canonical program `A099047.P83096896092586081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047 (n : ℕ) : ℤ :=
  (A099047.P83096896092586081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102863.P11458162008794449909

`ceil(A105783(n+1)/7)`
-/

namespace A102863.P11458162008794449909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105783 (n + 1) : ℚ) / 7⌉

end

end A102863.P11458162008794449909

noncomputable section

/-- A102863: a(n)=1 if at least one of the first n primes is a divisor of the sum of the first n primes; otherwise a(n)=0.

Offset 1, canonical program `A102863.P11458162008794449909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102863 (n : ℕ) : ℤ :=
  A102863.P11458162008794449909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103137.P5406980823153393288

`A086456(n)*A165326(n)`
-/

namespace A103137.P5406980823153393288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086456 n * A165326 n

end

end A103137.P5406980823153393288

noncomputable section

/-- A103137: First column of inverse of Delannoy triangle.

Offset 0, canonical program `A103137.P5406980823153393288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A103137 (n : ℕ) : ℤ :=
  A103137.P5406980823153393288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A103137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104551.P2747052499327181203

`∑[ceil(n/2)*A090192(n)]`
-/

namespace A104551.P2747052499327181203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104551.P2747052499327181203

noncomputable section

/-- A104551: Expansion of x/((1-x)*sqrt(1+4*x^2)).

Offset 0, canonical program `A104551.P2747052499327181203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A104551 (n : ℕ) : ℤ :=
  A104551.P2747052499327181203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A104551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107789.P13357853948593390734

`p?[7-(A268272(n+2)-A268272(n))]`
-/

namespace A107789.P13357853948593390734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A268272 (n + 2) - A268272 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107789.P13357853948593390734

noncomputable section

/-- A107789: Trajectory of 2 under evenly many applications of the morphism 1 -> 2, 2 -> 114, 3 -> 4, 4 -> 233.

Offset 0, canonical program `A107789.P13357853948593390734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789 (n : ℕ) : ℤ :=
  A107789.P13357853948593390734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6664 terms. -/
def A107789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107817.P13758543603320578681

`A062042(n-a(C(2, n)))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A107817.P13758543603320578681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A062042 ((n : ℤ) - a (Nat.choose 2 n)).toNat

end

end A107817.P13758543603320578681

noncomputable section

/-- A107817: Slowest increasing sequence where 2 consecutive integers sum up to a prime.

Offset 0, canonical program `A107817.P13758543603320578681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817 (n : ℕ) : ℤ :=
  A107817.P13758543603320578681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109187.P2341051230272957120

`A097610(n)*A115514(n+1)`
-/

namespace A109187.P2341051230272957120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A115514 (n + 1)

end

end A109187.P2341051230272957120

noncomputable section

/-- A109187: Triangle read by rows: T(n,k) is number of Grand Motzkin paths of length n having k (1,0)-steps.

Offset 0, canonical program `A109187.P2341051230272957120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187 (n : ℕ) : ℤ :=
  A109187.P2341051230272957120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110324.P17338203710823644534

`A104762(n+1)*A110314(n)`
-/

namespace A110324.P17338203710823644534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A110314 n

end

end A110324.P17338203710823644534

noncomputable section

/-- A110324: Inverse of a number triangle related to the Jacobsthal numbers.

Offset 0, canonical program `A110324.P17338203710823644534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324 (n : ℕ) : ℤ :=
  A110324.P17338203710823644534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110330.P12777464114074436010

`A110314(n)-A132440(n)`
-/

namespace A110330.P12777464114074436010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n - A132440 n

end

end A110330.P12777464114074436010

noncomputable section

/-- A110330: Inverse of a number triangle related to the Pell numbers.

Offset 0, canonical program `A110330.P12777464114074436010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330 (n : ℕ) : ℤ :=
  A110330.P12777464114074436010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111318.P8066523825878989134

`eq[2, A038698(n+1)%4]+1`
-/

namespace A111318.P8066523825878989134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038698 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111318.P8066523825878989134

noncomputable section

/-- A111318: Numbers k such that 4 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111318.P8066523825878989134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318 (n : ℕ) : ℤ :=
  (A111318.P8066523825878989134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. -/
def A111318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111701.P4209804534032475599

`(n+1)/(n+1-A276151(n+1))`
-/

namespace A111701.P4209804534032475599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A276151 (n + 1) : ℚ)

end

end A111701.P4209804534032475599

noncomputable section

/-- A111701: Least integer obtained when n is divided by prime(1), then by prime(2), then by prime(3), ..., stopping as soon as one of the primes does not divide it. In particular, a(2n-1) = 2n-1.

Offset 1, canonical program `A111701.P4209804534032475599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111701.P4209804534032475599.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111735.P13841724041236737776

`A370009(n+1)-A001748(n+1)`
-/

namespace A111735.P13841724041236737776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370009 (n + 1) - A001748 (n + 1)

end

end A111735.P13841724041236737776

noncomputable section

/-- A111735: Distance between k*(n-th prime) and next prime, k=3 case.

Offset 1, canonical program `A111735.P13841724041236737776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735 (n : ℕ) : ℤ :=
  A111735.P13841724041236737776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111738.P5078444431760926607

`A060266(3*p?[abs(xor(n, -2))])`
-/

namespace A111738.P5078444431760926607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111738.P5078444431760926607

noncomputable section

/-- A111738: Distance between k*(n-th prime) and next prime, k=6 case.

Offset 1, canonical program `A111738.P5078444431760926607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738 (n : ℕ) : ℤ :=
  A111738.P5078444431760926607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A111738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111740.P10235014839868050827

`A060266(4*p?[round(8*n/7)])`
-/

namespace A111740.P10235014839868050827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111740.P10235014839868050827

noncomputable section

/-- A111740: Distance between k*(n-th prime) and next prime, k=8 case.

Offset 1, canonical program `A111740.P10235014839868050827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740 (n : ℕ) : ℤ :=
  A111740.P10235014839868050827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A111740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111742.P15922268779302674466

`A060266(5*p?[abs(xor(n, -2))])`
-/

namespace A111742.P15922268779302674466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111742.P15922268779302674466

noncomputable section

/-- A111742: Distance between k*(n-th prime) and next prime, k=10 case.

Offset 1, canonical program `A111742.P15922268779302674466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742 (n : ℕ) : ℤ :=
  A111742.P15922268779302674466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A111742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111973.P15413486378653993803

`abs(A133691(n+1))`
-/

namespace A111973.P15413486378653993803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133691 (n + 1)|

end

end A111973.P15413486378653993803

noncomputable section

/-- A111973: Expansion of ((eta(q^2)eta(q^4))^6/(eta(q)eta(q^8))^4-1)/4 in powers of q.

Offset 1, canonical program `A111973.P15413486378653993803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973 (n : ℕ) : ℤ :=
  A111973.P15413486378653993803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115322.P1474604407657052441

`abs(A053117(n))`
-/

namespace A115322.P1474604407657052441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053117 n|

end

end A115322.P1474604407657052441

noncomputable section

/-- A115322: Triangle of coefficients of Pell polynomials.

Offset 1, canonical program `A115322.P1474604407657052441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115322 (n : ℕ) : ℤ :=
  A115322.P1474604407657052441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115363.P10062065464569452837

`A115361(n)*A129264(n+1)`
-/

namespace A115363.P10062065464569452837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n * A129264 (n + 1)

end

end A115363.P10062065464569452837

noncomputable section

/-- A115363: ((1,x)-(x,x^2))^(-2) (using Riordan array notation).

Offset 0, canonical program `A115363.P10062065464569452837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363 (n : ℕ) : ℤ :=
  A115363.P10062065464569452837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115606.P15732138880714301943

`A102540(n)+a(n-1)` with `a(0)=0`
-/

namespace A115606.P15732138880714301943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A102540 n + a (n - 1)

end

end A115606.P15732138880714301943

noncomputable section

/-- A115606: Partial sums of A102540 (primes that are not Chen primes).

Offset 0, canonical program `A115606.P15732138880714301943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606 (n : ℕ) : ℤ :=
  A115606.P15732138880714301943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117096.P17502464881523089586

`eq[2, ceil(A060264(n)/A007918(n))]`
-/

namespace A117096.P17502464881523089586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060264 n : ℚ) / (A007918 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117096.P17502464881523089586

noncomputable section

/-- A117096: Numbers n such that nextprime(2*n)

Offset 1, canonical program `A117096.P17502464881523089586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096 (n : ℕ) : ℤ :=
  (A117096.P17502464881523089586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6060 terms. -/
def A117096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117179.P14608184751527958313

`A111526(n)*A117568(n)`
-/

namespace A117179.P14608184751527958313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111526 n * A117568 n

end

end A117179.P14608184751527958313

noncomputable section

/-- A117179: Riordan array ((1-x^2)/(1+x^2)^2,x/(1+x^2)).

Offset 0, canonical program `A117179.P14608184751527958313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179 (n : ℕ) : ℤ :=
  A117179.P14608184751527958313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117304.P10783132350936566897

`∩[A019550(n+1), A019550(n+1)%A235497(n+1)]`
-/

namespace A117304.P10783132350936566897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019550 (n + 1)) (A235497 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117304.P10783132350936566897

noncomputable section

/-- A117304: Numbers with an even number of digits such that the second half is twice the first half.

Offset 1, canonical program `A117304.P10783132350936566897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304 (n : ℕ) : ℤ :=
  (A117304.P10783132350936566897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A117304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118139.P15269754510804949913

`lt[1, A052343(n)]`
-/

namespace A118139.P15269754510804949913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118139.P15269754510804949913

noncomputable section

/-- A118139: Numbers expressible as the sum of two triangular numbers in at least two different ways.

Offset 1, canonical program `A118139.P15269754510804949913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139 (n : ℕ) : ℤ :=
  (A118139.P15269754510804949913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A118139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118953.P11235668260339629374

`A107279(A091931(n+1))`
-/

namespace A118953.P11235668260339629374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat

end

end A118953.P11235668260339629374

noncomputable section

/-- A118953: Number of ways to write the n-th prime as 2^k + p, where p is prime and p < 2^k.

Offset 1, canonical program `A118953.P11235668260339629374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953 (n : ℕ) : ℤ :=
  A118953.P11235668260339629374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118958.P10422470674657479766

`p?[A107279(A091931(n+1))+A000040(n+1)]`
-/

namespace A118958.P10422470674657479766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P10422470674657479766

noncomputable section

/-- A118958: Primes that cannot be written as 2^k + p with p prime < 2^k.

Offset 1, canonical program `A118958.P10422470674657479766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958 (n : ℕ) : ℤ :=
  A118958.P10422470674657479766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A118958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119345.P15651874011805489413

`eq[1, A052343(n)]`
-/

namespace A119345.P15651874011805489413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119345.P15651874011805489413

noncomputable section

/-- A119345: Numbers having exactly one representation as sum of two triangular numbers.

Offset 1, canonical program `A119345.P15651874011805489413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345 (n : ℕ) : ℤ :=
  (A119345.P15651874011805489413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120278.P15344238521992007135

`∑[A054114(n)]+1`
-/

namespace A120278.P15344238521992007135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120278.P15344238521992007135

noncomputable section

/-- A120278: a(n) = Sum_{m=1..n} Sum_{k=1..m} C(2*k,k), where C(2*k,k) = (2*k)!/(k!)^2 = A000984(k).

Offset 1, canonical program `A120278.P15344238521992007135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278 (n : ℕ) : ℤ :=
  A120278.P15344238521992007135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121444.P10718778416213000801

`A052343(3*n+1)`
-/

namespace A121444.P10718778416213000801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (3 * n + 1)

end

end A121444.P10718778416213000801

noncomputable section

/-- A121444: Expansion of f(x^3, x^9) * f(x, x^2) in powers of x where f(, ) is Ramanujan's general theta functions.

Offset 0, canonical program `A121444.P10718778416213000801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121444 (n : ℕ) : ℤ :=
  A121444.P10718778416213000801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121448.P24632900459623264

`A059268(n)*A097610(n)`
-/

namespace A121448.P24632900459623264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A097610 n

end

end A121448.P24632900459623264

noncomputable section

/-- A121448: Triangle read by rows: T(n,k) is the number of binary trees with n edges and having k vertices of outdegree 1 (n>=0, k>=0). A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 0, canonical program `A121448.P24632900459623264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448 (n : ℕ) : ℤ :=
  A121448.P24632900459623264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122497.P1099217958447741762

`A059448(n+1)+1`
-/

namespace A122497.P1099217958447741762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 1) + 1

end

end A122497.P1099217958447741762

noncomputable section

/-- A122497: Let f(S) denote the interchange of 1's and 2's in S. Let S_0 = 1, S_{N+1} = f(S_N).S_N, where the dot indicates concatenation. Sequence gives S_0.S_1.S_2.S_3....

Offset 1, canonical program `A122497.P1099217958447741762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497 (n : ℕ) : ℤ :=
  A122497.P1099217958447741762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122507.P15819417335415522876

`A049691(1-C(∑[char[∑[n]]], 2)+n)-2`
-/

namespace A122507.P15819417335415522876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat - 2

end

end A122507.P15819417335415522876

noncomputable section

/-- A122507: Triangle in which row n contains the first n terms of A018805.

Offset 1, canonical program `A122507.P15819417335415522876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122507 (n : ℕ) : ℤ :=
  A122507.P15819417335415522876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124626.P17806241570464093679

`filter[A125494(n+2), A378550(#)]`
-/

namespace A124626.P17806241570464093679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A124626.P17806241570464093679

noncomputable section

/-- A124626: Abundant evil numbers. (Abundant numbers that have an even number of ones in their binary representation).

Offset 1, canonical program `A124626.P17806241570464093679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626 (n : ℕ) : ℤ :=
  A124626.P17806241570464093679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3134 terms. -/
def A124626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125030.P7178529687584953587

`A123391(n+1)+A125029(n+1)-A101436(n+1)`
-/

namespace A125030.P7178529687584953587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + (A125029 (n + 1) - A101436 (n + 1))

end

end A125030.P7178529687584953587

noncomputable section

/-- A125030: a(n) = sum of exponents in the prime factorization of n that are noncomposite.

Offset 1, canonical program `A125030.P7178529687584953587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030 (n : ℕ) : ℤ :=
  A125030.P7178529687584953587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125190.P10223957240302189230

`A123164(n)-abs(A086456(n))`
-/

namespace A125190.P10223957240302189230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n - |A086456 n|

end

end A125190.P10223957240302189230

noncomputable section

/-- A125190: Number of ascents in all Schroeder paths of length 2n.

Offset 0, canonical program `A125190.P10223957240302189230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A125190 (n : ℕ) : ℤ :=
  A125190.P10223957240302189230.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A125190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126867.P8640075110133158416

`2*A000040(∑[A105149(n+1)])`
-/

namespace A126867.P8640075110133158416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126867.P8640075110133158416

noncomputable section

/-- A126867: Largest even semiprime <= n^2.

Offset 2, canonical program `A126867.P8640075110133158416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867 (n : ℕ) : ℤ :=
  A126867.P8640075110133158416.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A126867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128180.P1090560833171990757

`A001057(A131307(n+1))`
-/

namespace A128180.P1090560833171990757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A131307 (n + 1)).toNat

end

end A128180.P1090560833171990757

noncomputable section

/-- A128180: Triangle read by rows: A002260 * A097807 as infinite lower triangular matrices.

Offset 1, canonical program `A128180.P1090560833171990757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180 (n : ℕ) : ℤ :=
  A128180.P1090560833171990757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128185.P11494409003865491844

`A113704(n+1)+A051731(n+1)`
-/

namespace A128185.P11494409003865491844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (n + 1) + A051731 (n + 1)

end

end A128185.P11494409003865491844

noncomputable section

/-- A128185: A097806 * A051731.

Offset 1, canonical program `A128185.P11494409003865491844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185 (n : ℕ) : ℤ :=
  A128185.P11494409003865491844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129447.P14635424549236213191

`A033999(n)*A125079(n)`
-/

namespace A129447.P14635424549236213191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125079 n

end

end A129447.P14635424549236213191

noncomputable section

/-- A129447: Expansion of psi(q) * psi(q^3) * phi(q^3) / phi(q) in powers of q where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A129447.P14635424549236213191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447 (n : ℕ) : ℤ :=
  A129447.P14635424549236213191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129523.P10195343047113366737

`∪[A048645(n+1), A175332(n+1)]`
-/

namespace A129523.P10195343047113366737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129523.P10195343047113366737

noncomputable section

/-- A129523: Numbers of the form 2^j +- 2^i for 0 <= i < j, in ascending order.

Offset 1, canonical program `A129523.P10195343047113366737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523 (n : ℕ) : ℤ :=
  (A129523.P10195343047113366737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130201.P3817983863840821354

`2*A130202(n+1)`
-/

namespace A130201.P3817983863840821354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130202 (n + 1)

end

end A130201.P3817983863840821354

noncomputable section

/-- A130201: Odious oblong (promic) numbers.

Offset 1, canonical program `A130201.P3817983863840821354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201 (n : ℕ) : ℤ :=
  A130201.P3817983863840821354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130201.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130217.P16012042862340202128

`A003617(A000032(n))`
-/

namespace A130217.P16012042862340202128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000032 n).toNat

end

end A130217.P16012042862340202128

noncomputable section

/-- A130217: Smallest prime with number of digits equal to n-th Lucas number A000032(n).

Offset 0, canonical program `A130217.P16012042862340202128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217 (n : ℕ) : ℤ :=
  A130217.P16012042862340202128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131963.P6830822417454376484

`A260942(3*n+1)`
-/

namespace A131963.P6830822417454376484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260942 (3 * n + 1)

end

end A131963.P6830822417454376484

noncomputable section

/-- A131963: Expansion of f(x, x^2) * f(x^4, x^12) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131963.P6830822417454376484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963 (n : ℕ) : ℤ :=
  A131963.P6830822417454376484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A131963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132352.P352406761875659028

`∑[A132351(n+1)]`
-/

namespace A132352.P352406761875659028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P352406761875659028

noncomputable section

/-- A132352: Partial sums of A132351.

Offset 1, canonical program `A132352.P352406761875659028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352 (n : ℕ) : ℤ :=
  A132352.P352406761875659028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133450.P13159197385161977339

`A056929(2*(n+1))`
-/

namespace A133450.P13159197385161977339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (2 * (n + 1))

end

end A133450.P13159197385161977339

noncomputable section

/-- A133450: Difference between 4*n^2 and the average of the two prime numbers which bracket this number.

Offset 1, canonical program `A133450.P13159197385161977339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450 (n : ℕ) : ℤ :=
  A133450.P13159197385161977339.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134453.P14282000105266514445

`lt[A134452(n), 0]`
-/

namespace A134453.P14282000105266514445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134453.P14282000105266514445

noncomputable section

/-- A134453: Numbers m such that the digital root in balanced ternary representation equals -1.

Offset 1, canonical program `A134453.P14282000105266514445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453 (n : ℕ) : ℤ :=
  (A134453.P14282000105266514445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134454.P11482993315645850512

`lt[0, A134452(n)]`
-/

namespace A134454.P11482993315645850512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134454.P11482993315645850512

noncomputable section

/-- A134454: Numbers m such that the digital root in balanced ternary representation equals +1.

Offset 1, canonical program `A134454.P11482993315645850512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454 (n : ℕ) : ℤ :=
  (A134454.P11482993315645850512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135023.P1620752606866019315

`A028334(A100637(2*n+1))`
-/

namespace A135023.P1620752606866019315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (A100637 (2 * n + 1)).toNat

end

end A135023.P1620752606866019315

noncomputable section

/-- A135023: (NextPrime[6*n] - PreviousPrime[6*n])/2.

Offset 1, canonical program `A135023.P1620752606866019315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023 (n : ℕ) : ℤ :=
  A135023.P1620752606866019315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A135023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135855.P16850139679087986239

`2*A110813(n)-A131085(n)`
-/

namespace A135855.P16850139679087986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A131085 n

end

end A135855.P16850139679087986239

noncomputable section

/-- A135855: A007318 * a tridiagonal matrix with (1, 4, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A135855.P16850139679087986239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855 (n : ℕ) : ℤ :=
  A135855.P16850139679087986239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136160.P16715669744293891579

`A053117(n)*A128222(n+1)`
-/

namespace A136160.P16715669744293891579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 n * A128222 (n + 1)

end

end A136160.P16715669744293891579

noncomputable section

/-- A136160: Triangle T(n,k) = k*A053120(n,k).

Offset 1, canonical program `A136160.P16715669744293891579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136160 (n : ℕ) : ℤ :=
  A136160.P16715669744293891579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138610.P14114159251167345094

`filter[A053850(n+1), A373979(#)]`
-/

namespace A138610.P14114159251167345094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P14114159251167345094

noncomputable section

/-- A138610: Nonsquarefree numbers congruent to 3 mod 4.

Offset 1, canonical program `A138610.P14114159251167345094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610 (n : ℕ) : ℤ :=
  A138610.P14114159251167345094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138707.P243569157619133773

`A046951(A214587(n+1)²)`
-/

namespace A138707.P243569157619133773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A214587 (n + 1) ^ 2).toNat

end

end A138707.P243569157619133773

noncomputable section

/-- A138707: Number of divisors of n that are also divisors of some d(k)*10^k, where n=Sum(d(k)*10^k).

Offset 1, canonical program `A138707.P243569157619133773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707 (n : ℕ) : ℤ :=
  A138707.P243569157619133773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A138707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138746.P8217027100382283565

`-A138745(n+1)`
-/

namespace A138746.P8217027100382283565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138745 (n + 1)

end

end A138746.P8217027100382283565

noncomputable section

/-- A138746: Expansion of 1 - eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

Offset 1, canonical program `A138746.P8217027100382283565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746 (n : ℕ) : ℤ :=
  A138746.P8217027100382283565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138966.P5913427070522576114

`n+1+A113646(n+2)`
-/

namespace A138966.P5913427070522576114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A113646 (n + 2)

end

end A138966.P5913427070522576114

noncomputable section

/-- A138966: a(n) = n + (smallest composite > n).

Offset 1, canonical program `A138966.P5913427070522576114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966 (n : ℕ) : ℤ :=
  A138966.P5913427070522576114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138971.P14613520405082129352

`A080148(n+1)-1`
-/

namespace A138971.P14613520405082129352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080148 (n + 1) - 1

end

end A138971.P14613520405082129352

noncomputable section

/-- A138971: Positions of the primes congruent to 3 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138971.P14613520405082129352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971 (n : ℕ) : ℤ :=
  A138971.P14613520405082129352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139038.P10853332724780471891

`A134816(A004197(n)+2)`
-/

namespace A139038.P10853332724780471891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A004197 n + 2).toNat

end

end A139038.P10853332724780471891

noncomputable section

/-- A139038: Triangle read by rows: T(n,m) = A000931(m+6) if m <= floor(n/2), A000931(n+6-m) otherwise, for 0 <= m <= n.

Offset 0, canonical program `A139038.P10853332724780471891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038 (n : ℕ) : ℤ :=
  A139038.P10853332724780471891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139104.P15577029041380592062

`A118255(A000040(n+1))`
-/

namespace A139104.P15577029041380592062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118255 (A000040 (n + 1)).toNat

end

end A139104.P15577029041380592062

noncomputable section

/-- A139104: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime, using "0" for primes and "1" for nonprime numbers.

Offset 1, canonical program `A139104.P15577029041380592062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139104 (n : ℕ) : ℤ :=
  A139104.P15577029041380592062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A118255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000050.P5830236791147847898

`A102548(2^n)`
-/

namespace A000050.P5830236791147847898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (2 ^ n)

end

end A000050.P5830236791147847898

noncomputable section

/-- A000050: Number of positive integers <= 2^n of form x^2 + y^2.

Offset 0, canonical program `A000050.P5830236791147847898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050 (n : ℕ) : ℤ :=
  A000050.P5830236791147847898.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000091.P2909649729475731760

`A034444(n+1)*A097325(A253629(n+1))`
-/

namespace A000091.P2909649729475731760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A097325 (A253629 (n + 1)).toNat

end

end A000091.P2909649729475731760

noncomputable section

/-- A000091: Multiplicative with a(2^e) = 2 for k >= 1; a(3) = 2, a(3^e) = 0 for k >= 2; a(p^e) = 0 if p > 3 and p == -1 (mod 3); a(p^e) = 2 if p > 3 and p == 1 (mod 3).

Offset 1, canonical program `A000091.P2909649729475731760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091 (n : ℕ) : ℤ :=
  A000091.P2909649729475731760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001089.P12328376090641490040

`A071741(n)-A071729(n)`
-/

namespace A001089.P12328376090641490040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071741 n - A071729 n

end

end A001089.P12328376090641490040

noncomputable section

/-- A001089: Number of permutations of [n] containing exactly 2 increasing subsequences of length 3.

Offset 0, canonical program `A001089.P12328376090641490040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089 (n : ℕ) : ℤ :=
  A001089.P12328376090641490040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A001089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001729.P5595440240656319040

`eq[n, n-A064532(n)]`
-/

namespace A001729.P5595440240656319040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P5595440240656319040

noncomputable section

/-- A001729: List of numbers whose digits contain no loops (version 1).

Offset 1, canonical program `A001729.P5595440240656319040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729 (n : ℕ) : ℤ :=
  (A001729.P5595440240656319040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. -/
def A001729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001746.P1259921048174230123

`lt[n-A064532(n), n]`
-/

namespace A001746.P1259921048174230123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064532 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001746.P1259921048174230123

noncomputable section

/-- A001746: At least one digit contains a loop (version 1).

Offset 1, canonical program `A001746.P1259921048174230123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746 (n : ℕ) : ℤ :=
  (A001746.P1259921048174230123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002727.P5415919313851437187

`∑[∑[A050531(n)]]`
-/

namespace A002727.P5415919313851437187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002727.P5415919313851437187

noncomputable section

/-- A002727: Number of 3 X n binary matrices up to row and column permutations.

Offset 0, canonical program `A002727.P5415919313851437187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002727 (n : ℕ) : ℤ :=
  A002727.P5415919313851437187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003642.P17689838161850936728

`2^(A001221(A191483(n+1))-1)`
-/

namespace A003642.P17689838161850936728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (A191483 (n + 1)).toNat - 1 : ℤ)

end

end A003642.P17689838161850936728

noncomputable section

/-- A003642: Number of genera of imaginary quadratic field with discriminant -k, k = A191483(n).

Offset 1, canonical program `A003642.P17689838161850936728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A191483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003642 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003642.P17689838161850936728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A191483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003657.P3243846555462678354

`∪[A039957(n+1), A191483(n+1)]`
-/

namespace A003657.P3243846555462678354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003657.P3243846555462678354

noncomputable section

/-- A003657: Discriminants of imaginary quadratic fields, negated.

Offset 1, canonical program `A003657.P3243846555462678354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657 (n : ℕ) : ℤ :=
  (A003657.P3243846555462678354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004797.P13718195632924904627

`∑[A199015(n)]`
-/

namespace A004797.P13718195632924904627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P13718195632924904627

noncomputable section

/-- A004797: Convolution of A002024 with itself.

Offset 0, canonical program `A004797.P13718195632924904627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797 (n : ℕ) : ℤ :=
  A004797.P13718195632924904627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005237.P9029700576997496255

`filter[A140128(n+1), A361022(#)]`
-/

namespace A005237.P9029700576997496255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361022 (f1 j).toNat = 1) n)

end

end A005237.P9029700576997496255

noncomputable section

/-- A005237: Numbers k such that k and k+1 have the same number of divisors.

Offset 1, canonical program `A005237.P9029700576997496255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237 (n : ℕ) : ℤ :=
  A005237.P9029700576997496255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6947 terms. -/
def A005237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005783.P15220566111685285247

`∑[A050531(n)]`
-/

namespace A005783.P15220566111685285247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005783.P15220566111685285247

noncomputable section

/-- A005783: Number of 3-covers of an unlabeled n-set.

Offset 0, canonical program `A005783.P15220566111685285247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005783 (n : ℕ) : ℤ :=
  A005783.P15220566111685285247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006078.P3851421618705836682

`A126120(n+2)+A050182(n)`
-/

namespace A006078.P3851421618705836682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) + A050182 n

end

end A006078.P3851421618705836682

noncomputable section

/-- A006078: Number of triangulated (n+2)-gons rooted at an exterior edge.

Offset 2, canonical program `A006078.P3851421618705836682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078 (n : ℕ) : ℤ :=
  A006078.P3851421618705836682.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A006078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007971.P3280594718535611421

`A168055(n)%(3*(a(n-1)+a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A007971.P3280594718535611421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (A168055 n) (3 * (a (n - 1) + a (n - 2)))

end

end A007971.P3280594718535611421

noncomputable section

/-- A007971: INVERTi transform of central trinomial coefficients (A002426).

Offset 0, canonical program `A007971.P3280594718535611421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971 (n : ℕ) : ℤ :=
  A007971.P3280594718535611421.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A007971.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A008475.P12981903007955240503

`∑{d}[n+1, A092509(#)]`
-/

namespace A008475.P12981903007955240503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A008475.P12981903007955240503

noncomputable section

/-- A008475: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 0 by convention).

Offset 1, canonical program `A008475.P12981903007955240503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475 (n : ℕ) : ℤ :=
  A008475.P12981903007955240503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010849.P8260382940907642524

`Δ[Δ[A010683(n)/4]]`
-/

namespace A010849.P8260382940907642524
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010683 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010849.P8260382940907642524

noncomputable section

/-- A010849: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-3,n).

Offset 0, canonical program `A010849.P8260382940907642524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010849.P8260382940907642524.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011534.P15152361579944605440

`lt[A064532(n), A064692(n)]`
-/

namespace A011534.P15152361579944605440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A011534.P15152361579944605440

noncomputable section

/-- A011534: Numbers that contain a 4.

Offset 1, canonical program `A011534.P15152361579944605440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534 (n : ℕ) : ℤ :=
  (A011534.P15152361579944605440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013598.P2424592840134159747

`A014211(n)-3^n`
-/

namespace A013598.P2424592840134159747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - (3 ^ n : ℤ)

end

end A013598.P2424592840134159747

noncomputable section

/-- A013598: a(n) = nextprime(3^n)-3^n.

Offset 0, canonical program `A013598.P2424592840134159747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598 (n : ℕ) : ℤ :=
  A013598.P2424592840134159747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A013598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014725.P11893219493432893868

`A014414(n+1)²`
-/

namespace A014725.P11893219493432893868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014414 (n + 1) ^ 2

end

end A014725.P11893219493432893868

noncomputable section

/-- A014725: Squares of odd elements in Pascal triangle that are not 1.

Offset 1, canonical program `A014725.P11893219493432893868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725 (n : ℕ) : ℤ :=
  A014725.P11893219493432893868.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A020333.P8708679268539003984

`(∑[A092509(5*(n+1))]+1)*(n+1)`
-/

namespace A020333.P8708679268539003984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A020333.P8708679268539003984

noncomputable section

/-- A020333: Numbers whose base-5 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020333.P8708679268539003984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A020333 (n : ℕ) : ℤ :=
  A020333.P8708679268539003984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A020333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020653.P13896194492571762582

`A038567(n+1)-A020652(n+1)`
-/

namespace A020653.P13896194492571762582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A020652 (n + 1)

end

end A020653.P13896194492571762582

noncomputable section

/-- A020653: Denominators in a certain bijection from positive integers to positive rationals.

Offset 1, canonical program `A020653.P13896194492571762582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653 (n : ℕ) : ℤ :=
  A020653.P13896194492571762582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A022823.P13984185268701905408

`A022822(n+2)+1+n`
-/

namespace A022823.P13984185268701905408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022822 (n + 2) + 1 + (n : ℤ)

end

end A022823.P13984185268701905408

noncomputable section

/-- A022823: a(n) = [ (2n+1)/(n-1) ] + [ (2n+2)/(n-2) ] + ... + [ (3n-1)/1 ].

Offset 2, canonical program `A022823.P13984185268701905408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823 (n : ℕ) : ℤ :=
  A022823.P13984185268701905408.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023281.P8211061823659445661

`∩[A023250(n+1), A127580(n+1)]`
-/

namespace A023281.P8211061823659445661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023281.P8211061823659445661

noncomputable section

/-- A023281: Primes that remain prime through 3 iterations of function f(x) = 4x + 3.

Offset 1, canonical program `A023281.P8211061823659445661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281 (n : ℕ) : ℤ :=
  (A023281.P8211061823659445661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A023281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023618.P16496442946416001020

`A023649(n+1)+A023649(n+1)-A023609(n)`
-/

namespace A023618.P16496442946416001020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023649 (n + 1) + (A023649 (n + 1) - A023609 n)

end

end A023618.P16496442946416001020

noncomputable section

/-- A023618: Convolution of Lucas numbers and composite numbers.

Offset 1, canonical program `A023618.P16496442946416001020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618 (n : ℕ) : ℤ :=
  A023618.P16496442946416001020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A023618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024510.P9053752916774843520

`eq[0, A004431(n+2)%2]+2`
-/

namespace A024510.P9053752916774843520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004431 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A024510.P9053752916774843520

noncomputable section

/-- A024510: Positions of even numbers in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024510.P9053752916774843520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510 (n : ℕ) : ℤ :=
  (A024510.P9053752916774843520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A024510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024514.P16553037796526444321

`eq[2, A000005(A004431(n+1))]+1`
-/

namespace A024514.P16553037796526444321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004431 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024514.P16553037796526444321

noncomputable section

/-- A024514: Positions of primes in A004431 (sums of 2 distinct nonzero squares).

Offset 1, canonical program `A024514.P16553037796526444321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514 (n : ℕ) : ℤ :=
  (A024514.P16553037796526444321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2102 terms. -/
def A024514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025181.P6813046550114564119

`∑[A026070(n+3)]`
-/

namespace A025181.P6813046550114564119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026070 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P6813046550114564119

noncomputable section

/-- A025181: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A025177.

Offset 3, canonical program `A025181.P6813046550114564119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181 (n : ℕ) : ℤ :=
  A025181.P6813046550114564119.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A025181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025925.P1140353279712905302

`A029114(n)+A029411(n)-A029102(n)`
-/

namespace A025925.P1140353279712905302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029411 n - A029102 n)

end

end A025925.P1140353279712905302

noncomputable section

/-- A025925: Expansion of 1/((1-x^9)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025925.P1140353279712905302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925 (n : ℕ) : ℤ :=
  A025925.P1140353279712905302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026181.P4658866943006320217

`a(A049321(n+1))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A026181.P4658866943006320217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (A049321 (n + 1)).toNat

end

end A026181.P4658866943006320217

noncomputable section

/-- A026181: a(n) = (1/2)*(s(n) - s(n-1)), where s = A026180.

Offset 3, canonical program `A026181.P4658866943006320217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181 (n : ℕ) : ℤ :=
  (A026181.P4658866943006320217.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026270.P10877256987493377450

`Δ[A026269(n+2)]`
-/

namespace A026270.P10877256987493377450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P10877256987493377450

noncomputable section

/-- A026270: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1 = s(n), |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-1), where T is the array in A026268.

Offset 2, canonical program `A026270.P10877256987493377450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270 (n : ℕ) : ℤ :=
  A026270.P10877256987493377450.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A026270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026362.P625232870546419862

`val(∏[A284751(2*(n+1))+2], Δ[A079255(n+1)])`
-/

namespace A026362.P625232870546419862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (f2 (n + 1) - f2 n).toNat

end

end A026362.P625232870546419862

noncomputable section

/-- A026362: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m)+2m-1, else a(n) = least positive integer that has not yet occurred.

Offset 1, canonical program `A026362.P625232870546419862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362 (n : ℕ) : ℤ :=
  (A026362.P625232870546419862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A026362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026677.P541306508744937430

`A000034(n)*A054441(A008619(n))`
-/

namespace A026677.P541306508744937430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A054441 (A008619 n).toNat

end

end A026677.P541306508744937430

noncomputable section

/-- A026677: T(n,0) + T(n,1) + ... + T(n,n), T given by A026670.

Offset 0, canonical program `A026677.P541306508744937430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677 (n : ℕ) : ℤ :=
  A026677.P541306508744937430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A026677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027699.P13565929154440483330

`p?[A093688(n+1)]`
-/

namespace A027699.P13565929154440483330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A027699.P13565929154440483330

noncomputable section

/-- A027699: Evil primes: primes with even number of 1's in their binary expansion.

Offset 1, canonical program `A027699.P13565929154440483330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699 (n : ℕ) : ℤ :=
  A027699.P13565929154440483330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6482 terms. -/
def A027699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027705.P11345454911343154343

`A045319(A057428(n)+A027706(n+1))`
-/

namespace A027705.P11345454911343154343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A057428 n + A027706 (n + 1)).toNat

end

end A027705.P11345454911343154343

noncomputable section

/-- A027705: Primes with odd number of 1's in binary expansion such that next prime has even number of 1's.

Offset 1, canonical program `A027705.P11345454911343154343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705 (n : ℕ) : ℤ :=
  A027705.P11345454911343154343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A027705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029105.P17542753174349569294

`A029213(abs(1-n))+A029213(n)`
-/

namespace A029105.P17542753174349569294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 |1 - (n : ℤ)|.toNat + A029213 n

end

end A029105.P17542753174349569294

noncomputable section

/-- A029105: Expansion of 1/((1-x)(1-x^5)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029105.P17542753174349569294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105 (n : ℕ) : ℤ :=
  A029105.P17542753174349569294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029233.P3941505614629625210

`A029183(n)+A029224(n)-A029180(n)`
-/

namespace A029233.P3941505614629625210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 n + (A029224 n - A029180 n)

end

end A029233.P3941505614629625210

noncomputable section

/-- A029233: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029233.P3941505614629625210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233 (n : ℕ) : ℤ :=
  A029233.P3941505614629625210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029244.P8059623005878958167

`A029213(n)+∑[A029224(n)-A029213(n)]`
-/

namespace A029244.P8059623005878958167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - A029213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029244.P8059623005878958167

noncomputable section

/-- A029244: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029244.P8059623005878958167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244 (n : ℕ) : ℤ :=
  A029244.P8059623005878958167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029431.P15634929436894288519

`A025907(n)+A029224(n)-A029225(n)`
-/

namespace A029431.P15634929436894288519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n + (A029224 n - A029225 n)

end

end A029431.P15634929436894288519

noncomputable section

/-- A029431: Expansion of 1/((1-x^6)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029431.P15634929436894288519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431 (n : ℕ) : ℤ :=
  A029431.P15634929436894288519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030513.P1414838510973468407

`A007422(n+2)`
-/

namespace A030513.P1414838510973468407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

end

end A030513.P1414838510973468407

noncomputable section

/-- A030513: Numbers with 4 divisors.

Offset 1, canonical program `A030513.P1414838510973468407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513 (n : ℕ) : ℤ :=
  A030513.P1414838510973468407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030633.P9556005496549386793

`(eq[7, A062799(n+1)]+1)²`
-/

namespace A030633.P9556005496549386793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030633.P9556005496549386793

noncomputable section

/-- A030633: Numbers with 15 divisors.

Offset 1, canonical program `A030633.P9556005496549386793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A030633 (n : ℕ) : ℤ :=
  (A030633.P9556005496549386793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. -/
def A030633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030661.P3495447614067155114

`A151800(n+1)*A101300(n+1)`
-/

namespace A030661.P3495447614067155114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) * A101300 (n + 1)

end

end A030661.P3495447614067155114

noncomputable section

/-- A030661: Product of next 2 primes after n.

Offset 1, canonical program `A030661.P3495447614067155114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661 (n : ℕ) : ℤ :=
  A030661.P3495447614067155114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A030661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032191.P8589819175621279169

`2*A005513(n+6)-A058187(n)`
-/

namespace A032191.P8589819175621279169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005513 (n + 6) - A058187 n

end

end A032191.P8589819175621279169

noncomputable section

/-- A032191: Number of necklaces with 6 black beads and n-6 white beads.

Offset 6, canonical program `A032191.P8589819175621279169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032191 (n : ℕ) : ℤ :=
  A032191.P8589819175621279169.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032818.P11687481509006464414

`2*(3*A032927(n+1)-A032806(n+1))-A032927(n+1)`
-/

namespace A032818.P11687481509006464414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A032927 (n + 1) - A032806 (n + 1)) - A032927 (n + 1)

end

end A032818.P11687481509006464414

noncomputable section

/-- A032818: Numbers whose set of base-6 digits is {1,4}.

Offset 1, canonical program `A032818.P11687481509006464414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818 (n : ℕ) : ℤ :=
  A032818.P11687481509006464414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032830.P14599917088282478471

`2*A032806(n+1)-A032927(n+1)`
-/

namespace A032830.P14599917088282478471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032806 (n + 1) - A032927 (n + 1)

end

end A032830.P14599917088282478471

noncomputable section

/-- A032830: Numbers whose set of base-6 digits is {3,4}.

Offset 1, canonical program `A032830.P14599917088282478471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830 (n : ℕ) : ℤ :=
  A032830.P14599917088282478471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032913.P14296521150570778594

`3*A032927(n+1)-A032806(n+1)`
-/

namespace A032913.P14296521150570778594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032927 (n + 1) - A032806 (n + 1)

end

end A032913.P14296521150570778594

noncomputable section

/-- A032913: Numbers whose set of base-6 digits is {1,3}.

Offset 1, canonical program `A032913.P14296521150570778594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913 (n : ℕ) : ℤ :=
  A032913.P14296521150570778594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033215.P2128816261524133754

`∩[A008846(n+1), A139492(n+1)]`
-/

namespace A033215.P2128816261524133754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033215.P2128816261524133754

noncomputable section

/-- A033215: Primes of form x^2+21*y^2.

Offset 1, canonical program `A033215.P2128816261524133754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215 (n : ℕ) : ℤ :=
  (A033215.P2128816261524133754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A033215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034836.P5569050917274678762

`(2*A010057(n+1)+A007425(n+1)+3*A046951(n+1))/6`
-/

namespace A034836.P5569050917274678762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A010057 (n + 1) + A007425 (n + 1) + 3 * A046951 (n + 1) : ℚ) / 6

end

end A034836.P5569050917274678762

noncomputable section

/-- A034836: Number of ways to write n as n = x*y*z with 1 <= x <= y <= z.

Offset 1, canonical program `A034836.P5569050917274678762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034836.P5569050917274678762.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034849.P15691742915255427826

`1+2*A034784(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034849.P15691742915255427826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A034784 (n + 1)

end

end A034849.P15691742915255427826

noncomputable section

/-- A034849: a(n) = 1 + 2*A034784(n).

Offset 1, canonical program `A034849.P15691742915255427826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849 (n : ℕ) : ℤ :=
  A034849.P15691742915255427826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034784, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034956.P16124176413780656926

`(A034960(n+1)+A000040(n+1))/2`
-/

namespace A034956.P16124176413780656926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) + A000040 (n + 1) : ℚ) / 2

end

end A034956.P16124176413780656926

noncomputable section

/-- A034956: Divide natural numbers in groups with prime(n) elements and add together.

Offset 1, canonical program `A034956.P16124176413780656926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034956 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034956.P16124176413780656926.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034973.P13506425649681590282

`A056175(n+1)+A056173(n+1)`
-/

namespace A034973.P13506425649681590282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1) + A056173 (n + 1)

end

end A034973.P13506425649681590282

noncomputable section

/-- A034973: Number of distinct prime factors in central binomial coefficients C(n, floor(n/2)), the terms of A001405.

Offset 1, canonical program `A034973.P13506425649681590282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973 (n : ℕ) : ℤ :=
  A034973.P13506425649681590282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035185.P8037574016802671635

`A363037(n+1)-A364032(n+1)`
-/

namespace A035185.P8037574016802671635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363037 (n + 1) - A364032 (n + 1)

end

end A035185.P8037574016802671635

noncomputable section

/-- A035185: Number of divisors of n == 1 or 7 (mod 8) minus number of divisors of n == 3 or 5 (mod 8).

Offset 1, canonical program `A035185.P8037574016802671635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185 (n : ℕ) : ℤ :=
  A035185.P8037574016802671635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035253.P11915159649385761388

`A035254(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A035253.P11915159649385761388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A035254 (n - 1) + a (n - 1)

end

end A035253.P11915159649385761388

noncomputable section

/-- A035253: Second differences are 2,2,1,2,1,1,2,1,1,1,2,1,1,1,1,2,1,1,1,1,1,2,.. (A035214).

Offset 0, canonical program `A035253.P11915159649385761388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253 (n : ℕ) : ℤ :=
  A035253.P11915159649385761388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036660.P2237359148755878033

`(A007504(A014688(n+1))-A007504(n+1))*A000040(n+1)`
-/

namespace A036660.P2237359148755878033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (A014688 (n + 1)).toNat - A007504 (n + 1)) * A000040 (n + 1)

end

end A036660.P2237359148755878033

noncomputable section

/-- A036660: Product of prime p with sum of next p consecutive primes.

Offset 1, canonical program `A036660.P2237359148755878033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660 (n : ℕ) : ℤ :=
  A036660.P2237359148755878033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A036660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037037.P10824108654988819011

`A100637(n)-A230980(n)`
-/

namespace A037037.P10824108654988819011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 n - A230980 n

end

end A037037.P10824108654988819011

noncomputable section

/-- A037037: Number of primes between n and 3n.

Offset 1, canonical program `A037037.P10824108654988819011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037 (n : ℕ) : ℤ :=
  A037037.P10824108654988819011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037128.P2879077099965106880

`A014211(n)-A014210(n)`
-/

namespace A037128.P2879077099965106880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n - A014210 n

end

end A037128.P2879077099965106880

noncomputable section

/-- A037128: a(n) = nextprime(3^n) - nextprime(2^n).

Offset 0, canonical program `A037128.P2879077099965106880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128 (n : ℕ) : ℤ :=
  A037128.P2879077099965106880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014210, A014211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A037128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037131.P15693349067059617684

`A037130(n)/2`
-/

namespace A037131.P15693349067059617684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037130 n : ℚ) / 2

end

end A037131.P15693349067059617684

noncomputable section

/-- A037131: a(n) = (nextprime(4^n) - nextprime(2^n))/2.

Offset 0, canonical program `A037131.P15693349067059617684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037131.P15693349067059617684.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038509.P14900524453190628503

`A007310(A199593(n+1))`
-/

namespace A038509.P14900524453190628503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A199593 (n + 1)).toNat

end

end A038509.P14900524453190628503

noncomputable section

/-- A038509: Composite numbers congruent to +-1 mod 6.

Offset 1, canonical program `A038509.P14900524453190628503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509 (n : ℕ) : ℤ :=
  A038509.P14900524453190628503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A038509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038587.P18029741549322607791

`∑[A005882(n)]`
-/

namespace A038587.P18029741549322607791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P18029741549322607791

noncomputable section

/-- A038587: Sizes of successive clusters in hexagonal lattice A_2 centered at deep hole.

Offset 0, canonical program `A038587.P18029741549322607791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587 (n : ℕ) : ℤ :=
  A038587.P18029741549322607791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038991.P10290637620050896521

`∑{d}[n+1, A000290(#)*A027847((n+1)/#)]`
-/

namespace A038991.P10290637620050896521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A027847 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A038991.P10290637620050896521

noncomputable section

/-- A038991: Number of sublattices of index n in generic 4-dimensional lattice.

Offset 1, canonical program `A038991.P10290637620050896521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991 (n : ℕ) : ℤ :=
  A038991.P10290637620050896521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039638.P9564381809488452408

`A039634(A006093(n+1))`
-/

namespace A039638.P9564381809488452408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A006093 (n + 1)).toNat

end

end A039638.P9564381809488452408

noncomputable section

/-- A039638: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039638.P9564381809488452408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638 (n : ℕ) : ℤ :=
  A039638.P9564381809488452408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039639.P407717812387908810

`A039634(A008864(n+1))`
-/

namespace A039639.P407717812387908810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A008864 (n + 1)).toNat

end

end A039639.P407717812387908810

noncomputable section

/-- A039639: Fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039639.P407717812387908810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639 (n : ℕ) : ℤ :=
  A039639.P407717812387908810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039642.P6274246223323144857

`A039636(A006093(n+1))`
-/

namespace A039642.P6274246223323144857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A006093 (n + 1)).toNat

end

end A039642.P6274246223323144857

noncomputable section

/-- A039642: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039642.P6274246223323144857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039642 (n : ℕ) : ℤ :=
  A039642.P6274246223323144857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039643.P15310659880312822669

`A039636(A008864(n+1))`
-/

namespace A039643.P15310659880312822669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A008864 (n + 1)).toNat

end

end A039643.P15310659880312822669

noncomputable section

/-- A039643: Number of steps to fixed point of "k -> k/2 or (k-1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039643.P15310659880312822669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039643 (n : ℕ) : ℤ :=
  A039643.P15310659880312822669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039734.P6650041505053879589

`A000040(A039733(n+2))`
-/

namespace A039734.P6650041505053879589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039733 (n + 2)).toNat

end

end A039734.P6650041505053879589

noncomputable section

/-- A039734: a(n)=the prime q

Offset 2, canonical program `A039734.P6650041505053879589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734 (n : ℕ) : ℤ :=
  A039734.P6650041505053879589.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043505.P9579580581361236781

`eq[A064532(n)+1, A064692(n)]`
-/

namespace A043505.P9579580581361236781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043505.P9579580581361236781

noncomputable section

/-- A043505: Numbers having one 4 in base 10.

Offset 1, canonical program `A043505.P9579580581361236781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505 (n : ℕ) : ℤ :=
  (A043505.P9579580581361236781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043555.P11372978209662436476

`A043556(A023717(n))`
-/

namespace A043555.P11372978209662436476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A023717 n).toNat

end

end A043555.P11372978209662436476

noncomputable section

/-- A043555: Number of runs in base-3 representation of n.

Offset 0, canonical program `A043555.P11372978209662436476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555 (n : ℕ) : ℤ :=
  A043555.P11372978209662436476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A043555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045028.P3838657998605660470

`∩[A023708(n+1), A023709(n+1)]`
-/

namespace A045028.P3838657998605660470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045028.P3838657998605660470

noncomputable section

/-- A045028: Numbers whose base-4 representation contains exactly three 0's and no 1's.

Offset 1, canonical program `A045028.P3838657998605660470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028 (n : ℕ) : ℤ :=
  (A045028.P3838657998605660470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A045028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045033.P13537132083446231086

`∩[A023709(n+1), A043336(n+1)]`
-/

namespace A045033.P13537132083446231086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045033.P13537132083446231086

noncomputable section

/-- A045033: Numbers whose base-4 representation contains exactly four 0's and no 1's.

Offset 1, canonical program `A045033.P13537132083446231086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033 (n : ℕ) : ℤ :=
  (A045033.P13537132083446231086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. -/
def A045033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045053.P13165953604625975418

`∩[A023708(n+1), A023714(n+1)]`
-/

namespace A045053.P13165953604625975418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045053.P13165953604625975418

noncomputable section

/-- A045053: Numbers whose base-4 representation contains exactly three 0's and one 2.

Offset 1, canonical program `A045053.P13165953604625975418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053 (n : ℕ) : ℤ :=
  (A045053.P13165953604625975418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A045053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045054.P5102495377277292480

`∩[A023708(n+1), A023715(n+1)]`
-/

namespace A045054.P5102495377277292480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045054.P5102495377277292480

noncomputable section

/-- A045054: Numbers whose base-4 representation contains exactly three 0's and two 2's.

Offset 1, canonical program `A045054.P5102495377277292480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054 (n : ℕ) : ℤ :=
  (A045054.P5102495377277292480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A045054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045077.P18224216252546591222

`∩[A023708(n+1), A023718(n+1)]`
-/

namespace A045077.P18224216252546591222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045077.P18224216252546591222

noncomputable section

/-- A045077: Numbers whose base-4 representation contains exactly three 0's and one 3.

Offset 1, canonical program `A045077.P18224216252546591222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077 (n : ℕ) : ℤ :=
  (A045077.P18224216252546591222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A045077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045078.P1198269860631317732

`∩[A023708(n+1), A031462(n+1)]`
-/

namespace A045078.P1198269860631317732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045078.P1198269860631317732

noncomputable section

/-- A045078: Numbers whose base-4 representation contains exactly three 0's and two 3's.

Offset 1, canonical program `A045078.P1198269860631317732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078 (n : ℕ) : ℤ :=
  (A045078.P1198269860631317732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A045078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045082.P11121397618110216211

`∩[A031464(n+1), A043336(n+1)]`
-/

namespace A045082.P11121397618110216211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045082.P11121397618110216211

noncomputable section

/-- A045082: Numbers whose base-4 representation contains exactly four 0's and one 3.

Offset 1, canonical program `A045082.P11121397618110216211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082 (n : ℕ) : ℤ :=
  (A045082.P11121397618110216211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. -/
def A045082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045771.P7761879348311045879

`∑{d}[n+1, A035109(#-1)*A193356((n+1)/#)]`
-/

namespace A045771.P7761879348311045879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035109 (d - 1) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045771.P7761879348311045879

noncomputable section

/-- A045771: Number of similar sublattices of index n^2 in root lattice D_4.

Offset 1, canonical program `A045771.P7761879348311045879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771 (n : ℕ) : ℤ :=
  A045771.P7761879348311045879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046079.P18422331483105200768

`∑{d}[n+1, A024361(#)]`
-/

namespace A046079.P18422331483105200768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024361 d

end

end A046079.P18422331483105200768

noncomputable section

/-- A046079: Number of Pythagorean triangles with leg n.

Offset 1, canonical program `A046079.P18422331483105200768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079 (n : ℕ) : ℤ :=
  A046079.P18422331483105200768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046159.P12915748056577816484

`A270248(n+2)-1`
-/

namespace A046159.P12915748056577816484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 2) - 1

end

end A046159.P12915748056577816484

noncomputable section

/-- A046159: Bends of spheres in the plane of Soddy's bowl of integers.

Offset 1, canonical program `A046159.P12915748056577816484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046159 (n : ℕ) : ℤ :=
  A046159.P12915748056577816484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046954.P3746753794890301022

`A272902(n+1)-1`
-/

namespace A046954.P3746753794890301022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1) - 1

end

end A046954.P3746753794890301022

noncomputable section

/-- A046954: Numbers k such that 6*k + 1 is nonprime.

Offset 1, canonical program `A046954.P3746753794890301022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046954 (n : ℕ) : ℤ :=
  A046954.P3746753794890301022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049093.P5208280421691418711

`eq[1, A272334(n+1)]+1`
-/

namespace A049093.P5208280421691418711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049093.P5208280421691418711

noncomputable section

/-- A049093: Numbers n such that 2^n - 1 is squarefree.

Offset 1, canonical program `A049093.P5208280421691418711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093 (n : ℕ) : ℤ :=
  (A049093.P5208280421691418711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. -/
def A049093.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050152.P13672453519824869841

`A035029(n)-A047781(n+1)`
-/

namespace A050152.P13672453519824869841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n - A047781 (n + 1)

end

end A050152.P13672453519824869841

noncomputable section

/-- A050152: a(n) = T(n,n+3), array T as in A050143.

Offset 0, canonical program `A050152.P13672453519824869841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050152 (n : ℕ) : ℤ :=
  A050152.P13672453519824869841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A050152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050800.P2900740559299843920

`1+A050796(n+1)²`
-/

namespace A050800.P2900740559299843920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A050796 (n + 1) ^ 2

end

end A050800.P2900740559299843920

noncomputable section

/-- A050800: Values of n^2 + 1 resulting from A050796.

Offset 1, canonical program `A050800.P2900740559299843920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800 (n : ℕ) : ℤ :=
  A050800.P2900740559299843920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051533.P6966278410585714434

`lt[0, A053603(n)]`
-/

namespace A051533.P6966278410585714434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051533.P6966278410585714434

noncomputable section

/-- A051533: Numbers that are the sum of two positive triangular numbers.

Offset 1, canonical program `A051533.P6966278410585714434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533 (n : ℕ) : ℤ :=
  (A051533.P6966278410585714434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4788 terms. -/
def A051533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052344.P15195332241825076864

`ceil(A053603(n)/2)`
-/

namespace A052344.P15195332241825076864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053603 n : ℚ) / 2⌉

end

end A052344.P15195332241825076864

noncomputable section

/-- A052344: Number of ways to write n as the unordered sum of two nonzero triangular numbers.

Offset 0, canonical program `A052344.P15195332241825076864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344 (n : ℕ) : ℤ :=
  A052344.P15195332241825076864.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052406.P11983566337862836048

`eq[A064532(n), A064692(n)]`
-/

namespace A052406.P11983566337862836048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P11983566337862836048

noncomputable section

/-- A052406: Numbers without 4 as a digit.

Offset 1, canonical program `A052406.P11983566337862836048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406 (n : ℕ) : ℤ :=
  (A052406.P11983566337862836048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052424.P2266078276954226597

`A055398(A028310(n))-A000007(n)`
-/

namespace A052424.P2266078276954226597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A000007 n

end

end A052424.P2266078276954226597

noncomputable section

/-- A052424: Numbers k with no single-digit factors (apart from 1 and k).

Offset 1, canonical program `A052424.P2266078276954226597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424 (n : ℕ) : ℤ :=
  A052424.P2266078276954226597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053242.P8865335897655039445

`A053240(lt[A053239(n+1), 2]+1)`
-/

namespace A053242.P8865335897655039445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A053242.P8865335897655039445

noncomputable section

/-- A053242: Numbers k such that A053238(k) = 1.

Offset 1, canonical program `A053242.P8865335897655039445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242 (n : ℕ) : ℤ :=
  A053242.P8865335897655039445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. -/
def A053242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053244.P10580565334014799152

`A053240(lt[3, A053239(n+1)]+1)`
-/

namespace A053244.P10580565334014799152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053244.P10580565334014799152

noncomputable section

/-- A053244: Numbers k such that A053238(k) = 4.

Offset 1, canonical program `A053244.P10580565334014799152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244 (n : ℕ) : ℤ :=
  A053244.P10580565334014799152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. -/
def A053244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053726.P6824905761757210776

`A047845(n+2)+1`
-/

namespace A053726.P6824905761757210776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + 1

end

end A053726.P6824905761757210776

noncomputable section

/-- A053726: "Flag numbers": number of dots that can be arranged in successive rows of K, K-1, K, K-1, K, ..., K-1, K (assuming there is a total of L > 1 rows of size K > 1).

Offset 1, canonical program `A053726.P6824905761757210776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726 (n : ℕ) : ℤ :=
  A053726.P6824905761757210776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047845, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055076.P11566696520778035390

`2^A162642(n+1)`
-/

namespace A055076.P11566696520778035390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A162642 (n + 1) : ℤ)

end

end A055076.P11566696520778035390

noncomputable section

/-- A055076: Multiplicity of Max{gcd(d, n/d)} when d runs over divisors of n.

Offset 1, canonical program `A055076.P11566696520778035390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055076.P11566696520778035390.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056139.P2026426973506976792

`(n+2)²-A030664(n+2)`
-/

namespace A056139.P2026426973506976792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A030664 (n + 2)

end

end A056139.P2026426973506976792

noncomputable section

/-- A056139: a(n) = n^2 - primefloor(n)*primeceiling(n).

Offset 2, canonical program `A056139.P2026426973506976792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139 (n : ℕ) : ℤ :=
  A056139.P2026426973506976792.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030664, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056564.P14160989435104353240

`A056562(n)+A056563(n)`
-/

namespace A056564.P14160989435104353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 n + A056563 n

end

end A056564.P14160989435104353240

noncomputable section

/-- A056564: Number of times primes can be produced by taking the absolute difference between the n-th triangular number and another triangular number.

Offset 0, canonical program `A056564.P14160989435104353240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564 (n : ℕ) : ℤ :=
  A056564.P14160989435104353240.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056562, A056563, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056626.P14476168144276018779

`A046951(n+1)-A056624(n+1)`
-/

namespace A056626.P14476168144276018779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A056624 (n + 1)

end

end A056626.P14476168144276018779

noncomputable section

/-- A056626: Number of non-unitary square divisors of n.

Offset 1, canonical program `A056626.P14476168144276018779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056624, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056626 (n : ℕ) : ℤ :=
  A056626.P14476168144276018779.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056624, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057661.P8562176095648835282

`(1+A057660(n+1))/2`
-/

namespace A057661.P8562176095648835282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A057660 (n + 1) : ℚ) / 2

end

end A057661.P8562176095648835282

noncomputable section

/-- A057661: a(n) = Sum_{k=1..n} lcm(n,k)/n.

Offset 1, canonical program `A057661.P8562176095648835282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057661.P8562176095648835282.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057811.P15232790486680947768

`a(n-1)+A096500(a(n-1))+1` with `a(0)=1`
-/

namespace A057811.P15232790486680947768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057811.P15232790486680947768

noncomputable section

/-- A057811: Numbers k such that pi(k) is even.

Offset 1, canonical program `A057811.P15232790486680947768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811 (n : ℕ) : ℤ :=
  A057811.P15232790486680947768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057812.P4262350410008531703

`a(n-1)+A096500(a(n-1))+1` with `a(0)=2`
-/

namespace A057812.P4262350410008531703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A096500 (a (n - 1)).toNat + 1)

end

end A057812.P4262350410008531703

noncomputable section

/-- A057812: Numbers k such that pi(k) is odd.

Offset 1, canonical program `A057812.P4262350410008531703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812 (n : ℕ) : ℤ :=
  A057812.P4262350410008531703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057922.P11387328956576665709

`eq[1, A361022(n+1)]+1`
-/

namespace A057922.P11387328956576665709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057922.P11387328956576665709

noncomputable section

/-- A057922: d(n) divides d(n+1), where d(n) is number of positive divisors of n.

Offset 0, canonical program `A057922.P11387328956576665709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922 (n : ℕ) : ℤ :=
  (A057922.P11387328956576665709.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A058053.P2509255081695082303

`A097513(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A058053.P2509255081695082303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A097513 n + a (n - 3)

end

end A058053.P2509255081695082303

noncomputable section

/-- A058053: Number of 3-rowed binary matrices with n ones and no zero columns, up to row and column permutation.

Offset 0, canonical program `A058053.P2509255081695082303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053 (n : ℕ) : ℤ :=
  A058053.P2509255081695082303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A058053.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060367.P9155873147261738328

`floor(A057660(n+1)/(n+1))`
-/

namespace A060367.P9155873147261738328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057660 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A060367.P9155873147261738328

noncomputable section

/-- A060367: Average order of an element in a cyclic group of order n rounded down.

Offset 1, canonical program `A060367.P9155873147261738328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060367 (n : ℕ) : ℤ :=
  A060367.P9155873147261738328.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062302.P6361743643508282382

`n-2*A062301(n+1)`
-/

namespace A062302.P6361743643508282382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A062301 (n + 1)

end

end A062302.P6361743643508282382

noncomputable section

/-- A062302: Number of ways writing n-th prime as a sum of a prime and a nonprime.

Offset 1, canonical program `A062302.P6361743643508282382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062302 (n : ℕ) : ℤ :=
  A062302.P6361743643508282382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064027.P15469288149459066613

`(-1)^(n+1)*(A001157(n+1)-2*A050999(n+1))`
-/

namespace A064027.P15469288149459066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001157 (n + 1) - 2 * A050999 (n + 1))

end

end A064027.P15469288149459066613

noncomputable section

/-- A064027: a(n) = (-1)^n*Sum_{d|n} (-1)^d*d^2.

Offset 1, canonical program `A064027.P15469288149459066613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027 (n : ℕ) : ℤ :=
  A064027.P15469288149459066613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064062.P2466146061458098928

`A062992((n-1)%(n+1))`
-/

namespace A064062.P2466146061458098928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062992 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A064062.P2466146061458098928

noncomputable section

/-- A064062: Generalized Catalan numbers C(2; n).

Offset 0, canonical program `A064062.P2466146061458098928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A064062 (n : ℕ) : ℤ :=
  A064062.P2466146061458098928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A064062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064635.P6171821753476805520

`6*A059324(n+1)+10`
-/

namespace A064635.P6171821753476805520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A059324 (n + 1) + 10

end

end A064635.P6171821753476805520

noncomputable section

/-- A064635: Even numbers > 6 not appearing in A064466. a(n) = A064466(A064634(n)) + 2 for n > 0.

Offset 1, canonical program `A064635.P6171821753476805520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6751 terms. -/
def A064635 (n : ℕ) : ℤ :=
  A064635.P6171821753476805520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6751 terms. -/
def A064635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064937.P11756979799408697284

`record[A191558((n+1)/A064830(n+1))]`
-/

namespace A064937.P11756979799408697284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A064830 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064937.P11756979799408697284

noncomputable section

/-- A064937: Nonprimes k such that gcd(k, prime(k)^2 - 1) is 1.

Offset 1, canonical program `A064937.P11756979799408697284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A064937 (n : ℕ) : ℤ :=
  A064937.P11756979799408697284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A064937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064951.P12585674823330249368

`a(n-1)+(n+1)*A057660(n+1)` with `a(0)=1`
-/

namespace A064951.P12585674823330249368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A057660 (n + 1)

end

end A064951.P12585674823330249368

noncomputable section

/-- A064951: a(n) = Sum_{1 <= x, y <= n} lcm(x, y).

Offset 1, canonical program `A064951.P12585674823330249368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064951 (n : ℕ) : ℤ :=
  A064951.P12585674823330249368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057660, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064951.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065364.P12653479554998272928

`∑[A009001(A163746(A047789(n)))]`
-/

namespace A065364.P12653479554998272928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A163746 (A047789 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065364.P12653479554998272928

noncomputable section

/-- A065364: Alternating sum of balanced ternary digits in n. Replace 3^k with (-1)^k in balanced ternary expansion of n.

Offset 1, canonical program `A065364.P12653479554998272928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364 (n : ℕ) : ℤ :=
  A065364.P12653479554998272928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`
-/

namespace A066074.P14598573141439101236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14598573141439101236

noncomputable section

/-- A066074: Primes arising in A066073.

Offset 1, canonical program `A066074.P14598573141439101236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074 (n : ℕ) : ℤ :=
  A066074.P14598573141439101236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A066074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066197.P11231834716890673726

`A007947(A033286(n+1)*A014688(n+1))`
-/

namespace A066197.P11231834716890673726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033286 (n + 1) * A014688 (n + 1)).toNat

end

end A066197.P11231834716890673726

noncomputable section

/-- A066197: Squarefree kernel of (n*prime(n))*(n+prime(n)).

Offset 1, canonical program `A066197.P11231834716890673726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066197 (n : ℕ) : ℤ :=
  A066197.P11231834716890673726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066197.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066253.P2942854054370966981

`A066249(A066249(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066253.P2942854054370966981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (A066249 (n + 1)).toNat

end

end A066253.P2942854054370966981

noncomputable section

/-- A066253: a(n) = A066249(A066249(n)).

Offset 1, canonical program `A066253.P2942854054370966981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253 (n : ℕ) : ℤ :=
  A066253.P2942854054370966981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066255.P15448090258535731696

`A066251(A066251(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066255.P15448090258535731696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (A066251 (n + 1)).toNat

end

end A066255.P15448090258535731696

noncomputable section

/-- A066255: a(n) = A066251(A066251(n)).

Offset 1, canonical program `A066255.P15448090258535731696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255 (n : ℕ) : ℤ :=
  A066255.P15448090258535731696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066339.P5957712968518338971

`A296021(floor(n/4))`
-/

namespace A066339.P5957712968518338971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 ⌊(n : ℚ) / 4⌋.toNat

end

end A066339.P5957712968518338971

noncomputable section

/-- A066339: Number of primes p of the form 4m+1 with p <= n.

Offset 1, canonical program `A066339.P5957712968518338971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066339 (n : ℕ) : ℤ :=
  A066339.P5957712968518338971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067236.P11489592581938594514

`eq[1, A306682(A000203(n+1))]+1`
-/

namespace A067236.P11489592581938594514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067236.P11489592581938594514

noncomputable section

/-- A067236: Numbers n such that gcd(sigma(n), sigma(sigma(n)))=1.

Offset 1, canonical program `A067236.P11489592581938594514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A067236 (n : ℕ) : ℤ :=
  (A067236.P11489592581938594514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A067236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067774.P9573617290434745889

`p?[A353464(n+2)+n]`
-/

namespace A067774.P9573617290434745889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P9573617290434745889

noncomputable section

/-- A067774: Primes p such that p+2 is not a prime.

Offset 1, canonical program `A067774.P9573617290434745889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8368 terms. -/
def A067774 (n : ℕ) : ℤ :=
  A067774.P9573617290434745889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8368 terms. -/
def A067774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068140.P16002895801053887860

`∩[A046099(n+1)-1, A046099(n+1)]`
-/

namespace A068140.P16002895801053887860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068140.P16002895801053887860

noncomputable section

/-- A068140: Smaller of two consecutive numbers each divisible by a cube greater than one.

Offset 1, canonical program `A068140.P16002895801053887860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140 (n : ℕ) : ℤ :=
  (A068140.P16002895801053887860.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A068140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068822.P12092756705496627243

`gcd(n+1, A089186(n+1))`
-/

namespace A068822.P12092756705496627243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A089186 (n + 1))

end

end A068822.P12092756705496627243

noncomputable section

/-- A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068822.P12092756705496627243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822 (n : ℕ) : ℤ :=
  (A068822.P12092756705496627243.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070999.P10711028318610631314

`lt[1, gcd(n+1, A057660(n+1))]+1`
-/

namespace A070999.P10711028318610631314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A057660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070999.P10711028318610631314

noncomputable section

/-- A070999: Numbers n such that the denominator of Sum_{k=1..n} 1/gcd(n,k) is not equal to n.

Offset 1, canonical program `A070999.P10711028318610631314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999 (n : ℕ) : ℤ :=
  (A070999.P10711028318610631314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A070999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071329.P5834183981238197590

`A000040(A000720(A014688(n+1)))`
-/

namespace A071329.P5834183981238197590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A014688 (n + 1)).toNat).toNat

end

end A071329.P5834183981238197590

noncomputable section

/-- A071329: Largest prime q such that q - prime(n) <= n.

Offset 1, canonical program `A071329.P5834183981238197590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329 (n : ℕ) : ℤ :=
  A071329.P5834183981238197590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A071329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071680.P13360749277261399360

`A000040(eq[1, A087032(A000040(n+1))]+2)`
-/

namespace A071680.P13360749277261399360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A071680.P13360749277261399360

noncomputable section

/-- A071680: Primes that are the arithmetic mean of their prime predecessor and another prime.

Offset 1, canonical program `A071680.P13360749277261399360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680 (n : ℕ) : ℤ :=
  A071680.P13360749277261399360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A071680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071684.P5183352824693304528

`A000108(n+1)-A071688(n+1)`
-/

namespace A071684.P5183352824693304528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A071688 (n + 1)

end

end A071684.P5183352824693304528

noncomputable section

/-- A071684: Number of plane trees with n edges and having an odd number of leaves.

Offset 1, canonical program `A071684.P5183352824693304528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071684 (n : ℕ) : ℤ :=
  A071684.P5183352824693304528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071684.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072805.P2012198324060395438

`A001363(A080148(n+1))`
-/

namespace A072805.P2012198324060395438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001363 (A080148 (n + 1)).toNat

end

end A072805.P2012198324060395438

noncomputable section

/-- A072805: Primes of form 4k+3 written in base 3.

Offset 1, canonical program `A072805.P2012198324060395438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A072805 (n : ℕ) : ℤ :=
  A072805.P2012198324060395438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A072805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072864.P6592370251921593002

`lt[1, gcd(3, A035109(n))]+1`
-/

namespace A072864.P6592370251921593002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A035109 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072864.P6592370251921593002

noncomputable section

/-- A072864: Numbers m such that the smallest k dividing sigma(k*m^2) is equal to 3.

Offset 1, canonical program `A072864.P6592370251921593002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864 (n : ℕ) : ℤ :=
  (A072864.P6592370251921593002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5869 terms. -/
def A072864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072910.P14948569435881856669

`A000203(A023883(n+1))/A000005(A023883(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072910.P14948569435881856669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A023883 (n + 1)).toNat : ℚ) / (A000005 (A023883 (n + 1)).toNat : ℚ)

end

end A072910.P14948569435881856669

noncomputable section

/-- A072910: a(n) = sigma(A023883(n)) / tau(A023883(n)).

Offset 1, canonical program `A072910.P14948569435881856669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072910.P14948569435881856669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023883, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073432.P14421923093104671474

`abs(1-(A047845(n+1)+n))`
-/

namespace A073432.P14421923093104671474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A047845 (n + 1) + (n : ℤ))|

end

end A073432.P14421923093104671474

noncomputable section

/-- A073432: Numbers k such that prime(k) + composite(k) is even.

Offset 1, canonical program `A073432.P14421923093104671474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073432 (n : ℕ) : ℤ :=
  A073432.P14421923093104671474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074315.P17848923822781647351

`record[A000217(n+8)%A152989(n+8)]`
-/

namespace A074315.P17848923822781647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 8)) (A152989 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074315.P17848923822781647351

noncomputable section

/-- A074315: Abundant triangular numbers.

Offset 1, canonical program `A074315.P17848923822781647351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315 (n : ℕ) : ℤ :=
  A074315.P17848923822781647351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4343 terms. -/
def A074315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074451.P6339124675814349987

`∩[A007412(n+1), A046099(n+1)]`
-/

namespace A074451.P6339124675814349987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074451.P6339124675814349987

noncomputable section

/-- A074451: Non-cubefree noncubes.

Offset 1, canonical program `A074451.P6339124675814349987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451 (n : ℕ) : ℤ :=
  (A074451.P6339124675814349987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A074451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075084.P2425940748409505263

`2-A035250(abs(1-n)+2)+n`
-/

namespace A075084.P2425940748409505263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035250 (|1 - (n : ℤ)| + 2).toNat + (n : ℤ)

end

end A075084.P2425940748409505263

noncomputable section

/-- A075084: Number of composite numbers c with n <= c <= 2*n.

Offset 1, canonical program `A075084.P2425940748409505263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075084 (n : ℕ) : ℤ :=
  A075084.P2425940748409505263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075439.P4067390105220631629

`(1-A262855(n))^n`
-/

namespace A075439.P4067390105220631629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A262855 n) ^ n

end

end A075439.P4067390105220631629

noncomputable section

/-- A075439: Triangle read by rows giving successive iterations of the Rule 102 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

Offset 0, canonical program `A075439.P4067390105220631629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439 (n : ℕ) : ℤ :=
  A075439.P4067390105220631629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076598.P8952972172380469105

`or(1, A006519(n+1)²)*A050999(n+1)`
-/

namespace A076598.P8952972172380469105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006519 (n + 1) ^ 2) * A050999 (n + 1)

end

end A076598.P8952972172380469105

noncomputable section

/-- A076598: Sum of squares of divisors d of n such that d or n/d is odd.

Offset 1, canonical program `A076598.P8952972172380469105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076598 (n : ℕ) : ℤ :=
  A076598.P8952972172380469105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077025.P7516905094900168968

`A077024(n+1)-(n+1)`
-/

namespace A077025.P7516905094900168968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) - (n + 1 : ℤ)

end

end A077025.P7516905094900168968

noncomputable section

/-- A077025: a(n) = Sum_{k=1..n} floor(n/(k + 1/2)).

Offset 1, canonical program `A077025.P7516905094900168968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077025 (n : ℕ) : ℤ :=
  A077025.P7516905094900168968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077128.P6236648735543472976

`A097050(n+1)`
-/

namespace A077128.P6236648735543472976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097050 (n + 1)

end

end A077128.P6236648735543472976

noncomputable section

/-- A077128: Smallest number greater than the previous term which is relatively prime to each of the group of the next n numbers.

Offset 1, canonical program `A077128.P6236648735543472976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128 (n : ℕ) : ℤ :=
  A077128.P6236648735543472976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A077128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079460.P9773607769593027518

`∑[or(∑[2^(n+1)], A193291(n+1))]`
-/

namespace A079460.P9773607769593027518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A193291 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079460.P9773607769593027518

noncomputable section

/-- A079460: Let r(n) be the real positive root of Sum_{k=1..n} x^k = 1, then a(n) = round(1/(r(n) - 1/2)).

Offset 1, canonical program `A079460.P9773607769593027518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A079460 (n : ℕ) : ℤ :=
  A079460.P9773607769593027518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A079460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079715.P16991803801828527791

`A056812(n+1)+1`
-/

namespace A079715.P16991803801828527791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (n + 1) + 1

end

end A079715.P16991803801828527791

noncomputable section

/-- A079715: a(n) = pi(n) - pi(sqrt(n)) + 1.

Offset 1, canonical program `A079715.P16991803801828527791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715 (n : ℕ) : ℤ :=
  A079715.P16991803801828527791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079740.P6037499891495547414

`p?[A004431(n+1)+2]`
-/

namespace A079740.P6037499891495547414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079740.P6037499891495547414

noncomputable section

/-- A079740: Primes of the form x^2 + y^2 + 2 (x,y positive).

Offset 1, canonical program `A079740.P6037499891495547414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740 (n : ℕ) : ℤ :=
  A079740.P6037499891495547414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A079740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080356.P844167049786570391

`∑[A353463(2*n+1)-A353464(n+2)]`
-/

namespace A080356.P844167049786570391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (2 * n + 1) - A353464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080356.P844167049786570391

noncomputable section

/-- A080356: Number of twin primes between n and 2n: a(n) = number of j in range n <= j <= 2*n such that j and j+2 are primes.

Offset 1, canonical program `A080356.P844167049786570391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080356 (n : ℕ) : ℤ :=
  A080356.P844167049786570391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080401.P8518956413726012276

`lt[n², A080399(n+1)]+1`
-/

namespace A080401.P8518956413726012276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080401.P8518956413726012276

noncomputable section

/-- A080401: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is squarefree.

Offset 1, canonical program `A080401.P8518956413726012276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401 (n : ℕ) : ℤ :=
  (A080401.P8518956413726012276.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A080401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080402.P17243358011621989898

`lt[A080399(n+1), n²]+1`
-/

namespace A080402.P17243358011621989898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080402.P17243358011621989898

noncomputable section

/-- A080402: Numbers k such that the sum of the squares of the divisors of k (A001157(k)) is not squarefree.

Offset 1, canonical program `A080402.P17243358011621989898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402 (n : ℕ) : ℤ :=
  (A080402.P17243358011621989898.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7567 terms. -/
def A080402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080903.P12103839465626112779

`A086398(n+1)-2*A284751(n+1)`
-/

namespace A080903.P12103839465626112779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - 2 * A284751 (n + 1)

end

end A080903.P12103839465626112779

noncomputable section

/-- A080903: a(1)=1; for n>1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A080903.P12103839465626112779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903 (n : ℕ) : ℤ :=
  A080903.P12103839465626112779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082539.P16555288702611882584

`A000040(lt[A084196(n+1), 1]+1)`
-/

namespace A082539.P16555288702611882584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084196 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A082539.P16555288702611882584

noncomputable section

/-- A082539: Primes p such that there is no prime q, q < p with q+1 dividing p+1.

Offset 1, canonical program `A082539.P16555288702611882584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1557 terms. -/
def A082539 (n : ℕ) : ℤ :=
  A082539.P16555288702611882584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1557 terms. -/
def A082539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082686.P7085759963606305548

`2*A226567(n+1)+1`
-/

namespace A082686.P7085759963606305548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226567 (n + 1) + 1

end

end A082686.P7085759963606305548

noncomputable section

/-- A082686: Odd nonprime integers n which have an odd number of proper divisors.

Offset 1, canonical program `A082686.P7085759963606305548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686 (n : ℕ) : ℤ :=
  A082686.P7085759963606305548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083356.P17116603988832538437

`A060872(n)+a(n-1)` with `a(0)=0`
-/

namespace A083356.P17116603988832538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A060872 n + a (n - 1)

end

end A083356.P17116603988832538437

noncomputable section

/-- A083356: Total area of all incongruent integer-sided rectangles of area <= n.

Offset 0, canonical program `A083356.P17116603988832538437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356 (n : ℕ) : ℤ :=
  A083356.P17116603988832538437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083855.P6196543086430157343

`A007913(A083854(n+1))`
-/

namespace A083855.P6196543086430157343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A083854 (n + 1)).toNat

end

end A083855.P6196543086430157343

noncomputable section

/-- A083855: Multiplicands in the list of numbers which are squares, twice squares, three times squares, or six times squares (A083854).

Offset 1, canonical program `A083855.P6196543086430157343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083855 (n : ℕ) : ℤ :=
  A083855.P6196543086430157343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084345.P17578340069334555207

`eq[0, A123391(A001316(n))]`
-/

namespace A084345.P17578340069334555207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084345.P17578340069334555207

noncomputable section

/-- A084345: Numbers with a nonprime number of 1's in their binary expansion (complement of A052294).

Offset 1, canonical program `A084345.P17578340069334555207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084345 (n : ℕ) : ℤ :=
  (A084345.P17578340069334555207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086148.P694323764726545804

`A057660(n+1)+2*(n+1)`
-/

namespace A086148.P694323764726545804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 (n + 1) + (2 * (n + 1) : ℤ)

end

end A086148.P694323764726545804

noncomputable section

/-- A086148: Sum of the orders of the elements in the dihedral group D_2n.

Offset 1, canonical program `A086148.P694323764726545804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148 (n : ℕ) : ℤ :=
  A086148.P694323764726545804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087031.P17529191149633832265

`record[(n+1)*A087032(n+1)]`
-/

namespace A087031.P17529191149633832265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P17529191149633832265

noncomputable section

/-- A087031: Numbers n such that 2p-n is prime, p is the smallest prime > n.

Offset 1, canonical program `A087031.P17529191149633832265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031 (n : ℕ) : ℤ :=
  A087031.P17529191149633832265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. -/
def A087031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087693.P16308165039062413688

`p?[A054723(n+1)+2]-2`
-/

namespace A087693.P16308165039062413688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A087693.P16308165039062413688

noncomputable section

/-- A087693: Lesser twin prime p such that 2^p-1 is composite.

Offset 0, canonical program `A087693.P16308165039062413688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A087693 (n : ℕ) : ℤ :=
  A087693.P16308165039062413688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A087693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087699.P13314073770453062209

`p?[A054723(n+1)-2]+2`
-/

namespace A087699.P13314073770453062209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087699.P13314073770453062209

noncomputable section

/-- A087699: Greater twin prime p such that 2^p-1 is composite.

Offset 0, canonical program `A087699.P13314073770453062209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A087699 (n : ℕ) : ℤ :=
  A087699.P13314073770453062209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A087699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088627.P14290878190274737592

`A382983(2*(n+1))`
-/

namespace A088627.P14290878190274737592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382983 (2 * (n + 1))

end

end A088627.P14290878190274737592

noncomputable section

/-- A088627: Let 2n = r*s. Then a(n) = number of primes of the form r+s (r= 1 and s = 2n contributes 1 to the count if 2n+1 is prime).

Offset 1, canonical program `A088627.P14290878190274737592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088627 (n : ℕ) : ℤ :=
  A088627.P14290878190274737592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088709.P16139510648427696938

`filter[A007422(n+1), A296211(#)]`
-/

namespace A088709.P16139510648427696938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A088709.P16139510648427696938

noncomputable section

/-- A088709: Numbers m that are a product of two primes j and k such that m+j+k is prime.

Offset 1, canonical program `A088709.P16139510648427696938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709 (n : ℕ) : ℤ :=
  A088709.P16139510648427696938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088758.P8129966983555977646

`eq[2, A160651(A016813(n))]`
-/

namespace A088758.P8129966983555977646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P8129966983555977646

noncomputable section

/-- A088758: Numbers k such that (4*k + 1)^2 + (4*k + 2)^2 is prime.

Offset 1, canonical program `A088758.P8129966983555977646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758 (n : ℕ) : ℤ :=
  (A088758.P8129966983555977646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089194.P11768801553608245987

`∩[A089189(n+1), A089191(n+1)]`
-/

namespace A089194.P11768801553608245987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089194.P11768801553608245987

noncomputable section

/-- A089194: Primes p such that p-1 and p+1 are cube- or higher power-free.

Offset 1, canonical program `A089194.P11768801553608245987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6187 terms. -/
def A089194 (n : ℕ) : ℤ :=
  (A089194.P11768801553608245987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6187 terms. -/
def A089194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089200.P17182532322328293413

`p?[A046099(n+1)+1]`
-/

namespace A089200.P17182532322328293413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089200.P17182532322328293413

noncomputable section

/-- A089200: Primes p such that p-1 is divisible by a cube.

Offset 1, canonical program `A089200.P17182532322328293413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200 (n : ℕ) : ℤ :=
  A089200.P17182532322328293413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1798 terms. -/
def A089200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089306.P13013484817223251864

`A061397(A191558(n+1)+n+3-C(2, ∑{e}[n+1, #])!)`
-/

namespace A089306.P13013484817223251864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A191558 (n + 1) + ((n + 3 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ))).toNat

end

end A089306.P13013484817223251864

noncomputable section

/-- A089306: Smallest prime of the form n + (n+1)+ (n+2)+...+(n+k), or 0 if no such prime exists.

Offset 1, canonical program `A089306.P13013484817223251864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089306 (n : ℕ) : ℤ :=
  A089306.P13013484817223251864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A089306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089798.P15808584881803484969

`and(A176742(n), A185916(n+1))`
-/

namespace A089798.P15808584881803484969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176742 n) (A185916 (n + 1))

end

end A089798.P15808584881803484969

noncomputable section

/-- A089798: Expansion of Jacobi theta function theta_4(q^2).

Offset 0, canonical program `A089798.P15808584881803484969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798 (n : ℕ) : ℤ :=
  A089798.P15808584881803484969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091113.P2066234327924851190

`4*A045751(n+1)+1`
-/

namespace A091113.P2066234327924851190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045751 (n + 1) + 1

end

end A091113.P2066234327924851190

noncomputable section

/-- A091113: Nonprimes of the form 4*k+1.

Offset 1, canonical program `A091113.P2066234327924851190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113 (n : ℕ) : ℤ :=
  A091113.P2066234327924851190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091236.P7558247970017758999

`4*A045752(n+1)-1`
-/

namespace A091236.P7558247970017758999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045752 (n + 1) - 1

end

end A091236.P7558247970017758999

noncomputable section

/-- A091236: Nonprimes of form 4k+3.

Offset 1, canonical program `A091236.P7558247970017758999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091236 (n : ℕ) : ℤ :=
  A091236.P7558247970017758999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091591.P851275186947517392

`A263204(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A091591.P851275186947517392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263204 (n + 2) - a (n - 1)

end

end A091591.P851275186947517392

noncomputable section

/-- A091591: Number of pairs of twin primes between n^2 and (n+1)^2.

Offset 3, canonical program `A091591.P851275186947517392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091591 (n : ℕ) : ℤ :=
  A091591.P851275186947517392.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A091591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093518.P1184938026992592708

`ceil(A002175(n)/2)`
-/

namespace A093518.P1184938026992592708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002175 n : ℚ) / 2⌉

end

end A093518.P1184938026992592708

noncomputable section

/-- A093518: Number of ways of representing n as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 0, canonical program `A093518.P1184938026992592708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518 (n : ℕ) : ℤ :=
  A093518.P1184938026992592708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093519.P639672327746029394

`eq[0, A002175(n)]`
-/

namespace A093519.P639672327746029394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P639672327746029394

noncomputable section

/-- A093519: Numbers with no representation as the sum of two (not necessarily distinct) generalized pentagonal numbers.

Offset 1, canonical program `A093519.P639672327746029394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519 (n : ℕ) : ℤ :=
  (A093519.P639672327746029394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. -/
def A093519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094178.P10442744756588594346

`floor(A008846(n+1)/4)`
-/

namespace A094178.P10442744756588594346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008846 (n + 1) : ℚ) / 4⌋

end

end A094178.P10442744756588594346

noncomputable section

/-- A094178: Numbers n such that 4n+1 is divisible only by primes of form 4m+1 (i.e., by the Pythagorean primes A002144).

Offset 1, canonical program `A094178.P10442744756588594346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178 (n : ℕ) : ℤ :=
  A094178.P10442744756588594346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095738.P13403971810010986481

`eq[1, A355816(n+1)]+1`
-/

namespace A095738.P13403971810010986481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095738.P13403971810010986481

noncomputable section

/-- A095738: Numbers that are coprime to sigma but are not prime powers.

Offset 1, canonical program `A095738.P13403971810010986481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738 (n : ℕ) : ℤ :=
  (A095738.P13403971810010986481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096079.P11427664201264587869

`∪[A050795(n+1), A050796(n+2)]`
-/

namespace A096079.P11427664201264587869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050796 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096079.P11427664201264587869

noncomputable section

/-- A096079: Near hypotenuse numbers, i.e., n such that n^2 -+ 1 = a^2 + b^2, with a, b > 1.

Offset 1, canonical program `A096079.P11427664201264587869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079 (n : ℕ) : ℤ :=
  (A096079.P11427664201264587869.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096458.P15713165605853716230

`A210882(round(n/(n+1))*A210882(n+2)+1)`
-/

namespace A096458.P15713165605853716230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A210882 (n + 2) + 1).toNat

end

end A096458.P15713165605853716230

noncomputable section

/-- A096458: If n is prime, the next prime after the next prime after n. otherwise n.

Offset 1, canonical program `A096458.P15713165605853716230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458 (n : ℕ) : ℤ :=
  A096458.P15713165605853716230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096490.P8790020191321555782

`lt[A000217(n), A067558(n+1)]+1`
-/

namespace A096490.P8790020191321555782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096490.P8790020191321555782

noncomputable section

/-- A096490: Numbers k such that sigma_2(k) >= (3/2) * k^2, where sigma_2(k) is the sum of the squares of the divisors of k.

Offset 1, canonical program `A096490.P8790020191321555782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490 (n : ℕ) : ℤ :=
  (A096490.P8790020191321555782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099802.P6867368783497668993

`A000720(n+1)+A035250(n+1)-A010051(n+1)`
-/

namespace A099802.P6867368783497668993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A035250 (n + 1) - A010051 (n + 1)

end

end A099802.P6867368783497668993

noncomputable section

/-- A099802: Bisection of A000720.

Offset 1, canonical program `A099802.P6867368783497668993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099802 (n : ℕ) : ℤ :=
  A099802.P6867368783497668993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A035250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A099802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100810.P14849954687641833243

`1-A062301(n+2)`
-/

namespace A100810.P14849954687641833243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062301 (n + 2)

end

end A100810.P14849954687641833243

noncomputable section

/-- A100810: a(n) = 0 if prime(n) + 2 = prime(n+1), otherwise 1.

Offset 1, canonical program `A100810.P14849954687641833243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810 (n : ℕ) : ℤ :=
  A100810.P14849954687641833243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100821.P8316936517107752978

`A062301(n+2)`
-/

namespace A100821.P8316936517107752978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

end

end A100821.P8316936517107752978

noncomputable section

/-- A100821: a(n) = 1 if prime(n) + 2 = prime(n+1), otherwise 0.

Offset 1, canonical program `A100821.P8316936517107752978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821 (n : ℕ) : ℤ :=
  A100821.P8316936517107752978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101203.P14556017355783921895

`A191558(n)+a(n-1)` with `a(0)=0`
-/

namespace A101203.P14556017355783921895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A191558 n + a (n - 1)

end

end A101203.P14556017355783921895

noncomputable section

/-- A101203: a(n) = sum of nonprimes <= n.

Offset 0, canonical program `A101203.P14556017355783921895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203 (n : ℕ) : ℤ :=
  A101203.P14556017355783921895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102187.P12263003264488117383

`A000203(A003601(n+1))/A000005(A003601(n+1))`
-/

namespace A102187.P12263003264488117383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003601 (n + 1)).toNat : ℚ) / (A000005 (A003601 (n + 1)).toNat : ℚ)

end

end A102187.P12263003264488117383

noncomputable section

/-- A102187: Arithmetic means of divisors of arithmetic numbers (arithmetic numbers, A003601, are those for which the average of the divisors is an integer).

Offset 1, canonical program `A102187.P12263003264488117383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102187.P12263003264488117383.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003601, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102187.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103612.P10543445186733692250

`A001876(A104768(n))`
-/

namespace A103612.P10543445186733692250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A104768 n).toNat

end

end A103612.P10543445186733692250

noncomputable section

/-- A103612: Number of solutions to 5+B^2=p^2+q^2 with B=2n, p,q>0 and 2p^2

Offset 0, canonical program `A103612.P10543445186733692250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612 (n : ℕ) : ℤ :=
  A103612.P10543445186733692250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104481.P11972793429433204995

`A180304(n+1)/(n+1)-1`
-/

namespace A104481.P11972793429433204995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A104481.P11972793429433204995

noncomputable section

/-- A104481: Bisection of A104477.

Offset 1, canonical program `A104481.P11972793429433204995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104481.P11972793429433204995.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104897.P16686351449696100309

`A104860(n+1)-A014688(n+1)`
-/

namespace A104897.P16686351449696100309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104860 (n + 1) - A014688 (n + 1)

end

end A104897.P16686351449696100309

noncomputable section

/-- A104897: Difference between (n+prime(n)) and next prime.

Offset 1, canonical program `A104897.P16686351449696100309`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, A104860, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104897 (n : ℕ) : ℤ :=
  A104897.P16686351449696100309.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, A104860, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105728.P9423552014688535179

`A115068(n+1)+A112857(n)-A038207(n)`
-/

namespace A105728.P9423552014688535179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A112857 n - A038207 n)

end

end A105728.P9423552014688535179

noncomputable section

/-- A105728: Triangle read by rows: T(n,1) = 1, T(n,n) = n and for 1 < k < n: T(n,k) = T(n-1,k-1) + 2*T(n-1,k).

Offset 1, canonical program `A105728.P9423552014688535179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728 (n : ℕ) : ℤ :=
  A105728.P9423552014688535179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106077.P8883552310742186102

`∩[A023205(n+1), A023217(n+1)]`
-/

namespace A106077.P8883552310742186102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P8883552310742186102

noncomputable section

/-- A106077: Primes p such that 5*p + 2 and 2*p + 5 are primes.

Offset 1, canonical program `A106077.P8883552310742186102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077 (n : ℕ) : ℤ :=
  (A106077.P8883552310742186102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A106077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107695.P2417400497827237596

`∩[A034056(n+1), A245382(n+1)]`
-/

namespace A107695.P2417400497827237596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107695.P2417400497827237596

noncomputable section

/-- A107695: Primes with digital product = 9.

Offset 1, canonical program `A107695.P2417400497827237596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695 (n : ℕ) : ℤ :=
  (A107695.P2417400497827237596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A107695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107965.P6077412395707171614

`A107916(n)+A107941(n)-A107942(n)`
-/

namespace A107965.P6077412395707171614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - A107942 n)

end

end A107965.P6077412395707171614

noncomputable section

/-- A107965: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(11n^4 + 110n^3 + 439n^2 + 820n + 600)/86400.

Offset 0, canonical program `A107965.P6077412395707171614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965 (n : ℕ) : ℤ :=
  A107965.P6077412395707171614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108154.P5474788176503657523

`char[eq[1, A289356(n)]]*A182047(n)`
-/

namespace A108154.P5474788176503657523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A182047 n

end

end A108154.P5474788176503657523

noncomputable section

/-- A108154: a(n) = n^2 - n + 1 if prime else 0.

Offset 1, canonical program `A108154.P5474788176503657523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154 (n : ℕ) : ℤ :=
  A108154.P5474788176503657523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108784.P11288806968300134608

`A156706(A000120(n+1)+1)`
-/

namespace A108784.P11288806968300134608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A000120 (n + 1) + 1).toNat

end

end A108784.P11288806968300134608

noncomputable section

/-- A108784: Difference between A107757 and A107755.

Offset 1, canonical program `A108784.P11288806968300134608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784 (n : ℕ) : ℤ :=
  A108784.P11288806968300134608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A108784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109091.P7060246415763713748

`A284097(n+1)+A284103(n+1)-A284280(n+1)-A284281(n+1)`
-/

namespace A109091.P7060246415763713748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + A284103 (n + 1) - A284280 (n + 1) - A284281 (n + 1)

end

end A109091.P7060246415763713748

noncomputable section

/-- A109091: Expansion of (1 - eta(q)^5 / eta(q^5)) / 5 in powers of q.

Offset 1, canonical program `A109091.P7060246415763713748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091 (n : ℕ) : ℤ :=
  A109091.P7060246415763713748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109984.P9181175671372323294

`A108666(n+1)-A001850(n)`
-/

namespace A109984.P9181175671372323294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108666 (n + 1) - A001850 n

end

end A109984.P9181175671372323294

noncomputable section

/-- A109984: a(n) = number of steps in all Delannoy paths of length n.

Offset 0, canonical program `A109984.P9181175671372323294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A109984 (n : ℕ) : ℤ :=
  A109984.P9181175671372323294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A109984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112352.P14257770990694265222

`A000217(lt[3, A160651(n)])`
-/

namespace A112352.P14257770990694265222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P14257770990694265222

noncomputable section

/-- A112352: Triangular numbers that are the sum of two distinct positive triangular numbers.

Offset 1, canonical program `A112352.P14257770990694265222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352 (n : ℕ) : ℤ :=
  A112352.P14257770990694265222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112479.P11671366610514428700

`A000079(∑[A010051(n+1)])-A087207(n+1)`
-/

namespace A112479.P11671366610514428700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A087207 (n + 1)

end

end A112479.P11671366610514428700

noncomputable section

/-- A112479: a(n) = 1 + sum{p=primes

Offset 1, canonical program `A112479.P11671366610514428700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479 (n : ℕ) : ℤ :=
  A112479.P11671366610514428700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112484.P6804898479430279805

`p?[A020652(n+1)]`
-/

namespace A112484.P6804898479430279805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P6804898479430279805

noncomputable section

/-- A112484: Array where n-th row contains the primes < n and coprime to n.

Offset 3, canonical program `A112484.P6804898479430279805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484 (n : ℕ) : ℤ :=
  A112484.P6804898479430279805.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113545.P13162396840576441610

`record[A007913(n+1)/A279497(n+1)]`
-/

namespace A113545.P13162396840576441610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A279497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113545.P13162396840576441610

noncomputable section

/-- A113545: Numbers both pentagon-free and squarefree.

Offset 1, canonical program `A113545.P13162396840576441610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113545.P13162396840576441610.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113636.P387307132510664875

`A014684(n+1)+1`
-/

namespace A113636.P387307132510664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + 1

end

end A113636.P387307132510664875

noncomputable section

/-- A113636: In the sequence of positive integers add 1 to each nonprime number.

Offset 1, canonical program `A113636.P387307132510664875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113636 (n : ℕ) : ℤ :=
  A113636.P387307132510664875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114693.P40457601980009517

`∑[A065096(n+1)+A010683(n)]`
-/

namespace A114693.P40457601980009517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065096 (n + 1) + A010683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114693.P40457601980009517

noncomputable section

/-- A114693: Number of returns to the x-axis in all hill-free Schroeder paths of length 2n+4. A Schroeder path of length 2n is a lattice path from (0,0) to (2n,0) consisting of U=(1,1), D=(1,-1) and H=(2,0) steps and never going below the x-axis. A hill is a peak at height 1.

Offset 0, canonical program `A114693.P40457601980009517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A114693 (n : ℕ) : ℤ :=
  A114693.P40457601980009517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A114693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115194.P5467570277448193639

`A003645(n+1)-A062992(n+1)`
-/

namespace A115194.P5467570277448193639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003645 (n + 1) - A062992 (n + 1)

end

end A115194.P5467570277448193639

noncomputable section

/-- A115194: A sequence related to A000108 (Catalan numbers).

Offset 0, canonical program `A115194.P5467570277448193639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115194 (n : ℕ) : ℤ :=
  A115194.P5467570277448193639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A115194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115236.P4359800970134517995

`Δ[-A111967(n)]`
-/

namespace A115236.P4359800970134517995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P4359800970134517995

noncomputable section

/-- A115236: Matrix inverse of triangle A003983.

Offset 0, canonical program `A115236.P4359800970134517995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236 (n : ℕ) : ℤ :=
  A115236.P4359800970134517995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116623.P4799794857559479492

`A116640(A145342(n+1)-1)`
-/

namespace A116623.P4799794857559479492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (A145342 (n + 1) - 1).toNat

end

end A116623.P4799794857559479492

noncomputable section

/-- A116623: a(0)=1, a(2n) = a(n)+A000079(A000523(2n)), a(2n+1) = 3*a(n) + A000079(A000523(2n+1)+1).

Offset 0, canonical program `A116623.P4799794857559479492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623 (n : ℕ) : ℤ :=
  A116623.P4799794857559479492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117411.P2575899155432081916

`A117435(A185180(n+1)-1)`
-/

namespace A117411.P2575899155432081916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117435 (A185180 (n + 1) - 1).toNat

end

end A117411.P2575899155432081916

noncomputable section

/-- A117411: Skew triangle associated to the Euler numbers.

Offset 0, canonical program `A117411.P2575899155432081916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411 (n : ℕ) : ℤ :=
  A117411.P2575899155432081916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117815.P4799667150114690771

`filter[A118950(n+1), A005171(#)]`
-/

namespace A117815.P4799667150114690771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117815.P4799667150114690771

noncomputable section

/-- A117815: Composite numbers at least one of whose decimal digits is prime.

Offset 1, canonical program `A117815.P4799667150114690771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815 (n : ℕ) : ℤ :=
  A117815.P4799667150114690771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. -/
def A117815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120427.P17896066987903461565

`4*A020888(n+1)`
-/

namespace A120427.P17896066987903461565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020888 (n + 1)

end

end A120427.P17896066987903461565

noncomputable section

/-- A120427: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both squares; list all such pairs (x,y) with gcd(x,y) = 1 ordered by values of y; sequence gives y values.

Offset 1, canonical program `A120427.P17896066987903461565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427 (n : ℕ) : ℤ :=
  A120427.P17896066987903461565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120890.P8934076253784631552

`∑[2*char[∑[A024361(2*n+1)]]]+1`
-/

namespace A120890.P8934076253784631552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120890.P8934076253784631552

noncomputable section

/-- A120890: Ordered odd leg of primitive Pythagorean triangles.

Offset 1, canonical program `A120890.P8934076253784631552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890 (n : ℕ) : ℤ :=
  (A120890.P8934076253784631552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120891.P14989150919995251867

`A024361(Δ[n²])`
-/

namespace A120891.P14989150919995251867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P14989150919995251867

noncomputable section

/-- A120891: Number of primitive Pythagorean triangles with odd leg 2n-1.

Offset 1, canonical program `A120891.P14989150919995251867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891 (n : ℕ) : ℤ :=
  A120891.P14989150919995251867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120960.P7319328844607267652

`filter[A008846(n+1), A069513(#)]`
-/

namespace A120960.P7319328844607267652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A120960.P7319328844607267652

noncomputable section

/-- A120960: Pythagorean prime powers.

Offset 1, canonical program `A120960.P7319328844607267652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960 (n : ℕ) : ℤ :=
  A120960.P7319328844607267652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A120960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121443.P2966999353151604800

`A038500(n+1)*A186099(n+1)`
-/

namespace A121443.P2966999353151604800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A186099 (n + 1)

end

end A121443.P2966999353151604800

noncomputable section

/-- A121443: Sum of divisors d of n which are odd and n/d is not divisible by 3.

Offset 1, canonical program `A121443.P2966999353151604800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121443 (n : ℕ) : ℤ :=
  A121443.P2966999353151604800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121495.P8991942477691651037

`A120944(eq[1, A120944(n+2)-A120944(n+1)]+1)`
-/

namespace A121495.P8991942477691651037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 2) - A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121495.P8991942477691651037

noncomputable section

/-- A121495: Numbers k such that k and k+1 are composite and squarefree.

Offset 1, canonical program `A121495.P8991942477691651037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495 (n : ℕ) : ℤ :=
  A121495.P8991942477691651037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. -/
def A121495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121762.P7258193871153872247

`p?[A107472(n+1)-2]`
-/

namespace A121762.P7258193871153872247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P7258193871153872247

noncomputable section

/-- A121762: Single (or isolated or non-twin) primes of form 6n-1.

Offset 1, canonical program `A121762.P7258193871153872247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762 (n : ℕ) : ℤ :=
  A121762.P7258193871153872247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121764.P18179720075456038304

`p?[A107472(n+1)+2]`
-/

namespace A121764.P18179720075456038304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121764.P18179720075456038304

noncomputable section

/-- A121764: Single (or isolated or non-twin) primes of form 6n + 1.

Offset 1, canonical program `A121764.P18179720075456038304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764 (n : ℕ) : ℤ :=
  A121764.P18179720075456038304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125018.P5997483759388454450

`∩[2*n+1, A143575(n+1)]`
-/

namespace A125018.P5997483759388454450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P5997483759388454450

noncomputable section

/-- A125018: Numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

Offset 1, canonical program `A125018.P5997483759388454450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018 (n : ℕ) : ℤ :=
  (A125018.P5997483759388454450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125071.P2644380535759538615

`∑{e}[n+1, A191558(#)]`
-/

namespace A125071.P2644380535759538615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A191558 (Nat.factorization (f1 n) p)

end

end A125071.P2644380535759538615

noncomputable section

/-- A125071: a(n) = sum of the exponents in the prime factorization of n which are not primes.

Offset 1, canonical program `A125071.P2644380535759538615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071 (n : ℕ) : ℤ :=
  A125071.P2644380535759538615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125217.P12158118302977097912

`eq[1, A125203(n+1)]+1`
-/

namespace A125217.P12158118302977097912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125217.P12158118302977097912

noncomputable section

/-- A125217: Numbers that can be written uniquely as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125217.P12158118302977097912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217 (n : ℕ) : ℤ :=
  (A125217.P12158118302977097912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2774 terms. -/
def A125217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125218.P3417562193377331111

`lt[1, A125203(n+1)]+1`
-/

namespace A125218.P3417562193377331111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125218.P3417562193377331111

noncomputable section

/-- A125218: Numbers having at least two representations as 4*x*y-x-y with 1<=x<=y.

Offset 1, canonical program `A125218.P3417562193377331111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218 (n : ℕ) : ℤ :=
  (A125218.P3417562193377331111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3223 terms. -/
def A125218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125493.P739186552021714544

`record[A191558(A005100(n+4))]`
-/

namespace A125493.P739186552021714544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A005100 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P739186552021714544

noncomputable section

/-- A125493: Composite deficient numbers.

Offset 1, canonical program `A125493.P739186552021714544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A125493 (n : ℕ) : ℤ :=
  A125493.P739186552021714544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A125493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126849.P3318481749340531518

`A366990(n+1)+A057428(n)`
-/

namespace A126849.P3318481749340531518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366990 (n + 1) + A057428 n

end

end A126849.P3318481749340531518

noncomputable section

/-- A126849: Sum over the divisors d of n constrained to cases where all exponents of the prime factorization of d are prime.

Offset 1, canonical program `A126849.P3318481749340531518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849 (n : ℕ) : ℤ :=
  A126849.P3318481749340531518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127590.P12891489478159892403

`eq[1, A156707(8*n+2)]`
-/

namespace A127590.P12891489478159892403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127590.P12891489478159892403

noncomputable section

/-- A127590: Numbers n such that 16n+5 is prime.

Offset 1, canonical program `A127590.P12891489478159892403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590 (n : ℕ) : ℤ :=
  (A127590.P12891489478159892403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1200 terms. -/
def A127590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127793.P12461716665671031307

`ceil(A002260(n+1)/2)*A111967(n)`
-/

namespace A127793.P12461716665671031307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / 2⌉ * A111967 n

end

end A127793.P12461716665671031307

noncomputable section

/-- A127793: Inverse of number triangle t(n,k) = 1/floor((n+2)/2) if k <= n <= 2*k, 0 otherwise.

Offset 0, canonical program `A127793.P12461716665671031307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793 (n : ℕ) : ℤ :=
  A127793.P12461716665671031307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127822.P4246490665184018165

`abs(A111967(n))`
-/

namespace A127822.P4246490665184018165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111967 n|

end

end A127822.P4246490665184018165

noncomputable section

/-- A127822: Triangle whose row sums modulo 2 give the Fredholm-Rueppel sequence A036987.

Offset 0, canonical program `A127822.P4246490665184018165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822 (n : ℕ) : ℤ :=
  A127822.P4246490665184018165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129131.P6943603048357520983

`A066249(n+1)+1`
-/

namespace A129131.P6943603048357520983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066249 (n + 1) + 1

end

end A129131.P6943603048357520983

noncomputable section

/-- A129131: Alternately write composite and prime numbers.

Offset 1, canonical program `A129131.P6943603048357520983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129131 (n : ℕ) : ℤ :=
  A129131.P6943603048357520983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130298.P4056533622046080156

`A130302(n+1)+A003056(n)*A130296(n+1)`
-/

namespace A130298.P4056533622046080156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130302 (n + 1) + A003056 n * A130296 (n + 1)

end

end A130298.P4056533622046080156

noncomputable section

/-- A130298: A051340 * A130296.

Offset 1, canonical program `A130298.P4056533622046080156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298 (n : ℕ) : ℤ :=
  A130298.P4056533622046080156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130319.P11129835434070302658

`record[A191558(A080513(n))+A004524(n)]`
-/

namespace A130319.P11129835434070302658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A080513 n).toNat + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130319.P11129835434070302658

noncomputable section

/-- A130319: Numbers k for which k!!/S(k) is an integer, where S(k) is the sum of all odd numbers less than or equal to k, if k is odd, or the sum of all even numbers less than or equal to k, if k is even.

Offset 0, canonical program `A130319.P11129835434070302658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319 (n : ℕ) : ℤ :=
  A130319.P11129835434070302658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. -/
def A130319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131053.P3177050464718823727

`A128176(A128621(n+1)+1+n)`
-/

namespace A131053.P3177050464718823727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A128621 (n + 1) + 1 + (n : ℤ)).toNat

end

end A131053.P3177050464718823727

noncomputable section

/-- A131053: A000012 * A131047.

Offset 1, canonical program `A131053.P3177050464718823727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A131053 (n : ℕ) : ℤ :=
  A131053.P3177050464718823727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A131053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131695.P15556977045309994606

`A098726(n+1)-2`
-/

namespace A131695.P15556977045309994606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098726 (n + 1) - 2

end

end A131695.P15556977045309994606

noncomputable section

/-- A131695: a(n) = 0 iff 2*prime(n+1) = prime(n) + prime(n+2), otherwise a(n) = 1.

Offset 1, canonical program `A131695.P15556977045309994606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695 (n : ℕ) : ℤ :=
  A131695.P15556977045309994606.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131789.P1774439132879897327

`Δ[A083794(n+1)]`
-/

namespace A131789.P1774439132879897327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131789.P1774439132879897327

noncomputable section

/-- A131789: The length of the n-th run of identical consecutive values in the sequence A000005, where A000005(k) is the number of divisors of k.

Offset 1, canonical program `A131789.P1774439132879897327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789 (n : ℕ) : ℤ :=
  A131789.P1774439132879897327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132340.P16481803046900762293

`A284120(A258746(n+2))-1`
-/

namespace A132340.P16481803046900762293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (A258746 (n + 2)).toNat - 1

end

end A132340.P16481803046900762293

noncomputable section

/-- A132340: a(n+1) = if {a(k):1<=k<=n} is a permutation of [1:n] then 2*a(n) else a(n)-1.

Offset 1, canonical program `A132340.P16481803046900762293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340 (n : ℕ) : ℤ :=
  A132340.P16481803046900762293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133101.P1108261628039295405

`abs(A113428(n))`
-/

namespace A133101.P1108261628039295405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113428 n|

end

end A133101.P1108261628039295405

noncomputable section

/-- A133101: Expansion of f(x^2, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A133101.P1108261628039295405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133101 (n : ℕ) : ℤ :=
  A133101.P1108261628039295405.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133994.P15079085757915823484

`A002260(eq[1, A304571(n+1)+1]+1)`
-/

namespace A133994.P15079085757915823484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A133994.P15079085757915823484

noncomputable section

/-- A133994: Irregular array read by rows: n-th row contains (in numerical order) both the positive integers <= n that are divisors of n and those that are coprime to n.

Offset 1, canonical program `A133994.P15079085757915823484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994 (n : ℕ) : ℤ :=
  A133994.P15079085757915823484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. -/
def A133994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135980.P2150485174944039982

`A000720(A054723(n+1))`
-/

namespace A135980.P2150485174944039982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054723 (n + 1)).toNat

end

end A135980.P2150485174944039982

noncomputable section

/-- A135980: Numbers k such that the Mersenne number 2^prime(k)-1 is composite.

Offset 1, canonical program `A135980.P2150485174944039982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135980 (n : ℕ) : ℤ :=
  A135980.P2150485174944039982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138026.P17911807186670300887

`lt[2, A121561(n+1)]+1`
-/

namespace A138026.P17911807186670300887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A138026.P17911807186670300887

noncomputable section

/-- A138026: Numbers k where A121561(k) = 3.

Offset 1, canonical program `A138026.P17911807186670300887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026 (n : ℕ) : ℤ :=
  (A138026.P17911807186670300887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7517 terms. -/
def A138026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138685.P1363574256665463268

`3*A059324(n+1)-2`
-/

namespace A138685.P1363574256665463268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059324 (n + 1) - 2

end

end A138685.P1363574256665463268

noncomputable section

/-- A138685: Numbers k such that there is no prime of the form 2k + p^2 for any prime p.

Offset 1, canonical program `A138685.P1363574256665463268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685 (n : ℕ) : ℤ :=
  A138685.P1363574256665463268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139354.P2060834989768873161

`∑[∑{e}[xor(n, -n), 2-#]]-A139355(n)`
-/

namespace A139354.P2060834989768873161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139355 n

end

end A139354.P2060834989768873161

noncomputable section

/-- A139354: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives min{e(n), o(n)}.

Offset 0, canonical program `A139354.P2060834989768873161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354 (n : ℕ) : ℤ :=
  A139354.P2060834989768873161.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139495.P6736765847276065234

`∩[A033205(n+1), A106881(n+1)]`
-/

namespace A139495.P6736765847276065234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139495.P6736765847276065234

noncomputable section

/-- A139495: Primes of the form x^2 + 12x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139495.P6736765847276065234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495 (n : ℕ) : ℤ :=
  (A139495.P6736765847276065234.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A139495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000404.P2881668745635022014

`∪[A000415(n+1), A004431(n+1)]`
-/

namespace A000404.P2881668745635022014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000404.P2881668745635022014

noncomputable section

/-- A000404: Numbers that are the sum of 2 nonzero squares.

Offset 1, canonical program `A000404.P2881668745635022014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404 (n : ℕ) : ℤ :=
  (A000404.P2881668745635022014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000469.P516089823978451219

`A120944(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A000469.P516089823978451219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120944 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A000469.P516089823978451219

noncomputable section

/-- A000469: 1 together with products of 2 or more distinct primes.

Offset 1, canonical program `A000469.P516089823978451219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469 (n : ℕ) : ℤ :=
  A000469.P516089823978451219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001983.P13824621778224513815

`∪[(n+1)², A004431(n+1)]`
-/

namespace A001983.P13824621778224513815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001983.P13824621778224513815

noncomputable section

/-- A001983: Numbers that are the sum of 2 distinct squares: of form x^2 + y^2 with 0 <= x < y.

Offset 1, canonical program `A001983.P13824621778224513815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983 (n : ℕ) : ℤ :=
  (A001983.P13824621778224513815.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002003.P14937103929283769724

`2*A047781(n)`
-/

namespace A002003.P14937103929283769724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047781 n

end

end A002003.P14937103929283769724

noncomputable section

/-- A002003: a(n) = 2 * Sum_{k=0..n-1} binomial(n-1, k)*binomial(n+k, k).

Offset 0, canonical program `A002003.P14937103929283769724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002003 (n : ℕ) : ℤ :=
  A002003.P14937103929283769724.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002479.P5051516851553002121

`∪[A154777(n+1), A083854(n)]`
-/

namespace A002479.P5051516851553002121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P5051516851553002121

noncomputable section

/-- A002479: Numbers of the form x^2 + 2*y^2.

Offset 1, canonical program `A002479.P5051516851553002121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479 (n : ℕ) : ℤ :=
  (A002479.P5051516851553002121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003624.P11850390878674121676

`filter[A014567(n+1), A066247(#)]`
-/

namespace A003624.P11850390878674121676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A003624.P11850390878674121676

noncomputable section

/-- A003624: Duffinian numbers: composite numbers k relatively prime to sigma(k).

Offset 1, canonical program `A003624.P11850390878674121676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624 (n : ℕ) : ℤ :=
  A003624.P11850390878674121676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6885 terms. -/
def A003624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004613.P9700504550633713822

`A008846(C(n, a(A057427(n)-1)))` with `a(0)=1`
-/

namespace A004613.P9700504550633713822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008846 (Nat.choose n (a (A057427 n - 1).toNat).toNat)

end

end A004613.P9700504550633713822

noncomputable section

/-- A004613: Numbers that are divisible only by primes congruent to 1 mod 4.

Offset 1, canonical program `A004613.P9700504550633713822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613 (n : ℕ) : ℤ :=
  A004613.P9700504550633713822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008306.P6698299053316655818

`A106828(A049068(n+1))`
-/

namespace A008306.P6698299053316655818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (A049068 (n + 1)).toNat

end

end A008306.P6698299053316655818

noncomputable section

/-- A008306: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 2, 1 <= k <= floor(n/2)).

Offset 2, canonical program `A008306.P6698299053316655818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A008306 (n : ℕ) : ℤ :=
  A008306.P6698299053316655818.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A008306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011677.P7686249500510810447

`A011681(A016789(n)+85)`
-/

namespace A011677.P7686249500510810447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (A016789 n + 85).toNat

end

end A011677.P7686249500510810447

noncomputable section

/-- A011677: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^2+x+1.

Offset 0, canonical program `A011677.P7686249500510810447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677 (n : ℕ) : ℤ :=
  A011677.P7686249500510810447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A011677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011678.P7294615667966746558

`A011681(7*(n+2))`
-/

namespace A011678.P7294615667966746558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011681 (7 * (n + 2))

end

end A011678.P7294615667966746558

noncomputable section

/-- A011678: A binary m-sequence: expansion of reciprocal of x^7+x^5+x^3+x+1.

Offset 0, canonical program `A011678.P7294615667966746558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678 (n : ℕ) : ℤ :=
  A011678.P7294615667966746558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A011678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014720.P13939622138793062824

`A014411(n+1)²`
-/

namespace A014720.P13939622138793062824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (n + 1) ^ 2

end

end A014720.P13939622138793062824

noncomputable section

/-- A014720: Squares of elements to right of central element in Pascal triangle (by row) that are not 1.

Offset 1, canonical program `A014720.P13939622138793062824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720 (n : ℕ) : ℤ :=
  A014720.P13939622138793062824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014720.provenance : SequenceMachineLib.Provenance := .conditional

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

/-- A020887: Ordered set of a + b - c as (a,b,c) runs through all primitive Pythagorean triples with a

Offset 1, canonical program `A020887.P8491908464742690034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887 (n : ℕ) : ℤ :=
  A020887.P8491908464742690034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026233.P9940021653241192436

`A049084(n+1)+A239968(n+1)`
-/

namespace A026233.P9940021653241192436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A239968 (n + 1)

end

end A026233.P9940021653241192436

noncomputable section

/-- A026233: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th nonprime.

Offset 1, canonical program `A026233.P9940021653241192436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A239968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026233 (n : ℕ) : ℤ :=
  A026233.P9940021653241192436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A239968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026233.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A026238.P11188609804940951369`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026238 (n : ℕ) : ℤ :=
  A026238.P11188609804940951369.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A026238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027386.P13022936192587829036

`∑{digits}[n, A332813(A033484(#))]`
-/

namespace A027386.P13022936192587829036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A332813 (A033484 x).toNat).sum

end

end A027386.P13022936192587829036

noncomputable section

/-- A027386: Write digits for n, count endpoints (version 1).

Offset 0, canonical program `A027386.P13022936192587829036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386 (n : ℕ) : ℤ :=
  A027386.P13022936192587829036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028272.P16658782118669179364

`A014413(n+1)+A014411(n+1)`
-/

namespace A028272.P16658782118669179364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + A014411 (n + 1)

end

end A028272.P16658782118669179364

noncomputable section

/-- A028272: Elements to right of central elements in 3-Pascal triangle A028262 that are not 1.

Offset 0, canonical program `A028272.P16658782118669179364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272 (n : ℕ) : ℤ :=
  A028272.P16658782118669179364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028331.P79324678744647748

`2*A014411(n+1)`
-/

namespace A028331.P79324678744647748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014411 (n + 1)

end

end A028331.P79324678744647748

noncomputable section

/-- A028331: Elements to the right of the central elements of the even-Pascal triangle A028326 that are not 2.

Offset 0, canonical program `A028331.P79324678744647748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331 (n : ℕ) : ℤ :=
  A028331.P79324678744647748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029612.P8705984013740246466

`A029611(eq[1, A029611(n)%2])`
-/

namespace A029612.P8705984013740246466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029611 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029612.P8705984013740246466

noncomputable section

/-- A029612: Odd numbers to the left of the central elements of the (2,3)-Pascal triangle A029600.

Offset 0, canonical program `A029612.P8705984013740246466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612 (n : ℕ) : ℤ :=
  A029612.P8705984013740246466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A029612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029645.P11204956944610452439

`A029611(n)-A014463(n+1)`
-/

namespace A029645.P11204956944610452439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 n - A014463 (n + 1)

end

end A029645.P11204956944610452439

noncomputable section

/-- A029645: Numbers to the left of the central elements of the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 0, canonical program `A029645.P11204956944610452439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645 (n : ℕ) : ℤ :=
  A029645.P11204956944610452439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A039637.P13487055312355376623

`a(floor(n/2))%A067558(n+1)+1` with `a(0)=1, a(1)=1`
-/

namespace A039637.P13487055312355376623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat) (A067558 (n + 1)) + 1

end

end A039637.P13487055312355376623

noncomputable section

/-- A039637: Number of steps to fixed point of "n -> n/2 or (n+1)/2 until result is prime".

Offset 1, canonical program `A039637.P13487055312355376623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637 (n : ℕ) : ℤ :=
  A039637.P13487055312355376623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046022.P4558940758189190591

`A335402(n+1)+A130716(n)`
-/

namespace A046022.P4558940758189190591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1) + A130716 n

end

end A046022.P4558940758189190591

noncomputable section

/-- A046022: Primes together with 1 and 4.

Offset 1, canonical program `A046022.P4558940758189190591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022 (n : ℕ) : ℤ :=
  A046022.P4558940758189190591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046684.P10571284585019546125

`eq[1, A179930(n+1)]+1`
-/

namespace A046684.P10571284585019546125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046684.P10571284585019546125

noncomputable section

/-- A046684: Numbers k such that k and sum of squares of divisors of k are relatively prime.

Offset 1, canonical program `A046684.P10571284585019546125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684 (n : ℕ) : ℤ :=
  (A046684.P10571284585019546125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046799.P14243968354502214682

`A322812(2*A000040(n+1))`
-/

namespace A046799.P14243968354502214682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (n + 1)).toNat

end

end A046799.P14243968354502214682

noncomputable section

/-- A046799: Number of distinct prime factors of 2^n+1.

Offset 0, canonical program `A046799.P14243968354502214682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799 (n : ℕ) : ℤ :=
  A046799.P14243968354502214682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A046799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046953.P12772226548913626932

`A059324(n+1)+1`
-/

namespace A046953.P12772226548913626932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + 1

end

end A046953.P12772226548913626932

noncomputable section

/-- A046953: Numbers k such that 6*k - 1 is composite.

Offset 1, canonical program `A046953.P12772226548913626932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046953 (n : ℕ) : ℤ :=
  A046953.P12772226548913626932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049715.P11687973096568825329

`A176562(n)+A057427(n)`
-/

namespace A049715.P11687973096568825329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176562 n + A057427 n

end

end A049715.P11687973096568825329

noncomputable section

/-- A049715: a(n)=T(n,0), array T as in A049747.

Offset 0, canonical program `A049715.P11687973096568825329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715 (n : ℕ) : ℤ :=
  A049715.P11687973096568825329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A049715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050450.P4021675749699126775

`A050999(n+1)-A050453(n+1)`
-/

namespace A050450.P4021675749699126775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - A050453 (n + 1)

end

end A050450.P4021675749699126775

noncomputable section

/-- A050450: a(n) = Sum_{d|n, d=1 mod 4} d^2.

Offset 1, canonical program `A050450.P4021675749699126775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450 (n : ℕ) : ℤ :=
  A050450.P4021675749699126775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059743.P10200141128620482655

`A175341(n)+1`
-/

namespace A059743.P10200141128620482655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175341 n + 1

end

end A059743.P10200141128620482655

noncomputable section

/-- A059743: Number of points of norm^2 <= n^2 in the square lattice that are visible from the origin.

Offset 0, canonical program `A059743.P10200141128620482655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743 (n : ℕ) : ℤ :=
  A059743.P10200141128620482655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7153 terms. -/
def A059743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060920.P14875864634409715620

`A128100(A061885(n))`
-/

namespace A060920.P14875864634409715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A061885 n).toNat

end

end A060920.P14875864634409715620

noncomputable section

/-- A060920: Bisection of Fibonacci triangle A037027: even-indexed members of column sequences of A037027 (not counting leading zeros).

Offset 0, canonical program `A060920.P14875864634409715620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060920 (n : ℕ) : ℤ :=
  A060920.P14875864634409715620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060921.P13002934786105782215

`A128100(A064801(n+1))`
-/

namespace A060921.P13002934786105782215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A064801 (n + 1)).toNat

end

end A060921.P13002934786105782215

noncomputable section

/-- A060921: Bisection of Fibonacci triangle A037027: odd-indexed members of column sequences of A037027 (not counting leading zeros).

Offset 0, canonical program `A060921.P13002934786105782215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A060921 (n : ℕ) : ℤ :=
  A060921.P13002934786105782215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A060921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061395.P8431317036300486107

`A029837(A087207(n+1)+1)`
-/

namespace A061395.P8431317036300486107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A087207 (n + 1) + 1).toNat

end

end A061395.P8431317036300486107

noncomputable section

/-- A061395: Let p be the largest prime factor of n; if p is the k-th prime then set a(n) = k; a(1) = 0 by convention.

Offset 1, canonical program `A061395.P8431317036300486107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395 (n : ℕ) : ℤ :=
  A061395.P8431317036300486107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065126.P13933962713951851804

`eq[3, A065803((n+1)²)]+1`
-/

namespace A065126.P13933962713951851804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065126.P13933962713951851804

noncomputable section

/-- A065126: Numbers n for which sigma_2(n^2) == 3 (mod 10).

Offset 1, canonical program `A065126.P13933962713951851804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126 (n : ℕ) : ℤ :=
  (A065126.P13933962713951851804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067390.P7852969546694532174

`A322812(A138636(n+2))`
-/

namespace A067390.P7852969546694532174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A138636 (n + 2)).toNat

end

end A067390.P7852969546694532174

noncomputable section

/-- A067390: Number of distinct prime factors in 2^n + 3.

Offset 1, canonical program `A067390.P7852969546694532174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390 (n : ℕ) : ℤ :=
  A067390.P7852969546694532174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A067390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067459.P11641626775103324224

`A072516((n+1)²)`
-/

namespace A067459.P11641626775103324224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072516 ((n + 1) ^ 2)

end

end A067459.P11641626775103324224

noncomputable section

/-- A067459: Sum of the remainders when n^2 is divided by squares less than n.

Offset 1, canonical program `A067459.P11641626775103324224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459 (n : ℕ) : ℤ :=
  A067459.P11641626775103324224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067777.P5898996878864800961

`eq[A080339(2*n+1)+A080339(3*n+1), A085090(3*n+1)]`
-/

namespace A067777.P5898996878864800961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 1) + A080339 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P5898996878864800961

noncomputable section

/-- A067777: Numbers k such that (2*k)! * B(6*k) is an integer where B(k) are the Bernoulli numbers B(1)=-1/2 B(2)=1/6 B(4)=-1/30... B(2*m+1)=0 m>1.

Offset 1, canonical program `A067777.P5898996878864800961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777 (n : ℕ) : ℤ :=
  (A067777.P5898996878864800961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069734.P4700367911549090281

`(A000203(n+1)+A069735(n+1))/2`
-/

namespace A069734.P4700367911549090281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A069735 (n + 1) : ℚ) / 2

end

end A069734.P4700367911549090281

noncomputable section

/-- A069734: Number of pairs (p,q), 0<=p<=q, such that p+q divides n.

Offset 1, canonical program `A069734.P4700367911549090281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069734.P4700367911549090281.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073412.P17420791294768471329

`∩[A274555(n+1)-1, A274555(n+1)]`
-/

namespace A073412.P17420791294768471329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073412.P17420791294768471329

noncomputable section

/-- A073412: Lesser of three consecutive nonsquare integers each of which is the sum of two squares.

Offset 1, canonical program `A073412.P17420791294768471329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412 (n : ℕ) : ℤ :=
  (A073412.P17420791294768471329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A073412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077455.P10638361790126608453

`A057660((n+1)²)*A077457(n+1)`
-/

namespace A077455.P10638361790126608453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057660 ((n + 1) ^ 2) * A077457 (n + 1)

end

end A077455.P10638361790126608453

noncomputable section

/-- A077455: a(n) = sigma_4(n^4)/sigma(n^4).

Offset 1, canonical program `A077455.P10638361790126608453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077455 (n : ℕ) : ℤ :=
  A077455.P10638361790126608453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A077455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080243.P6426181956936067807

`A176479(n)/A181983(n+1)`
-/

namespace A080243.P6426181956936067807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176479 n : ℚ) / (A181983 (n + 1) : ℚ)

end

end A080243.P6426181956936067807

noncomputable section

/-- A080243: Signed super-Catalan or little Schroeder numbers.

Offset 0, canonical program `A080243.P6426181956936067807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A080243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080243.P6426181956936067807.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A080243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080821.P11448847452303854669

`p?[A181132(n)+A001855(n+1)]`
-/

namespace A080821.P11448847452303854669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n + A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P11448847452303854669

noncomputable section

/-- A080821: Primes in the accumulated tally of steps in the x+1 problem: Repeat until 1 is reached: if x is even divide by 2, otherwise add 1.

Offset 1, canonical program `A080821.P11448847452303854669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821 (n : ℕ) : ℤ :=
  A080821.P11448847452303854669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A080821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082092.P6243506660087546577

`filter[A073803(n+1), A005171(#)]`
-/

namespace A082092.P6243506660087546577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A082092.P6243506660087546577

noncomputable section

/-- A082092: Composite k such that d(k) < d(sigma(k)), i.e., A000005(k) < A000005(A000203(k)).

Offset 1, canonical program `A082092.P6243506660087546577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092 (n : ℕ) : ℤ :=
  A082092.P6243506660087546577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A082092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085683.P13122087082313265397

`∑[A139140(n)]-1`
-/

namespace A085683.P13122087082313265397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085683.P13122087082313265397

noncomputable section

/-- A085683: a(n) = Sum_{k = 1..N-1} floor(N/k) where N is the n-th prime.

Offset 1, canonical program `A085683.P13122087082313265397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683 (n : ℕ) : ℤ :=
  A085683.P13122087082313265397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092058.P2002091925840857297

`A000720(sqrt((A092057(n+1)+1)/2))`
-/

namespace A092058.P2002091925840857297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt ((A092057 (n + 1) + 1 : ℚ) / 2 : ℝ))).toNat

end

end A092058.P2002091925840857297

noncomputable section

/-- A092058: Numbers n such that 2*prime(n)^2 - 1 is prime.

Offset 1, canonical program `A092058.P2002091925840857297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058 (n : ℕ) : ℤ :=
  A092058.P2002091925840857297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096677.P7170319488795108881

`A099801(A096784(n+1))`
-/

namespace A096677.P7170319488795108881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A096784 (n + 1)).toNat

end

end A096677.P7170319488795108881

noncomputable section

/-- A096677: A060254 indexed by A000040.

Offset 1, canonical program `A096677.P7170319488795108881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677 (n : ℕ) : ℤ :=
  A096677.P7170319488795108881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8250 terms. -/
def A096677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108221.P9472332214346116562

`ceil(sqrt(A108222(n+1)))`
-/

namespace A108221.P9472332214346116562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A108222 (n + 1) : ℝ)⌉

end

end A108221.P9472332214346116562

noncomputable section

/-- A108221: Primes of the form ceiling(sqrt(prime(n))).

Offset 1, canonical program `A108221.P9472332214346116562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221 (n : ℕ) : ℤ :=
  A108221.P9472332214346116562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108936.P10845759939433094965

`A105773(n+12)-74`
-/

namespace A108936.P10845759939433094965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105773 (n + 12) - 74

end

end A108936.P10845759939433094965

noncomputable section

/-- A108936: Numbers n such that 11*n + 911 is prime.

Offset 1, canonical program `A108936.P10845759939433094965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936 (n : ℕ) : ℤ :=
  A108936.P10845759939433094965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A108936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109352.P15990870574483409187

`A001414(A120944(n+1))`
-/

namespace A109352.P15990870574483409187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A120944 (n + 1)).toNat

end

end A109352.P15990870574483409187

noncomputable section

/-- A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

Offset 1, canonical program `A109352.P15990870574483409187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109352 (n : ℕ) : ℤ :=
  A109352.P15990870574483409187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112609.P8066156262677695015

`A071045(1-A262726(2*n+1))`
-/

namespace A112609.P8066156262677695015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (1 - A262726 (2 * n + 1)).toNat

end

end A112609.P8066156262677695015

noncomputable section

/-- A112609: Number of representations of n as a sum of three times a triangular number and four times a triangular number.

Offset 0, canonical program `A112609.P8066156262677695015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609 (n : ℕ) : ℤ :=
  A112609.P8066156262677695015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A112609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123926.P8154078832846072749

`A154282(A001749(n+1))+A065331(A179931(n+1))`
-/

namespace A123926.P8154078832846072749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A001749 (n + 1)).toNat + A065331 (A179931 (n + 1)).toNat

end

end A123926.P8154078832846072749

noncomputable section

/-- A123926: Greatest common divisor of sigma_k(n) for all k >= 1.

Offset 1, canonical program `A123926.P8154078832846072749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926 (n : ℕ) : ℤ :=
  A123926.P8154078832846072749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133636.P3030038643792088709

`∩[A053795(n+1), A074232(n+1)]`
-/

namespace A133636.P3030038643792088709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133636.P3030038643792088709

noncomputable section

/-- A133636: Nonprime numbers k such that binomial(k+p,k) mod k = 1, where p=6.

Offset 1, canonical program `A133636.P3030038643792088709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636 (n : ℕ) : ℤ :=
  (A133636.P3030038643792088709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133760.P9145176976057239686

`A139140(n+1)-2`
-/

namespace A133760.P9145176976057239686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 (n + 1) - 2

end

end A133760.P9145176976057239686

noncomputable section

/-- A133760: Sum of the number of divisors of the numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A133760.P9145176976057239686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760 (n : ℕ) : ℤ :=
  A133760.P9145176976057239686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138060.P12656689642850593216

`A138297(n+5)`
-/

namespace A138060.P12656689642850593216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138297 (n + 5)

end

end A138060.P12656689642850593216

noncomputable section

/-- A138060: Triangle read by rows: row 1 = {1}; for n>1, row n is obtained from row n-1 by applying the morphism 1->1,2; 2->3; 3->4; 4->1.

Offset 1, canonical program `A138060.P12656689642850593216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060 (n : ℕ) : ℤ :=
  A138060.P12656689642850593216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A138060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000059.P7901828597261490074

`A000068(n+2)/2`
-/

namespace A000059.P7901828597261490074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000068 (n + 2) : ℚ) / 2

end

end A000059.P7901828597261490074

noncomputable section

/-- A000059: Numbers k such that (2k)^4 + 1 is prime.

Offset 1, canonical program `A000059.P7901828597261490074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000059.P7901828597261490074.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037989.P17780582745811707290

`eq[2, A043281(n+1)]+1`
-/

namespace A037989.P17780582745811707290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037989.P17780582745811707290

noncomputable section

/-- A037989: Numbers whose maximal base-7 run length is 2.

Offset 1, canonical program `A037989.P17780582745811707290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989 (n : ℕ) : ℤ :=
  (A037989.P17780582745811707290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3809 terms. -/
def A037989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037990.P11351931847742958778

`eq[3, A043281(A028310(n))]`
-/

namespace A037990.P11351931847742958778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037990.P11351931847742958778

noncomputable section

/-- A037990: Numbers whose maximal base 7 run length is 3.

Offset 1, canonical program `A037990.P11351931847742958778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990 (n : ℕ) : ℤ :=
  (A037990.P11351931847742958778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A037990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037993.P5476900089345289950

`eq[2, A043282(n+1)]+1`
-/

namespace A037993.P5476900089345289950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037993.P5476900089345289950

noncomputable section

/-- A037993: Numbers whose maximal base-8 run length is 2.

Offset 1, canonical program `A037993.P5476900089345289950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993 (n : ℕ) : ℤ :=
  (A037993.P5476900089345289950.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A037993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043093.P7626507007390763176

`eq[1, A043281(A028310(n))]`
-/

namespace A043093.P7626507007390763176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043093.P7626507007390763176

noncomputable section

/-- A043093: Every string of 2 consecutive base 7 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043093.P7626507007390763176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093 (n : ℕ) : ℤ :=
  (A043093.P7626507007390763176.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5695 terms. -/
def A043093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043094.P264421878189047004

`eq[1, A043282(A028310(n))]`
-/

namespace A043094.P264421878189047004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043094.P264421878189047004

noncomputable section

/-- A043094: Every string of 2 consecutive base 8 digits contains exactly 2 distinct numbers.

Offset 0, canonical program `A043094.P264421878189047004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094 (n : ℕ) : ℤ :=
  (A043094.P264421878189047004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6050 terms. -/
def A043094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112559.P1469957549597084680

`floor(A113601(n+1)/4)`
-/

namespace A112559.P1469957549597084680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113601 (n + 1) : ℚ) / 4⌋

end

end A112559.P1469957549597084680

noncomputable section

/-- A112559: Numbers k such that both k and 4k + 1 are in A005098.

Offset 1, canonical program `A112559.P1469957549597084680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559 (n : ℕ) : ℤ :=
  A112559.P1469957549597084680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. -/
def A112559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014200.P16970295702573526038

`A014198(n)/4`
-/

namespace A014200.P16970295702573526038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

end

end A014200.P16970295702573526038

noncomputable section

/-- A014200: Number of solutions to x^2 + y^2 <= n, excluding (0,0), divided by 4.

Offset 0, canonical program `A014200.P16970295702573526038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014200.P16970295702573526038.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049735.P11014116182128311046

`A014198(A048147(n))+1`
-/

namespace A049735.P11014116182128311046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A048147 n).toNat + 1

end

end A049735.P11014116182128311046

noncomputable section

/-- A049735: Array T(i,j) is the number of lattice points (x,y) in circle with radius (0,0)-to-(i,j), read by antidiagonals.

Offset 0, canonical program `A049735.P11014116182128311046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735 (n : ℕ) : ℤ :=
  A049735.P11014116182128311046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A049735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055047.P16912633908431000685

`A055041(n+1)/3`
-/

namespace A055047.P16912633908431000685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055041 (n + 1) : ℚ) / 3

end

end A055047.P16912633908431000685

noncomputable section

/-- A055047: Numbers of the form 9^i*(3*j+1).

Offset 1, canonical program `A055047.P16912633908431000685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055047.P16912633908431000685.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055047.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A057655.P8142405424443184292

`A014198(n)+1`
-/

namespace A057655.P8142405424443184292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n + 1

end

end A057655.P8142405424443184292

noncomputable section

/-- A057655: The circle problem: number of points (x,y) in square lattice with x^2 + y^2 <= n.

Offset 0, canonical program `A057655.P8142405424443184292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655 (n : ℕ) : ℤ :=
  A057655.P8142405424443184292.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059894.P11516963689868861872

`A049773(n+1)+A036044(n+1)`
-/

namespace A059894.P11516963689868861872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (n + 1) + A036044 (n + 1)

end

end A059894.P11516963689868861872

noncomputable section

/-- A059894: Complement and reverse the order of all but the most significant bit in binary expansion of n. n = 1ab..yz -> 1ZY..BA = a(n), where A = 1-a, B = 1-b, ... .

Offset 1, canonical program `A059894.P11516963689868861872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894 (n : ℕ) : ℤ :=
  A059894.P11516963689868861872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087695.P4000952237766351123

`A046117(n+1)-3`
-/

namespace A087695.P4000952237766351123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 3

end

end A087695.P4000952237766351123

noncomputable section

/-- A087695: Numbers n such that n + 3 and n - 3 are both prime.

Offset 1, canonical program `A087695.P4000952237766351123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695 (n : ℕ) : ℤ :=
  A087695.P4000952237766351123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088208.P4118432922678346086

`A049773(A233280(n+1))`
-/

namespace A088208.P4118432922678346086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A233280 (n + 1)).toNat

end

end A088208.P4118432922678346086

noncomputable section

/-- A088208: Table read by rows where T(0,0)=1; n-th row has 2^n terms T(n,j),j=0 to 2^n-1. For j==0 mod 2, T(n+1,2j)=T(n,j) and T(n+1,2j+1)=T(n,j)+2^n. For j==1 mod 2, T(n+1,2j+1)=T(n,j) and T(n+1,2j)=T(n,j)+2^n.

Offset 0, canonical program `A088208.P4118432922678346086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208 (n : ℕ) : ℤ :=
  A088208.P4118432922678346086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A088208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088985.P11937650626503658584

`A072677(A029707(n+1))`
-/

namespace A088985.P11937650626503658584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A029707 (n + 1)).toNat

end

end A088985.P11937650626503658584

noncomputable section

/-- A088985: Numbers of the form prime(prime(n)+1), with n satisfying prime(n)+2 = prime(n+1).

Offset 1, canonical program `A088985.P11937650626503658584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985 (n : ℕ) : ℤ :=
  A088985.P11937650626503658584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091871.P8902696831286629578

`A049084(A091633(n+1))`
-/

namespace A091871.P8902696831286629578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091633 (n + 1)).toNat

end

end A091871.P8902696831286629578

noncomputable section

/-- A091871: A091633 indexed by A000040.

Offset 1, canonical program `A091871.P8902696831286629578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A091633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091871 (n : ℕ) : ℤ :=
  A091871.P8902696831286629578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A091633, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092782.P12994304615251165252

`2-A317198(n)`
-/

namespace A092782.P12994304615251165252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A317198 n

end

end A092782.P12994304615251165252

noncomputable section

/-- A092782: The ternary tribonacci word; also a Rauzy fractal sequence: fixed point of the morphism 1 -> 12, 2 -> 13, 3 -> 1, starting from a(1) = 1.

Offset 1, canonical program `A092782.P12994304615251165252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782 (n : ℕ) : ℤ :=
  A092782.P12994304615251165252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105409.P4388041597487079286

`A029707(A242881(n+1))-1`
-/

namespace A105409.P4388041597487079286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (A242881 (n + 1)).toNat - 1

end

end A105409.P4388041597487079286

noncomputable section

/-- A105409: Numbers k such that prime(k)-2 and prime(k+2)-2 are both primes.

Offset 1, canonical program `A105409.P4388041597487079286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409 (n : ℕ) : ℤ :=
  A105409.P4388041597487079286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A105409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106008.P17304472629844807330

`p?[A093013(n+1)]`
-/

namespace A106008.P17304472629844807330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106008.P17304472629844807330

noncomputable section

/-- A106008: Primes p such that 10*p - 3 and 10*p + 3 are both primes.

Offset 1, canonical program `A106008.P17304472629844807330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008 (n : ℕ) : ℤ :=
  A106008.P17304472629844807330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A106008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107770.P17401578179323890031

`A029707(n+1)+1`
-/

namespace A107770.P17401578179323890031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) + 1

end

end A107770.P17401578179323890031

noncomputable section

/-- A107770: Index of greater of twin primes in the primes.

Offset 1, canonical program `A107770.P17401578179323890031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107770 (n : ℕ) : ℤ :=
  A107770.P17401578179323890031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109196.P10916885654328462370

`1/2*A109194(n+2)`
-/

namespace A109196.P10916885654328462370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A109194 (n + 2) : ℚ)

end

end A109196.P10916885654328462370

noncomputable section

/-- A109196: Number of returns to the x-axis from above (i.e., d steps hitting the x-axis) in all Grand Motzkin paths of length n.

Offset 2, canonical program `A109196.P10916885654328462370`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109196.P10916885654328462370.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111192.P5696730422318890961

`A023201(n+1)*A046117(n+1)`
-/

namespace A111192.P5696730422318890961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) * A046117 (n + 1)

end

end A111192.P5696730422318890961

noncomputable section

/-- A111192: Product of the n-th sexy prime pair.

Offset 1, canonical program `A111192.P5696730422318890961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192 (n : ℕ) : ℤ :=
  A111192.P5696730422318890961.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, A046117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125131.P2814879206416894113

`∏{d}[n+1, 1-A120007(#)]`
-/

namespace A125131.P2814879206416894113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (1 - A120007 d)

end

end A125131.P2814879206416894113

noncomputable section

/-- A125131: Product 1-p, where p ranges over the prime factors of n with multiplicity.

Offset 1, canonical program `A125131.P2814879206416894113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131 (n : ℕ) : ℤ :=
  A125131.P2814879206416894113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127435.P10299367039698529313

`A070689(n+1)+1`
-/

namespace A127435.P10299367039698529313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1) + 1

end

end A127435.P10299367039698529313

noncomputable section

/-- A127435: Primes p such that (p-1)^2 + 1 is prime.

Offset 1, canonical program `A127435.P10299367039698529313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435 (n : ℕ) : ℤ :=
  A127435.P10299367039698529313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129782.P7810012710438629702

`A096479(n+1)+2`
-/

namespace A129782.P7810012710438629702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096479 (n + 1) + 2

end

end A129782.P7810012710438629702

noncomputable section

/-- A129782: The upper twin prime whose lower member has a prime index.

Offset 1, canonical program `A129782.P7810012710438629702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782 (n : ℕ) : ℤ :=
  A129782.P7810012710438629702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130200.P5098395854931110605

`A130199(n+1)/2`
-/

namespace A130200.P5098395854931110605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130199 (n + 1) : ℚ) / 2

end

end A130200.P5098395854931110605

noncomputable section

/-- A130200: Evil triangular numbers.

Offset 1, canonical program `A130200.P5098395854931110605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130200.P5098395854931110605.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130199, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131271.P16044540476189074573

`A066194(A049773(n+1))`
-/

namespace A131271.P16044540476189074573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A049773 (n + 1)).toNat

end

end A131271.P16044540476189074573

noncomputable section

/-- A131271: Triangular array T(n,k), n>=0, k=1..2^n, read by rows in bracketed pairs such that highest ranked element is bracketed with lowest ranked.

Offset 0, canonical program `A131271.P16044540476189074573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A131271 (n : ℕ) : ℤ :=
  A131271.P16044540476189074573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A131271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131961.P4236361226721680594

`A123484(24*n+1)`
-/

namespace A131961.P4236361226721680594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123484 (24 * n + 1)

end

end A131961.P4236361226721680594

noncomputable section

/-- A131961: Expansion of f(x, x^2) * f(x^2, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A131961.P4236361226721680594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961 (n : ℕ) : ℤ :=
  A131961.P4236361226721680594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134013.P3057946440017959852

`(-1)^n*A112301(n+1)`
-/

namespace A134013.P3057946440017959852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112301 (n + 1)

end

end A134013.P3057946440017959852

noncomputable section

/-- A134013: Expansion of q * phi(q) * psi(q^8) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A134013.P3057946440017959852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013 (n : ℕ) : ℤ :=
  A134013.P3057946440017959852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112301, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134420.P15726290882906623320

`∩[A069987(n+1), A134406(n+1)]`
-/

namespace A134420.P15726290882906623320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P15726290882906623320

noncomputable section

/-- A134420: Composite squarefree numbers of the form k^2 + 1.

Offset 1, canonical program `A134420.P15726290882906623320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420 (n : ℕ) : ℤ :=
  (A134420.P15726290882906623320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. -/
def A134420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136207.P3473183565243102023

`∪[A023201(n+1), A046117(n+1)]`
-/

namespace A136207.P3473183565243102023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136207.P3473183565243102023

noncomputable section

/-- A136207: Primes p such that p-6 or p+6 is prime.

Offset 1, canonical program `A136207.P3473183565243102023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207 (n : ℕ) : ℤ :=
  (A136207.P3473183565243102023.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137921.P4123784932500151371

`A000005(n+1)-A129308(n+1)`
-/

namespace A137921.P4123784932500151371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A129308 (n + 1)

end

end A137921.P4123784932500151371

noncomputable section

/-- A137921: Number of divisors d of n such that d+1 is not a divisor of n.

Offset 1, canonical program `A137921.P4123784932500151371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137921 (n : ℕ) : ℤ :=
  A137921.P4123784932500151371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137921.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003051.P6848603489716177678

`(A000203(n+1)+2*A002324(n+1)+3*A145390(n+1))/6`
-/

namespace A003051.P6848603489716177678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 2 * A002324 (n + 1) + 3 * A145390 (n + 1) : ℚ) / 6

end

end A003051.P6848603489716177678

noncomputable section

/-- A003051: Number of inequivalent sublattices of index n in hexagonal lattice, where two sublattices are equivalent if they are related by a rotation or reflection preserving the hexagonal lattice.

Offset 1, canonical program `A003051.P6848603489716177678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003051.P6848603489716177678.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, A145390, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003602.P7612175048291952394

`A110963(2*n+1)`
-/

namespace A003602.P7612175048291952394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

end

end A003602.P7612175048291952394

noncomputable section

/-- A003602: Kimberling's paraphrase of the binary number system: if n = (2k-1)*2^m then a(n) = k.

Offset 1, canonical program `A003602.P7612175048291952394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602 (n : ℕ) : ℤ :=
  A003602.P7612175048291952394.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003602.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A007438.P10356689231106603491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007438.P10356689231106603491.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A007438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008834.P8690349651579721460

`(n+1)/A050985(n+1)`
-/

namespace A008834.P8690349651579721460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050985 (n + 1) : ℚ)

end

end A008834.P8690349651579721460

noncomputable section

/-- A008834: Largest cube dividing n.

Offset 1, canonical program `A008834.P8690349651579721460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008834.P8690349651579721460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008834.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A022297.P13831019223360445474

`A057428(n)+A013947(n+1)`
-/

namespace A022297.P13831019223360445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013947 (n + 1)

end

end A022297.P13831019223360445474

noncomputable section

/-- A022297: Index of n-th 1 in A006928.

Offset 1, canonical program `A022297.P13831019223360445474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297 (n : ℕ) : ℤ :=
  A022297.P13831019223360445474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022297.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A044069.P11354972915602530706

`and(A044450(n+1)+1, A044450(n+1))`
-/

namespace A044069.P11354972915602530706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044450 (n + 1) + 1) (A044450 (n + 1))

end

end A044069.P11354972915602530706

noncomputable section

/-- A044069: Numbers n such that string 2,0 occurs in the base 4 representation of n but not of n-1.

Offset 1, canonical program `A044069.P11354972915602530706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069 (n : ℕ) : ℤ :=
  A044069.P11354972915602530706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044069.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A046640.P10355392584185486359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046640 (n : ℕ) : ℤ :=
  A046640.P10355392584185486359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047679.P9593727126234668791

`A002487(1+A059893(n+1))`
-/

namespace A047679.P9593727126234668791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (n + 1)).toNat

end

end A047679.P9593727126234668791

noncomputable section

/-- A047679: Denominators in full Stern-Brocot tree.

Offset 0, canonical program `A047679.P9593727126234668791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679 (n : ℕ) : ℤ :=
  A047679.P9593727126234668791.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048798.P11871248388947828360

`A011262(A050985(n+1))`
-/

namespace A048798.P11871248388947828360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A050985 (n + 1)).toNat

end

end A048798.P11871248388947828360

noncomputable section

/-- A048798: Smallest k > 0 such that n*k is a perfect cube.

Offset 1, canonical program `A048798.P11871248388947828360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798 (n : ℕ) : ℤ :=
  A048798.P11871248388947828360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048798.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A049099.P16821384539890707321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A010554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049099 (n : ℕ) : ℤ :=
  A049099.P16821384539890707321.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A010554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A049099.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A049100.P9945104708846062101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049100 (n : ℕ) : ℤ :=
  A049100.P9945104708846062101.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049100.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A049776.P14768317238781565942

`A030109(eq[n+1, A059893(n+1)]+1)+1`
-/

namespace A049776.P14768317238781565942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A049776.P14768317238781565942

noncomputable section

/-- A049776: Triangular array T read by rows: n-th row consists of fixed points, k, of n-th row of array t given by A049773; i.e., t(n, t(n,k)) = t(n,k).

Offset 1, canonical program `A049776.P14768317238781565942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776 (n : ℕ) : ℤ :=
  A049776.P14768317238781565942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A049776.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050703.P11636492065280123511

`eq[1, A319713(A001414(n+1)+n+1)]+1`
-/

namespace A050703.P11636492065280123511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319713 (A001414 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050703.P11636492065280123511

noncomputable section

/-- A050703: Numbers that when added to the sum of their prime factors (with multiplicity) become prime.

Offset 1, canonical program `A050703.P11636492065280123511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703 (n : ℕ) : ℤ :=
  (A050703.P11636492065280123511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. -/
def A050703.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A051272.P18037893678165894194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051272 (n : ℕ) : ℤ :=
  A051272.P18037893678165894194.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051272.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A052100.P4818620463333782499`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052100.P4818620463333782499.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A052100.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053192.P15920408309209119138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053192 (n : ℕ) : ℤ :=
  A053192.P15920408309209119138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053192.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053193.P16427996787971388584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053193 (n : ℕ) : ℤ :=
  A053193.P16427996787971388584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053193.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053196.P5984243781687677578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053196 (n : ℕ) : ℤ :=
  A053196.P5984243781687677578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053196.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A053286.P17482830161555086044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053286 (n : ℕ) : ℤ :=
  A053286.P17482830161555086044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053286.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053288.P6466323474005085456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053288 (n : ℕ) : ℤ :=
  A053288.P6466323474005085456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053288.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053568.P694929640187653470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053568 (n : ℕ) : ℤ :=
  A053568.P694929640187653470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053574.P101121150819390308

`A007814(A000010(n+1))`
-/

namespace A053574.P101121150819390308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000010 (n + 1)).toNat

end

end A053574.P101121150819390308

noncomputable section

/-- A053574: Exponent of 2 in phi(n) where phi(n) = A000010(n).

Offset 1, canonical program `A053574.P101121150819390308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053574 (n : ℕ) : ℤ :=
  A053574.P101121150819390308.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053574.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053650.P6469571087341810863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053650 (n : ℕ) : ℤ :=
  A053650.P6469571087341810863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053650.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A055929.P14119917498007259059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055929 (n : ℕ) : ℤ :=
  A055929.P14119917498007259059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056917.P1491636041550893469

`lt[A249307(A000203(n+1)-A000010(n+1)), 2]+1`
-/

namespace A056917.P1491636041550893469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 (A000203 (n + 1) - A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056917.P1491636041550893469

noncomputable section

/-- A056917: Numbers n such that sigma(n)-phi(n) is a perfect square.

Offset 1, canonical program `A056917.P1491636041550893469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917 (n : ℕ) : ℤ :=
  (A056917.P1491636041550893469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A056917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057114.P12230823795797694149

`A059893(A065259(A059893(n+1)))`
-/

namespace A057114.P12230823795797694149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065259 (A059893 (n + 1)).toNat).toNat

end

end A057114.P12230823795797694149

noncomputable section

/-- A057114: Permutation of N induced by the order-preserving permutation of the rational numbers (x -> x+1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057114.P12230823795797694149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114 (n : ℕ) : ℤ :=
  A057114.P12230823795797694149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6144 terms. -/
def A057114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057115.P14789950930496132244

`A059893(A065260(A059893(n+1)))`
-/

namespace A057115.P14789950930496132244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A065260 (A059893 (n + 1)).toNat).toNat

end

end A057115.P14789950930496132244

noncomputable section

/-- A057115: Order-preserving permutation of the rational numbers (x -> x-1); positions in Stern-Brocot tree.

Offset 1, canonical program `A057115.P14789950930496132244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115 (n : ℕ) : ℤ :=
  A057115.P14789950930496132244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A057115.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A057860.P15781516878484293447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057860 (n : ℕ) : ℤ :=
  A057860.P15781516878484293447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057860.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A058161.P7672839083223615589`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058161.P7672839083223615589.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060278.P961630484478703475

`A206773(n+1)-round(n/(n+1))`
-/

namespace A060278.P961630484478703475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206773 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))

end

end A060278.P961630484478703475

noncomputable section

/-- A060278: Sum of composite divisors of n less than n.

Offset 1, canonical program `A060278.P961630484478703475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278 (n : ℕ) : ℤ :=
  A060278.P961630484478703475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A060640.P4210326819928191439

`∑{d}[n+1, A007425(#)*A029935((n+1)/#)]`
-/

namespace A060640.P4210326819928191439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060640.P4210326819928191439

noncomputable section

/-- A060640: If n = Product p_i^e_i then a(n) = Product (1 + 2*p_i + 3*p_i^2 + ... + (e_i+1)*p_i^e_i).

Offset 1, canonical program `A060640.P4210326819928191439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060640 (n : ℕ) : ℤ :=
  A060640.P4210326819928191439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064179.P15914318572528280562

`(-1)^A064547(n+1)`
-/

namespace A064179.P15914318572528280562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A064547 (n + 1) : ℤ)

end

end A064179.P15914318572528280562

noncomputable section

/-- A064179: Infinitary version of Moebius function: infinitary MoebiusMu of n, equal to mu(n) iff mu(n) differs from zero, else 1 or -1 depending on whether the sum of the binary digits of the exponents in the prime decomposition of n is even or odd.

Offset 1, canonical program `A064179.P15914318572528280562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064179.P15914318572528280562.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064179.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A064279.P12022089793920685943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064279 (n : ℕ) : ℤ :=
  A064279.P12022089793920685943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064279.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A064400.P18224085056823472977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400 (n : ℕ) : ℤ :=
  A064400.P18224085056823472977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A064767.P2296420655602066237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A011785, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064767 (n : ℕ) : ℤ :=
  A064767.P2296420655602066237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A011785, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064767.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A065395.P2489415890937249786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065395 (n : ℕ) : ℤ :=
  A065395.P2489415890937249786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A062402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066519.P9115414614718271380

`abs(Δ[A190276(abs(1-n)+1)])`
-/

namespace A066519.P9115414614718271380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190276 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A066519.P9115414614718271380

noncomputable section

/-- A066519: Gaps between successive numbers with an anti-divisor class sum of zero.

Offset 1, canonical program `A066519.P9115414614718271380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519 (n : ℕ) : ℤ :=
  A066519.P9115414614718271380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066913.P6088675062854095673

`A066911(n+1)%(n+1)`
-/

namespace A066913.P6088675062854095673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066911 (n + 1)) (n + 1 : ℤ)

end

end A066913.P6088675062854095673

noncomputable section

/-- A066913: (sum of primes < n that do not divide n) (mod n).

Offset 1, canonical program `A066913.P6088675062854095673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913 (n : ℕ) : ℤ :=
  A066913.P6088675062854095673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066913.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A066915.P5780166036691068090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066915 (n : ℕ) : ℤ :=
  A066915.P5780166036691068090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066915.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A066916.P9082080980246688121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066916 (n : ℕ) : ℤ :=
  A066916.P9082080980246688121.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066916.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A068963.P12991928728115657832

`∑{d}[n+1, A053191(#)]`
-/

namespace A068963.P12991928728115657832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d

end

end A068963.P12991928728115657832

noncomputable section

/-- A068963: a(n) = Sum_{d|n} phi(d^3).

Offset 1, canonical program `A068963.P12991928728115657832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068963 (n : ℕ) : ℤ :=
  A068963.P12991928728115657832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068970.P18166395650473303981

`∑{d}[n+1, #*A053191(#)]`
-/

namespace A068970.P18166395650473303981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A053191 d

end

end A068970.P18166395650473303981

noncomputable section

/-- A068970: a(n) = Sum_{d|n} phi(d^4).

Offset 1, canonical program `A068970.P18166395650473303981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068970 (n : ℕ) : ℤ :=
  A068970.P18166395650473303981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069194.P17220240621042062956

`∑{d}[n+1, A002618(n+1)/A002618(#)]`
-/

namespace A069194.P17220240621042062956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A002618 (n + 1) : ℚ) / (A002618 d : ℚ)

end

end A069194.P17220240621042062956

noncomputable section

/-- A069194: a(n) = Sum_{d|n} (n/d)*phi(n)/phi(d).

Offset 1, canonical program `A069194.P17220240621042062956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069194.P17220240621042062956.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A069925.P16749141084476288768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069925.P16749141084476288768.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069925.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A070163.P4710213129982356040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A070162, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070163 (n : ℕ) : ℤ :=
  A070163.P4710213129982356040.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A070162, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070163.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A070556.P18359578650946582400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070556 (n : ℕ) : ℤ :=
  A070556.P18359578650946582400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070705.P850557199446930633

`A158851(record[A047994(n+3)])`
-/

namespace A070705.P850557199446930633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070705.P850557199446930633

noncomputable section

/-- A070705: LCM of first n prime powers modulo next prime power.

Offset 1, canonical program `A070705.P850557199446930633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A070705 (n : ℕ) : ℤ :=
  A070705.P850557199446930633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A070705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070802.P9494168428163023846

`A070801(n+2)-A070800(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070802.P9494168428163023846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A070800 (n + 2)

end

end A070802.P9494168428163023846

noncomputable section

/-- A070802: a(n)=prevprime[sigma(n)]-nextprime[phi(n)]=A070801(n)-A070800(n).

Offset 2, canonical program `A070802.P9494168428163023846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070802 (n : ℕ) : ℤ :=
  A070802.P9494168428163023846.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070802.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A071118.P10143340567303740039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118 (n : ℕ) : ℤ :=
  A071118.P10143340567303740039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072062.P12729312681891732768

`abs(xor(1, -A064786(n+1)))`
-/

namespace A072062.P12729312681891732768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-A064786 (n + 1))|

end

end A072062.P12729312681891732768

noncomputable section

/-- A072062: Inverse permutation to A072061.

Offset 1, canonical program `A072062.P12729312681891732768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062 (n : ℕ) : ℤ :=
  A072062.P12729312681891732768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072062.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A072451.P2994685750961621523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072451 (n : ℕ) : ℤ :=
  A072451.P2994685750961621523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072451.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A073811.P16080894711694834372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073811 (n : ℕ) : ℤ :=
  A073811.P16080894711694834372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073811.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074273.P3483261039541089389

`A013947(2*(n+1))`
-/

namespace A074273.P3483261039541089389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (2 * (n + 1))

end

end A074273.P3483261039541089389

noncomputable section

/-- A074273: Positions in the Kolakoski sequence (A000002) where there are an even number of 1's and the current term is 1.

Offset 1, canonical program `A074273.P3483261039541089389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273 (n : ℕ) : ℤ :=
  A074273.P3483261039541089389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A074273.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A074389.P8050335013716147164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074389 (n : ℕ) : ℤ :=
  (A074389.P8050335013716147164.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074389.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A075857.P13213587624051204763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075857.P13213587624051204763.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A075857.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A076511.P7316728277018635984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076511.P7316728277018635984.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076511.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A076512.P8858335873698659586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076512.P8858335873698659586.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076512.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A077080.P7768184034800697373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077080 (n : ℕ) : ℤ :=
  A077080.P7768184034800697373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077080.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A077099.P3430747628200771116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077099 (n : ℕ) : ℤ :=
  (A077099.P3430747628200771116.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077099.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A077100.P17383012229012696601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077100 (n : ℕ) : ℤ :=
  (A077100.P17383012229012696601.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077100.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A077101.P7633448561027353757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077101 (n : ℕ) : ℤ :=
  A077101.P7633448561027353757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A065387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077101.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078649.P18369770188371927822

`comp[A013947(n+1)-1]+1+n`
-/

namespace A078649.P18369770188371927822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A078649.P18369770188371927822

noncomputable section

/-- A078649: Numbers n such that A000002(n)=A000002(n+1) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078649.P18369770188371927822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649 (n : ℕ) : ℤ :=
  (A078649.P18369770188371927822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078656.P2820646494609425011

`A006450(A049511(n+1))`
-/

namespace A078656.P2820646494609425011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A049511 (n + 1)).toNat

end

end A078656.P2820646494609425011

noncomputable section

/-- A078656: a(n) = prime(k) where k = n-th prime congruent to 1 mod 10.

Offset 1, canonical program `A078656.P2820646494609425011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656 (n : ℕ) : ℤ :=
  A078656.P2820646494609425011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078656.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A078766.P6802936406956990662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078766 (n : ℕ) : ℤ :=
  A078766.P6802936406956990662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079252.P16700383346931884610

`A079251(A122553(n)+n)`
-/

namespace A079252.P16700383346931884610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (A122553 n + (n : ℤ)).toNat

end

end A079252.P16700383346931884610

noncomputable section

/-- A079252: Even numbers not in A079000.

Offset 1, canonical program `A079252.P16700383346931884610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079252 (n : ℕ) : ℤ :=
  A079252.P16700383346931884610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079252.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A079476.P11192462529891876628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476 (n : ℕ) : ℤ :=
  A079476.P11192462529891876628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080541.P6940438194727065998

`A059893(A080542(A059893(n+1)))`
-/

namespace A080541.P6940438194727065998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080542 (A059893 (n + 1)).toNat).toNat

end

end A080541.P6940438194727065998

noncomputable section

/-- A080541: In binary representation: keep the first digit and left-rotate the others.

Offset 1, canonical program `A080541.P6940438194727065998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541 (n : ℕ) : ℤ :=
  A080541.P6940438194727065998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080541.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A081396.P571313652877087617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081396 (n : ℕ) : ℤ :=
  A081396.P571313652877087617.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081396.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A082054.P15616235198643098512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082054 (n : ℕ) : ℤ :=
  A082054.P15616235198643098512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A009223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082054.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A082055.P17660834440611057659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082055 (n : ℕ) : ℤ :=
  A082055.P17660834440611057659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082386.P6793526931661714868

`A000982(A182105(n+1))`
-/

namespace A082386.P6793526931661714868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A182105 (n + 1)).toNat

end

end A082386.P6793526931661714868

noncomputable section

/-- A082386: Let S(0) = {1} and for k >= 1, let S(k) = {S(k-1), S(k-1), 2T}, where T = sum of terms in S(k-1). Sequence is S(infinity).

Offset 0, canonical program `A082386.P6793526931661714868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386 (n : ℕ) : ℤ :=
  A082386.P6793526931661714868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082386.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A082849.P14495189040756663948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082849 (n : ℕ) : ℤ :=
  A082849.P14495189040756663948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083243.P12650602988300709870

`lt[A045763(A028310(n)), n/2]`
-/

namespace A083243.P12650602988300709870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A083243.P12650602988300709870

noncomputable section

/-- A083243: Numbers k for which there are more divisors and coprimes than other numbers less than k: A045763(k) < A073757(k) or A045763(k) < k/2 or A073757(k) > k/2.

Offset 1, canonical program `A083243.P12650602988300709870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243 (n : ℕ) : ℤ :=
  (A083243.P12650602988300709870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6264 terms. -/
def A083243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083244.P7512416555689218093

`lt[A008619(n), A045763(n+1)]+1`
-/

namespace A083244.P7512416555689218093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A083244.P7512416555689218093

noncomputable section

/-- A083244: k is in the sequence iff the number of numbers unrelated to k is larger than that of related ones[=divisors and coprimes] to k: A045763(k) > A073757(k) or A045763(k) > k/2 or A073757(k) < k/2.

Offset 1, canonical program `A083244.P7512416555689218093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244 (n : ℕ) : ℤ :=
  (A083244.P7512416555689218093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3734 terms. -/
def A083244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083245.P760659149355917661

`A073757(n+1)-A045763(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083245.P760659149355917661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A045763 (n + 1)

end

end A083245.P760659149355917661

noncomputable section

/-- A083245: Difference between numbers of related and numbers of unrelated numbers belonging to n: a(n) = A073757(n)-A045763(n) = (n-u(n))-u(n) = n-2*A045763(n) = 2*A073757(n)-n.

Offset 1, canonical program `A083245.P760659149355917661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, A073757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083245 (n : ℕ) : ℤ :=
  A083245.P760659149355917661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045763, A073757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083534.P14032247145257894732

`A007617(n+2)-A007617(n+1)`
-/

namespace A083534.P14032247145257894732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 2) - A007617 (n + 1)

end

end A083534.P14032247145257894732

noncomputable section

/-- A083534: First difference sequence of A007617. Difference between consecutive values not being in the range of phi (A000010).

Offset 1, canonical program `A083534.P14032247145257894732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083534 (n : ℕ) : ℤ :=
  A083534.P14032247145257894732.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083548.P10089117968042998981

`lcm(A051953(n+1), A051953(n+2))`
-/

namespace A083548.P10089117968042998981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051953 (n + 1)) (A051953 (n + 2))

end

end A083548.P10089117968042998981

noncomputable section

/-- A083548: Least common multiple of cototient values of consecutive integers.

Offset 1, canonical program `A083548.P10089117968042998981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083548 (n : ℕ) : ℤ :=
  (A083548.P10089117968042998981.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083549.P10383271468232548209

`lcm(A051953(n+1), A051953(n+2))/gcd(A051953(n+1), A051953(n+2))`
-/

namespace A083549.P10383271468232548209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A051953 (n + 1)) (A051953 (n + 2)) : ℚ) / (Int.gcd (A051953 (n + 1)) (A051953 (n + 2)) : ℚ)

end

end A083549.P10383271468232548209

noncomputable section

/-- A083549: Quotient if least common multiple (lcm) of cototient values of consecutive integers is divided by the greatest common divisor (gcd) of the same pair of consecutive numbers.

Offset 1, canonical program `A083549.P10383271468232548209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083549.P10383271468232548209.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084921.P9444845645736558906

`A009286(A000040(n+1))`
-/

namespace A084921.P9444845645736558906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (A000040 (n + 1)).toNat

end

end A084921.P9444845645736558906

noncomputable section

/-- A084921: a(n) = lcm(p-1, p+1) where p is the n-th prime.

Offset 1, canonical program `A084921.P9444845645736558906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084921 (n : ℕ) : ℤ :=
  A084921.P9444845645736558906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085342.P7672575335003737733

`A074398(n+1)+A010051(n+1)`
-/

namespace A085342.P7672575335003737733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074398 (n + 1) + A010051 (n + 1)

end

end A085342.P7672575335003737733

noncomputable section

/-- A085342: Number of primes between phi(n) and n, where n is included in the count if it is a prime, while phi(n) is never included in the count even if it is a prime.

Offset 1, canonical program `A085342.P7672575335003737733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A074398, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085342 (n : ℕ) : ℤ :=
  A085342.P7672575335003737733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A074398, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085343.P16599532433614219245

`A070803(n+1)-A070804(n+1)`
-/

namespace A085343.P16599532433614219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A070804 (n + 1)

end

end A085343.P16599532433614219245

noncomputable section

/-- A085343: Number of primes between sigma(n) and phi(n) inclusive.

Offset 1, canonical program `A085343.P16599532433614219245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085343 (n : ℕ) : ℤ :=
  A085343.P16599532433614219245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070804, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086668.P4920581332236016487

`A305818(n+1)+A101264(n+1)`
-/

namespace A086668.P4920581332236016487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A101264 (n + 1)

end

end A086668.P4920581332236016487

noncomputable section

/-- A086668: Number of divisors d of n such that 2d+1 is a prime.

Offset 1, canonical program `A086668.P4920581332236016487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668 (n : ℕ) : ℤ :=
  A086668.P4920581332236016487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101264, A305818, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089266.P5248576897213251852

`1/2*(A037225(n+1)+A034444(2*(n+1)+1))`
-/

namespace A089266.P5248576897213251852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A037225 (n + 1) + A034444 (2 * (n + 1) + 1) : ℚ)

end

end A089266.P5248576897213251852

noncomputable section

/-- A089266: Rational knots of determinant 2n+1, counting chiral pairs twice.

Offset 1, canonical program `A089266.P5248576897213251852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A037225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089266.P5248576897213251852.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A037225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089692.P4290977152710679352

`A062570(n+1)/A034444(n+1)`
-/

namespace A089692.P4290977152710679352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A089692.P4290977152710679352

noncomputable section

/-- A089692: a(n) = phi(2n)/2^omega(n).

Offset 1, canonical program `A089692.P4290977152710679352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A062570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089692.P4290977152710679352.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A062570, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089692.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090605.P9514351185827622327

`∩[A049511(n+1), A160594(n+1)]`
-/

namespace A090605.P9514351185827622327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090605.P9514351185827622327

noncomputable section

/-- A090605: Numbers m such that m-th prime is of the form 60*k+1.

Offset 1, canonical program `A090605.P9514351185827622327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605 (n : ℕ) : ℤ :=
  (A090605.P9514351185827622327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A090605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092693.P489239560406468948

`A053478(n+1)-(n+1)`
-/

namespace A092693.P489239560406468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053478 (n + 1) - (n + 1 : ℤ)

end

end A092693.P489239560406468948

noncomputable section

/-- A092693: Sum of iterated phi(n).

Offset 1, canonical program `A092693.P489239560406468948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092693 (n : ℕ) : ℤ :=
  A092693.P489239560406468948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093705.P7271058534406243467

`lt[(n+1)%A093653(n+1), 1]+1`
-/

namespace A093705.P7271058534406243467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A093653 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093705.P7271058534406243467

noncomputable section

/-- A093705: Numbers that are divisible by the total number of 1's in the binary expansions of all their divisors.

Offset 1, canonical program `A093705.P7271058534406243467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705 (n : ℕ) : ℤ :=
  (A093705.P7271058534406243467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A093705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093819.P10904425845107863521

`A055034(A225975(n+1))`
-/

namespace A093819.P10904425845107863521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (n + 1)).toNat

end

end A093819.P10904425845107863521

noncomputable section

/-- A093819: Algebraic degree of sin(2*Pi/n).

Offset 1, canonical program `A093819.P10904425845107863521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819 (n : ℕ) : ℤ :=
  A093819.P10904425845107863521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094051.P17874121840297430644

`A008330(n+3)/2`
-/

namespace A094051.P17874121840297430644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 3) : ℚ) / 2

end

end A094051.P17874121840297430644

noncomputable section

/-- A094051: a(n) = phi(phi(p))/2 where p = prime(n).

Offset 3, canonical program `A094051.P17874121840297430644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094051.P17874121840297430644.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096853.P9612521034690238778

`A062401(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096853.P9612521034690238778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ (n + 1) - 1)

end

end A096853.P9612521034690238778

noncomputable section

/-- A096853: a(n) = A062401(2^n-1).

Offset 1, canonical program `A096853.P9612521034690238778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096853 (n : ℕ) : ℤ :=
  A096853.P9612521034690238778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096854.P16261224724697573173

`A062402(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096854.P16261224724697573173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 ^ (n + 1) - 1)

end

end A096854.P16261224724697573173

noncomputable section

/-- A096854: a(n) = A062402(2^n-1).

Offset 1, canonical program `A096854.P16261224724697573173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096854 (n : ℕ) : ℤ :=
  A096854.P16261224724697573173.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096855.P4288218702433459592

`A062401(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096855.P4288218702433459592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ n + 1)

end

end A096855.P4288218702433459592

noncomputable section

/-- A096855: a(n) = A062401(2^n + 1).

Offset 0, canonical program `A096855.P4288218702433459592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096855 (n : ℕ) : ℤ :=
  A096855.P4288218702433459592.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096856.P6825072489695385686

`A062402(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096856.P6825072489695385686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 ^ n + 1)

end

end A096856.P6825072489695385686

noncomputable section

/-- A096856: a(n) = A062402(2^n+1).

Offset 0, canonical program `A096856.P6825072489695385686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096856 (n : ℕ) : ℤ :=
  A096856.P6825072489695385686.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097884.P18184592152229519995

`Δ[A097605(n+1)]`
-/

namespace A097884.P18184592152229519995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097884.P18184592152229519995

noncomputable section

/-- A097884: First differences of A097605 (phi(n) divides n^2 - 1).

Offset 1, canonical program `A097884.P18184592152229519995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884 (n : ℕ) : ℤ :=
  A097884.P18184592152229519995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099751.P7046842454229189137

`abs(A256232(n+1))`
-/

namespace A099751.P7046842454229189137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256232 (n + 1)|

end

end A099751.P7046842454229189137

noncomputable section

/-- A099751: Number of ways to write n as differences of (-4)-gonal numbers. If pe(n):=1/2*n*((e-2)*n+(4-e)) is the n-th e-gonal number, then a(n) = |{(m,k) of Z X Z; pe(-1)(m+k)-pe(m-1)=n}| for e=-4.

Offset 1, canonical program `A099751.P7046842454229189137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099751 (n : ℕ) : ℤ :=
  A099751.P7046842454229189137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100282.P11700922516647250805

`A100280(A100280(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100282.P11700922516647250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100280 (A100280 n).toNat

end

end A100282.P11700922516647250805

noncomputable section

/-- A100282: a(n) = A100280(A100280(n)).

Offset 0, canonical program `A100282.P11700922516647250805`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282 (n : ℕ) : ℤ :=
  A100282.P11700922516647250805.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100371.P1765266703165715938

`A066781(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100371.P1765266703165715938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - 1

end

end A100371.P1765266703165715938

noncomputable section

/-- A100371: a(n) = 2^phi(n) - 1 = A066781(n) - 1.

Offset 1, canonical program `A100371.P1765266703165715938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100371 (n : ℕ) : ℤ :=
  A100371.P1765266703165715938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103896.P5127249135774220631

`A000010(A103890(n+1))`
-/

namespace A103896.P5127249135774220631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103890 (n + 1)).toNat

end

end A103896.P5127249135774220631

noncomputable section

/-- A103896: Euler's totient of prime(n)! / prime(n)# + 1.

Offset 1, canonical program `A103896.P5127249135774220631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103896 (n : ℕ) : ℤ :=
  A103896.P5127249135774220631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104039.P17593394278328231830

`A006093(n+1)*A008330(n+1)`
-/

namespace A104039.P17593394278328231830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A008330 (n + 1)

end

end A104039.P17593394278328231830

noncomputable section

/-- A104039: Number of primitive roots modulo prime(n)^2, where prime(n) is n-th prime.

Offset 1, canonical program `A104039.P17593394278328231830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104039 (n : ℕ) : ℤ :=
  A104039.P17593394278328231830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008330, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104145.P5989850272366258385

`1-A137412(n+1)`
-/

namespace A104145.P5989850272366258385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137412 (n + 1)

end

end A104145.P5989850272366258385

noncomputable section

/-- A104145: a(1) = 1; let A(k) = sequence of first 2^(k-1) terms; then A(k+1) is concatenation of A(k) and (A(k)-1) if a(k) is odd, or concatenation of A(k) and (A(k)+1) if a(k) is even.

Offset 1, canonical program `A104145.P5989850272366258385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145 (n : ℕ) : ℤ :=
  A104145.P5989850272366258385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137412, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104145.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105634.P14447733541575245411

`∑{d}[n+1, A007434(#)*A035182((n+1)/#)]`
-/

namespace A105634.P14447733541575245411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A105634.P14447733541575245411

noncomputable section

/-- A105634: Expansion of Sum_{k>0} Kronecker(k,7)*x^k*(1 + x^k)/(1 - x^k)^3.

Offset 1, canonical program `A105634.P14447733541575245411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634 (n : ℕ) : ℤ :=
  A105634.P14447733541575245411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106402.P14799609536326277547

`∑{d}[n+1, A002324(#)*A007434((n+1)/#)]`
-/

namespace A106402.P14799609536326277547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P14799609536326277547

noncomputable section

/-- A106402: Expansion of eta(q^3)^9 / eta(q)^3 in powers of q.

Offset 1, canonical program `A106402.P14799609536326277547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402 (n : ℕ) : ℤ :=
  A106402.P14799609536326277547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108119.P18242225102554614006

`∩[A049511(n+1), A107730(n+1)]`
-/

namespace A108119.P18242225102554614006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108119.P18242225102554614006

noncomputable section

/-- A108119: Numbers k such that prime(k) and prime(k+1) are congruent to 1 (mod 10).

Offset 1, canonical program `A108119.P18242225102554614006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119 (n : ℕ) : ℤ :=
  (A108119.P18242225102554614006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A108119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109395.P12004804553665674898

`(n+1)/A009195(n+1)`
-/

namespace A109395.P12004804553665674898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A109395.P12004804553665674898

noncomputable section

/-- A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

Offset 1, canonical program `A109395.P12004804553665674898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109395.P12004804553665674898.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110962.P12597645411815953892

`A110963(1+n)-1`
-/

namespace A110962.P12597645411815953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (1 + n) - 1

end

end A110962.P12597645411815953892

noncomputable section

/-- A110962: Fractalization of A025480, zero-based version of Kimberling's paraphrase of the binary number system.

Offset 0, canonical program `A110962.P12597645411815953892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962 (n : ℕ) : ℤ :=
  A110962.P12597645411815953892.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112603.P10073116027546116725

`A002325(8*n+1)`
-/

namespace A112603.P10073116027546116725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (8 * n + 1)

end

end A112603.P10073116027546116725

noncomputable section

/-- A112603: Number of representations of n as the sum of a square and a triangular number.

Offset 0, canonical program `A112603.P10073116027546116725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603 (n : ℕ) : ℤ :=
  A112603.P10073116027546116725.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112988.P2584169627832420674

`A006005(n+1)+A077150(A006005(n+1))+1`
-/

namespace A112988.P2584169627832420674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A077150 (A006005 (n + 1)).toNat + 1)

end

end A112988.P2584169627832420674

noncomputable section

/-- A112988: Position of n-th prime in A089088.

Offset 1, canonical program `A112988.P2584169627832420674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988 (n : ℕ) : ℤ :=
  A112988.P2584169627832420674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113427.P16554332714523727255

`A001223(A113339(n+1))`
-/

namespace A113427.P16554332714523727255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A113339 (n + 1)).toNat

end

end A113427.P16554332714523727255

noncomputable section

/-- A113427: If d(n) is the sequence of prime differences, d(n) = prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is nonprime and squarefree. Except for the initial term of 1, the terms are k-semiprime for some k >= 2.

Offset 1, canonical program `A113427.P16554332714523727255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427 (n : ℕ) : ℤ :=
  A113427.P16554332714523727255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113502.P1834460873008757009

`A088723(n+1)/2`
-/

namespace A113502.P1834460873008757009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088723 (n + 1) : ℚ) / 2

end

end A113502.P1834460873008757009

noncomputable section

/-- A113502: A number n is included if at least one of its divisors > 1 is a triangular number (i.e., is of the form m(m+1)/2, m >= 2).

Offset 1, canonical program `A113502.P1834460873008757009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113502.P1834460873008757009.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113543.P2223141436279316752

`filter[A112886(n+1), A008966(#)]`
-/

namespace A113543.P2223141436279316752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A113543.P2223141436279316752

noncomputable section

/-- A113543: Numbers both squarefree and triangle-free.

Offset 1, canonical program `A113543.P2223141436279316752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543 (n : ℕ) : ℤ :=
  A113543.P2223141436279316752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A113543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117285.P12871270459971671114

`eq[1, A255849(A051953(n+1))]+1`
-/

namespace A117285.P12871270459971671114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117285.P12871270459971671114

noncomputable section

/-- A117285: Numbers k for which the cototient k-phi(k) is a pentagonal number.

Offset 1, canonical program `A117285.P12871270459971671114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285 (n : ℕ) : ℤ :=
  (A117285.P12871270459971671114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117725.P10630623760424057360

`∩[A028840(n+1), A028890(n+1)]`
-/

namespace A117725.P10630623760424057360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117725.P10630623760424057360

noncomputable section

/-- A117725: Zeroless numbers for which the sum of the digits and the product of the digits are both Fibonacci numbers.

Offset 1, canonical program `A117725.P10630623760424057360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725 (n : ℕ) : ℤ :=
  (A117725.P10630623760424057360.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A117725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117968.P13461600208668365295

`∑[Δ[A117967(n)]+1]`
-/

namespace A117968.P13461600208668365295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117968.P13461600208668365295

noncomputable section

/-- A117968: Negative part of inverse of A117966; write -n in balanced ternary and then replace (-1)'s with 2's.

Offset 1, canonical program `A117968.P13461600208668365295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968 (n : ℕ) : ℤ :=
  A117968.P13461600208668365295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A117968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119432.P2492859987505692241

`lt[1, A062356(n+1)]+1`
-/

namespace A119432.P2492859987505692241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119432.P2492859987505692241

noncomputable section

/-- A119432: Numbers k such that 2*phi(k) <= k.

Offset 1, canonical program `A119432.P2492859987505692241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432 (n : ℕ) : ℤ :=
  (A119432.P2492859987505692241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121361.P14605367141512656592

`floor(A097195(record[xor(1, n)])/2)`
-/

namespace A121361.P14605367141512656592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2⌋

end

end A121361.P14605367141512656592

noncomputable section

/-- A121361: Expansion of f(x^1, x^5) * psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A121361.P14605367141512656592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361 (n : ℕ) : ℤ :=
  A121361.P14605367141512656592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A121361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121519.P18252372970156583767

`record[A008330(n+1)]`
-/

namespace A121519.P18252372970156583767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P18252372970156583767

noncomputable section

/-- A121519: Number of primitive roots of prime A103203(n).

Offset 1, canonical program `A121519.P18252372970156583767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519 (n : ℕ) : ℤ :=
  A121519.P18252372970156583767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122256.P3316348703661489538

`∑[A122255(n+1)]`
-/

namespace A122256.P3316348703661489538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P3316348703661489538

noncomputable section

/-- A122256: Number of numbers <= n with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122256.P3316348703661489538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256 (n : ℕ) : ℤ :=
  A122256.P3316348703661489538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122257.P4437493794124437711

`A010051(n+1)*A122255(n+1)`
-/

namespace A122257.P4437493794124437711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A122255 (n + 1)

end

end A122257.P4437493794124437711

noncomputable section

/-- A122257: Characteristic function of Pierpont primes (A005109).

Offset 1, canonical program `A122257.P4437493794124437711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257 (n : ℕ) : ℤ :=
  A122257.P4437493794124437711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122261.P6538206010001195725

`A122255(∏{p}[n+1, #])`
-/

namespace A122261.P6538206010001195725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A122261.P6538206010001195725

noncomputable section

/-- A122261: Characteristic function of numbers having only factors that are Pierpont primes.

Offset 1, canonical program `A122261.P6538206010001195725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261 (n : ℕ) : ℤ :=
  A122261.P6538206010001195725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122373.P7813675859475871797

`∑{d}[n+1, A007434(#)*A035178((n+1)/#)]`
-/

namespace A122373.P7813675859475871797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122373.P7813675859475871797

noncomputable section

/-- A122373: Expansion of (c(q)^3 + c(q^2)^3) / 27 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A122373.P7813675859475871797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373 (n : ℕ) : ℤ :=
  A122373.P7813675859475871797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125096.P3255662404427325146

`Δ[A098180(n)]*A002325(n+1)`
-/

namespace A125096.P3255662404427325146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002325 (n + 1)

end

end A125096.P3255662404427325146

noncomputable section

/-- A125096: Expansion of -1 + (phi(q) * phi(q^2) + phi(-q^2) * phi(q^4)) / 2 in powers of q.

Offset 1, canonical program `A125096.P3255662404427325146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096 (n : ℕ) : ℤ :=
  A125096.P3255662404427325146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127192.P13574579328313795514

`A029935(A010766(n+1))*A051731(n+1)`
-/

namespace A127192.P13574579328313795514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127192.P13574579328313795514

noncomputable section

/-- A127192: Triangle read by rows: square of A054523.

Offset 1, canonical program `A127192.P13574579328313795514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192 (n : ℕ) : ℤ :=
  A127192.P13574579328313795514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127626.P10622249536812093687

`∑{d}[A127093(n+1), A029935(#)]`
-/

namespace A127626.P10622249536812093687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029935 d

end

end A127626.P10622249536812093687

noncomputable section

/-- A127626: Triangle T(n,k) = A018804(k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127626.P10622249536812093687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626 (n : ℕ) : ℤ :=
  A127626.P10622249536812093687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128853.P13378743803710917072

`A034444(n+1)/A034444(A009195(n+1))`
-/

namespace A128853.P13378743803710917072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A009195 (n + 1)).toNat : ℚ)

end

end A128853.P13378743803710917072

noncomputable section

/-- A128853: a(n) is the number of positive divisors of n which are coprime to phi(n) = A000010(n).

Offset 1, canonical program `A128853.P13378743803710917072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128853.P13378743803710917072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129134.P13727256071399545709

`A002325(n+1)*(-1)^floor(n/2)`
-/

namespace A129134.P13727256071399545709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A129134.P13727256071399545709

noncomputable section

/-- A129134: Expansion of (1 - phi(-q) * phi(-q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A129134.P13727256071399545709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129134.P13727256071399545709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130212.P13341498629550544317

`A010766(n+1)*A054526(n+1)`
-/

namespace A130212.P13341498629550544317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054526 (n + 1)

end

end A130212.P13341498629550544317

noncomputable section

/-- A130212: T(k, n) = sum_(1 <= j <= k) [j | k] j mu(k / j) floor(n / k), triangle read by rows.

Offset 1, canonical program `A130212.P13341498629550544317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212 (n : ℕ) : ℤ :=
  A130212.P13341498629550544317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130446.P13627366910175115370

`A111123(C(floor((n+1)/2), 64))+n`
-/

namespace A130446.P13627366910175115370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111123 (Nat.choose ⌊(n + 1 : ℚ) / 2⌋.toNat 64) + (n : ℤ)

end

end A130446.P13627366910175115370

noncomputable section

/-- A130446: Integers in [1, 425] expressible as a difference of the terms of the unique optimal Golomb ruler of order 24. See A130444.

Offset 1, canonical program `A130446.P13627366910175115370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446 (n : ℕ) : ℤ :=
  A130446.P13627366910175115370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A130446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132895.P15394333494377494833

`2*A112886(n+1)`
-/

namespace A132895.P15394333494377494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112886 (n + 1)

end

end A132895.P15394333494377494833

noncomputable section

/-- A132895: Even numbers for which all divisors, with the exception of 1 and 2, are isolated. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

Offset 1, canonical program `A132895.P15394333494377494833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895 (n : ℕ) : ℤ :=
  A132895.P15394333494377494833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133693.P6160581750214965149

`(-1)^n*A002325(n+1)`
-/

namespace A133693.P6160581750214965149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002325 (n + 1)

end

end A133693.P6160581750214965149

noncomputable section

/-- A133693: Expansion of (1 - phi(-q) * phi(q^2)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A133693.P6160581750214965149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693 (n : ℕ) : ℤ :=
  A133693.P6160581750214965149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133725.P6332609790966904879

`(3*A007434(n+1)-A000010(n+1))/2`
-/

namespace A133725.P6332609790966904879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A007434 (n + 1) - A000010 (n + 1) : ℚ) / 2

end

end A133725.P6332609790966904879

noncomputable section

/-- A133725: a(n) = Sum_{d|n} mu(n/d)*d*(3*d - 1)/2.

Offset 1, canonical program `A133725.P6332609790966904879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133725.P6332609790966904879.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134024.P16444693290474803119

`A134022(n)+A065363(n)`
-/

namespace A134024.P16444693290474803119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n + A065363 n

end

end A134024.P16444693290474803119

noncomputable section

/-- A134024: Number of positive trits in balanced ternary representation of n.

Offset 0, canonical program `A134024.P16444693290474803119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024 (n : ℕ) : ℤ :=
  A134024.P16444693290474803119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134675.P852948724655989853

`A007434(n+1)+A001065(n+1)`
-/

namespace A134675.P852948724655989853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A001065 (n + 1)

end

end A134675.P852948724655989853

noncomputable section

/-- A134675: Row sums of triangle A134674.

Offset 1, canonical program `A134675.P852948724655989853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134675 (n : ℕ) : ℤ :=
  A134675.P852948724655989853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137148.P10281140447083490938

`A002618(A018252(n+1))`
-/

namespace A137148.P10281140447083490938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A018252 (n + 1)).toNat

end

end A137148.P10281140447083490938

noncomputable section

/-- A137148: a(n) = k*phi(k), where k is the n-th nonprime number.

Offset 1, canonical program `A137148.P10281140447083490938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137148 (n : ℕ) : ℤ :=
  A137148.P10281140447083490938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137148.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A000056.P18166110637332708364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000056 (n : ℕ) : ℤ :=
  A000056.P18166110637332708364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000548.P7784828733208022638

`(lt[A005080(n+1), 1]+1)²`
-/

namespace A000548.P7784828733208022638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A000548.P7784828733208022638

noncomputable section

/-- A000548: Squares that are not the sum of 2 nonzero squares.

Offset 1, canonical program `A000548.P7784828733208022638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548 (n : ℕ) : ℤ :=
  (A000548.P7784828733208022638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3551 terms. -/
def A000548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003252.P10872519119112551421

`∑[A001468(A026272(n+1)+n)+1]`
-/

namespace A003252.P10872519119112551421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A026272 (n + 1) + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P10872519119112551421

noncomputable section

/-- A003252: The number m such that A003251(m) = A003231(n).

Offset 1, canonical program `A003252.P10872519119112551421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252 (n : ℕ) : ℤ :=
  A003252.P10872519119112551421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. -/
def A003252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003415.P9326043729983995739

`∑{d}[n, A300251(#)]`
-/

namespace A003415.P9326043729983995739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d

end

end A003415.P9326043729983995739

noncomputable section

/-- A003415: a(n) = n' = arithmetic derivative of n: a(0) = a(1) = 0, a(prime) = 1, a(m*n) = m*a(n) + n*a(m).

Offset 0, canonical program `A003415.P9326043729983995739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415 (n : ℕ) : ℤ :=
  A003415.P9326043729983995739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003415.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A003434.P4346144669055339103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003434 (n : ℕ) : ℤ :=
  A003434.P4346144669055339103.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049108, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`
-/

namespace A003714.P565032106299634425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (A193564 (n + 1)).toNat * (2 : ℚ) ^ (A003849 n + 1 : ℤ) + (A003849 n : ℚ)

end

end A003714.P565032106299634425

noncomputable section

/-- A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

Offset 0, canonical program `A003714.P565032106299634425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003714.P565032106299634425.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A003714.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A007875.P1743519679505570737

`A163109(∏{p}[n+1, #])`
-/

namespace A007875.P1743519679505570737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A007875.P1743519679505570737

noncomputable section

/-- A007875: Number of ways of writing n as p*q, with p <= q, gcd(p, q) = 1.

Offset 1, canonical program `A007875.P1743519679505570737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875 (n : ℕ) : ℤ :=
  A007875.P1743519679505570737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019506.P15594823480605419391

`record[A191558(A095405(n+9))]`
-/

namespace A019506.P15594823480605419391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A095405 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019506.P15594823480605419391

noncomputable section

/-- A019506: Hoax numbers: composite numbers whose digit-sum equals the sum of the digit-sums of its distinct prime factors.

Offset 1, canonical program `A019506.P15594823480605419391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506 (n : ℕ) : ℤ :=
  A019506.P15594823480605419391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A019506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024707.P1654818595505930273

`∪[A049510(n+1), A049511(n+1)]`
-/

namespace A024707.P1654818595505930273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A024707.P1654818595505930273

noncomputable section

/-- A024707: Positions of multiples of 5 in A024702.

Offset 1, canonical program `A024707.P1654818595505930273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707 (n : ℕ) : ℤ :=
  (A024707.P1654818595505930273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024707.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A027742.P15524387088752407227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027742.P15524387088752407227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027909.P7770673729257654986

`(n+1)*A143927(n)`
-/

namespace A027909.P7770673729257654986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143927 n

end

end A027909.P7770673729257654986

noncomputable section

/-- A027909: T(2n,n-1), T given by A027907.

Offset 0, canonical program `A027909.P7770673729257654986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909 (n : ℕ) : ℤ :=
  A027909.P7770673729257654986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A027909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036350.P4117456355186403580

`∪[A036348(n+1), A046340(n+1)]`
-/

namespace A036350.P4117456355186403580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036350.P4117456355186403580

noncomputable section

/-- A036350: Composite numbers such that the sum of the prime factors is odd (counted with multiplicity).

Offset 1, canonical program `A036350.P4117456355186403580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350 (n : ℕ) : ℤ :=
  (A036350.P4117456355186403580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038558.P636742692231698886

`A233279(n)+A053644(n)`
-/

namespace A038558.P636742692231698886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 n + A053644 n

end

end A038558.P636742692231698886

noncomputable section

/-- A038558: Smallest number with derivative n.

Offset 0, canonical program `A038558.P636742692231698886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558 (n : ℕ) : ℤ :=
  A038558.P636742692231698886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038558.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A043576.P9157064947003419788

`∩[A043736(n+1), A043741(n+1)]`
-/

namespace A043576.P9157064947003419788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043576.P9157064947003419788

noncomputable section

/-- A043576: Numbers whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043576.P9157064947003419788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576 (n : ℕ) : ℤ :=
  (A043576.P9157064947003419788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9504 terms. -/
def A043576.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A049586.P5434218238322190531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049586 (n : ℕ) : ℤ :=
  (A049586.P5434218238322190531.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049586.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A053287.P11109318528216789787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053287 (n : ℕ) : ℤ :=
  A053287.P11109318528216789787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053287.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A056665.P2618057950060369696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056665.P2618057950060369696.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228640, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056665.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A060372.P4864824408191301632

`A117967(n)-A300222(A117967(n))`
-/

namespace A060372.P4864824408191301632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n - A300222 (A117967 n).toNat

end

end A060372.P4864824408191301632

noncomputable section

/-- A060372: p(n), positive part of n when n=p(n)-q(n) with p(n), q(n), p(n)+q(n) in A005836, integers written without 2 in base 3.

Offset 0, canonical program `A060372.P4864824408191301632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372 (n : ℕ) : ℤ :=
  A060372.P4864824408191301632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A060372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061385.P4395846907397159520

`A061383(eq[2, A285093(n)])`
-/

namespace A061385.P4395846907397159520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061385.P4395846907397159520

noncomputable section

/-- A061385: Numbers n such that sum of digits = twice number of digits.

Offset 1, canonical program `A061385.P4395846907397159520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385 (n : ℕ) : ℤ :=
  A061385.P4395846907397159520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. -/
def A061385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061386.P9883862173632192436

`A061383(eq[3, A285093(n)])`
-/

namespace A061386.P9883862173632192436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061386.P9883862173632192436

noncomputable section

/-- A061386: Sum of digits = 3 times number of digits.

Offset 1, canonical program `A061386.P9883862173632192436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386 (n : ℕ) : ℤ :=
  A061386.P9883862173632192436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2146 terms. -/
def A061386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061387.P13792558151730477015

`A061383(eq[4, A285093(n)])`
-/

namespace A061387.P13792558151730477015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061387.P13792558151730477015

noncomputable section

/-- A061387: Sum of digits = 4 times number of digits.

Offset 1, canonical program `A061387.P13792558151730477015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387 (n : ℕ) : ℤ :=
  A061387.P13792558151730477015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. -/
def A061387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061388.P12309060482662442082

`A061383(eq[5, A285093(n)])`
-/

namespace A061388.P12309060482662442082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061388.P12309060482662442082

noncomputable section

/-- A061388: Sum of digits = 5 times number of digits.

Offset 1, canonical program `A061388.P12309060482662442082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388 (n : ℕ) : ℤ :=
  A061388.P12309060482662442082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2480 terms. -/
def A061388.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A061911.P12840697510039333381

`sqrt(A004159(A061910(n+1)))`
-/

namespace A061911.P12840697510039333381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A004159 (A061910 (n + 1)).toNat : ℝ)

end

end A061911.P12840697510039333381

noncomputable section

/-- A061911: Square root of the sum of the digits of k^2 when this sum is a square.

Offset 1, canonical program `A061911.P12840697510039333381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061911.P12840697510039333381.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061911.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064579.P6357362564671584677

`A064786(A054082(A064786(n+1)))`
-/

namespace A064579.P6357362564671584677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (A054082 (A064786 (n + 1)).toNat).toNat

end

end A064579.P6357362564671584677

noncomputable section

/-- A064579: Inverse permutation to A054082.

Offset 1, canonical program `A064579.P6357362564671584677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579 (n : ℕ) : ℤ :=
  A064579.P6357362564671584677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8090 terms. -/
def A064579.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070990.P8890907964988409263

`Δ[A324337(A003188(n+2))]`
-/

namespace A070990.P8890907964988409263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070990.P8890907964988409263

noncomputable section

/-- A070990: First differences of A002487.

Offset 0, canonical program `A070990.P8890907964988409263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070990 (n : ℕ) : ℤ :=
  A070990.P8890907964988409263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079250.P2253225547210677790

`record[A079251(n+1)-1-a(n-1)]` with `a(0)=4`
-/

namespace A079250.P2253225547210677790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A079251 (n + 1) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079250.P2253225547210677790

noncomputable section

/-- A079250: Even numbers in A079000.

Offset 1, canonical program `A079250.P2253225547210677790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079250 (n : ℕ) : ℤ :=
  A079250.P2253225547210677790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079250.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080101.P17293988866175764959

`A366833(n+1)-1`
-/

namespace A080101.P17293988866175764959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366833 (n + 1) - 1

end

end A080101.P17293988866175764959

noncomputable section

/-- A080101: Number of prime powers in all composite numbers between n-th prime and next prime.

Offset 1, canonical program `A080101.P17293988866175764959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101 (n : ℕ) : ℤ :=
  A080101.P17293988866175764959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080101.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084820.P7694671206461547684

`lt[A000203(n+1), A121048(n+1)]+1`
-/

namespace A084820.P7694671206461547684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084820.P7694671206461547684

noncomputable section

/-- A084820: Numbers n such that n, sigma(n) and phi(n) form an integer triangle, where sigma=A000203 is the divisor sum and phi=A000010 the totient.

Offset 1, canonical program `A084820.P7694671206461547684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820 (n : ℕ) : ℤ :=
  (A084820.P7694671206461547684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087692.P14815720998810141369

`A115070(A282779(n+1))`
-/

namespace A087692.P14815720998810141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115070 (A282779 (n + 1)).toNat

end

end A087692.P14815720998810141369

noncomputable section

/-- A087692: Number of cubes in multiplicative group modulo n.

Offset 1, canonical program `A087692.P14815720998810141369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692 (n : ℕ) : ℤ :=
  A087692.P14815720998810141369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088232.P18376775273542459675

`lt[A354099(n+1), 1]+1`
-/

namespace A088232.P18376775273542459675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088232.P18376775273542459675

noncomputable section

/-- A088232: Numbers k such that 3 does not divide phi(k).

Offset 1, canonical program `A088232.P18376775273542459675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232 (n : ℕ) : ℤ :=
  (A088232.P18376775273542459675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090780.P1948436138477558002

`A299822(n+1)/2^A001221(n+1)`
-/

namespace A090780.P1948436138477558002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A090780.P1948436138477558002

noncomputable section

/-- A090780: a(n) = n*Product_{p prime, p|n} (p - 1)/2.

Offset 1, canonical program `A090780.P1948436138477558002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A299822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090780.P1948436138477558002.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A299822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093873.P2224361996583993977

`A295515(A233279(n+1)+1)`
-/

namespace A093873.P2224361996583993977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A233279 (n + 1) + 1).toNat

end

end A093873.P2224361996583993977

noncomputable section

/-- A093873: Numerators in Kepler's tree of harmonic fractions.

Offset 1, canonical program `A093873.P2224361996583993977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873 (n : ℕ) : ℤ :=
  A093873.P2224361996583993977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095083.P9414976609862842338

`record[and(1, A182535(n+1))*A000040(n+1)]`
-/

namespace A095083.P9414976609862842338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A182535 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095083.P9414976609862842338

noncomputable section

/-- A095083: Fibodious primes, i.e., primes p whose Zeckendorf-expansion A014417(p) contains an odd number of 1-fibits.

Offset 1, canonical program `A095083.P9414976609862842338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083 (n : ℕ) : ℤ :=
  A095083.P9414976609862842338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A095083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099103.P14963529761325271933

`lt[A055642(A225530(n)), A055642(n)]`
-/

namespace A099103.P14963529761325271933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099103.P14963529761325271933

noncomputable section

/-- A099103: Natural numbers n with more digits than Euler totient phi(n).

Offset 1, canonical program `A099103.P14963529761325271933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103 (n : ℕ) : ℤ :=
  (A099103.P14963529761325271933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104324.P1859779613873930843

`A007895(n)+A213911(n)`
-/

namespace A104324.P1859779613873930843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + A213911 n

end

end A104324.P1859779613873930843

noncomputable section

/-- A104324: The Fibonacci word over the nonnegative integers; or, the number of runs of identical bits in the binary Zeckendorf representation of n.

Offset 0, canonical program `A104324.P1859779613873930843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324 (n : ℕ) : ℤ :=
  A104324.P1859779613873930843.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, A213911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106365.P1754909470558632243

`A306896(A254667(n+1))/A254667(n+1)`
-/

namespace A106365.P1754909470558632243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (A254667 (n + 1)).toNat : ℚ) / (A254667 (n + 1) : ℚ)

end

end A106365.P1754909470558632243

noncomputable section

/-- A106365: Number of necklaces with n beads of 3 colors, no 2 adjacent beads the same color.

Offset 1, canonical program `A106365.P1754909470558632243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106365.P1754909470558632243.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106761.P9151467794573401177

`∩[A061239(n+1), A306510(n+1)]`
-/

namespace A106761.P9151467794573401177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106761.P9151467794573401177

noncomputable section

/-- A106761: Primes with digit sum = 22.

Offset 1, canonical program `A106761.P9151467794573401177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761 (n : ℕ) : ℤ :=
  (A106761.P9151467794573401177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106770.P17983658334318701957

`∩[A062336(n+1), A062340(n+1)]`
-/

namespace A106770.P17983658334318701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106770.P17983658334318701957

noncomputable section

/-- A106770: Primes with digit sum = 35.

Offset 1, canonical program `A106770.P17983658334318701957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770 (n : ℕ) : ℤ :=
  (A106770.P17983658334318701957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. -/
def A106770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107473.P616088054207537606

`lcm(n+1, A121048(n+1))/(n+1)`
-/

namespace A107473.P616088054207537606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A121048 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A107473.P616088054207537606

noncomputable section

/-- A107473: Sum of numerator and denominator of Product_{p|n, p prime} (1 - 1/p).

Offset 1, canonical program `A107473.P616088054207537606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107473.P616088054207537606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107890.P9207094795219345944

`∪[3*A007645(n+1), A108164(n+1)]`
-/

namespace A107890.P9207094795219345944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107890.P9207094795219345944

noncomputable section

/-- A107890: Semiprimes that are the product of two members of A007645.

Offset 1, canonical program `A107890.P9207094795219345944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890 (n : ℕ) : ℤ :=
  (A107890.P9207094795219345944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111409.P14392495408672039637

`1-Δ[A219029(A028310(n))]`
-/

namespace A111409.P14392495408672039637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A111409.P14392495408672039637

noncomputable section

/-- A111409: a(n) = f(f(n+1)) - f(f(n)), where f(0)=0, and for m>0, f(m) = phi(m) = A000010(m).

Offset 0, canonical program `A111409.P14392495408672039637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409 (n : ℕ) : ℤ :=
  A111409.P14392495408672039637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112310.P5733942079183269524

`A200648(n+2)-1`
-/

namespace A112310.P5733942079183269524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200648 (n + 2) - 1

end

end A112310.P5733942079183269524

noncomputable section

/-- A112310: Number of terms in lazy Fibonacci representation of n.

Offset 0, canonical program `A112310.P5733942079183269524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310 (n : ℕ) : ℤ :=
  A112310.P5733942079183269524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114871.P5701746807057101

`lt[acot(1), A134269(n+1)]+1`
-/

namespace A114871.P5701746807057101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A114871.P5701746807057101

noncomputable section

/-- A114871: Numbers of the form (p-1)p^k (where p is a prime and k>=0) in ascending order.

Offset 1, canonical program `A114871.P5701746807057101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871 (n : ℕ) : ℤ :=
  (A114871.P5701746807057101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115975.P17265388920896280111

`record[n/a(A318464(n))]` with `a(0)=1`
-/

namespace A115975.P17265388920896280111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A318464 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115975.P17265388920896280111

noncomputable section

/-- A115975: Numbers of the form p^k, where p is a prime and k is a Fibonacci number.

Offset 1, canonical program `A115975.P17265388920896280111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115975.P17265388920896280111.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6617 terms. -/
def A115975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116543.P12066350740739985589

`A213911(∑[A284749(n+2)]-1)`
-/

namespace A116543.P12066350740739985589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A116543.P12066350740739985589

noncomputable section

/-- A116543: Number of terms in greedy representation of n in terms of the Lucas numbers.

Offset 0, canonical program `A116543.P12066350740739985589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543 (n : ℕ) : ℤ :=
  A116543.P12066350740739985589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8542 terms. -/
def A116543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118734.P5567306300113816848

`∩[A118730(n+1), A118733(n+1)]`
-/

namespace A118734.P5567306300113816848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118734.P5567306300113816848

noncomputable section

/-- A118734: Numbers k such that 2^k and 3^k have even digit sum.

Offset 1, canonical program `A118734.P5567306300113816848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734 (n : ℕ) : ℤ :=
  (A118734.P5567306300113816848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. -/
def A118734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120350.P15236837773027403607

`∩[A033950(n+1), A120351(n+1)]`
-/

namespace A120350.P15236837773027403607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120350.P15236837773027403607

noncomputable section

/-- A120350: Refactorable numbers k such that the number of odd divisors and the number of even divisors of k are both divisors of k.

Offset 1, canonical program `A120350.P15236837773027403607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350 (n : ℕ) : ℤ :=
  (A120350.P15236837773027403607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123476.P7575150719699719929

`A373319((n+1)!)`
-/

namespace A123476.P7575150719699719929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373319 (Nat.factorial (n + 1))

end

end A123476.P7575150719699719929

noncomputable section

/-- A123476: a(n) = (n!)^2/phi(n!), where phi is Euler's totient function.

Offset 1, canonical program `A123476.P7575150719699719929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476 (n : ℕ) : ℤ :=
  A123476.P7575150719699719929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373319, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129633.P6237499131116269407

`A000040(A058049(n+1))`
-/

namespace A129633.P6237499131116269407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058049 (n + 1)).toNat

end

end A129633.P6237499131116269407

noncomputable section

/-- A129633: The sum of the decimal digits of all primes up to and including the primes listed equals a prime.

Offset 1, canonical program `A129633.P6237499131116269407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633 (n : ℕ) : ℤ :=
  A129633.P6237499131116269407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A129633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138122.P10225849521028141504

`∪[A289353(n+1)+4, A289353(n+1)]`
-/

namespace A138122.P10225849521028141504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A138122.P10225849521028141504

noncomputable section

/-- A138122: Cousin primes, the lower of which is 7 (mod 10).

Offset 1, canonical program `A138122.P10225849521028141504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122 (n : ℕ) : ℤ :=
  (A138122.P10225849521028141504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A044441.P9775668103846057135

`eq[A300222(n+1), A338242(A300222(n+5))]`
-/

namespace A044441.P9775668103846057135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (A300222 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044441.P9775668103846057135

noncomputable section

/-- A044441: Numbers n such that string 2,2 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044441.P9775668103846057135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441 (n : ℕ) : ℤ :=
  (A044441.P9775668103846057135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A044441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048517.P16047989077348899026

`∩[A062336(n+1), A117674(n+1)]`
-/

namespace A048517.P16047989077348899026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048517.P16047989077348899026

noncomputable section

/-- A048517: Primes whose sum of digits is the perfect number 28.

Offset 1, canonical program `A048517.P16047989077348899026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517 (n : ℕ) : ℤ :=
  (A048517.P16047989077348899026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A048517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055931.P16098682155717244574

`∩[A055933(n+1), A254621(n+1)]`
-/

namespace A055931.P16098682155717244574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055931.P16098682155717244574

noncomputable section

/-- A055931: Product of the digits of n divides the sum of the digits of n.

Offset 1, canonical program `A055931.P16098682155717244574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931 (n : ℕ) : ℤ :=
  (A055931.P16098682155717244574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A055931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119450.P10853588733666764449

`A000040(A200260(n+1))`
-/

namespace A119450.P10853588733666764449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A200260 (n + 1)).toNat

end

end A119450.P10853588733666764449

noncomputable section

/-- A119450: Primes with odd digit sum.

Offset 1, canonical program `A119450.P10853588733666764449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119450 (n : ℕ) : ℤ :=
  A119450.P10853588733666764449.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A200260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119450.provenance : SequenceMachineLib.Provenance := .conditional

