import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C051
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
import Seq.B001.C013
import Seq.B001.C014
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A402273.P12033226829147703741

`A007913(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402273.P12033226829147703741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

end

end A402273.P12033226829147703741

noncomputable section

/-- A402273: Bisection of A007913: a(n) = A007913(2*n+1).

Offset 0, canonical program `A402273.P12033226829147703741`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(2*n+1)` (program `A402273.P12033226829147703741`, by `A402273.P12033226829147703741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402273 (n : ℕ) : ℤ :=
  A402273.P12033226829147703741.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(2*n+1)` (program `A402273.P12033226829147703741`, by `A402273.P12033226829147703741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393917.P7977796838059119531

`A000720(A006094(n+1))-A000720(A001043(n+1))`
-/

namespace A393917.P7977796838059119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat - A000720 (A001043 (n + 1)).toNat

end

end A393917.P7977796838059119531

noncomputable section

/-- A393917: Number of primes strictly between (prime(n) + prime(n+1)) and (prime(n) * prime(n+1)).

Offset 1, canonical program `A393917.P7977796838059119531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917 (n : ℕ) : ℤ :=
  A393917.P7977796838059119531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395133.P17198686885299587289

`1+n+1-2^(n+2)+A122367(n+1)+A006318(n+1)`
-/

namespace A395133.P17198686885299587289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + A122367 (n + 1) + A006318 (n + 1)

end

end A395133.P17198686885299587289

noncomputable section

/-- A395133: Number of monotone and order decreasing transformations on an n-chain.

Offset 1, canonical program `A395133.P17198686885299587289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133 (n : ℕ) : ℤ :=
  A395133.P17198686885299587289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396093.P6069863032043368090

`∑{#}[n-1, A166482(n-#-1)*A166482(#)]`
-/

namespace A396093.P6069863032043368090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A166482 ((n : ℤ) - (k : ℤ) - 1).toNat * A166482 k

end

end A396093.P6069863032043368090

noncomputable section

/-- A396093: G.f. A(x) = B(B(B(x))), the third iteration of B(x) = x/(1-x)^2.

Offset 0, canonical program `A396093.P6069863032043368090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093 (n : ℕ) : ℤ :=
  A396093.P6069863032043368090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396250.P17131354137523979771

`(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n`
-/

namespace A396250.P17131354137523979771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ) + 1) / 2 * (3 : ℝ) ^ ((n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ) : ℝ) - (2 ^ n : ℝ)

end

end A396250.P17131354137523979771

noncomputable section

/-- A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

Offset 1, canonical program `A396250.P17131354137523979771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396250.P17131354137523979771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396253.P3729736002703382672

`A000196(n+1)*A048656(n+1)`
-/

namespace A396253.P3729736002703382672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A048656 (n + 1)

end

end A396253.P3729736002703382672

noncomputable section

/-- A396253: Sum of Sum_{k=1..n} S(k) over all completely multiplicative sign sequences S of length n.

Offset 1, canonical program `A396253.P3729736002703382672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396348.P16602830164095250324

`A000040(col(n)+1)^A249344(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396348.P16602830164095250324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.triCol n + 1) : ℚ) ^ (A249344 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1)) : ℤ)

end

end A396348.P16602830164095250324

noncomputable section

/-- A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

Offset 1, canonical program `A396348.P16602830164095250324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396348.P16602830164095250324.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397106.P13058087477262254909

`n+1+A275314(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397106.P13058087477262254909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A275314 (n + 1)

end

end A397106.P13058087477262254909

noncomputable section

/-- A397106: a(n) = n + A275314(n), for n >= 1.

Offset 1, canonical program `A397106.P13058087477262254909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106 (n : ℕ) : ℤ :=
  A397106.P13058087477262254909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397419.P13214611387662659643

`∑{#}[n, C(n, #)*A005043(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397419.P13214611387662659643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A005043 k ^ 2

end

end A397419.P13214611387662659643

noncomputable section

/-- A397419: a(n) = Sum_{j=0..n} binomial(n, j) * A005043(j)^2.

Offset 0, canonical program `A397419.P13214611387662659643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419 (n : ℕ) : ℤ :=
  A397419.P13214611387662659643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397716.P910235112666114565

`A397715(n)-2*A002109(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397716.P910235112666114565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397715 n - 2 * A002109 n

end

end A397716.P910235112666114565

noncomputable section

/-- A397716: a(n) = A397715(n) - 2*A002109(n).

Offset 0, canonical program `A397716.P910235112666114565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716 (n : ℕ) : ℤ :=
  A397716.P910235112666114565.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398186.P9841724747001061415

`1/(n+1)*∑{#}[n, A000897(#)*A000897(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398186.P9841724747001061415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), A000897 k * A000897 (n - k) : ℤ) : ℚ)

end

end A398186.P9841724747001061415

noncomputable section

/-- A398186: a(n) = (1/n) * Sum_{k=0..n-1} A000897(k) * A000897(n-1-k), where A000897(k) = (4*k)!/((2*k)!*k!^2).

Offset 1, canonical program `A398186.P9841724747001061415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398186.P9841724747001061415.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398650.P16240165279224502368

`A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1`
-/

namespace A398650.P16240165279224502368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A005867 (n + 1) - A005867 n - (n + 1 : ℤ) + 1

end

end A398650.P16240165279224502368

noncomputable section

/-- A398650: Number of composite numbers less than the n-th primorial that have a common factor greater than 1 with the (n-1)-th primorial.

Offset 1, canonical program `A398650.P16240165279224502368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650 (n : ℕ) : ℤ :=
  A398650.P16240165279224502368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398767.P8975492673232870665

`(n+2)^3-A090025(n+1)-1`
-/

namespace A398767.P8975492673232870665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A090025 (n + 1) - 1

end

end A398767.P8975492673232870665

noncomputable section

/-- A398767: a(n) is the number of grid points in an n X n X n cube that cannot be connected by a straight line to a given corner without passing through another grid point.

Offset 1, canonical program `A398767.P8975492673232870665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398767 (n : ℕ) : ℤ :=
  A398767.P8975492673232870665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399173.P18150784658567783580

`∑{#}[n, (#+1)*A004148(#)*A004148(n-#)]`
-/

namespace A399173.P18150784658567783580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A004148 k * A004148 (n - k)

end

end A399173.P18150784658567783580

noncomputable section

/-- A399173: First column of the derivative-compositional Riordan array psi_1(f) = (f^[1](x)*(f^[1])'(x)/x, f^[1](x)) = (f(x)*f'(x)/x, f(x)), where f(x) = x*s(x) and s(x) is the g.f. of A004148 (RNA secondary structures).

Offset 0, canonical program `A399173.P18150784658567783580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399173 (n : ℕ) : ℤ :=
  A399173.P18150784658567783580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`
-/

namespace A399204.P11534051387213006384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080079 n

end

end A399204.P11534051387213006384

noncomputable section

/-- A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

Offset 0, canonical program `A399204.P11534051387213006384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204 (n : ℕ) : ℤ :=
  A399204.P11534051387213006384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`
-/

namespace A400202.P11404524350164515713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060715 d

end

end A400202.P11404524350164515713

noncomputable section

/-- A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

Offset 1, canonical program `A400202.P11404524350164515713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202 (n : ℕ) : ℤ :=
  A400202.P11404524350164515713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401198.P6175115026263044691

`3*2^n*A191371(n)-A191371(n+1)`
-/

namespace A401198.P6175115026263044691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) * A191371 n - A191371 (n + 1)

end

end A401198.P6175115026263044691

noncomputable section

/-- A401198: Number of ways to add one improperly colored vertex to a properly colored graph of n-1 vertices.

Offset 1, canonical program `A401198.P6175115026263044691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401198 (n : ℕ) : ℤ :=
  A401198.P6175115026263044691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401407.P9579087663748494119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A101455 (n + 1)

end

end A401407.P9579087663748494119

noncomputable section

/-- A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

Offset 1, canonical program `A401407.P9579087663748494119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407 (n : ℕ) : ℤ :=
  A401407.P9579087663748494119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401546.P12281128147999140787

`A018900(n+2)-A018900(n+1)`
-/

namespace A401546.P12281128147999140787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 2) - A018900 (n + 1)

end

end A401546.P12281128147999140787

noncomputable section

/-- A401546: First differences of A018900.

Offset 1, canonical program `A401546.P12281128147999140787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401546 (n : ℕ) : ℤ :=
  A401546.P12281128147999140787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401791.P10376803313853072742

`A063524(n+1)+A010051(n+1)+A107078(n+1)`
-/

namespace A401791.P10376803313853072742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A010051 (n + 1) + A107078 (n + 1)

end

end A401791.P10376803313853072742

noncomputable section

/-- A401791: a(n) = 1 if n is 1, a prime or n is not squarefree, otherwise 0.

Offset 1, canonical program `A401791.P10376803313853072742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401791 (n : ℕ) : ℤ :=
  A401791.P10376803313853072742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401826.P9138598437203215255

`A401824(n+1)-A008472(n+1)`
-/

namespace A401826.P9138598437203215255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401824 (n + 1) - A008472 (n + 1)

end

end A401826.P9138598437203215255

noncomputable section

/-- A401826: a(n) = Sum_{d|n, d>1} d * pi(d-1) for n>=1, where pi = A000720.

Offset 1, canonical program `A401826.P9138598437203215255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401826 (n : ℕ) : ℤ :=
  A401826.P9138598437203215255.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401863.P5101828983696587754

`A062774(n+1)-A001221(n+1)`
-/

namespace A401863.P5101828983696587754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A001221 (n + 1)

end

end A401863.P5101828983696587754

noncomputable section

/-- A401863: a(n) = Sum_{d|n, d>1} pi(d-1), where pi = A000720.

Offset 1, canonical program `A401863.P5101828983696587754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401863 (n : ℕ) : ℤ :=
  A401863.P5101828983696587754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401967.P9455221643257520614

`n!²/2^(n-A000120(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401967.P9455221643257520614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (2 : ℚ) ^ ((n : ℤ) - A000120 n : ℤ)

end

end A401967.P9455221643257520614

noncomputable section

/-- A401967: a(n) = n!^2 / 2^(n - A000120(n)).

Offset 0, canonical program `A401967.P9455221643257520614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401967.P9455221643257520614.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402184.P4793468992118412800

`A000203(n+1)-A048250(n+1)+A034444(n+1)`
-/

namespace A402184.P4793468992118412800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048250 (n + 1) + A034444 (n + 1)

end

end A402184.P4793468992118412800

noncomputable section

/-- A402184: a(n) = Sum_{d|n} d^(1 - mu(d)^2).

Offset 1, canonical program `A402184.P4793468992118412800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402184 (n : ℕ) : ℤ :=
  A402184.P4793468992118412800.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394112.P7582498751835381020

`A000108(n)+A007852(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394112.P7582498751835381020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A007852 (n + 1)

end

end A394112.P7582498751835381020

noncomputable section

/-- A394112: a(n) = A000108(n-1)+A007852(n).

Offset 1, canonical program `A394112.P7582498751835381020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394112 (n : ℕ) : ℤ :=
  A394112.P7582498751835381020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393588.P11221701577275867718

`∑[∑[∑[A369416(4+n)]]]`
-/

namespace A393588.P11221701577275867718
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369416 (4 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393588.P11221701577275867718

noncomputable section

/-- A393588: Expansion of 1/((1-z)*(1-2*z)*(1-3*z))^3.

Offset 0, canonical program `A393588.P11221701577275867718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A393588 (n : ℕ) : ℤ :=
  A393588.P11221701577275867718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A393588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P11922313531072709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (n + 1)).toNat

end

end A393609.P11922313531072709366

noncomputable section

/-- A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

Offset 1, canonical program `A393609.P11922313531072709366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609 (n : ℕ) : ℤ :=
  A393609.P11922313531072709366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`
-/

namespace A393803.P3807868099825041291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P3807868099825041291

noncomputable section

/-- A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

Offset 1, canonical program `A393803.P3807868099825041291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803 (n : ℕ) : ℤ :=
  (A393803.P3807868099825041291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393981.P9621053353220262288

`lt[A003557(n+1), A053669(n+1)]+1`
-/

namespace A393981.P9621053353220262288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393981.P9621053353220262288

noncomputable section

/-- A393981: Numbers k such that A003557(k) < A053669(k).

Offset 1, canonical program `A393981.P9621053353220262288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7428 terms. -/
def A393981 (n : ℕ) : ℤ :=
  (A393981.P9621053353220262288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7428 terms. -/
def A393981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`
-/

namespace A394217.P17364854151603139210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A060973 (a (n - 1)).toNat

end

end A394217.P17364854151603139210

noncomputable section

/-- A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

Offset 1, canonical program `A394217.P17364854151603139210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217 (n : ℕ) : ℤ :=
  A394217.P17364854151603139210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394789.P12924523429814917951

`∑[A353670(1+n)]`
-/

namespace A394789.P12924523429814917951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P12924523429814917951

noncomputable section

/-- A394789: Number of positive integers <= n with exactly two odd divisors.

Offset 1, canonical program `A394789.P12924523429814917951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789 (n : ℕ) : ℤ :=
  A394789.P12924523429814917951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394869.P11237424373232616846

`floor(sqrt(A259361(n²))/2*n)+n`
-/

namespace A394869.P11237424373232616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A259361 (n ^ 2) : ℝ) / 2 * (n : ℝ)⌋ + (n : ℤ)

end

end A394869.P11237424373232616846

noncomputable section

/-- A394869: a(n) = floor(n*(sqrt(n - 1) + 2)/2).

Offset 0, canonical program `A394869.P11237424373232616846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A394869 (n : ℕ) : ℤ :=
  A394869.P11237424373232616846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A394869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395270.P17244589602935654934

`filter[A005117(n+1), A323170(#)]`
-/

namespace A395270.P17244589602935654934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P17244589602935654934

noncomputable section

/-- A395270: Numbers that are radicals of abundant numbers.

Offset 1, canonical program `A395270.P17244589602935654934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270 (n : ℕ) : ℤ :=
  A395270.P17244589602935654934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`
-/

namespace A395520.P8890934817172298303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 2) - A036349 (n + 1)

end

end A395520.P8890934817172298303

noncomputable section

/-- A395520: First differences of A036349.

Offset 1, canonical program `A395520.P8890934817172298303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520 (n : ℕ) : ℤ :=
  A395520.P8890934817172298303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395676.P1926156595101369630

`lt[(1+n)%A053827(n+1), 1]+1`
-/

namespace A395676.P1926156595101369630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A053827 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A395676.P1926156595101369630

noncomputable section

/-- A395676: Numbers which are divisible by the sum of their base-6 digits.

Offset 1, canonical program `A395676.P1926156595101369630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A395676 (n : ℕ) : ℤ :=
  (A395676.P1926156595101369630.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A395676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396648.P12511411540174210681

`A133053(n+1)-A172361(n+1)`
-/

namespace A396648.P12511411540174210681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133053 (n + 1) - A172361 (n + 1)

end

end A396648.P12511411540174210681

noncomputable section

/-- A396648: Row sums of A396585.

Offset 0, canonical program `A396648.P12511411540174210681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648 (n : ℕ) : ℤ :=
  A396648.P12511411540174210681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396722.P14914588847797964893

`A081294(n)-A115140(n)`
-/

namespace A396722.P14914588847797964893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A115140 n

end

end A396722.P14914588847797964893

noncomputable section

/-- A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

Offset 0, canonical program `A396722.P14914588847797964893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722 (n : ℕ) : ℤ :=
  A396722.P14914588847797964893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396939.P3152846793651132362

`comp[A173024(n+1)]`
-/

namespace A396939.P3152846793651132362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P3152846793651132362

noncomputable section

/-- A396939: Numbers having isolated ones or isolated double ones in their binary representations.

Offset 1, canonical program `A396939.P3152846793651132362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939 (n : ℕ) : ℤ :=
  (A396939.P3152846793651132362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397112.P5391708724886906443

`A000040(A397111(1+n))`
-/

namespace A397112.P5391708724886906443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397111 (1 + n)).toNat

end

end A397112.P5391708724886906443

noncomputable section

/-- A397112: Primes indexed by A397111.

Offset 1, canonical program `A397112.P5391708724886906443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112 (n : ℕ) : ℤ :=
  A397112.P5391708724886906443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397286.P5998066170028131211

`A397284(C(row(n)+1, 2)+col(n))/2^col(n)`
-/

namespace A397286.P5998066170028131211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397284 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A397286.P5998066170028131211

noncomputable section

/-- A397286: Triangle read by rows: T(n, k) = 2^(n - k) * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

Offset 0, canonical program `A397286.P5998066170028131211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397286.P5998066170028131211.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397383.P15673520071357837229

`A243116(n)-A394186(n)`
-/

namespace A397383.P15673520071357837229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n - A394186 n

end

end A397383.P15673520071357837229

noncomputable section

/-- A397383: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * binomial(n+2*k,k-1).

Offset 0, canonical program `A397383.P15673520071357837229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A397383 (n : ℕ) : ℤ :=
  A397383.P15673520071357837229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A397383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397422.P5494168866610696871

`A046899(n)*A355007(n)`
-/

namespace A397422.P5494168866610696871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A355007 n

end

end A397422.P5494168866610696871

noncomputable section

/-- A397422: Triangle read by rows: T(n, k) = binomial(n+k, n) * |Stirling1(n, k)| * n^k.

Offset 0, canonical program `A397422.P5494168866610696871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422 (n : ℕ) : ℤ :=
  A397422.P5494168866610696871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`
-/

namespace A397469.P12444766347461370515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054406 (n + 1) - 1).toNat

end

end A397469.P12444766347461370515

noncomputable section

/-- A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

Offset 1, canonical program `A397469.P12444766347461370515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469 (n : ℕ) : ℤ :=
  A397469.P12444766347461370515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397648.P3478274364362355387

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000002(#+1)]`
-/

namespace A397648.P3478274364362355387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000002 (k + 1) : ℚ)

end

end A397648.P3478274364362355387

noncomputable section

/-- A397648: Inverse binomial transform of Kolakoski sequence A000002.

Offset 0, canonical program `A397648.P3478274364362355387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A397648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397648.P3478274364362355387.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A397648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397787.P9925276150095344826

`∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]`
-/

namespace A397787.P9925276150095344826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A080513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A397787.P9925276150095344826

noncomputable section

/-- A397787: Number of even primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397787.P9925276150095344826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787 (n : ℕ) : ℤ :=
  A397787.P9925276150095344826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397788.P10557389323205216915

`∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]`
-/

namespace A397788.P10557389323205216915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397788.P10557389323205216915

noncomputable section

/-- A397788: Number of odd primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397788.P10557389323205216915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788 (n : ℕ) : ℤ :=
  A397788.P10557389323205216915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397908.P8810744272400262758

`n+a(n-A001223(n))` with `a(0)=1`
-/

namespace A397908.P8810744272400262758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + a ((n : ℤ) - A001223 n).toNat

end

end A397908.P8810744272400262758

noncomputable section

/-- A397908: a(1) = 1; a(n) = a(n-d(n)) + n - 1 for n > 1, where d(n) = prime(n) - prime(n-1).

Offset 1, canonical program `A397908.P8810744272400262758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908 (n : ℕ) : ℤ :=
  (A397908.P8810744272400262758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398373.P12839850949891993134

`A398477(A010054(n)+n-1)`
-/

namespace A398373.P12839850949891993134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398477 (A010054 n + ((n : ℤ) - 1)).toNat

end

end A398373.P12839850949891993134

noncomputable section

/-- A398373: Triangle read by rows: T(n, k) = binomial(n + k - 1, k) * n^(n - k).

Offset 0, canonical program `A398373.P12839850949891993134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398373 (n : ℕ) : ℤ :=
  A398373.P12839850949891993134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398471.P17801441405953118035

`∑[∑[A157893(1+n)]]`
-/

namespace A398471.P17801441405953118035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P17801441405953118035

noncomputable section

/-- A398471: Minimum total search cost of an optimal binary search tree over n keys in sorted order, where key i has access frequency i.

Offset 1, canonical program `A398471.P17801441405953118035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471 (n : ℕ) : ℤ :=
  A398471.P17801441405953118035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398781.P5177835371061370946

`∑[runs[and(1, A053827(n))]]`
-/

namespace A398781.P5177835371061370946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053827 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398781.P5177835371061370946

noncomputable section

/-- A398781: If k appears, 6*k does not.

Offset 1, canonical program `A398781.P5177835371061370946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A398781 (n : ℕ) : ℤ :=
  (A398781.P5177835371061370946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A398781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398954.P11143497039519897158

`filter[A005117(n+1), A162289(#)]`
-/

namespace A398954.P11143497039519897158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P11143497039519897158

noncomputable section

/-- A398954: 7-rough squarefree numbers: squarefree numbers whose prime factors are all greater than 5.

Offset 1, canonical program `A398954.P11143497039519897158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954 (n : ℕ) : ℤ :=
  A398954.P11143497039519897158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`
-/

namespace A399262.P9814319546926637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + A057944 n

end

end A399262.P9814319546926637261

noncomputable section

/-- A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

Offset 1, canonical program `A399262.P9814319546926637261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262 (n : ℕ) : ℤ :=
  A399262.P9814319546926637261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399306.P3054891255912208153

`comp[A399305(n+1)-1]+1`
-/

namespace A399306.P3054891255912208153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399305 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399306.P3054891255912208153

noncomputable section

/-- A399306: Integers whose minimal Lucas representation (A130310) does not end in a 0 which if removed results in a valid minimal Lucas representation of another integer.

Offset 1, canonical program `A399306.P3054891255912208153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A399306 (n : ℕ) : ℤ :=
  (A399306.P3054891255912208153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A399306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399490.P15700466457018084356

`A219054(1+n)-A212760(n)`
-/

namespace A399490.P15700466457018084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (1 + n) - A212760 n

end

end A399490.P15700466457018084356

noncomputable section

/-- A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

Offset 1, canonical program `A399490.P15700466457018084356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490 (n : ℕ) : ℤ :=
  A399490.P15700466457018084356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399787.P2495405610167651069

`A055642(n-n*(1-val(∏{p}[n^3, #], 11)))`
-/

namespace A399787.P2495405610167651069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat

end

end A399787.P2495405610167651069

noncomputable section

/-- A399787: Length of the longest palindromic substring of n written in base 10.

Offset 0, canonical program `A399787.P2495405610167651069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399787 (n : ℕ) : ℤ :=
  A399787.P2495405610167651069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399924.P13669418604275787557

`eq[1, gcd(2, A007429(n+1))]+1`
-/

namespace A399924.P13669418604275787557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399924.P13669418604275787557

noncomputable section

/-- A399924: Numbers k such that A007429(k) is odd.

Offset 1, canonical program `A399924.P13669418604275787557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399924 (n : ℕ) : ℤ :=
  (A399924.P13669418604275787557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399925.P15039413478081315609

`eq[1, (2/gcd(2, A007429(n+1)))%2]+1`
-/

namespace A399925.P15039413478081315609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 / (Int.gcd 2 (A007429 (n + 1)) : ℚ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399925.P15039413478081315609

noncomputable section

/-- A399925: Numbers k such that A007429(k) is even.

Offset 1, canonical program `A399925.P15039413478081315609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399925 (n : ℕ) : ℤ :=
  (A399925.P15039413478081315609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399943.P13376487114959424415

`∑{#}[n-2, A350212(C(n+1, 2)+#+2)]`
-/

namespace A399943.P13376487114959424415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A350212 (Nat.choose (n + 1) 2 + (k + 2))

end

end A399943.P13376487114959424415

noncomputable section

/-- A399943: Number of endofunctions on [n] having at least two isolated fixed points.

Offset 0, canonical program `A399943.P13376487114959424415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399943 (n : ℕ) : ℤ :=
  A399943.P13376487114959424415.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`
-/

namespace A400324.P3198541763604547307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A005369 (n + 1) + (n + 2 : ℤ)).toNat

end

end A400324.P3198541763604547307

noncomputable section

/-- A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

Offset 1, canonical program `A400324.P3198541763604547307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324 (n : ℕ) : ℤ :=
  A400324.P3198541763604547307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400698.P14154291513535149740

`A124897(n)+a(n-1)` with `a(0)=1`
-/

namespace A400698.P14154291513535149740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124897 n + a (n - 1)

end

end A400698.P14154291513535149740

noncomputable section

/-- A400698: a(n) = Sum_{k=0..n} mu(k^2 + 1).

Offset 0, canonical program `A400698.P14154291513535149740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698 (n : ℕ) : ℤ :=
  A400698.P14154291513535149740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`
-/

namespace A400770.P6014380429317486619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6014380429317486619

noncomputable section

/-- A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

Offset 0, canonical program `A400770.P6014380429317486619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770 (n : ℕ) : ℤ :=
  A400770.P6014380429317486619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400791.P15948439945522063166

`∑{d}[1+n, #*A140106(#)]`
-/

namespace A400791.P15948439945522063166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140106 d

end

end A400791.P15948439945522063166

noncomputable section

/-- A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

Offset 1, canonical program `A400791.P15948439945522063166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791 (n : ℕ) : ℤ :=
  A400791.P15948439945522063166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402294.P7736374336321780923

`A402292(n)-n-1`
-/

namespace A402294.P7736374336321780923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402292 n - (n : ℤ) - 1

end

end A402294.P7736374336321780923

noncomputable section

/-- A402294: a(n) = number of internal crevices between the circles in an optimal arrangement of circles achieving A402292(n).

Offset 0, canonical program `A402294.P7736374336321780923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A402292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402294 (n : ℕ) : ℤ :=
  A402294.P7736374336321780923.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A402292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395088.P1994760081379151259

`2-A026465(n+2)`
-/

namespace A395088.P1994760081379151259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026465 (n + 2)

end

end A395088.P1994760081379151259

noncomputable section

/-- A395088: Fixed point of the morphism 0->011, 1->0.

Offset 0, canonical program `A395088.P1994760081379151259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088 (n : ℕ) : ℤ :=
  A395088.P1994760081379151259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395961.P9208801736051543594

`A053836(n)%2`
-/

namespace A395961.P9208801736051543594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 n) 2

end

end A395961.P9208801736051543594

noncomputable section

/-- A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395961.P9208801736051543594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961 (n : ℕ) : ℤ :=
  A395961.P9208801736051543594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395997.P11981143081767539596

`6*A070799(n+1)+1`
-/

namespace A395997.P11981143081767539596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A070799 (n + 1) + 1

end

end A395997.P11981143081767539596

noncomputable section

/-- A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

Offset 1, canonical program `A395997.P11981143081767539596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395997 (n : ℕ) : ℤ :=
  A395997.P11981143081767539596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396279.P7454295923968668205

`eq[A000079(A013632(n)), A053644(n)]`
-/

namespace A396279.P7454295923968668205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396279.P7454295923968668205

noncomputable section

/-- A396279: Integers k such that p - k = floor(log_2(k)), where p is the smallest prime strictly greater than k.

Offset 1, canonical program `A396279.P7454295923968668205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279 (n : ℕ) : ℤ :=
  (A396279.P7454295923968668205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396762.P9936943661177591468

`A396882(n+1)+A071239(n)`
-/

namespace A396762.P9936943661177591468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396882 (n + 1) + A071239 n

end

end A396762.P9936943661177591468

noncomputable section

/-- A396762: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection without having centers of all three triangles in a same symmetrical axis.

Offset 1, canonical program `A396762.P9936943661177591468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396762 (n : ℕ) : ℤ :=
  A396762.P9936943661177591468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397890.P17401045601756210256

`∑[A061017(n+1)]-A061017(n+1)`
-/

namespace A397890.P17401045601756210256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061017 (n + 1)

end

end A397890.P17401045601756210256

noncomputable section

/-- A397890: Minimum binary length of a standard-order composition with n distinct runs; bit length of A351015(n).

Offset 0, canonical program `A397890.P17401045601756210256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890 (n : ℕ) : ℤ :=
  A397890.P17401045601756210256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400366.P2437949027083987104

`∑[char[A080075(1+n)]]`
-/

namespace A400366.P2437949027083987104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P2437949027083987104

noncomputable section

/-- A400366: Number of Proth numbers <= n.

Offset 0, canonical program `A400366.P2437949027083987104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366 (n : ℕ) : ℤ :=
  (A400366.P2437949027083987104.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`
-/

namespace A400893.P8227133802892121621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400890 (n + 1) + 1

end

end A400893.P8227133802892121621

noncomputable section

/-- A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

Offset 1, canonical program `A400893.P8227133802892121621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893 (n : ℕ) : ℤ :=
  A400893.P8227133802892121621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400896.P12266202464247024985

`A400897(n+1)-A213671(n+1)`
-/

namespace A400896.P12266202464247024985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400897 (n + 1) - A213671 (n + 1)

end

end A400896.P12266202464247024985

noncomputable section

/-- A400896: a(n) = numerator(1 - (n^2 - n + 2)/2^n).

Offset 1, canonical program `A400896.P12266202464247024985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400896 (n : ℕ) : ℤ :=
  A400896.P12266202464247024985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A400478.P8710240923367081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) * A007953 (a (n - 1) + a (n - 2)).toNat

end

end A400478.P8710240923367081991

noncomputable section

/-- A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

Offset 1, canonical program `A400478.P8710240923367081991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478 (n : ℕ) : ℤ :=
  A400478.P8710240923367081991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478.provenance : SequenceMachineLib.Provenance := .conditional

