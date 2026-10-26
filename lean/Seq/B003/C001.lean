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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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

/-! ## A068983.P5879960668105085223

`A062970(n+1)-A003422(n+2)`
-/

namespace A068983.P5879960668105085223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 (n + 1) - A003422 (n + 2)

end

end A068983.P5879960668105085223

noncomputable section

/-- A068983: a(n) = Sum_{k=0..n} (k^k-k!).

Offset 1, canonical program `A068983.P5879960668105085223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068983 (n : ℕ) : ℤ :=
  A068983.P5879960668105085223.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069010.P14932719103722593844

`ceil(A005811(n)/2)`
-/

namespace A069010.P14932719103722593844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005811 n : ℚ) / 2⌉

end

end A069010.P14932719103722593844

noncomputable section

/-- A069010: Number of runs of 1's in the binary representation of n.

Offset 0, canonical program `A069010.P14932719103722593844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069010 (n : ℕ) : ℤ :=
  A069010.P14932719103722593844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071295.P10073409324982163458

`a(floor(n/2))+(1-n%2)*A000120(floor(n/2))+n%2*A023416(floor(n/2))` with `a(0)=0, a(1)=0`
-/

namespace A071295.P10073409324982163458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - ((n % 2 : ℕ) : ℤ)) * A000120 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ) * A023416 ⌊(n : ℚ) / 2⌋.toNat

end

end A071295.P10073409324982163458

noncomputable section

/-- A071295: Product of numbers of 0's and 1's in binary representation of n.

Offset 0, canonical program `A071295.P10073409324982163458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071295 (n : ℕ) : ℤ :=
  A071295.P10073409324982163458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071554.P6297629732204208795

`1/2*(A006862(n+2)+1)`
-/

namespace A071554.P6297629732204208795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A006862 (n + 2) + 1 : ℚ)

end

end A071554.P6297629732204208795

noncomputable section

/-- A071554: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 2<=i<=n.

Offset 2, canonical program `A071554.P6297629732204208795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071554 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071554.P6297629732204208795.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072609.P2032538925425816875

`A072608(n+1)*A072608(n+2)`
-/

namespace A072609.P2032538925425816875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (n + 1) * A072608 (n + 2)

end

end A072609.P2032538925425816875

noncomputable section

/-- A072609: Changing of parity of remainder A072608(n) from alternation [..010101..] to steadily 1-range [...1111..]. AC-range corresponds to 0, while DC-range labeled by 1.

Offset 1, canonical program `A072609.P2032538925425816875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072609 (n : ℕ) : ℤ :=
  A072609.P2032538925425816875.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072692.P2871588805626277779

`A024916(10^n)`
-/

namespace A072692.P2871588805626277779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (10 ^ n)

end

end A072692.P2871588805626277779

noncomputable section

/-- A072692: Sum of sigma(j) for 1<=j<=10^n, where sigma(j) is the sum of the divisors of j.

Offset 0, canonical program `A072692.P2871588805626277779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072692 (n : ℕ) : ℤ :=
  A072692.P2871588805626277779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072731.P11631103641081885778

`A065855(n+1)-A000720(n+1)`
-/

namespace A072731.P11631103641081885778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A000720 (n + 1)

end

end A072731.P11631103641081885778

noncomputable section

/-- A072731: Difference of numbers of composite and prime numbers <= n.

Offset 1, canonical program `A072731.P11631103641081885778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072731 (n : ℕ) : ℤ :=
  A072731.P11631103641081885778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073061.P6041627415486439874

`2^A023416(n+1)*3^(A000120(n+1)-1)`
-/

namespace A073061.P6041627415486439874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023416 (n + 1) : ℤ) * (3 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A073061.P6041627415486439874

noncomputable section

/-- A073061: a(1)=1, a(2k)=2*a(k), a(2k+1)=3*a(k).

Offset 1, canonical program `A073061.P6041627415486439874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073061 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073061.P6041627415486439874.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073185.P13146702220439815820

`A000203(A007948(n+1))`
-/

namespace A073185.P13146702220439815820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007948 (n + 1)).toNat

end

end A073185.P13146702220439815820

noncomputable section

/-- A073185: Sum of cubefree divisors of n.

Offset 1, canonical program `A073185.P13146702220439815820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073185 (n : ℕ) : ℤ :=
  A073185.P13146702220439815820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073334.P4283954833387490777

`A000045(A005811(n)+4)`
-/

namespace A073334.P4283954833387490777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005811 n + 4).toNat

end

end A073334.P4283954833387490777

noncomputable section

/-- A073334: The so-called "rhythmic infinity system" of Danish composer Per Nørgård [Noergaard].

Offset 0, canonical program `A073334.P4283954833387490777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073334 (n : ℕ) : ℤ :=
  A073334.P4283954833387490777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073366.P891318373544082339

`A000040(n+4)%A065855(n+4)`
-/

namespace A073366.P891318373544082339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 4)) (A065855 (n + 4))

end

end A073366.P891318373544082339

noncomputable section

/-- A073366: Remainder when n-th prime is divided by number of composites not exceeding n.

Offset 4, canonical program `A073366.P891318373544082339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073366 (n : ℕ) : ℤ :=
  A073366.P891318373544082339.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073368.P244892506514072260

`(n+4)%A065855(n+4)`
-/

namespace A073368.P244892506514072260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 4 : ℤ) (A065855 (n + 4))

end

end A073368.P244892506514072260

noncomputable section

/-- A073368: Remainder when n is divided by number of composites not exceeding n.

Offset 4, canonical program `A073368.P244892506514072260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073368 (n : ℕ) : ℤ :=
  A073368.P244892506514072260.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073438.P13722308552465934977

`A065855(n+2)%A000720(n+2)`
-/

namespace A073438.P13722308552465934977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065855 (n + 2)) (A000720 (n + 2))

end

end A073438.P13722308552465934977

noncomputable section

/-- A073438: Remainder of division G[n]/Pi[n], where G[n] is the number of composites not exceeding n.

Offset 2, canonical program `A073438.P13722308552465934977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073438 (n : ℕ) : ℤ :=
  A073438.P13722308552465934977.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073840.P16683968075710145056

`A049614(2*(n+1))/A049614(n)`
-/

namespace A073840.P16683968075710145056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (2 * (n + 1)) : ℚ) / (A049614 n : ℚ)

end

end A073840.P16683968075710145056

noncomputable section

/-- A073840: Product of the composite numbers between n and 2n (both inclusive).

Offset 1, canonical program `A073840.P16683968075710145056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073840.P16683968075710145056.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074107.P8605610893175755867

`A054640(n)-A002110(n)`
-/

namespace A074107.P8605610893175755867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054640 n - A002110 n

end

end A074107.P8605610893175755867

noncomputable section

/-- A074107: a(n) = Product of (prime + 1) for first n primes - primorial (n); Sum of proper divisors of the n-th primorial.

Offset 0, canonical program `A074107.P8605610893175755867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074107 (n : ℕ) : ℤ :=
  A074107.P8605610893175755867.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076342.P17182392044292318344

`A000040(n+1)-A070750(n+1)`
-/

namespace A076342.P17182392044292318344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070750 (n + 1)

end

end A076342.P17182392044292318344

noncomputable section

/-- A076342: a(n) = A076340(A000040(n)), real part of primes mapped as defined in A076340, A076341.

Offset 1, canonical program `A076342.P17182392044292318344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076342 (n : ℕ) : ℤ :=
  A076342.P17182392044292318344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076535.P14204201055404177065

`n+1-4*A001316(n)`
-/

namespace A076535.P14204201055404177065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 4 * A001316 n

end

end A076535.P14204201055404177065

noncomputable section

/-- A076535: a(n) = A064405 (2^m+n) - 2^m (for m large enough this difference appears to be constant).

Offset 0, canonical program `A076535.P14204201055404177065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076535 (n : ℕ) : ℤ :=
  A076535.P14204201055404177065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076664.P133885836827351204

`A000292(n+1)-A024916(n+1)`
-/

namespace A076664.P133885836827351204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A024916 (n + 1)

end

end A076664.P133885836827351204

noncomputable section

/-- A076664: a(n) = Sum_{k=1..n} antisigma(k), where antisigma(i) = sum of the nondivisors of i that are between 1 and i.

Offset 1, canonical program `A076664.P133885836827351204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076664 (n : ℕ) : ℤ :=
  A076664.P133885836827351204.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076927.P14191405464165554135

`A076926(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076927.P14191405464165554135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076926 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076927.P14191405464165554135

noncomputable section

/-- A076927: a(n) = A076926(n)/n.

Offset 1, canonical program `A076927.P14191405464165554135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076927.P14191405464165554135.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076998.P17388172569221754780

`A007948(n+1)-A007947(n+1)`
-/

namespace A076998.P17388172569221754780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) - A007947 (n + 1)

end

end A076998.P17388172569221754780

noncomputable section

/-- A076998: Difference between cubefree and squarefree components of n.

Offset 1, canonical program `A076998.P17388172569221754780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076998 (n : ℕ) : ℤ :=
  A076998.P17388172569221754780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077008.P7276496796489003301

`A070750(n+2)`
-/

namespace A077008.P7276496796489003301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 2)

end

end A077008.P7276496796489003301

noncomputable section

/-- A077008: Legendre symbol (-1,p) where p is the n-th prime.

Offset 2, canonical program `A077008.P7276496796489003301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077008 (n : ℕ) : ℤ :=
  A077008.P7276496796489003301.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078444.P18345850543036628727

`A006254(A028310(n))+A067076(n+1)`
-/

namespace A078444.P18345850543036628727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (A028310 n).toNat + A067076 (n + 1)

end

end A078444.P18345850543036628727

noncomputable section

/-- A078444: Floor of geometric mean of two consecutive primes.

Offset 1, canonical program `A078444.P18345850543036628727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078444 (n : ℕ) : ℤ :=
  A078444.P18345850543036628727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078558.P8931998303314457670

`gcd(A005867(n+1), A054640(n+1))`
-/

namespace A078558.P8931998303314457670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005867 (n + 1)) (A054640 (n + 1))

end

end A078558.P8931998303314457670

noncomputable section

/-- A078558: GCD of sigma(p#) and phi(p#) where p# = A002110(n) is the product of the first n primes.

Offset 1, canonical program `A078558.P8931998303314457670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078558 (n : ℕ) : ℤ :=
  (A078558.P8931998303314457670.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078835.P6736849639258305604

`A000203(A024675(n+1))`
-/

namespace A078835.P6736849639258305604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A024675 (n + 1)).toNat

end

end A078835.P6736849639258305604

noncomputable section

/-- A078835: Sum of the divisors of the average of consecutive odd primes.

Offset 1, canonical program `A078835.P6736849639258305604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078835 (n : ℕ) : ℤ :=
  A078835.P6736849639258305604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080085.P4216384539738297619

`A000040(n+1)-A014499(n+1)`
-/

namespace A080085.P4216384539738297619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A014499 (n + 1)

end

end A080085.P4216384539738297619

noncomputable section

/-- A080085: Number of factors of 2 in the factorial of the n-th prime, counted with multiplicity.

Offset 1, canonical program `A080085.P4216384539738297619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080085 (n : ℕ) : ℤ :=
  A080085.P4216384539738297619.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080799.P10496779856946822596

`A023416(n+2)+floor(log2(n+2))+4`
-/

namespace A080799.P10496779856946822596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 2) + (Nat.log 2 (n + 2) : ℤ) + 4

end

end A080799.P10496779856946822596

noncomputable section

/-- A080799: Number of divide by 2 and add 1 operations required to reach ...,7,8,4,2,1 when started at n.

Offset 1, canonical program `A080799.P10496779856946822596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080799 (n : ℕ) : ℤ :=
  A080799.P10496779856946822596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081115.P12324789555972598981

`2*A024702(n+3)`
-/

namespace A081115.P12324789555972598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024702 (n + 3)

end

end A081115.P12324789555972598981

noncomputable section

/-- A081115: (p^2 - 1)/12 where p > 3 runs through the primes.

Offset 3, canonical program `A081115.P12324789555972598981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081115 (n : ℕ) : ℤ :=
  A081115.P12324789555972598981.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083482.P9826563306636625719

`A019554(A002378(n+1))`
-/

namespace A083482.P9826563306636625719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A002378 (n + 1)).toNat

end

end A083482.P9826563306636625719

noncomputable section

/-- A083482: Square root of smallest square of the type n(n+1)*k.

Offset 1, canonical program `A083482.P9826563306636625719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083482 (n : ℕ) : ℤ :=
  A083482.P9826563306636625719.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083552.P3447721149402971387

`A083551(n+1)/A057467(n+1)`
-/

namespace A083552.P3447721149402971387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083551 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A083552.P3447721149402971387

noncomputable section

/-- A083552: Quotient when LCM of 2 consecutive prime differences is divided by GCD of the same two differences.

Offset 1, canonical program `A083552.P3447721149402971387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083552.P3447721149402971387.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083555.P12251096965399093067

`A083554(n+1)/A058263(n+1)`
-/

namespace A083555.P12251096965399093067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083554 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ)

end

end A083555.P12251096965399093067

noncomputable section

/-- A083555: Quotient of LCM of prime(n+1)-1 and prime(n)-1 and GCD of the same two numbers.

Offset 1, canonical program `A083555.P12251096965399093067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083555.P12251096965399093067.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088631.P7843051689605076685

`A060265(n+2)-(n+2)`
-/

namespace A088631.P7843051689605076685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (n + 2) - (n + 2 : ℤ)

end

end A088631.P7843051689605076685

noncomputable section

/-- A088631: Largest number m < n such that m+n is a prime.

Offset 2, canonical program `A088631.P7843051689605076685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088631 (n : ℕ) : ℤ :=
  A088631.P7843051689605076685.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088748.P405959534239069085

`1+A005811(n)`
-/

namespace A088748.P405959534239069085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005811 n

end

end A088748.P405959534239069085

noncomputable section

/-- A088748: a(n) = 1 + Sum_{k=0..n-1} 2 * A014577(k) - 1.

Offset 0, canonical program `A088748.P405959534239069085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088748 (n : ℕ) : ℤ :=
  A088748.P405959534239069085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089224.P1820326694042210811

`A023416(A023416(n))`
-/

namespace A089224.P1820326694042210811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A023416 n).toNat

end

end A089224.P1820326694042210811

noncomputable section

/-- A089224: In binary representation: number of zeros of number of zeros of n.

Offset 0, canonical program `A089224.P1820326694042210811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089224 (n : ℕ) : ℤ :=
  A089224.P1820326694042210811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089253.P9623062397135395528

`A067076(n+1)+4`
-/

namespace A089253.P9623062397135395528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 4

end

end A089253.P9623062397135395528

noncomputable section

/-- A089253: Numbers n such that 2n - 5 is a prime.

Offset 1, canonical program `A089253.P9623062397135395528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089253 (n : ℕ) : ℤ :=
  A089253.P9623062397135395528.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090455.P12087489954554024740

`A000120(n+1)-A014499(n+1)`
-/

namespace A090455.P12087489954554024740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A014499 (n + 1)

end

end A090455.P12087489954554024740

noncomputable section

/-- A090455: Difference between numbers of binary 1's of n and binary 1's of n-th prime.

Offset 1, canonical program `A090455.P12087489954554024740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090455 (n : ℕ) : ℤ :=
  A090455.P12087489954554024740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092246.P10064573919626078015

`4*(n+1)+2*A010060(n)-3`
-/

namespace A092246.P10064573919626078015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + 2 * A010060 n - 3

end

end A092246.P10064573919626078015

noncomputable section

/-- A092246: Odd "odious" numbers (A000069).

Offset 1, canonical program `A092246.P10064573919626078015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092246 (n : ℕ) : ℤ :=
  A092246.P10064573919626078015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092435.P2982260256719848996

`A049614(A000040(n+1))`
-/

namespace A092435.P2982260256719848996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A000040 (n + 1)).toNat

end

end A092435.P2982260256719848996

noncomputable section

/-- A092435: Prime factorials divided by their corresponding primorials.

Offset 1, canonical program `A092435.P2982260256719848996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092435 (n : ℕ) : ℤ :=
  A092435.P2982260256719848996.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092436.P18053594016097437094

`1-A010060(n+1)`
-/

namespace A092436.P18053594016097437094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (n + 1)

end

end A092436.P18053594016097437094

noncomputable section

/-- A092436: a(n) = 1/2 + (-1)^n*(1/2 - A010060(floor(n/2))).

Offset 1, canonical program `A092436.P18053594016097437094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092436 (n : ℕ) : ℤ :=
  A092436.P18053594016097437094.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094617.P8506004990279302888

`A036561(n)+1`
-/

namespace A094617.P8506004990279302888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n + 1

end

end A094617.P8506004990279302888

noncomputable section

/-- A094617: Triangular array T of numbers generated by these rules: 2 is in T; and if x is in T, then 2x-1 and 3x-2 are in T.

Offset 1, canonical program `A094617.P8506004990279302888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094617 (n : ℕ) : ℤ :=
  A094617.P8506004990279302888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094900.P17212686480961748602

`floor(A000040(n+2)*A036263(n+1)/A001223(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094900.P17212686480961748602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) * A036263 (n + 1) : ℚ) / (A001223 (n + 2) : ℚ)⌋

end

end A094900.P17212686480961748602

noncomputable section

/-- A094900: a(n) = floor( prime(n-1)*A036263(n-2)/ A001223(n-1)).

Offset 3, canonical program `A094900.P17212686480961748602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094900 (n : ℕ) : ℤ :=
  A094900.P17212686480961748602.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095190.P13459185923934876190

`A010060(floor(n/2))`
-/

namespace A095190.P13459185923934876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌊(n : ℚ) / 2⌋.toNat

end

end A095190.P13459185923934876190

noncomputable section

/-- A095190: Doubled Thue-Morse sequence: a(2n) = A010060(n), a(2n+1) = A010060(n).

Offset 0, canonical program `A095190.P13459185923934876190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095190 (n : ℕ) : ℤ :=
  A095190.P13459185923934876190.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095209.P676887428399175964

`A057335(A020522(n))`
-/

namespace A095209.P676887428399175964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A020522 n).toNat

end

end A095209.P676887428399175964

noncomputable section

/-- A095209: a(0) = 1, and for n > 0, a(n) = the least multiple of prime(n) such that the geometric mean of a(0) to a(n) is an integer.

Offset 0, canonical program `A095209.P676887428399175964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095209 (n : ℕ) : ℤ :=
  A095209.P676887428399175964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096278.P7027253276892588421

`A096277(n+1)+A096277(n+2)`
-/

namespace A096278.P7027253276892588421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) + A096277 (n + 2)

end

end A096278.P7027253276892588421

noncomputable section

/-- A096278: Sums of successive sums of successive sums of successive primes.

Offset 1, canonical program `A096278.P7027253276892588421`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096278 (n : ℕ) : ℤ :=
  A096278.P7027253276892588421.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097377.P4336530497269463132

`A007948(n+1)+1`
-/

namespace A097377.P4336530497269463132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) + 1

end

end A097377.P4336530497269463132

noncomputable section

/-- A097377: a(n) = CubeFreeKernel(n) + 1.

Offset 1, canonical program `A097377.P4336530497269463132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097377 (n : ℕ) : ℤ :=
  A097377.P4336530497269463132.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097378.P12310079244189164866

`A007947(n+1)*A007948(n+1)+1`
-/

namespace A097378.P12310079244189164866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007948 (n + 1) + 1

end

end A097378.P12310079244189164866

noncomputable section

/-- A097378: a(n) = SquareFreeKernel(n)*CubeFreeKernel(n) + 1.

Offset 1, canonical program `A097378.P12310079244189164866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097378 (n : ℕ) : ℤ :=
  A097378.P12310079244189164866.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097743.P1935338259299383222

`A001348(n+1)+A061286(n+1)`
-/

namespace A097743.P1935338259299383222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) + A061286 (n + 1)

end

end A097743.P1935338259299383222

noncomputable section

/-- A097743: Numbers of the form 3*2^(p - 1) - 1 where p is prime.

Offset 1, canonical program `A097743.P1935338259299383222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097743 (n : ℕ) : ℤ :=
  A097743.P1935338259299383222.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098597.P14102537631952924985

`A000108(n)/2^A048881(n)`
-/

namespace A098597.P14102537631952924985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (2 : ℚ) ^ (A048881 n : ℤ)

end

end A098597.P14102537631952924985

noncomputable section

/-- A098597: Numerator of Catalan(n)/2^(2n+1). Also, numerators of (2n-1)!!/(n+1)!. Odd part of the n-th Catalan number.

Offset 0, canonical program `A098597.P14102537631952924985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098597.P14102537631952924985.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100714.P17142724427829783874

`A005811(A000040(n+1))`
-/

namespace A100714.P17142724427829783874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000040 (n + 1)).toNat

end

end A100714.P17142724427829783874

noncomputable section

/-- A100714: Number of runs in binary expansion of A000040(n) (the n-th prime number) for n > 0.

Offset 1, canonical program `A100714.P17142724427829783874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100714 (n : ℕ) : ℤ :=
  A100714.P17142724427829783874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102392.P6267888131439325102

`n*A010060(n)`
-/

namespace A102392.P6267888131439325102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010060 n

end

end A102392.P6267888131439325102

noncomputable section

/-- A102392: Odious numbers in odious places.

Offset 0, canonical program `A102392.P6267888131439325102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102392 (n : ℕ) : ℤ :=
  A102392.P6267888131439325102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104137.P5136487355684938973

`A007663(n+2)+A061285(n+2)+1`
-/

namespace A104137.P5136487355684938973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007663 (n + 2) + A061285 (n + 2) + 1

end

end A104137.P5136487355684938973

noncomputable section

/-- A104137: Number of distinct necklaces with p beads of two possible colors, allowing turning over, p being a prime greater than 2.

Offset 1, canonical program `A104137.P5136487355684938973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104137 (n : ℕ) : ℤ :=
  A104137.P5136487355684938973.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104894.P7075308143591686238

`A010060((row(n)-col(n))%(2^(col(n)+1)))`
-/

namespace A104894.P7075308143591686238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (2 ^ (SequenceMachineLib.triCol n + 1) : ℤ)).toNat

end

end A104894.P7075308143591686238

noncomputable section

/-- A104894: Binary array, related to the Thue-Morse sequence A010060, read by downward antidiagonals.

Offset 0, canonical program `A104894.P7075308143591686238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104894 (n : ℕ) : ℤ :=
  A104894.P7075308143591686238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106400.P11201390576172776043

`1-2*A010060(n)`
-/

namespace A106400.P11201390576172776043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010060 n

end

end A106400.P11201390576172776043

noncomputable section

/-- A106400: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and -1's.

Offset 0, canonical program `A106400.P11201390576172776043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400 (n : ℕ) : ℤ :=
  A106400.P11201390576172776043.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106524.P4919753910904423378

`A001316(n+2)-A000034(n)`
-/

namespace A106524.P4919753910904423378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 2) - A000034 n

end

end A106524.P4919753910904423378

noncomputable section

/-- A106524: Interleave A038573(n+1) and 2*A038573(n+1).

Offset 0, canonical program `A106524.P4919753910904423378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106524 (n : ℕ) : ℤ :=
  A106524.P4919753910904423378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106830.P3377270276742315136

`A024451(A000720(n+1))`
-/

namespace A106830.P3377270276742315136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A000720 (n + 1)).toNat

end

end A106830.P3377270276742315136

noncomputable section

/-- A106830: Numerator of Sum_{ primes p <= n} 1/p.

Offset 1, canonical program `A106830.P3377270276742315136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106830 (n : ℕ) : ℤ :=
  A106830.P3377270276742315136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107252.P9629950069383118717

`A107251(n)/A000108(n)`
-/

namespace A107252.P9629950069383118717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107251 n : ℚ) / (A000108 n : ℚ)

end

end A107252.P9629950069383118717

noncomputable section

/-- A107252: a(n) = Product_{k=0..n-1} (n+k)!/(k+1)!.

Offset 0, canonical program `A107252.P9629950069383118717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107252 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107252.P9629950069383118717.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112485.P3061397793116521121

`(n+9)*a(n-1)+(n+1)*A112008(n)` with `a(0)=1`
-/

namespace A112485.P3061397793116521121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 9 : ℤ) * a (n - 1) + (n + 1 : ℤ) * A112008 n

end

end A112485.P3061397793116521121

noncomputable section

/-- A112485: Fifth diagonal of second-order Eulerian triangle A008517. Fifth column (m=4) of triangle A112007.

Offset 0, canonical program `A112485.P3061397793116521121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112485 (n : ℕ) : ℤ :=
  A112485.P3061397793116521121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112490.P9190031474120083192

`(n+8)*a(n-1)+(n+7)*A112489(n+3)` with `a(0)=105`
-/

namespace A112490.P9190031474120083192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [105] fun n a =>
  (n + 8 : ℤ) * a (n - 1) + (n + 7 : ℤ) * A112489 (n + 3)

end

end A112490.P9190031474120083192

noncomputable section

/-- A112490: Fifth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 4, canonical program `A112490.P9190031474120083192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112490 (n : ℕ) : ℤ :=
  A112490.P9190031474120083192.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115716.P15483547809295924347

`A007583(A091090(n+1)-1)`
-/

namespace A115716.P15483547809295924347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A091090 (n + 1) - 1).toNat

end

end A115716.P15483547809295924347

noncomputable section

/-- A115716: A divide-and-conquer sequence.

Offset 0, canonical program `A115716.P15483547809295924347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716 (n : ℕ) : ℤ :=
  A115716.P15483547809295924347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117683.P522862369474609631

`A049614(row(n)+1)/(A049614(col(n)+1)*A049614(row(n)+1-(col(n)+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117683.P522862369474609631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (SequenceMachineLib.triRow n + 1) : ℚ) / (A049614 (SequenceMachineLib.triCol n + 1) * A049614 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A117683.P522862369474609631

noncomputable section

/-- A117683: Triangle T(n,k) = A049614(n)/(A049614(k)*A049614(n-k)), read by rows.

Offset 1, canonical program `A117683.P522862369474609631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117683.P522862369474609631.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117733.P723624204475833034

`A034386(n+1)+A049614(n+1)`
-/

namespace A117733.P723624204475833034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) + A049614 (n + 1)

end

end A117733.P723624204475833034

noncomputable section

/-- A117733: Sum of the n-th primorial and the n-th compositorial number.

Offset 1, canonical program `A117733.P723624204475833034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117733 (n : ℕ) : ℤ :=
  A117733.P723624204475833034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117736.P2900786321532737672

`n!-A049614(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117736.P2900786321532737672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A049614 n

end

end A117736.P2900786321532737672

noncomputable section

/-- A117736: factorial(n) - A049614(n).

Offset 0, canonical program `A117736.P2900786321532737672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117736 (n : ℕ) : ℤ :=
  A117736.P2900786321532737672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117878.P3731936021544780756

`A034386(row(n)+1)*A049614(col(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117878.P3731936021544780756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (SequenceMachineLib.triRow n + 1) * A049614 (SequenceMachineLib.triCol n + 1) - 1

end

end A117878.P3731936021544780756

noncomputable section

/-- A117878: Triangle T(n,k) = A034386(n)*A049614(k) - 1 read by rows.

Offset 1, canonical program `A117878.P3731936021544780756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117878 (n : ℕ) : ℤ :=
  A117878.P3731936021544780756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117973.P11230116199213534894

`2*A001316(n)`
-/

namespace A117973.P11230116199213534894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

end

end A117973.P11230116199213534894

noncomputable section

/-- A117973: a(n) = 2^(wt(n)+1), where wt() = A000120().

Offset 0, canonical program `A117973.P11230116199213534894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117973 (n : ℕ) : ℤ :=
  A117973.P11230116199213534894.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119779.P6482519072126859417

`A119773(2*n)`
-/

namespace A119779.P6482519072126859417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119773 (2 * n)

end

end A119779.P6482519072126859417

noncomputable section

/-- A119779: 64^n-th prime.

Offset 0, canonical program `A119779.P6482519072126859417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119779 (n : ℕ) : ℤ :=
  A119779.P6482519072126859417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120389.P8073201827714242340

`A065855(A000040(n+1)²)`
-/

namespace A120389.P8073201827714242340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A000040 (n + 1) ^ 2).toNat

end

end A120389.P8073201827714242340

noncomputable section

/-- A120389: a(n) is such that the a(n)-th composite number is (n-th prime)^2.

Offset 1, canonical program `A120389.P8073201827714242340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120389 (n : ℕ) : ℤ :=
  A120389.P8073201827714242340.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120739.P10842547371353966859

`(2^n-A001316(n))/2`
-/

namespace A120739.P10842547371353966859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A001316 n : ℚ) / 2

end

end A120739.P10842547371353966859

noncomputable section

/-- A120739: a(n) = Sum_{k=0..n} floor(C(n,k)/2).

Offset 0, canonical program `A120739.P10842547371353966859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120739.P10842547371353966859.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126795.P799784804237801689

`gcd(n+1, A048250(n+1))`
-/

namespace A126795.P799784804237801689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048250 (n + 1))

end

end A126795.P799784804237801689

noncomputable section

/-- A126795: a(n) = gcd(n, Product_{p|n} (p+1)), where the product is over the distinct primes p that divide n.

Offset 1, canonical program `A126795.P799784804237801689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126795 (n : ℕ) : ℤ :=
  (A126795.P799784804237801689.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127236.P8768236047814750613

`A010060(C(row(n), col(n)))`
-/

namespace A127236.P8768236047814750613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A127236.P8768236047814750613

noncomputable section

/-- A127236: A Thue-Morse binomial triangle.

Offset 0, canonical program `A127236.P8768236047814750613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127236 (n : ℕ) : ℤ :=
  A127236.P8768236047814750613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127241.P15014854706548169078

`A010060(C(col(n), row(n)-col(n)))`
-/

namespace A127241.P15014854706548169078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat)

end

end A127241.P15014854706548169078

noncomputable section

/-- A127241: A Thue-Morse triangle.

Offset 0, canonical program `A127241.P15014854706548169078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127241 (n : ℕ) : ℤ :=
  A127241.P15014854706548169078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128309.P14442768980274460626

`2*A000069(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128309.P14442768980274460626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1)

end

end A128309.P14442768980274460626

noncomputable section

/-- A128309: a(n) = 2*A000069(n).

Offset 1, canonical program `A128309.P14442768980274460626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309 (n : ℕ) : ℤ :=
  A128309.P14442768980274460626.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128806.P9737040730051066089

`A001316(n)+A046092(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128806.P9737040730051066089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + A046092 n

end

end A128806.P9737040730051066089

noncomputable section

/-- A128806: a(n) = A001316(n) + A046092(n).

Offset 0, canonical program `A128806.P9737040730051066089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128806 (n : ℕ) : ℤ :=
  A128806.P9737040730051066089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069580.P13053955226640931518

`4^(n+1)²-A065128(n+1)`
-/

namespace A069580.P13053955226640931518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) ^ 2 : ℤ) - A065128 (n + 1)

end

end A069580.P13053955226640931518

noncomputable section

/-- A069580: Number of noninvertible n X n matrices mod 4 (i.e., over the ring Z_4).

Offset 1, canonical program `A069580.P13053955226640931518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069580 (n : ℕ) : ℤ :=
  A069580.P13053955226640931518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070871.P12544793481948704650

`A002487(n+1)*A002487(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070871.P12544793481948704650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A002487 (n + 2)

end

end A070871.P12544793481948704650

noncomputable section

/-- A070871: a(n) = A002487(n) * A002487(n+1) (Conway's alimentary function).

Offset 1, canonical program `A070871.P12544793481948704650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070871 (n : ℕ) : ℤ :=
  A070871.P12544793481948704650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071148.P13630786703162267389

`A007504(n+2)-2`
-/

namespace A071148.P13630786703162267389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2) - 2

end

end A071148.P13630786703162267389

noncomputable section

/-- A071148: Partial sums of sequence of odd primes (A065091); a(n) = sum of the first n odd primes.

Offset 1, canonical program `A071148.P13630786703162267389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071148 (n : ℕ) : ℤ :=
  A071148.P13630786703162267389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071883.P11933639635216744692

`A002487(n)*A002487(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071883.P11933639635216744692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A002487 (n + 2)

end

end A071883.P11933639635216744692

noncomputable section

/-- A071883: A002487(n)*A002487(n+2).

Offset 0, canonical program `A071883.P11933639635216744692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071883 (n : ℕ) : ℤ :=
  A071883.P11933639635216744692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071908.P8967790956812859439

`A002487(n)*A002487(n+1)*A002487(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071908.P8967790956812859439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A002487 (n + 1) * A002487 (n + 2)

end

end A071908.P8967790956812859439

noncomputable section

/-- A071908: A002487(n)*A002487(n+1)*A002487(n+2).

Offset 0, canonical program `A071908.P8967790956812859439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071908 (n : ℕ) : ℤ :=
  A071908.P8967790956812859439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071909.P3018903466328539296

`A002487(n)*A002487(n+1)*A002487(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071909.P3018903466328539296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 n * A002487 (n + 1) * A002487 (n + 2) : ℚ) / 2

end

end A071909.P3018903466328539296

noncomputable section

/-- A071909: A002487(n)*A002487(n+1)*A002487(n+2)/2.

Offset 0, canonical program `A071909.P3018903466328539296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071909.P3018903466328539296.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072236.P8218542167861289561

`A000849(n+1)-A000849(n)`
-/

namespace A072236.P8218542167861289561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000849 (n + 1) - A000849 n

end

end A072236.P8218542167861289561

noncomputable section

/-- A072236: Numbers of primes between successive primorials.

Offset 0, canonical program `A072236.P8218542167861289561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072236 (n : ℕ) : ℤ :=
  A072236.P8218542167861289561.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074370.P10376428531819324136

`A000203(A007504(n+1))`
-/

namespace A074370.P10376428531819324136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007504 (n + 1)).toNat

end

end A074370.P10376428531819324136

noncomputable section

/-- A074370: Sum of the divisors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A074370.P10376428531819324136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074370 (n : ℕ) : ℤ :=
  A074370.P10376428531819324136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076826.P11423364779277600938

`2*A115384(n)-n`
-/

namespace A076826.P11423364779277600938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115384 n - (n : ℤ)

end

end A076826.P11423364779277600938

noncomputable section

/-- A076826: a(n) = 2*(Sum_{k=0..n} A010060(k)) - n, where A010060 is a Thue-Morse sequence.

Offset 0, canonical program `A076826.P11423364779277600938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076826 (n : ℕ) : ℤ :=
  A076826.P11423364779277600938.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077645.P129742426279453168

`A007504(A000720(10^(n+1)))-A007504(A000720(10^n))`
-/

namespace A077645.P129742426279453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (10 ^ (n + 1))).toNat - A007504 (A000720 (10 ^ n)).toNat

end

end A077645.P129742426279453168

noncomputable section

/-- A077645: Sum of all primes having n decimal digits.

Offset 1, canonical program `A077645.P129742426279453168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077645 (n : ℕ) : ℤ :=
  A077645.P129742426279453168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084021.P10020689395487424378

`n*A061601(n)`
-/

namespace A084021.P10020689395487424378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061601 n

end

end A084021.P10020689395487424378

noncomputable section

/-- A084021: Product of n and its 9's complement.

Offset 0, canonical program `A084021.P10020689395487424378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084021 (n : ℕ) : ℤ :=
  A084021.P10020689395487424378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086099.P5552536160841423092

`A053644(n+1)-A006519(n+1)`
-/

namespace A086099.P5552536160841423092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) - A006519 (n + 1)

end

end A086099.P5552536160841423092

noncomputable section

/-- A086099: a(n) = OR(k AND (n-k): 0<=k<=n), AND and OR bitwise.

Offset 0, canonical program `A086099.P5552536160841423092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086099 (n : ℕ) : ℤ :=
  A086099.P5552536160841423092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086117.P2161699557421297109

`a(n-1)*A006519(n)` with `a(0)=2, a(1)=2`
-/

namespace A086117.P2161699557421297109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) * A006519 n

end

end A086117.P2161699557421297109

noncomputable section

/-- A086117: Denominator of mean deviation of a symmetrical binomial distribution on n elements.

Offset 1, canonical program `A086117.P2161699557421297109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086117 (n : ℕ) : ℤ :=
  A086117.P2161699557421297109.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086680.P9420142532378401602

`A007053(2*n)`
-/

namespace A086680.P9420142532378401602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n)

end

end A086680.P9420142532378401602

noncomputable section

/-- A086680: Number of primes < 4^n.

Offset 0, canonical program `A086680.P9420142532378401602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086680 (n : ℕ) : ℤ :=
  A086680.P9420142532378401602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086690.P3097928174086633679

`A007053(A000040(n+1))`
-/

namespace A086690.P3097928174086633679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A000040 (n + 1)).toNat

end

end A086690.P3097928174086633679

noncomputable section

/-- A086690: Number of primes < 2^prime(n).

Offset 1, canonical program `A086690.P3097928174086633679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086690 (n : ℕ) : ℤ :=
  A086690.P3097928174086633679.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087266.P3243297445985223574

`gcd(A000079(n+1), A007053(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087266.P3243297445985223574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (n + 1)) (A007053 (n + 1))

end

end A087266.P3243297445985223574

noncomputable section

/-- A087266: a(n) = gcd(2^n, pi(2^n)) = gcd(A000079(n), A007053(n)).

Offset 1, canonical program `A087266.P3243297445985223574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087266 (n : ℕ) : ℤ :=
  (A087266.P3243297445985223574.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087754.P17359479580584231490

`2*A034602(n+3)`
-/

namespace A087754.P17359479580584231490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034602 (n + 3)

end

end A087754.P17359479580584231490

noncomputable section

/-- A087754: a(n) = (C(2p,p)-2) / p^3, where p = prime(n).

Offset 3, canonical program `A087754.P17359479580584231490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087754 (n : ℕ) : ℤ :=
  A087754.P17359479580584231490.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090396.P10428628598971152108

`A007504(n+1)%(n+1)`
-/

namespace A090396.P10428628598971152108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) (n + 1 : ℤ)

end

end A090396.P10428628598971152108

noncomputable section

/-- A090396: Remainder when the sum of the first n primes is divided by n.

Offset 1, canonical program `A090396.P10428628598971152108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090396 (n : ℕ) : ℤ :=
  A090396.P10428628598971152108.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092261.P11403511796116652889

`A048250(n+1)/A048250(A057521(n+1))`
-/

namespace A092261.P11403511796116652889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A048250 (A057521 (n + 1)).toNat : ℚ)

end

end A092261.P11403511796116652889

noncomputable section

/-- A092261: Sum of unitary, squarefree divisors of n, including 1.

Offset 1, canonical program `A092261.P11403511796116652889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092261 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092261.P11403511796116652889.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092292.P6908978587120229622

`3*n+A053838(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092292.P6908978587120229622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A053838 n

end

end A092292.P6908978587120229622

noncomputable section

/-- A092292: a(n) = 3*n + A053838(n).

Offset 0, canonical program `A092292.P6908978587120229622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092292 (n : ℕ) : ℤ :=
  A092292.P6908978587120229622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092780.P3974277560898924787

`A007504(n+1)²-1`
-/

namespace A092780.P3974277560898924787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) ^ 2 - 1

end

end A092780.P3974277560898924787

noncomputable section

/-- A092780: Sum(prime(k),k=1..n)^2-1.

Offset 1, canonical program `A092780.P3974277560898924787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092780 (n : ℕ) : ℤ :=
  A092780.P3974277560898924787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095902.P2506920193957968763

`A283480(2^n)`
-/

namespace A095902.P2506920193957968763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283480 (2 ^ n)

end

end A095902.P2506920193957968763

noncomputable section

/-- A095902: Number of odd entries in A004001 that are <= 2^n.

Offset 0, canonical program `A095902.P2506920193957968763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095902 (n : ℕ) : ℤ :=
  A095902.P2506920193957968763.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097327.P3677544989114888276

`A097326(n+1)+1`
-/

namespace A097327.P3677544989114888276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097326 (n + 1) + 1

end

end A097327.P3677544989114888276

noncomputable section

/-- A097327: Least positive integer m such that m*n has greater decimal digit length than n.

Offset 1, canonical program `A097327.P3677544989114888276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097327 (n : ℕ) : ℤ :=
  A097327.P3677544989114888276.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097505.P8707610786003004089

`A007504(row(n)+1+col(n))-A007504(row(n))`
-/

namespace A097505.P8707610786003004089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) - A007504 (SequenceMachineLib.triRow n)

end

end A097505.P8707610786003004089

noncomputable section

/-- A097505: Triangle read by rows: T(n,k) = Sum_{j=1..k} Prime(n+j-1).

Offset 1, canonical program `A097505.P8707610786003004089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097505 (n : ℕ) : ℤ :=
  A097505.P8707610786003004089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098077.P255775982390388265

`2*A108678(n)`
-/

namespace A098077.P255775982390388265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108678 n

end

end A098077.P255775982390388265

noncomputable section

/-- A098077: a(n) = n^2*(n+1)*(2*n+1)/3.

Offset 1, canonical program `A098077.P255775982390388265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098077 (n : ℕ) : ℤ :=
  A098077.P255775982390388265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098077.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099245.P15585639647905873699

`A099246(n)*A000120(n)/A070939(n)`
-/

namespace A099245.P15585639647905873699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099246 n * A000120 n : ℚ) / (A070939 n : ℚ)

end

end A099245.P15585639647905873699

noncomputable section

/-- A099245: Numerator of relative frequency of number of ones in the binary representation of n.

Offset 0, canonical program `A099245.P15585639647905873699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099245 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099245.P15585639647905873699.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099825.P10390891143560570139

`A007504(A000079(n))`
-/

namespace A099825.P10390891143560570139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000079 n).toNat

end

end A099825.P10390891143560570139

noncomputable section

/-- A099825: Sum of the first 2^n primes.

Offset 0, canonical program `A099825.P10390891143560570139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099825 (n : ℕ) : ℤ :=
  A099825.P10390891143560570139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099826.P17288839142158247066

`A007504(A000244(n))`
-/

namespace A099826.P17288839142158247066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000244 n).toNat

end

end A099826.P17288839142158247066

noncomputable section

/-- A099826: Sum of the first 3^n primes.

Offset 0, canonical program `A099826.P17288839142158247066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099826 (n : ℕ) : ℤ :=
  A099826.P17288839142158247066.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100340.P6090323841538418593

`a(n-1)*A006519(n+1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A100340.P6090323841538418593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A006519 (n + 1) + a (n - 2)

end

end A100340.P6090323841538418593

noncomputable section

/-- A100340: Numerators of the convergents in the continued fraction expansion for the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n).

Offset 1, canonical program `A100340.P6090323841538418593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100340 (n : ℕ) : ℤ :=
  A100340.P6090323841538418593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100341.P14698015609869133761

`a(n-1)*A006519(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A100341.P14698015609869133761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A006519 (n + 1) + a (n - 2)

end

end A100341.P14698015609869133761

noncomputable section

/-- A100341: Denominators of the convergents in the continued fraction expansion for the constant given by A100338, where the partial quotients equal A006519 (greatest power of 2 dividing n).

Offset 1, canonical program `A100341.P14698015609869133761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100341 (n : ℕ) : ℤ :=
  A100341.P14698015609869133761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100374.P3644398539316585198

`A006519(A001223(n+1))`
-/

namespace A100374.P3644398539316585198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001223 (n + 1)).toNat

end

end A100374.P3644398539316585198

noncomputable section

/-- A100374: Largest power of 2 dividing prime(n+1) - prime(n), the n-th consecutive prime difference.

Offset 1, canonical program `A100374.P3644398539316585198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100374 (n : ℕ) : ℤ :=
  A100374.P3644398539316585198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100375.P7290689656260670325

`A001223(n+1)/A006519(A001223(n+1))`
-/

namespace A100375.P7290689656260670325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) / (A006519 (A001223 (n + 1)).toNat : ℚ)

end

end A100375.P7290689656260670325

noncomputable section

/-- A100375: a(n) is the n-th consecutive prime difference divided by the largest power of 2 which divides it.

Offset 1, canonical program `A100375.P7290689656260670325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100375.P7290689656260670325.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100710.P8172262502792841671

`2*A006519(n+1)+n`
-/

namespace A100710.P8172262502792841671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006519 (n + 1) + (n : ℤ)

end

end A100710.P8172262502792841671

noncomputable section

/-- A100710: Characterized by a(n) XOR (a(n) + 1) = a(n) - n.

Offset 1, canonical program `A100710.P8172262502792841671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100710 (n : ℕ) : ℤ :=
  A100710.P8172262502792841671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101301.P12618163721935666644

`A007504(n+1)-(n+1)`
-/

namespace A101301.P12618163721935666644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (n + 1 : ℤ)

end

end A101301.P12618163721935666644

noncomputable section

/-- A101301: The sum of the first n primes, minus n.

Offset 1, canonical program `A101301.P12618163721935666644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101301 (n : ℕ) : ℤ :=
  A101301.P12618163721935666644.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102820.P6198136110421382965

`A020900(n+2)-A020900(n+1)`
-/

namespace A102820.P6198136110421382965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 2) - A020900 (n + 1)

end

end A102820.P6198136110421382965

noncomputable section

/-- A102820: Number of primes between 2*prime(n) and 2*prime(n+1), where prime(n) is the n-th prime.

Offset 1, canonical program `A102820.P6198136110421382965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102820 (n : ℕ) : ℤ :=
  A102820.P6198136110421382965.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103938.P3080528431107651382

`4*A001764(n)-A006013(n)`
-/

namespace A103938.P3080528431107651382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001764 n - A006013 n

end

end A103938.P3080528431107651382

noncomputable section

/-- A103938: Number of rooted non-separable n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103938.P3080528431107651382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103938 (n : ℕ) : ℤ :=
  A103938.P3080528431107651382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108754.P16448062333260017930

`A007504(n+1)-A000290(n+1)`
-/

namespace A108754.P16448062333260017930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A000290 (n + 1)

end

end A108754.P16448062333260017930

noncomputable section

/-- A108754: Difference between partial sum of the first n primes and n^2.

Offset 1, canonical program `A108754.P16448062333260017930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108754 (n : ℕ) : ℤ :=
  A108754.P16448062333260017930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109722.P10188503146465590831

`A007504(2*n)`
-/

namespace A109722.P10188503146465590831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

end

end A109722.P10188503146465590831

noncomputable section

/-- A109722: Sum of first 2n primes.

Offset 0, canonical program `A109722.P10188503146465590831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109722 (n : ℕ) : ℤ :=
  A109722.P10188503146465590831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109723.P9563710613651025040

`A007504(2*n+1)`
-/

namespace A109723.P9563710613651025040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n + 1)

end

end A109723.P9563710613651025040

noncomputable section

/-- A109723: Sum of the first 2n+1 primes.

Offset 0, canonical program `A109723.P9563710613651025040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109723 (n : ℕ) : ℤ :=
  A109723.P9563710613651025040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109725.P13056055185361958747

`A007504((n+1)²)-A007504(n²)`
-/

namespace A109725.P13056055185361958747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 ((n + 1) ^ 2) - A007504 (n ^ 2)

end

end A109725.P13056055185361958747

noncomputable section

/-- A109725: Divide primes in groups with 2n+1 elements and add together.

Offset 0, canonical program `A109725.P13056055185361958747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109725 (n : ℕ) : ℤ :=
  A109725.P13056055185361958747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109726.P14787538916744219353

`A007504(n*(n+1))-A007504(n*(n-1))`
-/

namespace A109726.P14787538916744219353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n * (n + 1)) - A007504 ((n : ℤ) * ((n : ℤ) - 1)).toNat

end

end A109726.P14787538916744219353

noncomputable section

/-- A109726: Divide primes in groups with 2n elements and add together.

Offset 0, canonical program `A109726.P14787538916744219353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109726 (n : ℕ) : ℤ :=
  A109726.P14787538916744219353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109940.P11561411005126974692

`(n+1)*A097326(n+1)`
-/

namespace A109940.P11561411005126974692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097326 (n + 1)

end

end A109940.P11561411005126974692

noncomputable section

/-- A109940: Largest k-digit multiple of n where k is the number of digits in n.

Offset 1, canonical program `A109940.P11561411005126974692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109940 (n : ℕ) : ℤ :=
  A109940.P11561411005126974692.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110854.P2471624004047318377

`A155750(n+1)-A155067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110854.P2471624004047318377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) - A155067 (n + 1)

end

end A110854.P2471624004047318377

noncomputable section

/-- A110854: A155750(n)-A155067(n) = prime(2n+2)-prime(2n+1)-prime(2n)+prime(2n-1).

Offset 1, canonical program `A110854.P2471624004047318377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110854 (n : ℕ) : ℤ :=
  A110854.P2471624004047318377.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112039.P8022561423127945551

`(1+A007504(2*(n+1)))/2`
-/

namespace A112039.P8022561423127945551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A007504 (2 * (n + 1)) : ℚ) / 2

end

end A112039.P8022561423127945551

noncomputable section

/-- A112039: Let b(0)=1/2, b(n) = b(n-1) + Prime[n]/2; a(n)=b(2*n).

Offset 1, canonical program `A112039.P8022561423127945551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112039.P8022561423127945551.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112997.P3713856926934514710

`A007504(n+1)-(n+1)*(n+2)/2`
-/

namespace A112997.P3713856926934514710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2

end

end A112997.P3713856926934514710

noncomputable section

/-- A112997: Sum of first n primes minus sum of their indices.

Offset 1, canonical program `A112997.P3713856926934514710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112997.P3713856926934514710.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113633.P1089532878435800945

`A007504(A000351(n))`
-/

namespace A113633.P1089532878435800945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000351 n).toNat

end

end A113633.P1089532878435800945

noncomputable section

/-- A113633: Sum of the first 5^n primes.

Offset 0, canonical program `A113633.P1089532878435800945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113633 (n : ℕ) : ℤ :=
  A113633.P1089532878435800945.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113634.P14854653620757727462

`A007504(6^n)`
-/

namespace A113634.P14854653620757727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (6 ^ n)

end

end A113634.P14854653620757727462

noncomputable section

/-- A113634: Sum of the first 6^n primes.

Offset 0, canonical program `A113634.P14854653620757727462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113634 (n : ℕ) : ℤ :=
  A113634.P14854653620757727462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113635.P8258085166908120649

`A007504(A000420(n))`
-/

namespace A113635.P8258085166908120649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000420 n).toNat

end

end A113635.P8258085166908120649

noncomputable section

/-- A113635: Sum of the first 7^n primes.

Offset 0, canonical program `A113635.P8258085166908120649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113635 (n : ℕ) : ℤ :=
  A113635.P8258085166908120649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115836.P4635970898570071194

`A007378(n+2)-2`
-/

namespace A115836.P4635970898570071194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2) - 2

end

end A115836.P4635970898570071194

noncomputable section

/-- A115836: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 2n.

Offset 1, canonical program `A115836.P4635970898570071194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115836 (n : ℕ) : ℤ :=
  A115836.P4635970898570071194.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116367.P6155131737747558776

`(n+2)*A000040(n+2)+A007504(n+1)-2`
-/

namespace A116367.P6155131737747558776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000040 (n + 2) + A007504 (n + 1) - 2

end

end A116367.P6155131737747558776

noncomputable section

/-- A116367: Sums of rows of the triangle in A116366.

Offset 1, canonical program `A116367.P6155131737747558776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116367 (n : ℕ) : ℤ :=
  A116367.P6155131737747558776.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117400.P676579641845705266

`A007504(A000045(n))`
-/

namespace A117400.P676579641845705266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000045 n).toNat

end

end A117400.P676579641845705266

noncomputable section

/-- A117400: Sum of the first F(n) primes, where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A117400.P676579641845705266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117400 (n : ℕ) : ℤ :=
  A117400.P676579641845705266.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117592.P1440909278058429630

`2^A081603(n)`
-/

namespace A117592.P1440909278058429630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ)

end

end A117592.P1440909278058429630

noncomputable section

/-- A117592: a(n) = a(3n) = a(3n+1) = a(3n+2)/2 with a(0)=1.

Offset 0, canonical program `A117592.P1440909278058429630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117592 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117592.P1440909278058429630.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117942.P14324521327660345243

`2^A081603(n)*(-1)^(A062756(n)+A081603(n))`
-/

namespace A117942.P14324521327660345243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ) * (-1 : ℚ) ^ (A062756 n + A081603 n : ℤ)

end

end A117942.P14324521327660345243

noncomputable section

/-- A117942: a(n) = a(3n) = -a(3n+1) = -a(3n+2)/2.

Offset 0, canonical program `A117942.P14324521327660345243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117942.P14324521327660345243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118319.P11823910758880960408

`n+1+A006519(n+1)-A000120(n+1)`
-/

namespace A118319.P11823910758880960408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006519 (n + 1) - A000120 (n + 1)

end

end A118319.P11823910758880960408

noncomputable section

/-- A118319: a(n) = (highest power of 2 dividing n)th integer among those positive integers not occurring in {a(1),a(2),a(3),...,a(n-1)}.

Offset 1, canonical program `A118319.P11823910758880960408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118319 (n : ℕ) : ℤ :=
  A118319.P11823910758880960408.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118827.P5307784149571753104

`A165326(n+1)*A006519(n+1)`
-/

namespace A118827.P5307784149571753104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A006519 (n + 1)

end

end A118827.P5307784149571753104

noncomputable section

/-- A118827: 2-adic continued fraction of zero, where a(n) = 1 if n is odd, otherwise -2*A006519(n/2).

Offset 1, canonical program `A118827.P5307784149571753104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118827 (n : ℕ) : ℤ :=
  A118827.P5307784149571753104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119795.P14428827034511331712

`a(n-2)+A006519(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A119795.P14428827034511331712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A006519 (a (n - 1)).toNat

end

end A119795.P14428827034511331712

noncomputable section

/-- A119795: a(1) = a(2) = 1. a(n) = a(n-2) + (largest power of 2 dividing a(n-1)).

Offset 1, canonical program `A119795.P14428827034511331712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795 (n : ℕ) : ℤ :=
  A119795.P14428827034511331712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123119.P18220163899370039324

`A055642(A007504(n+1))`
-/

namespace A123119.P18220163899370039324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007504 (n + 1)).toNat

end

end A123119.P18220163899370039324

noncomputable section

/-- A123119: Number of digits in sum of first n primes (A007504).

Offset 1, canonical program `A123119.P18220163899370039324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123119 (n : ℕ) : ℤ :=
  A123119.P18220163899370039324.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123901.P3746745576386999541

`(n+3)/A124781(n)`
-/

namespace A123901.P3746745576386999541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124781 n : ℚ)

end

end A123901.P3746745576386999541

noncomputable section

/-- A123901: a(n) = (n+3)/gcd(d(n), d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0..n} 1/k! to lowest terms.

Offset 0, canonical program `A123901.P3746745576386999541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123901.P3746745576386999541.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124779.P8020119968883470129

`A124780(n)/A124781(n)`
-/

namespace A124779.P8020119968883470129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A124781 n : ℚ)

end

end A124779.P8020119968883470129

noncomputable section

/-- A124779: a(n) = gcd(A(n), A(n+2))/gcd(d(n), d(n+2)) where A(n) = Sum_{k=0..n} n!/k! and d(n) = gcd(A(n), n!).

Offset 0, canonical program `A124779.P8020119968883470129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124779.P8020119968883470129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A125130.P6259504309083317485

`A007504(A000217(n+1))`
-/

namespace A125130.P6259504309083317485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 (n + 1)).toNat

end

end A125130.P6259504309083317485

noncomputable section

/-- A125130: Successive sums of consecutive primes that form a triangular grid.

Offset 1, canonical program `A125130.P6259504309083317485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125130 (n : ℕ) : ℤ :=
  A125130.P6259504309083317485.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126606.P13163570229275066813

`2*A002487(n)`
-/

namespace A126606.P13163570229275066813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002487 n

end

end A126606.P13163570229275066813

noncomputable section

/-- A126606: Fixed point of transformation of the seed sequence {0,2}.

Offset 1, canonical program `A126606.P13163570229275066813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126606 (n : ℕ) : ℤ :=
  A126606.P13163570229275066813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068824.P692798541818509398

`(10^(1+A004216(n+1))-(n+1))*(n+1)`
-/

namespace A068824.P692798541818509398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (1 + A004216 (n + 1) : ℤ) - (n + 1 : ℚ)) * (n + 1 : ℚ)

end

end A068824.P692798541818509398

noncomputable section

/-- A068824: a(n) = n*c(n), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068824.P692798541818509398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068824 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068824.P692798541818509398.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073781.P9008484040697988353

`A081603(A000040(n+1))`
-/

namespace A073781.P9008484040697988353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A000040 (n + 1)).toNat

end

end A073781.P9008484040697988353

noncomputable section

/-- A073781: Number of 2's in base-3 representation of n-th prime.

Offset 1, canonical program `A073781.P9008484040697988353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073781 (n : ℕ) : ℤ :=
  A073781.P9008484040697988353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075110.P148917138412802764

`A000040(n+1)*10^(A004216(n+1)+1)+n+1`
-/

namespace A075110.P148917138412802764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) * (10 : ℚ) ^ (A004216 (n + 1) + 1 : ℤ) + (n + 1 : ℚ)

end

end A075110.P148917138412802764

noncomputable section

/-- A075110: Concatenation of n-th prime and n in decimal notation.

Offset 1, canonical program `A075110.P148917138412802764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075110.P148917138412802764.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078414.P9815211639586840057

`A242603(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A078414.P9815211639586840057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242603 (a (n - 1) + a (n - 2)).toNat

end

end A078414.P9815211639586840057

noncomputable section

/-- A078414: a(n) = (a(n-1)+a(n-2))/7^k, where 7^k is the highest power of 7 dividing a(n-1)+a(n-2).

Offset 1, canonical program `A078414.P9815211639586840057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078414 (n : ℕ) : ℤ :=
  A078414.P9815211639586840057.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068823.P18262872501573724830

`lcm(n+1, A061601(n+1)+1)`
-/

namespace A068823.P18262872501573724830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A061601 (n + 1) + 1)

end

end A068823.P18262872501573724830

noncomputable section

/-- A068823: a(n) = lcm(n, c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068823.P18262872501573724830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068823 (n : ℕ) : ℤ :=
  (A068823.P18262872501573724830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068984.P5244751518024861276

`∑{d}[n+1, A034718(#)*A048250((n+1)/#)]`
-/

namespace A068984.P5244751518024861276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P5244751518024861276

noncomputable section

/-- A068984: a(n) = Sum_{d|n} d*tau(d)^2.

Offset 1, canonical program `A068984.P5244751518024861276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984 (n : ℕ) : ℤ :=
  A068984.P5244751518024861276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069187.P10848046467755903059

`record[A059591(n)*A253909(n)]`
-/

namespace A069187.P10848046467755903059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n * A253909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069187.P10848046467755903059

noncomputable section

/-- A069187: Numbers k such that core(k) = ceiling(sqrt(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

Offset 1, canonical program `A069187.P10848046467755903059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A069187 (n : ℕ) : ℤ :=
  A069187.P10848046467755903059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A069187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069549.P12382925364838237052

`A007918(n+1)²`
-/

namespace A069549.P12382925364838237052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) ^ 2

end

end A069549.P12382925364838237052

noncomputable section

/-- A069549: Smallest composite k such that phi(k) > k*(1-1/n).

Offset 1, canonical program `A069549.P12382925364838237052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069549 (n : ℕ) : ℤ :=
  A069549.P12382925364838237052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069828.P7975132913255653083

`A058026(n+1)*A065033(n)`
-/

namespace A069828.P7975132913255653083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (n + 1) * A065033 n

end

end A069828.P7975132913255653083

noncomputable section

/-- A069828: Sum of positive integers k for k <= n and gcd(k,n) = gcd(k+1,n).

Offset 1, canonical program `A069828.P7975132913255653083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069828 (n : ℕ) : ℤ :=
  A069828.P7975132913255653083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069896.P13065951481713959796

`gcd(A048050(n+1), A053246(n+1))`
-/

namespace A069896.P13065951481713959796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048050 (n + 1)) (A053246 (n + 1))

end

end A069896.P13065951481713959796

noncomputable section

/-- A069896: GCD of consecutive values of Chowla's function.

Offset 1, canonical program `A069896.P13065951481713959796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069896 (n : ℕ) : ℤ :=
  (A069896.P13065951481713959796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069913.P4643640867168244816

`A007429(n+1)-A007425(n+1)`
-/

namespace A069913.P4643640867168244816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - A007425 (n + 1)

end

end A069913.P4643640867168244816

noncomputable section

/-- A069913: a(n) = Sum_{d|n} (d-1)*tau(n/d).

Offset 1, canonical program `A069913.P4643640867168244816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069913 (n : ℕ) : ℤ :=
  A069913.P4643640867168244816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070554.P17760410811391301141

`A058026(2*n+1)`
-/

namespace A070554.P17760410811391301141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (2 * n + 1)

end

end A070554.P17760410811391301141

noncomputable section

/-- A070554: Number of positive integers, k, where k <= 2n+1 and gcd(k, 2n+1) = gcd(k+1, 2n+1) = 1.

Offset 0, canonical program `A070554.P17760410811391301141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070554 (n : ℕ) : ℤ :=
  A070554.P17760410811391301141.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070755.P6719190543050349578

`record[A361671(n+1)]`
-/

namespace A070755.P6719190543050349578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070755.P6719190543050349578

noncomputable section

/-- A070755: Squarefree tetrahedral numbers.

Offset 1, canonical program `A070755.P6719190543050349578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755 (n : ℕ) : ℤ :=
  A070755.P6719190543050349578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A070755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070866.P12632349183962327222

`A007918(2*a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A070866.P12632349183962327222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 (2 * a (n - 1) - a (n - 2)).toNat

end

end A070866.P12632349183962327222

noncomputable section

/-- A070866: Smallest prime such that the difference of successive terms is nondecreasing.

Offset 1, canonical program `A070866.P12632349183962327222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070866 (n : ℕ) : ℤ :=
  A070866.P12632349183962327222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070879.P1905303007827206191

`A002487(∑[C(and(n+1, 2*n), n)]-n)`
-/

namespace A070879.P1905303007827206191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A070879.P1905303007827206191

noncomputable section

/-- A070879: Stern's diatomic array read by rows (version 3 - same as version 2, A070878, but with final 0 in each row omitted).

Offset 0, canonical program `A070879.P1905303007827206191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A070879 (n : ℕ) : ℤ :=
  A070879.P1905303007827206191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A070879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071029.P18335059563736865083

`A070886(or(n, A021913(n)))`
-/

namespace A071029.P18335059563736865083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (Int.lor (n : ℤ) (A021913 n)).toNat

end

end A071029.P18335059563736865083

noncomputable section

/-- A071029: Triangle read by rows giving successive states of cellular automaton generated by "Rule 22".

Offset 0, canonical program `A071029.P18335059563736865083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071029 (n : ℕ) : ℤ :=
  A071029.P18335059563736865083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071040.P15735918044442240438

`A071037(A020703(n+1)-1)`
-/

namespace A071040.P15735918044442240438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 (A020703 (n + 1) - 1).toNat

end

end A071040.P15735918044442240438

noncomputable section

/-- A071040: Triangle read by rows giving successive states of cellular automaton generated by "Rule 214".

Offset 0, canonical program `A071040.P15735918044442240438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071040 (n : ℕ) : ℤ :=
  A071040.P15735918044442240438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071319.P13411586007084234983

`A071318(eq[1, A071318(n+2)-A071318(n+1)]+1)`
-/

namespace A071319.P13411586007084234983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 2) - A071318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071319.P13411586007084234983

noncomputable section

/-- A071319: First of 3 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that {k, k+1, k+2} are in A067259.

Offset 1, canonical program `A071319.P13411586007084234983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A071319 (n : ℕ) : ℤ :=
  A071319.P13411586007084234983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A071319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071411.P1894007710603126055

`A007504(n+1)-A051349(n+1)`
-/

namespace A071411.P1894007710603126055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A051349 (n + 1)

end

end A071411.P1894007710603126055

noncomputable section

/-- A071411: "Sum of n first primes" minus "sum of first n nonprimes".

Offset 1, canonical program `A071411.P1894007710603126055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071411 (n : ℕ) : ℤ :=
  A071411.P1894007710603126055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071412.P9701321601537696184

`A002487(n)%3`
-/

namespace A071412.P9701321601537696184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 n) 3

end

end A071412.P9701321601537696184

noncomputable section

/-- A071412: A002487 mod 3.

Offset 0, canonical program `A071412.P9701321601537696184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071412 (n : ℕ) : ℤ :=
  A071412.P9701321601537696184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071600.P4019860995872328944

`eq[A000120(n+1), A014499(n+1)]+1`
-/

namespace A071600.P4019860995872328944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071600.P4019860995872328944

noncomputable section

/-- A071600: Numbers k such that k and prime(k) have the same number of 1's in their binary representation.

Offset 1, canonical program `A071600.P4019860995872328944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A071600 (n : ℕ) : ℤ :=
  (A071600.P4019860995872328944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A071600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071719.P16601501130629148270

`A067324(n)-A000782(n+1)`
-/

namespace A071719.P16601501130629148270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A000782 (n + 1)

end

end A071719.P16601501130629148270

noncomputable section

/-- A071719: Expansion of (1+x^2*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071719.P16601501130629148270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719 (n : ℕ) : ℤ :=
  A071719.P16601501130629148270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071724.P13075293376280166576

`Δ[A141351(n)]`
-/

namespace A071724.P13075293376280166576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071724.P13075293376280166576

noncomputable section

/-- A071724: a(n) = 3*binomial(2n, n-1)/(n+2), n > 0, with a(0)=1.

Offset 0, canonical program `A071724.P13075293376280166576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071724 (n : ℕ) : ℤ :=
  A071724.P13075293376280166576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071898.P4932306188274408027

`a(n-2)+a(n-1)*A002487(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A071898.P4932306188274408027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A002487 (n + 1)

end

end A071898.P4932306188274408027

noncomputable section

/-- A071898: CONTINUANT transform of A002487: 1, 1, 2, 1, 3, 2, ...

Offset 1, canonical program `A071898.P4932306188274408027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A071898 (n : ℕ) : ℤ :=
  A071898.P4932306188274408027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A071898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071975.P11664215044611898026

`a(A336551(A003557(n+1)))*A007913(n+1)` with `a(0)=1`
-/

namespace A071975.P11664215044611898026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A336551 (A003557 (n + 1)).toNat).toNat * A007913 (n + 1)

end

end A071975.P11664215044611898026

noncomputable section

/-- A071975: Denominator of rational number i/j such that Sagher map sends i/j to n.

Offset 1, canonical program `A071975.P11664215044611898026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071975 (n : ℕ) : ℤ :=
  A071975.P11664215044611898026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072166.P2760346320925595557

`A057427(n)+A033291(n+1)`
-/

namespace A072166.P2760346320925595557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A033291 (n + 1)

end

end A072166.P2760346320925595557

noncomputable section

/-- A072166: Triangle in which first row is {1}; to get n-th row take first n numbers greater than last number in previous row which are congruent to 1 (mod n).

Offset 1, canonical program `A072166.P2760346320925595557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072166 (n : ℕ) : ℤ :=
  A072166.P2760346320925595557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072283.P11466262856498811159

`A079399(n)+4`
-/

namespace A072283.P11466262856498811159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 n + 4

end

end A072283.P11466262856498811159

noncomputable section

/-- A072283: Number of raised dots to represent n in Braille.

Offset 0, canonical program `A072283.P11466262856498811159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072283 (n : ℕ) : ℤ :=
  A072283.P11466262856498811159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072330.P15179746371977386479

`filter[A057125(n+1), A187074(#)]`
-/

namespace A072330.P15179746371977386479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A072330.P15179746371977386479

noncomputable section

/-- A072330: Common difference n such that primitive triangles exist which are n-arithmetic (i.e., primitive Heronian triangles whose sides in arithmetic progression have common difference n).

Offset 1, canonical program `A072330.P15179746371977386479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A072330 (n : ℕ) : ℤ :=
  A072330.P15179746371977386479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A072330.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072570.P13899471690461400496

`∩[record[a(n-2)+6^(n%2)], A024675(n+1)]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A072570.P13899471690461400496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  f2 (n - 2) + 6 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A072570.P13899471690461400496

noncomputable section

/-- A072570: Even interprimes i = (p+q)/2 (where p, q are consecutive primes) such that (q-p)/2 is not divisible by 3.

Offset 1, canonical program `A072570.P13899471690461400496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A072570 (n : ℕ) : ℤ :=
  (A072570.P13899471690461400496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A072570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072571.P12820443273534986484

`filter[A024675(n+2), A120325(#)]`
-/

namespace A072571.P12820443273534986484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A072571.P12820443273534986484

noncomputable section

/-- A072571: Even interprimes i = (p+q)/2 (where p, q are consecutive primes) such that (q-p)/2 is divisible by 3.

Offset 1, canonical program `A072571.P12820443273534986484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A072571 (n : ℕ) : ℤ :=
  A072571.P12820443273534986484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A072571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072572.P18063668036485138131

`A024675(eq[3, A024675(n+1)%6]+1)`
-/

namespace A072572.P18063668036485138131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024675 (n + 1)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072572.P18063668036485138131

noncomputable section

/-- A072572: Odd interprimes divisible by 3.

Offset 1, canonical program `A072572.P18063668036485138131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A072572 (n : ℕ) : ℤ :=
  A072572.P18063668036485138131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A072572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072681.P3120088539320785072

`(n+2-A007917(n+2))*(A007918(n+2)-(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072681.P3120088539320785072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A007917 (n + 2)) * (A007918 (n + 2) - (n + 2 : ℤ))

end

end A072681.P3120088539320785072

noncomputable section

/-- A072681: a(n) = (n - A007917(n)) * (A007918(n) - n).

Offset 2, canonical program `A072681.P3120088539320785072`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072681 (n : ℕ) : ℤ :=
  A072681.P3120088539320785072.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072715.P8196709911917849842

`record[A255171(n)+a(n-1)]` with `a(0)=1`
-/

namespace A072715.P8196709911917849842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A255171 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072715.P8196709911917849842

noncomputable section

/-- A072715: Record differences between n-th prime and 2n-th prime.

Offset 1, canonical program `A072715.P8196709911917849842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7551 terms. -/
def A072715 (n : ℕ) : ℤ :=
  A072715.P8196709911917849842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7551 terms. -/
def A072715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072775.P1959638679732390770

`∏{p}[A072774(n+1), #]`
-/

namespace A072775.P1959638679732390770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A072775.P1959638679732390770

noncomputable section

/-- A072775: Squarefree kernels of powers of squarefree numbers.

Offset 1, canonical program `A072775.P1959638679732390770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072775 (n : ℕ) : ℤ :=
  (A072775.P1959638679732390770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073085.P885122968936088587

`eq[1, A038800(21*n)]`
-/

namespace A073085.P885122968936088587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (21 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073085.P885122968936088587

noncomputable section

/-- A073085: Numbers k such that 210*k+1 is prime.

Offset 1, canonical program `A073085.P885122968936088587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A073085 (n : ℕ) : ℤ :=
  (A073085.P885122968936088587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A073085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073425.P859015994304671289

`Δ[A051349(n)]-(n+1)`
-/

namespace A073425.P859015994304671289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A073425.P859015994304671289

noncomputable section

/-- A073425: a(0)=0; for n>0, a(n) = number of primes not exceeding n-th composite number.

Offset 0, canonical program `A073425.P859015994304671289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073425 (n : ℕ) : ℤ :=
  A073425.P859015994304671289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073579.P1739749270450137857

`A000040(n+1)*A070750(n+1)`
-/

namespace A073579.P1739749270450137857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A070750 (n + 1)

end

end A073579.P1739749270450137857

noncomputable section

/-- A073579: Signed primes: if prime(n) even, a(n) = 0; if prime(n) == 1 (mod 4), a(n) = prime(n); if prime(n) == -1 (mod 4), a(n) = -prime(n).

Offset 1, canonical program `A073579.P1739749270450137857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073579 (n : ℕ) : ℤ :=
  A073579.P1739749270450137857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073663.P161504416552192918

`Δ[Δ[A037955(A004275(n))]]`
-/

namespace A073663.P161504416552192918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073663.P161504416552192918

noncomputable section

/-- A073663: Total number of branches of length k (k>=1) in all ordered trees with n+k edges (it is independent of k).

Offset 0, canonical program `A073663.P161504416552192918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073663 (n : ℕ) : ℤ :=
  A073663.P161504416552192918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073739.P979262354047833449

`floor(ratio[A036467(A142150(n))])`
-/

namespace A073739.P979262354047833449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A073739.P979262354047833449

noncomputable section

/-- A073739: Least positive integers whose convolution forms a sequence whose odd-indexed terms are twice the odd primes (see: A073740).

Offset 0, canonical program `A073739.P979262354047833449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073739 (n : ℕ) : ℤ :=
  A073739.P979262354047833449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073891.P14759290140143493581

`∑[A073846(A065190(n+1))*A165326(n)]`
-/

namespace A073891.P14759290140143493581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (n + 1)).toNat * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073891.P14759290140143493581

noncomputable section

/-- A073891: a(1) = 1, a(2n) = a(2n-1) + c(n) and a(2n+1) = a(2n) - p(n), where c(n)=A002808(n) and p(n)=A000040(n) are the n-th composite and n-th prime numbers, respectively.

Offset 1, canonical program `A073891.P14759290140143493581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073891 (n : ℕ) : ℤ :=
  A073891.P14759290140143493581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073892.P12161089595609729359

`∑[A073846(n+1)*A165326(n)]`
-/

namespace A073892.P12161089595609729359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P12161089595609729359

noncomputable section

/-- A073892: a(1) = 1, a(2n) = a(2n-1) + p(n) and a(2n+1) = a(2n) - c(n), where p(n)=A000040(n) and c(n)=A002808(n) are the n-th composite and n-th prime numbers, respectively.

Offset 1, canonical program `A073892.P12161089595609729359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073892 (n : ℕ) : ℤ :=
  A073892.P12161089595609729359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073999.P12976610018167318063

`A073997(n+1)-and(2, n+2)^n`
-/

namespace A073999.P12976610018167318063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - (Nat.land 2 (n + 2) ^ n : ℤ)

end

end A073999.P12976610018167318063

noncomputable section

/-- A073999: Number of strings of length n over GF(4) with trace 1 and subtrace x where x = RootOf(z^2+z+1).

Offset 1, canonical program `A073999.P12976610018167318063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073999 (n : ℕ) : ℤ :=
  A073999.P12976610018167318063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074246.P670033226258663426

`A002260(n+1)*A130534(∑[A035214(n)])`
-/

namespace A074246.P670033226258663426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074246.P670033226258663426

noncomputable section

/-- A074246: Triangle of coefficients, read by rows, where the n-th row forms the polynomial P(n,x) = {Sum_{k=1..n} 1/(k+x)}*{Product_{k=1..n} (k+x)}.

Offset 1, canonical program `A074246.P670033226258663426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A074246 (n : ℕ) : ℤ :=
  A074246.P670033226258663426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A074246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074264.P4841527662898586304

`A022303(A016789(abs(2-n)+1))`
-/

namespace A074264.P4841527662898586304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A016789 (|2 - (n : ℤ)| + 1).toNat).toNat

end

end A074264.P4841527662898586304

noncomputable section

/-- A074264: Values of Kolakoski sequence A000002 at positions n = 0 mod 3.

Offset 1, canonical program `A074264.P4841527662898586304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074264 (n : ℕ) : ℤ :=
  A074264.P4841527662898586304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074288.P1649072758291598360

`(3-A049705(n+1))*∑[A000002(n+1)]`
-/

namespace A074288.P1649072758291598360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074288.P1649072758291598360

noncomputable section

/-- A074288: n-th term of the Kolakoski sequence (A000002) multiplied by the n-th partial sum.

Offset 1, canonical program `A074288.P1649072758291598360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074288 (n : ℕ) : ℤ :=
  A074288.P1649072758291598360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074290.P6161570627795072217

`gcd(2, n)-A049705(n+1)`
-/

namespace A074290.P6161570627795072217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - A049705 (n + 1)

end

end A074290.P6161570627795072217

noncomputable section

/-- A074290: Difference between Kolakoski(n)=A000002(n) and 1 (n odd) or 2 (n even).

Offset 1, canonical program `A074290.P6161570627795072217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074290 (n : ℕ) : ℤ :=
  A074290.P6161570627795072217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074330.P14277451581150842213

`∑[A001316(n+1)]`
-/

namespace A074330.P14277451581150842213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074330.P14277451581150842213

noncomputable section

/-- A074330: a(n) = Sum_{k=1..n} 2^b(k) where b(k) denotes the number of 1's in the binary representation of k.

Offset 1, canonical program `A074330.P14277451581150842213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074330 (n : ℕ) : ℤ :=
  A074330.P14277451581150842213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074385.P38186395155014522

`sqrt(A000203(A006532(n+1)))`
-/

namespace A074385.P38186395155014522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000203 (A006532 (n + 1)).toNat : ℝ)

end

end A074385.P38186395155014522

noncomputable section

/-- A074385: Square root of sum of divisors, when it is a square.

Offset 1, canonical program `A074385.P38186395155014522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006532, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074385.P38186395155014522.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006532, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074927.P44526691509878723

`A076621(n+1)-A006094(n+1)`
-/

namespace A074927.P44526691509878723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076621 (n + 1) - A006094 (n + 1)

end

end A074927.P44526691509878723

noncomputable section

/-- A074927: a(n) such that p(n)*p(n+1)+a(n) is a minimal square.

Offset 1, canonical program `A074927.P44526691509878723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074927 (n : ℕ) : ℤ :=
  A074927.P44526691509878723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074965.P6729501148211341454

`p?[A034953(n+1)%A291463(n+1)]`
-/

namespace A074965.P6729501148211341454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034953 (n + 1)) (A291463 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074965.P6729501148211341454

noncomputable section

/-- A074965: Primes p for which there is an integer k such that (2*k+1)*p=2*k*q+1, where q is the next prime after p. Equivalently, (p-1)/(2*(q-p)) is an integer.

Offset 1, canonical program `A074965.P6729501148211341454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A074965 (n : ℕ) : ℤ :=
  A074965.P6729501148211341454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. -/
def A074965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075290.P9989029104900541804

`∩[5*3*p?[round(8*n/7)], A024675(n+1)]`
-/

namespace A075290.P9989029104900541804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A075290.P9989029104900541804

noncomputable section

/-- A075290: Interprimes which are of the form s*prime, s=15.

Offset 1, canonical program `A075290.P9989029104900541804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A075290 (n : ℕ) : ℤ :=
  (A075290.P9989029104900541804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A075290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075889.P5019387259858198594

`p?[A075888(n+3)]`
-/

namespace A075889.P5019387259858198594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075889.P5019387259858198594

noncomputable section

/-- A075889: Primes in A075888, as they appear.

Offset 1, canonical program `A075889.P5019387259858198594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A075889 (n : ℕ) : ℤ :=
  A075889.P5019387259858198594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. -/
def A075889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076080.P5243049804028882978

`A076079(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076080.P5243049804028882978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076079 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076080.P5243049804028882978

noncomputable section

/-- A076080: a(n) = A076079(n)/n.

Offset 1, canonical program `A076080.P5243049804028882978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076080.P5243049804028882978.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076079, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076358.P5182405362770292263

`A060753(A036234(n+1))`
-/

namespace A076358.P5182405362770292263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (A036234 (n + 1)).toNat

end

end A076358.P5182405362770292263

noncomputable section

/-- A076358: a(n) = numerator(n!/phi(n!)).

Offset 1, canonical program `A076358.P5182405362770292263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A076358 (n : ℕ) : ℤ :=
  A076358.P5182405362770292263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A076358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076663.P9173981958373011071

`A024916(n+1)-A007429(n+1)`
-/

namespace A076663.P9173981958373011071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A007429 (n + 1)

end

end A076663.P9173981958373011071

noncomputable section

/-- A076663: a(n) = sum of sigma(e) where e ranges over all non-divisors of n that are between 1 and n.

Offset 1, canonical program `A076663.P9173981958373011071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076663 (n : ℕ) : ℤ :=
  A076663.P9173981958373011071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077021.P12117446235816046914

`2*A076631(n+1)-1`
-/

namespace A077021.P12117446235816046914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076631 (n + 1) - 1

end

end A077021.P12117446235816046914

noncomputable section

/-- A077021: a(n) is the unique odd positive solution y of 2^n = 7x^2 + y^2.

Offset 3, canonical program `A077021.P12117446235816046914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A077021 (n : ℕ) : ℤ :=
  A077021.P12117446235816046914.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A077021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077133.P4837546803455532653

`A077126(n+1)-A077131(n+1)`
-/

namespace A077133.P4837546803455532653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1) - A077131 (n + 1)

end

end A077133.P4837546803455532653

noncomputable section

/-- A077133: a(n) is the difference between the sum of the first n even-indexed primes and the sum of the first n odd-indexed primes.

Offset 1, canonical program `A077133.P4837546803455532653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077126, A077131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077133 (n : ℕ) : ℤ :=
  A077133.P4837546803455532653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077126, A077131, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077652.P11268468838467158393

`p?[gcd(A000040(n+1), A040164(n+1))]`
-/

namespace A077652.P11268468838467158393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A040164 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A077652.P11268468838467158393

noncomputable section

/-- A077652: Primes whose initial and terminal decimal digits are identical.

Offset 1, canonical program `A077652.P11268468838467158393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A077652 (n : ℕ) : ℤ :=
  (A077652.P11268468838467158393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A077652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078401.P5559632936550946514

`A054521(n+1)+a(n-1)%A002260(n+1)` with `a(0)=1`
-/

namespace A078401.P5559632936550946514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054521 (n + 1) + Int.tmod (a (n - 1)) (A002260 (n + 1))

end

end A078401.P5559632936550946514

noncomputable section

/-- A078401: Triangle read by rows: T(n,k) = number of numbers <= k that are coprime to n, 1 <= k <= n.

Offset 1, canonical program `A078401.P5559632936550946514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401 (n : ℕ) : ℤ :=
  A078401.P5559632936550946514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078445.P1959700787350412093

`p?[floor(A007504(n+1)/(n+1))]`
-/

namespace A078445.P1959700787350412093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078445.P1959700787350412093

noncomputable section

/-- A078445: Primes in A060620, i.e., primes which are integer parts of averages of initial primes.

Offset 1, canonical program `A078445.P1959700787350412093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8217 terms. -/
def A078445 (n : ℕ) : ℤ :=
  A078445.P1959700787350412093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8217 terms. -/
def A078445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078733.P15106340013089562125

`eq[A023416(n)², A000120(n)]`
-/

namespace A078733.P15106340013089562125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P15106340013089562125

noncomputable section

/-- A078733: Numbers k such that the b0(k)^2=b1(k) where b1(k) denotes the number of 1's in binary expansion of k, b0(k) the number of 0's.

Offset 1, canonical program `A078733.P15106340013089562125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A078733 (n : ℕ) : ℤ :=
  (A078733.P15106340013089562125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A078733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078809.P1773859647289216222

`∏{e}[A024675(n+1), #+1]`
-/

namespace A078809.P1773859647289216222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A078809.P1773859647289216222

noncomputable section

/-- A078809: Number of divisors of the average of consecutive odd primes.

Offset 1, canonical program `A078809.P1773859647289216222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078809 (n : ℕ) : ℤ :=
  (A078809.P1773859647289216222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078817.P13022866292399364478

`A068555(A007401(n+1))/2*A007318(n)`
-/

namespace A078817.P13022866292399364478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A007401 (n + 1)).toNat : ℚ) / 2 * (A007318 n : ℚ)

end

end A078817.P13022866292399364478

noncomputable section

/-- A078817: Table by antidiagonals giving variants on Catalan sequence: T(n,k)=C(2n,n)*C(2k,k)*(2k+1)/(n+k+1).

Offset 0, canonical program `A078817.P13022866292399364478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A078817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078817.P13022866292399364478.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A078817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079054.P1655160976094069587

`round(tanh(A073274(n+1)-1))`
-/

namespace A079054.P1655160976094069587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A073274 (n + 1) - 1 : ℝ))

end

end A079054.P1655160976094069587

noncomputable section

/-- A079054: a(n) = -1 if the closest prime to prime(n) is prime(n-1); = 1 if the closest prime to prime(n) is prime(n+1); = 0 if prime(n-1) and prime(n+1) are equally close to prime(n).

Offset 2, canonical program `A079054.P1655160976094069587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054 (n : ℕ) : ℤ :=
  A079054.P1655160976094069587.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079095.P14370046378917256101

`A079079(eq[1, A079087(n+1)]+1)`
-/

namespace A079095.P14370046378917256101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079095.P14370046378917256101

noncomputable section

/-- A079095: Squarefree numbers of the form (prime(k)+1)*(prime(k+1)+1)/4.

Offset 1, canonical program `A079095.P14370046378917256101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095 (n : ℕ) : ℤ :=
  A079095.P14370046378917256101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. -/
def A079095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079401.P7706091807637651091

`∑[A079399(n)]`
-/

namespace A079401.P7706091807637651091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079401.P7706091807637651091

noncomputable section

/-- A079401: Partial sums of A079399.

Offset 0, canonical program `A079401.P7706091807637651091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079401 (n : ℕ) : ℤ :=
  A079401.P7706091807637651091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079405.P8261978597498823540

`∑{digits}[A000040(n+1), A079399(#)]`
-/

namespace A079405.P8261978597498823540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079399 x).sum

end

end A079405.P8261978597498823540

noncomputable section

/-- A079405: Number of dots in primes in Braille.

Offset 0, canonical program `A079405.P8261978597498823540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079405 (n : ℕ) : ℤ :=
  A079405.P8261978597498823540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079537.P3492315687404907307

`A079536(Δ[n²])`
-/

namespace A079537.P3492315687404907307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079537.P3492315687404907307

noncomputable section

/-- A079537: a(n) = phi(2*n+1)*d(2*n+1) - sigma(2*n+1).

Offset 0, canonical program `A079537.P3492315687404907307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A079537 (n : ℕ) : ℤ :=
  A079537.P3492315687404907307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A079537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079710.P15499769612078816365

`lt[A336551(n+1), A336551(n+2)]+1`
-/

namespace A079710.P15499769612078816365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A079710.P15499769612078816365

noncomputable section

/-- A079710: Numbers m such that the squarefree kernel of m is larger than the squarefree kernel of m+1.

Offset 1, canonical program `A079710.P15499769612078816365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079710 (n : ℕ) : ℤ :=
  (A079710.P15499769612078816365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079716.P15519971653525730613

`2*A005968(A000040(n+1))/A000071(A000040(n+1)+2)`
-/

namespace A079716.P15519971653525730613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A005968 (A000040 (n + 1)).toNat : ℚ) / (A000071 (A000040 (n + 1) + 2).toNat : ℚ)

end

end A079716.P15519971653525730613

noncomputable section

/-- A079716: a(n) = 2*(F(1)^3+F(2)^3+F(3)^3+...+F(p)^3)/(F(1)+F(2)+F(3)+...+F(p)) where p is the n-th prime and F(k) denotes the k-th Fibonacci number.

Offset 1, canonical program `A079716.P15519971653525730613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079716.P15519971653525730613.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079725.P2348211076325242333

`A045717(n+1)-1`
-/

namespace A079725.P2348211076325242333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 1) - 1

end

end A079725.P2348211076325242333

noncomputable section

/-- A079725: Sum of composite numbers less than n-th prime.

Offset 1, canonical program `A079725.P2348211076325242333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079725 (n : ℕ) : ℤ :=
  A079725.P2348211076325242333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080160.P16608067545662280957

`∩[A080151(n+1), n²]`
-/

namespace A080160.P16608067545662280957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A080160.P16608067545662280957

noncomputable section

/-- A080160: Squares that are digit sums of Wonderful Demlo numbers A002477.

Offset 1, canonical program `A080160.P16608067545662280957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A080160 (n : ℕ) : ℤ :=
  (A080160.P16608067545662280957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A080160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080192.P1744504672858969870

`A000040(eq[1, A059788(n+2)/A059788(n+1)]+1)`
-/

namespace A080192.P1744504672858969870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059788 (n + 2) : ℚ) / (A059788 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A080192.P1744504672858969870

noncomputable section

/-- A080192: Complement of A080191 relative to A000040. Prime p is a term iff there is no prime between 2*p and 2*q, where q is the next prime after p.

Offset 1, canonical program `A080192.P1744504672858969870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192 (n : ℕ) : ℤ :=
  A080192.P1744504672858969870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. -/
def A080192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080245.P10278613617857588123

`A033999(A051933(n))*A106579(A099375(n)+1+n)`
-/

namespace A080245.P10278613617857588123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A106579 (A099375 n + 1 + (n : ℤ)).toNat

end

end A080245.P10278613617857588123

noncomputable section

/-- A080245: Inverse of coordination sequence array A113413.

Offset 0, canonical program `A080245.P10278613617857588123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9047 terms. -/
def A080245 (n : ℕ) : ℤ :=
  A080245.P10278613617857588123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9047 terms. -/
def A080245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080251.P16627620130656438930

`A003991(ceil(A004201(n+1)/2))`
-/

namespace A080251.P16627620130656438930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 ⌈(A004201 (n + 1) : ℚ) / 2⌉.toNat

end

end A080251.P16627620130656438930

noncomputable section

/-- A080251: Paired decomposition of tetrahedral numbers A000292 arranged as number triangle.

Offset 0, canonical program `A080251.P16627620130656438930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251 (n : ℕ) : ℤ :=
  A080251.P16627620130656438930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080521.P3420280436256100116

`Δ[A140513(n)+A112367(n)]`
-/

namespace A080521.P3420280436256100116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A112367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P3420280436256100116

noncomputable section

/-- A080521: Triangle read by rows; n-th row contains the lexicographically first set of n distinct positive integers whose sum is 2^n.

Offset 1, canonical program `A080521.P3420280436256100116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080521 (n : ℕ) : ℤ :=
  A080521.P3420280436256100116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080567.P12314212706506024721

`A061285(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A080567.P12314212706506024721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061285 (n + 1) + a (n - 1)

end

end A080567.P12314212706506024721

noncomputable section

/-- A080567: 1 + Sum_{k=2..n} 2^((prime(k)-1)/2).

Offset 1, canonical program `A080567.P12314212706506024721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A080567 (n : ℕ) : ℤ :=
  A080567.P12314212706506024721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A080567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080751.P1467773457644653466

`A130174(n+2)-1`
-/

namespace A080751.P1467773457644653466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 2) - 1

end

end A080751.P1467773457644653466

noncomputable section

/-- A080751: a(n) is smallest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

Offset 1, canonical program `A080751.P1467773457644653466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080751 (n : ℕ) : ℤ :=
  A080751.P1467773457644653466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080884.P7272597157666030189

`A010060(n)+A003849(n)`
-/

namespace A080884.P7272597157666030189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + A003849 n

end

end A080884.P7272597157666030189

noncomputable section

/-- A080884: Sum of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

Offset 1, canonical program `A080884.P7272597157666030189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080884 (n : ℕ) : ℤ :=
  A080884.P7272597157666030189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081259.P16989465696639261266

`A118749(n+1)-A000007(n)`
-/

namespace A081259.P16989465696639261266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (n + 1) - A000007 n

end

end A081259.P16989465696639261266

noncomputable section

/-- A081259: a(n) is the smallest k such that C(3n,n) divides k!.

Offset 1, canonical program `A081259.P16989465696639261266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081259 (n : ℕ) : ℤ :=
  A081259.P16989465696639261266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081291.P11555757365020455851

`comp[A072795(n)]`
-/

namespace A081291.P11555757365020455851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081291.P11555757365020455851

noncomputable section

/-- A081291: Complement of A072795.

Offset 0, canonical program `A081291.P11555757365020455851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081291 (n : ℕ) : ℤ :=
  (A081291.P11555757365020455851.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081297.P15068454454066847271

`A072024(A099375(n)+n)`
-/

namespace A081297.P15068454454066847271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A099375 n + (n : ℤ)).toNat

end

end A081297.P15068454454066847271

noncomputable section

/-- A081297: Array T(k,n), read by antidiagonals: T(k,n) = ((k+1)^(n+1)-(-k)^(n+1))/(2k+1).

Offset 0, canonical program `A081297.P15068454454066847271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A081297 (n : ℕ) : ℤ :=
  A081297.P15068454454066847271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4656 terms. -/
def A081297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081531.P7633572976891130999

`A045344(lt[1, A082886(n+1)])`
-/

namespace A081531.P7633572976891130999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081531.P7633572976891130999

noncomputable section

/-- A081531: Primes p such that (r-p)/log(p) > 2, where r is the next prime after p.

Offset 1, canonical program `A081531.P7633572976891130999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531 (n : ℕ) : ℤ :=
  A081531.P7633572976891130999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A081531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081648.P17081280589634402769

`filter[A080151(n+1), A049240(#)]`
-/

namespace A081648.P17081280589634402769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A081648.P17081280589634402769

noncomputable section

/-- A081648: Integers congruent to 0, 1, 4, 9, 16, 25, 36, 49 or 64 (mod 81) which are not squares.

Offset 1, canonical program `A081648.P17081280589634402769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A081648 (n : ℕ) : ℤ :=
  A081648.P17081280589634402769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A081648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082246.P15530245581393664996

`p?[A034964(n+3)+A001043(n+1)]`
-/

namespace A082246.P15530245581393664996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P15530245581393664996

noncomputable section

/-- A082246: Primes that are the sum of 7 consecutive primes.

Offset 1, canonical program `A082246.P15530245581393664996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1793 terms. -/
def A082246 (n : ℕ) : ℤ :=
  A082246.P15530245581393664996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1793 terms. -/
def A082246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082446.P9602963096395604126

`A010060(A006369(n))`
-/

namespace A082446.P9602963096395604126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A006369 n).toNat

end

end A082446.P9602963096395604126

noncomputable section

/-- A082446: a(0)=0, a(1)=1, a(2)=0; thereafter, if k>=0 and a block of the first 3*2^k terms is known, then a(3*2^k+i)=1-a(i) for 0<=i

Offset 0, canonical program `A082446.P9602963096395604126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082446 (n : ℕ) : ℤ :=
  A082446.P9602963096395604126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082448.P17099624679947118891

`A019463(n)+3*floor(n/2)!`
-/

namespace A082448.P17099624679947118891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n + (3 * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A082448.P17099624679947118891

noncomputable section

/-- A082448: Add 1, multiply by 1, add 2, multiply by 2, etc.; start with 4.

Offset 0, canonical program `A082448.P17099624679947118891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A082448 (n : ℕ) : ℤ :=
  A082448.P17099624679947118891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A082448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082459.P3654004726301315485

`A019461(n+1)+A082458(n)-A019463(n+1)`
-/

namespace A082459.P3654004726301315485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A082458 n - A019463 (n + 1))

end

end A082459.P3654004726301315485

noncomputable section

/-- A082459: Multiply by 1, add 1, multiply by 2, add 2, etc.

Offset 0, canonical program `A082459.P3654004726301315485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082459 (n : ℕ) : ℤ :=
  A082459.P3654004726301315485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082692.P14972470211568262006

`∑[A082691(n+1)]`
-/

namespace A082692.P14972470211568262006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082692.P14972470211568262006

noncomputable section

/-- A082692: Partial sums of A082691.

Offset 1, canonical program `A082692.P14972470211568262006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082692 (n : ℕ) : ℤ :=
  A082692.P14972470211568262006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083057.P16504313330184181278

`∑[A083056(n+1)]`
-/

namespace A083057.P16504313330184181278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P16504313330184181278

noncomputable section

/-- A083057: Partial sums of A083056.

Offset 1, canonical program `A083057.P16504313330184181278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083057 (n : ℕ) : ℤ :=
  A083057.P16504313330184181278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083173.P701774359917477188

`A005145(n+1)*A080511(n+1)`
-/

namespace A083173.P701774359917477188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A080511 (n + 1)

end

end A083173.P701774359917477188

noncomputable section

/-- A083173: Triangle read by rows: the n-th row contains the first n-1 multiples of prime(n) followed by the next multiple that will make the row sum a multiple of n.

Offset 1, canonical program `A083173.P701774359917477188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083173 (n : ℕ) : ℤ :=
  A083173.P701774359917477188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083197.P7741079771248666664

`A073846(A008619(A005408(n)-A114327(n)))`
-/

namespace A083197.P7741079771248666664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A008619 (A005408 n - A114327 n).toNat).toNat

end

end A083197.P7741079771248666664

noncomputable section

/-- A083197: Triangular array, read by rows, where if n is odd the n-th row consists of n least unused nonprimes, while if n is even the n-th row consists of the n least unused primes.

Offset 1, canonical program `A083197.P7741079771248666664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083197 (n : ℕ) : ℤ :=
  A083197.P7741079771248666664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083273.P10952218317192786139

`A080374(n+1)/A001223(n+1)`
-/

namespace A083273.P10952218317192786139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080374 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A083273.P10952218317192786139

noncomputable section

/-- A083273: a(n) is the quotient of lcm of first n consecutive prime differences and A001223(n), the n-th difference between consecutive primes.

Offset 1, canonical program `A083273.P10952218317192786139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083273.P10952218317192786139.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080374, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083273.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083535.P10862675203601203932

`A057427(n)+A035158(n+1)`
-/

namespace A083535.P10862675203601203932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A035158 (n + 1)

end

end A083535.P10862675203601203932

noncomputable section

/-- A083535: A version of the Chebyshev function theta(n): a(n) = ceiling(Sum_{primes p <= n } log(p)).

Offset 1, canonical program `A083535.P10862675203601203932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083535 (n : ℕ) : ℤ :=
  A083535.P10862675203601203932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083656.P8217995013209757616

`∑[A007069(n+1)]`
-/

namespace A083656.P8217995013209757616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083656.P8217995013209757616

noncomputable section

/-- A083656: a(n) = Sum_{i=1..n} floor(r*floor(r*i)), where r=sqrt(2).

Offset 1, canonical program `A083656.P8217995013209757616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083656 (n : ℕ) : ℤ :=
  A083656.P8217995013209757616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083921.P10190222312316042375

`gcd(2, A082691(n+1))`
-/

namespace A083921.P10190222312316042375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082691 (n + 1))

end

end A083921.P10190222312316042375

noncomputable section

/-- A083921: Start with (1,2) and then concatenate 2^n+1 previous terms, n>=0 and add 2 if a(2^n+1)=1 or add 1 if a(2^n+1)=2.

Offset 1, canonical program `A083921.P10190222312316042375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083921 (n : ℕ) : ℤ :=
  (A083921.P10190222312316042375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083924.P11615432141212161959

`char[A072795(n)]`
-/

namespace A083924.P11615432141212161959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083924.P11615432141212161959

noncomputable section

/-- A083924: Characteristic function for A072795.

Offset 0, canonical program `A083924.P11615432141212161959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083924 (n : ℕ) : ℤ :=
  (A083924.P11615432141212161959.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084076.P14134499529502510955

`Δ[A064306(n)+A000035(n)]`
-/

namespace A084076.P14134499529502510955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064306 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084076.P14134499529502510955

noncomputable section

/-- A084076: Length of list created by n substitutions k -> Range[-1-abs(k), abs(k)+1] starting with {1}.

Offset 0, canonical program `A084076.P14134499529502510955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A084076 (n : ℕ) : ℤ :=
  A084076.P14134499529502510955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A084076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084984.P8323402415979542972

`eq[A055642(n), A276729(n)]`
-/

namespace A084984.P8323402415979542972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084984.P8323402415979542972

noncomputable section

/-- A084984: Numbers containing no prime digits.

Offset 1, canonical program `A084984.P8323402415979542972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A084984 (n : ℕ) : ℤ :=
  (A084984.P8323402415979542972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A084984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085005.P4566855389398327694

`abs(∑[A085004(n+1)])`
-/

namespace A085005.P4566855389398327694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A085005.P4566855389398327694

noncomputable section

/-- A085005: A Von Koch curve related to the Golden ratio.

Offset 1, canonical program `A085005.P4566855389398327694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085005 (n : ℕ) : ℤ :=
  A085005.P4566855389398327694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085037.P17474095553337422885

`∑[n+1]*A361670(n+1)`
-/

namespace A085037.P17474095553337422885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A361670 (n + 1)

end

end A085037.P17474095553337422885

noncomputable section

/-- A085037: Smallest square divisible by the n-th triangular number (n(n+1)/2).

Offset 1, canonical program `A085037.P17474095553337422885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037 (n : ℕ) : ℤ :=
  A085037.P17474095553337422885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085047.P11606513356394067689

`∑[(n+1)*Δ[n*A134451(n²)]]`
-/

namespace A085047.P11606513356394067689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134451 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085047.P11606513356394067689

noncomputable section

/-- A085047: a(n) is the least number not already used such that the arithmetic mean of the first n terms is a square.

Offset 1, canonical program `A085047.P11606513356394067689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A085047 (n : ℕ) : ℤ :=
  A085047.P11606513356394067689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A085047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085056.P12262074645316044709

`∏[1-A010848(n+1)+n]`
-/

namespace A085056.P12262074645316044709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010848 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A085056.P12262074645316044709

noncomputable section

/-- A085056: (Product of all composite numbers from 1 to n)/ ( product of the prime divisors of all composite numbers up to n). More precisely, denominator = product of the largest squarefree divisors of composite numbers up to n.

Offset 1, canonical program `A085056.P12262074645316044709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A085056 (n : ℕ) : ℤ :=
  A085056.P12262074645316044709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A085056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085057.P15424866120729747992

`A069113(n+1)`
-/

namespace A085057.P15424866120729747992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069113 (n + 1)

end

end A085057.P15424866120729747992

noncomputable section

/-- A085057: a(n) is the smallest integer of the form a*b*c.../p*q*r..., where the numerator and the denominator contain n numbers each and a,b,c,...p,q,r... are all the integers from 1 to 2n.

Offset 1, canonical program `A085057.P15424866120729747992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057 (n : ℕ) : ℤ :=
  A085057.P15424866120729747992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A085057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085455.P11092561144214495539

`(-1)^n*A025565(n+1)`
-/

namespace A085455.P11092561144214495539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A025565 (n + 1)

end

end A085455.P11092561144214495539

noncomputable section

/-- A085455: Sum_{i=0..n} Sum_{j=0..i} a(j) * a(i-j) = (-3)^n.

Offset 0, canonical program `A085455.P11092561144214495539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A085455 (n : ℕ) : ℤ :=
  A085455.P11092561144214495539.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A085455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085556.P17458662161148091975

`eq[2*A276729(n), A055642(n)]`
-/

namespace A085556.P17458662161148091975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085556.P17458662161148091975

noncomputable section

/-- A085556: Numbers that have exactly as many prime digits as nonprime digits.

Offset 1, canonical program `A085556.P17458662161148091975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3212 terms. -/
def A085556 (n : ℕ) : ℤ :=
  (A085556.P17458662161148091975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3212 terms. -/
def A085556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085557.P11800029967216506154

`lt[2*A276729(n), A055642(n)]`
-/

namespace A085557.P11800029967216506154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085557.P11800029967216506154

noncomputable section

/-- A085557: Numbers that have more prime digits than nonprime digits.

Offset 1, canonical program `A085557.P11800029967216506154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2084 terms. -/
def A085557 (n : ℕ) : ℤ :=
  (A085557.P11800029967216506154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2084 terms. -/
def A085557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085558.P6709029927985617951

`lt[log2(A055642(n)), A276729(n)]`
-/

namespace A085558.P6709029927985617951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A055642 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085558.P6709029927985617951

noncomputable section

/-- A085558: Numbers that have more nonprime digits than prime digits.

Offset 1, canonical program `A085558.P6709029927985617951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4705 terms. -/
def A085558 (n : ℕ) : ℤ :=
  (A085558.P6709029927985617951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4705 terms. -/
def A085558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085598.P14870247663285452881

`A000040(A067790(n+1))`
-/

namespace A085598.P14870247663285452881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067790 (n + 1)).toNat

end

end A085598.P14870247663285452881

noncomputable section

/-- A085598: Primes p with same final decimal digit as k, p = prime(k).

Offset 1, canonical program `A085598.P14870247663285452881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A085598 (n : ℕ) : ℤ :=
  A085598.P14870247663285452881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A085598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085857.P7015236969866212170

`∑{digits}[A000045(n), A004198(#+1)]`
-/

namespace A085857.P7015236969866212170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004198 (x + 1)).sum

end

end A085857.P7015236969866212170

noncomputable section

/-- A085857: Number of 3's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085857.P7015236969866212170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085857 (n : ℕ) : ℤ :=
  A085857.P7015236969866212170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085949.P14222808602695038026

`A109805(n+1)/A057467(n+1)`
-/

namespace A085949.P14222808602695038026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) : ℚ) / (A057467 (n + 1) : ℚ)

end

end A085949.P14222808602695038026

noncomputable section

/-- A085949: Smallest multiple of prime(n) of the form r*prime(n-1) + s*prime(n+1) with r and s positive integers.

Offset 2, canonical program `A085949.P14222808602695038026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085949.P14222808602695038026.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087246.P10500642122879157726

`lt[A326143(n+1)+1, 1]+1`
-/

namespace A087246.P10500642122879157726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A087246.P10500642122879157726

noncomputable section

/-- A087246: Squarefree deficient numbers.

Offset 1, canonical program `A087246.P10500642122879157726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087246 (n : ℕ) : ℤ :=
  (A087246.P10500642122879157726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087401.P10568550885334757291

`A079904(n)-A112367(n)`
-/

namespace A087401.P10568550885334757291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n - A112367 n

end

end A087401.P10568550885334757291

noncomputable section

/-- A087401: Triangle of n*r-binomial(r+1,2).

Offset 0, canonical program `A087401.P10568550885334757291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401 (n : ℕ) : ℤ :=
  A087401.P10568550885334757291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087421.P6567527335620102044

`A007918(A000142(n))`
-/

namespace A087421.P6567527335620102044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000142 n).toNat

end

end A087421.P6567527335620102044

noncomputable section

/-- A087421: Smallest prime >= n!.

Offset 0, canonical program `A087421.P6567527335620102044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087421 (n : ℕ) : ℤ :=
  A087421.P6567527335620102044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088172.P13913532499432575805

`Δ[A010060(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A088172.P13913532499432575805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A088172.P13913532499432575805

noncomputable section

/-- A088172: First differences of A019300.

Offset 1, canonical program `A088172.P13913532499432575805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A088172 (n : ℕ) : ℤ :=
  A088172.P13913532499432575805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A088172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088307.P12779661996335787613

`A054521(n+1)*A070216(n+1)`
-/

namespace A088307.P12779661996335787613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A070216 (n + 1)

end

end A088307.P12779661996335787613

noncomputable section

/-- A088307: Triangle, read by rows, T(n,k) = n^2 + k^2 if gcd(n,k)=1, otherwise 0.

Offset 1, canonical program `A088307.P12779661996335787613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307 (n : ℕ) : ℤ :=
  A088307.P12779661996335787613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088404.P14520106302720198041

`A069537(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088404.P14520106302720198041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069537 (n + 1) : ℚ) / 2

end

end A088404.P14520106302720198041

noncomputable section

/-- A088404: a(n) = A069537(n)/2.

Offset 1, canonical program `A088404.P14520106302720198041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088404.P14520106302720198041.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069537, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088636.P7304659136786252971

`∑[A073846(n+1)]`
-/

namespace A088636.P7304659136786252971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088636.P7304659136786252971

noncomputable section

/-- A088636: a(1) = 1, a(2n+1) - a(2n) = composite(n), a(2n) - a(2n-1) = prime(n).

Offset 1, canonical program `A088636.P7304659136786252971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088636 (n : ℕ) : ℤ :=
  A088636.P7304659136786252971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088954.P1995228907627646483

`∑[A088932(floor(n/2))]`
-/

namespace A088954.P1995228907627646483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088954.P1995228907627646483

noncomputable section

/-- A088954: G.f.: 1/((1-x)^2*(1-x^2)*(1-x^4)*(1-x^8)*(1-x^16)).

Offset 0, canonical program `A088954.P1995228907627646483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088954 (n : ℕ) : ℤ :=
  A088954.P1995228907627646483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089193.P2689755802632067634

`A087915(n+1)+5`
-/

namespace A089193.P2689755802632067634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + 5

end

end A089193.P2689755802632067634

noncomputable section

/-- A089193: Odd numbers n such that 2*n-7 is a prime of the form 4*k+3.

Offset 1, canonical program `A089193.P2689755802632067634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089193 (n : ℕ) : ℤ :=
  A089193.P2689755802632067634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089193.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089310.P13975828915729620657

`A089309(and(n, and(n, -n)+n))`
-/

namespace A089310.P13975828915729620657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.land (n : ℤ) (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ))).toNat

end

end A089310.P13975828915729620657

noncomputable section

/-- A089310: Write n in binary; a(n) = number of 1's in second block of 1's from right.

Offset 0, canonical program `A089310.P13975828915729620657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089310 (n : ℕ) : ℤ :=
  A089310.P13975828915729620657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089438.P17160099628666241984

`p?[A059325(n+1)-1]`
-/

namespace A089438.P17160099628666241984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089438.P17160099628666241984

noncomputable section

/-- A089438: Primes p such that 6p+11 is also a prime.

Offset 1, canonical program `A089438.P17160099628666241984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A089438 (n : ℕ) : ℤ :=
  A089438.P17160099628666241984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A089438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089532.P9564145114112840937

`eq[2, A023574(n+1)]+1`
-/

namespace A089532.P9564145114112840937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089532.P9564145114112840937

noncomputable section

/-- A089532: A089531 indexed by A000040.

Offset 1, canonical program `A089532.P9564145114112840937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A089532 (n : ℕ) : ℤ :=
  (A089532.P9564145114112840937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A089532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089802.P8029284349685483497

`(-1)^n*A089801(n)`
-/

namespace A089802.P8029284349685483497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089801 n

end

end A089802.P8029284349685483497

noncomputable section

/-- A089802: Expansion of q^(-1/3) * (theta_4(q^3) - theta_4(q^(1/3))) / 2 in powers of q.

Offset 0, canonical program `A089802.P8029284349685483497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089802 (n : ℕ) : ℤ :=
  A089802.P8029284349685483497.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089885.P1173999436066859406

`A000007(A080099(n))`
-/

namespace A089885.P1173999436066859406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A080099 n).toNat

end

end A089885.P1173999436066859406

noncomputable section

/-- A089885: Triangle A046899 read mod 2.

Offset 0, canonical program `A089885.P1173999436066859406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089885 (n : ℕ) : ℤ :=
  A089885.P1173999436066859406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090317.P5857673356716832628

`2*A007854(n)-A049027(n+1)`
-/

namespace A090317.P5857673356716832628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A049027 (n + 1)

end

end A090317.P5857673356716832628

noncomputable section

/-- A090317: Row sums of triangle in A090285.

Offset 0, canonical program `A090317.P5857673356716832628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A090317 (n : ℕ) : ℤ :=
  A090317.P5857673356716832628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A090317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090456.P17686802437551644839

`A065091(lt[A000120(n+1), A014499(n+1)])`
-/

namespace A090456.P17686802437551644839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A090456.P17686802437551644839

noncomputable section

/-- A090456: Primes prime(k) having more binary 1's than k.

Offset 1, canonical program `A090456.P17686802437551644839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7484 terms. -/
def A090456 (n : ℕ) : ℤ :=
  A090456.P17686802437551644839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7484 terms. -/
def A090456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090457.P10654674990905601731

`A065091(lt[A014499(n+1), A000120(n+1)])`
-/

namespace A090457.P10654674990905601731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A090457.P10654674990905601731

noncomputable section

/-- A090457: Primes prime(k) having fewer binary 1's than k.

Offset 1, canonical program `A090457.P10654674990905601731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1416 terms. -/
def A090457 (n : ℕ) : ℤ :=
  A090457.P10654674990905601731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1416 terms. -/
def A090457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090532.P3929399659927491439

`a(A065855(n+1))+1` with `a(0)=0`
-/

namespace A090532.P3929399659927491439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A065855 (n + 1)).toNat + 1

end

end A090532.P3929399659927491439

noncomputable section

/-- A090532: Let f(n) = n - pi(n) = A062298(n). Then a(n) = least number of steps such that f(f(...(n))) = 1.

Offset 1, canonical program `A090532.P3929399659927491439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090532 (n : ℕ) : ℤ :=
  (A090532.P3929399659927491439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090670.P8610966387605569098

`A087915(n+1)+3`
-/

namespace A090670.P8610966387605569098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + 3

end

end A090670.P8610966387605569098

noncomputable section

/-- A090670: Odd numbers k such that 2*k-3 is a prime of the form 4*j+3.

Offset 1, canonical program `A090670.P8610966387605569098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090670 (n : ℕ) : ℤ :=
  A090670.P8610966387605569098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091043.P11042620095569130574

`A091044(n+1)/A006519(∑[char[∑[n]]])`
-/

namespace A091043.P11042620095569130574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091044 (n + 1) : ℚ) / (A006519 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A091043.P11042620095569130574

noncomputable section

/-- A091043: Normalized triangle of odd numbered entries of even numbered rows of Pascal's triangle A007318.

Offset 1, canonical program `A091043.P11042620095569130574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091043.P11042620095569130574.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091338.P7387993790083234101

`Δ[A005811(n)]*A049347(n)`
-/

namespace A091338.P7387993790083234101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A049347 n

end

end A091338.P7387993790083234101

noncomputable section

/-- A091338: a(n) = (3/n), where (k/n) is the Kronecker symbol.

Offset 1, canonical program `A091338.P7387993790083234101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091338 (n : ℕ) : ℤ :=
  A091338.P7387993790083234101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091370.P726466629597876863

`A011117(A099375(n)+n)`
-/

namespace A091370.P726466629597876863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A099375 n + (n : ℤ)).toNat

end

end A091370.P726466629597876863

noncomputable section

/-- A091370: Triangle read by rows: T(n,k) is the number of dissections of a convex n-gon by nonintersecting diagonals, having a k-gon over a fixed edge (base).

Offset 3, canonical program `A091370.P726466629597876863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. -/
def A091370 (n : ℕ) : ℤ :=
  A091370.P726466629597876863.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. -/
def A091370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091711.P8626350613876079552

`∑[Δ[n²]-Δ[A159918(n)]]`
-/

namespace A091711.P8626350613876079552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091711.P8626350613876079552

noncomputable section

/-- A091711: Exponent of 2 in (n^2)!.

Offset 1, canonical program `A091711.P8626350613876079552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A091711 (n : ℕ) : ℤ :=
  A091711.P8626350613876079552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A091711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091773.P6565989770376659951

`A069906(2*n)+A002621(n)`
-/

namespace A091773.P6565989770376659951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069906 (2 * n) + A002621 n

end

end A091773.P6565989770376659951

noncomputable section

/-- A091773: G.f.: Product((1+x^i)/(1-x^i),i=1..n-1)/(1-x^n), with n = 5.

Offset 0, canonical program `A091773.P6565989770376659951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773 (n : ℕ) : ℤ :=
  A091773.P6565989770376659951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A091773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092502.P4607441725892613552

`A023896(n+1)/A048671(n+1)`
-/

namespace A092502.P4607441725892613552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A092502.P4607441725892613552

noncomputable section

/-- A092502: First derivative of cyclotomic(n,x) evaluated at x=1.

Offset 1, canonical program `A092502.P4607441725892613552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092502.P4607441725892613552.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092620.P17008262234244374479

`eq[A276729(n)+1, A055642(n)]`
-/

namespace A092620.P17008262234244374479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092620.P17008262234244374479

noncomputable section

/-- A092620: Numbers with exactly one prime digit.

Offset 1, canonical program `A092620.P17008262234244374479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A092620 (n : ℕ) : ℤ :=
  (A092620.P17008262234244374479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A092620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092624.P5299980934081124882

`eq[A276729(n)+2, A055642(n)]`
-/

namespace A092624.P5299980934081124882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092624.P5299980934081124882

noncomputable section

/-- A092624: Numbers with exactly two prime digits.

Offset 1, canonical program `A092624.P5299980934081124882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A092624 (n : ℕ) : ℤ :=
  (A092624.P5299980934081124882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3456 terms. -/
def A092624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092626.P14541878196379180679

`p?[eq[1, A276729(n)]]`
-/

namespace A092626.P14541878196379180679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092626.P14541878196379180679

noncomputable section

/-- A092626: Primes with one nonprime digit.

Offset 1, canonical program `A092626.P14541878196379180679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A092626 (n : ℕ) : ℤ :=
  (A092626.P14541878196379180679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A092626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092627.P9592149620023770609

`p?[eq[2, A276729(n)]]`
-/

namespace A092627.P9592149620023770609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092627.P9592149620023770609

noncomputable section

/-- A092627: Primes with exactly two nonprime digits.

Offset 1, canonical program `A092627.P9592149620023770609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A092627 (n : ℕ) : ℤ :=
  (A092627.P9592149620023770609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A092627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092628.P4218772193652976516

`p?[eq[3, A276729(n)]]`
-/

namespace A092628.P4218772193652976516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092628.P4218772193652976516

noncomputable section

/-- A092628: Primes with exactly three nonprime digits.

Offset 1, canonical program `A092628.P4218772193652976516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A092628 (n : ℕ) : ℤ :=
  (A092628.P4218772193652976516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A092628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092630.P6093579132525366148

`eq[gcd(n, A007918(n)), A276729(n)]`
-/

namespace A092630.P6093579132525366148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007918 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092630.P6093579132525366148

noncomputable section

/-- A092630: Nonprime numbers with exactly one nonprime digit.

Offset 1, canonical program `A092630.P6093579132525366148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1530 terms. -/
def A092630 (n : ℕ) : ℤ :=
  (A092630.P6093579132525366148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1530 terms. -/
def A092630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092910.P13158733223661204110

`5-A088431(n+1)`
-/

namespace A092910.P13158733223661204110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A088431 (n + 1)

end

end A092910.P13158733223661204110

noncomputable section

/-- A092910: a(n) is the (3n+2)-th component of the continued fraction for sum(k>=0,2^(-k!)).

Offset 0, canonical program `A092910.P13158733223661204110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092910 (n : ℕ) : ℤ :=
  A092910.P13158733223661204110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093304.P2617661038661647900

`A000071(n+2)+A000079(n)-A092176(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093304.P2617661038661647900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + A000079 n - A092176 n

end

end A093304.P2617661038661647900

noncomputable section

/-- A093304: a(n) = A000071(n+1) + A000079(n-1) - A092176(n-1).

Offset 1, canonical program `A093304.P2617661038661647900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093304 (n : ℕ) : ℤ :=
  A093304.P2617661038661647900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093419.P5391515486937506102

`lcm(2, A027611(n+2))/2`
-/

namespace A093419.P5391515486937506102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A027611 (n + 2)) : ℚ) / 2

end

end A093419.P5391515486937506102

noncomputable section

/-- A093419: Denominators of row sums in triangle described in A093412.

Offset 1, canonical program `A093419.P5391515486937506102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A093419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093419.P5391515486937506102.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A093419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093421.P16990172732608459439

`gcd(or(1, A121757(n)), A061885(n))`
-/

namespace A093421.P16990172732608459439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lor 1 (A121757 n)) (A061885 n)

end

end A093421.P16990172732608459439

noncomputable section

/-- A093421: Triangle read by rows: T(n,k) is the denominator of f(n, k) = (Product_{i = 0..k-1} (n-i))/(Sum_{i = 1..k} i) for 1 <= k <= n.

Offset 1, canonical program `A093421.P16990172732608459439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093421 (n : ℕ) : ℤ :=
  (A093421.P16990172732608459439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093658.P16333169482803331583

`A047999(n)*A093659(A025581(n))`
-/

namespace A093658.P16333169482803331583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A093659 (A025581 n).toNat

end

end A093658.P16333169482803331583

noncomputable section

/-- A093658: Lower triangular matrix, read by rows, defined as the convergent of the concatenation of matrices using the iteration: M(n+1) = [[M(n),0*M(n)],[M(n)^2,M(n)]], with M(0) = [1].

Offset 1, canonical program `A093658.P16333169482803331583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093658 (n : ℕ) : ℤ :=
  A093658.P16333169482803331583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094058.P6868808521383902918

`lt[0, A004593(n+2)]+1`
-/

namespace A094058.P6868808521383902918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094058.P6868808521383902918

noncomputable section

/-- A094058: Positions of ones in binary expansion of e/4.

Offset 1, canonical program `A094058.P6868808521383902918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5021 terms. -/
def A094058 (n : ℕ) : ℤ :=
  (A094058.P6868808521383902918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5021 terms. -/
def A094058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094105.P14354361594551790093

`p?[A034961(n+1)+A031131(n+1)]`
-/

namespace A094105.P14354361594551790093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P14354361594551790093

noncomputable section

/-- A094105: Primes of the form prime(k) + 2*prime(k+1).

Offset 1, canonical program `A094105.P14354361594551790093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A094105 (n : ℕ) : ℤ :=
  A094105.P14354361594551790093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A094105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094116.P13820343816343530618

`∑[A093348(n+1)]`
-/

namespace A094116.P13820343816343530618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094116.P13820343816343530618

noncomputable section

/-- A094116: Partial sums of A093348.

Offset 1, canonical program `A094116.P13820343816343530618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3022 terms. -/
def A094116 (n : ℕ) : ℤ :=
  A094116.P13820343816343530618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3022 terms. -/
def A094116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095375.P18308947654530524366

`∑[A014499(n+1)]`
-/

namespace A095375.P18308947654530524366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095375.P18308947654530524366

noncomputable section

/-- A095375: Total number of 1's in the binary expansions of the first n primes: summatory A014499.

Offset 1, canonical program `A095375.P18308947654530524366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095375 (n : ℕ) : ℤ :=
  A095375.P18308947654530524366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095409.P14206144317801297067

`lt[A095408(n+1), 0]+1`
-/

namespace A095409.P14206144317801297067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095409.P14206144317801297067

noncomputable section

/-- A095409: Numbers k such that total number of decimal digits of all distinct prime factors of k is smaller than number of digits of k.

Offset 1, canonical program `A095409.P14206144317801297067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A095409 (n : ℕ) : ℤ :=
  (A095409.P14206144317801297067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. -/
def A095409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095410.P5149493800954626937

`eq[0, A095408(n+1)]+1`
-/

namespace A095410.P5149493800954626937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095410.P5149493800954626937

noncomputable section

/-- A095410: Numbers n such that total number of decimal digits of all distinct prime factors of n equals the number of digits of n.

Offset 1, canonical program `A095410.P5149493800954626937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A095410 (n : ℕ) : ℤ :=
  (A095410.P5149493800954626937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4956 terms. -/
def A095410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095411.P6201714900269335947

`lt[0, A095408(n+1)]+1`
-/

namespace A095411.P6201714900269335947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A095411.P6201714900269335947

noncomputable section

/-- A095411: Numbers k such that total number of decimal digits of all distinct prime factors of k is larger than the number of digits of k.

Offset 1, canonical program `A095411.P6201714900269335947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6619 terms. -/
def A095411 (n : ℕ) : ℤ :=
  (A095411.P6201714900269335947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6619 terms. -/
def A095411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095649.P15105114885412916824

`A004139(eq[8, A036263(n+1)])`
-/

namespace A095649.P15105114885412916824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095649.P15105114885412916824

noncomputable section

/-- A095649: Primes p = p_(n+1) such that p_n + p_(n+2) = 2*p_(n+1) + 8.

Offset 1, canonical program `A095649.P15105114885412916824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A095649 (n : ℕ) : ℤ :=
  A095649.P15105114885412916824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A095649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095801.P16736391009877272143

`A001263(n+1)*A208355(A099375(n))`
-/

namespace A095801.P16736391009877272143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A208355 (A099375 n).toNat

end

end A095801.P16736391009877272143

noncomputable section

/-- A095801: Square of Narayana triangle A001263: View A001263 as a lower triangular matrix. Then the square of that matrix is also lower triangular. Sequence gives this lower triangle, read by rows.

Offset 1, canonical program `A095801.P16736391009877272143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6359 terms. -/
def A095801 (n : ℕ) : ℤ :=
  A095801.P16736391009877272143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6359 terms. -/
def A095801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095866.P11179933391095799096

`10^(n+1)-1-A095864(n+1)`
-/

namespace A095866.P11179933391095799096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - 1 - A095864 (n + 1)

end

end A095866.P11179933391095799096

noncomputable section

/-- A095866: Largest n-digit number - largest n-digit triangular number.

Offset 1, canonical program `A095866.P11179933391095799096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095866 (n : ℕ) : ℤ :=
  A095866.P11179933391095799096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095864, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096035.P15456840272449225223

`A000975(A099375(n))*A074909(n)`
-/

namespace A096035.P15456840272449225223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A099375 n).toNat * A074909 n

end

end A096035.P15456840272449225223

noncomputable section

/-- A096035: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^4-M)/3, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096035.P15456840272449225223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096035 (n : ℕ) : ℤ :=
  A096035.P15456840272449225223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096043.P12251455895721356345

`A006342(A099375(n))*A074909(n)`
-/

namespace A096043.P12251455895721356345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (A099375 n).toNat * A074909 n

end

end A096043.P12251455895721356345

noncomputable section

/-- A096043: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^9-M)/8, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096043.P12251455895721356345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5158 terms. -/
def A096043 (n : ℕ) : ℤ :=
  A096043.P12251455895721356345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5158 terms. -/
def A096043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096044.P15577968179775367660

`A074909(n)*A094026(A099375(n))`
-/

namespace A096044.P15577968179775367660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A094026 (A099375 n).toNat

end

end A096044.P15577968179775367660

noncomputable section

/-- A096044: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^10-M)/9, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

Offset 1, canonical program `A096044.P15577968179775367660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4759 terms. -/
def A096044 (n : ℕ) : ℤ :=
  A096044.P15577968179775367660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4759 terms. -/
def A096044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096405.P13414936456104695719

`eq[A023416(n), A077267(n)]`
-/

namespace A096405.P13414936456104695719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P13414936456104695719

noncomputable section

/-- A096405: Numbers having an equal number of zeros in their binary and ternary representations.

Offset 1, canonical program `A096405.P13414936456104695719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A096405 (n : ℕ) : ℤ :=
  (A096405.P13414936456104695719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A096405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096902.P357135158488442827

`A000720(floor(A096218(n+1)/5))`
-/

namespace A096902.P357135158488442827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(A096218 (n + 1) : ℚ) / 5⌋.toNat

end

end A096902.P357135158488442827

noncomputable section

/-- A096902: Numbers n such that 3*prime(n) + 2*prime(n+1) is prime.

Offset 1, canonical program `A096902.P357135158488442827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A096902 (n : ℕ) : ℤ :=
  A096902.P357135158488442827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. -/
def A096902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097069.P18192174897570610825

`A089192(n+1)+1`
-/

namespace A097069.P18192174897570610825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 1

end

end A097069.P18192174897570610825

noncomputable section

/-- A097069: Positive integers n such that 2n - 9 is prime.

Offset 1, canonical program `A097069.P18192174897570610825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097069 (n : ℕ) : ℤ :=
  A097069.P18192174897570610825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097452.P4779352600059857251

`p?[A022797(n+1)]`
-/

namespace A097452.P4779352600059857251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097452.P4779352600059857251

noncomputable section

/-- A097452: Primes of the form prime(k) + nonprime(k) for some k.

Offset 1, canonical program `A097452.P4779352600059857251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. -/
def A097452 (n : ℕ) : ℤ :=
  A097452.P4779352600059857251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1105 terms. -/
def A097452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097997.P8265961898692889889

`p?[A034961(n+1)+A031167(n+1)]`
-/

namespace A097997.P8265961898692889889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A031167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097997.P8265961898692889889

noncomputable section

/-- A097997: Primes of the form prime(n) + prime(n+1) + prime(n+4).

Offset 1, canonical program `A097997.P8265961898692889889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A097997 (n : ℕ) : ℤ :=
  A097997.P8265961898692889889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A097997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098032.P17836810842318808486

`p?[A006254(n+1)+A005097(n+6)]`
-/

namespace A098032.P17836810842318808486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + A005097 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098032.P17836810842318808486

noncomputable section

/-- A098032: Primes p such that p = (prime(n)+ prime(n+5))/2.

Offset 1, canonical program `A098032.P17836810842318808486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A098032 (n : ℕ) : ℤ :=
  A098032.P17836810842318808486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A098032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098059.P11755285612293814488

`A000040(eq[1, A080378(n+1)+1]+1)`
-/

namespace A098059.P11755285612293814488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A098059.P11755285612293814488

noncomputable section

/-- A098059: Primes preceding gaps divisible by 4.

Offset 1, canonical program `A098059.P11755285612293814488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059 (n : ℕ) : ℤ :=
  A098059.P11755285612293814488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4137 terms. -/
def A098059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098220.P2076552491029807430

`A098219(p?[xor(1, n)])`
-/

namespace A098220.P2076552491029807430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098220.P2076552491029807430

noncomputable section

/-- A098220: a(n) = floor(sigma(sigma(p))/p) = floor(sigma(p+1)/p) = floor(A008333(n)/p), where p is the n-th prime number.

Offset 1, canonical program `A098220.P2076552491029807430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098220 (n : ℕ) : ℤ :=
  A098220.P2076552491029807430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098354.P12141781683194391342

`2*A140513(n)`
-/

namespace A098354.P12141781683194391342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n

end

end A098354.P12141781683194391342

noncomputable section

/-- A098354: Multiplication table of the powers of 2 read by antidiagonals.

Offset 1, canonical program `A098354.P12141781683194391342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098354 (n : ℕ) : ℤ :=
  A098354.P12141781683194391342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098393.P849539689524523398

`A100484(n+1)-A098392(n+1)`
-/

namespace A098393.P849539689524523398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A098392 (n + 1)

end

end A098393.P849539689524523398

noncomputable section

/-- A098393: Prime(n)+Log2(Log2(prime(n))), where Log2=A000523.

Offset 1, canonical program `A098393.P849539689524523398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098393 (n : ℕ) : ℤ :=
  A098393.P849539689524523398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098519.P5124454588413871972

`n*A025237((n-1)%(n+1))`
-/

namespace A098519.P5124454588413871972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025237 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A098519.P5124454588413871972

noncomputable section

/-- A098519: E.g.f. exp(x)*BesselI(1,2*sqrt(3)*x)/sqrt(3).

Offset 0, canonical program `A098519.P5124454588413871972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A098519 (n : ℕ) : ℤ :=
  A098519.P5124454588413871972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A098519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098935.P1627606373687162864

`A092759(n+1)-A135182(n+1)`
-/

namespace A098935.P1627606373687162864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) - A135182 (n + 1)

end

end A098935.P1627606373687162864

noncomputable section

/-- A098935: a(n) = p^7 - p^5 - p^3 - p^2 where p is prime(n).

Offset 1, canonical program `A098935.P1627606373687162864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098935 (n : ℕ) : ℤ :=
  A098935.P1627606373687162864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099034.P5054995373188191690

`∑[3-2*A026517(n+1)]`
-/

namespace A099034.P5054995373188191690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A026517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P5054995373188191690

noncomputable section

/-- A099034: a(n) = Sum_{k=1..n} (-1)^A000120(5*k).

Offset 1, canonical program `A099034.P5054995373188191690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099034 (n : ℕ) : ℤ :=
  A099034.P5054995373188191690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099247.P16575120211893436647

`eq[1, A099244(n+1)]+1`
-/

namespace A099247.P16575120211893436647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099247.P16575120211893436647

noncomputable section

/-- A099247: Numbers such that, in binary representation, the length and the number of ones are coprime.

Offset 1, canonical program `A099247.P16575120211893436647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6875 terms. -/
def A099247 (n : ℕ) : ℤ :=
  (A099247.P16575120211893436647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6875 terms. -/
def A099247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099248.P2494552930136649206

`lt[1, A099244(n+1)]+1`
-/

namespace A099248.P2494552930136649206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A099248.P2494552930136649206

noncomputable section

/-- A099248: Numbers such that length in binary representation and number of ones have a common divisor greater than 1.

Offset 1, canonical program `A099248.P2494552930136649206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. -/
def A099248 (n : ℕ) : ℤ :=
  (A099248.P2494552930136649206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. -/
def A099248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099249.P2801010478195518826

`∑[A063524(A099244(n+1))]`
-/

namespace A099249.P2801010478195518826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A099244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P2801010478195518826

noncomputable section

/-- A099249: Number of numbers not greater than n such that length in binary representation and number of ones are coprime.

Offset 1, canonical program `A099249.P2801010478195518826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099249 (n : ℕ) : ℤ :=
  A099249.P2801010478195518826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099363.P17729703105909125220

`Δ[-A097331(n+1)]`
-/

namespace A099363.P17729703105909125220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099363.P17729703105909125220

noncomputable section

/-- A099363: An inverse Chebyshev transform of 1-x.

Offset 0, canonical program `A099363.P17729703105909125220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A099363 (n : ℕ) : ℤ :=
  A099363.P17729703105909125220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A099363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099364.P1685549905017703622

`Δ[A097331(n+2)]*A000034(n)`
-/

namespace A099364.P1685549905017703622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 n

end

end A099364.P1685549905017703622

noncomputable section

/-- A099364: An inverse Chebyshev transform of (1-x)^2.

Offset 0, canonical program `A099364.P1685549905017703622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A099364 (n : ℕ) : ℤ :=
  A099364.P1685549905017703622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A099364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099389.P3235440162299395356

`p?[A098764(n+1)-3]`
-/

namespace A099389.P3235440162299395356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099389.P3235440162299395356

noncomputable section

/-- A099389: Subsequence of primes in sequence b(n) = 3*prime(n) - prime(n+1) - 3 (A100021).

Offset 1, canonical program `A099389.P3235440162299395356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A099389 (n : ℕ) : ℤ :=
  A099389.P3235440162299395356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A099389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099467.P10187499394579304031

`A022442(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A099467.P10187499394579304031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022442 (n - 1) - a (n - 1)

end

end A099467.P10187499394579304031

noncomputable section

/-- A099467: a(1) = a(2) = 1; for n > 2, a(n) is the smallest number > a(n-1) which is not the sum of 2 consecutive elements of the sequence.

Offset 1, canonical program `A099467.P10187499394579304031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099467 (n : ℕ) : ℤ :=
  A099467.P10187499394579304031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099627.P2788997961149202424

`A048645(n+2)-1`
-/

namespace A099627.P2788997961149202424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2) - 1

end

end A099627.P2788997961149202424

noncomputable section

/-- A099627: Triangle read by rows: T(n,k) = 2^n + 2^k - 1 with n >= k >= 0.

Offset 0, canonical program `A099627.P2788997961149202424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099627 (n : ℕ) : ℤ :=
  A099627.P2788997961149202424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100066.P11903303257243455061

`∑[∑[n%2]*A097331(n)]`
-/

namespace A100066.P11903303257243455061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P11903303257243455061

noncomputable section

/-- A100066: Expansion of x/((1-x)*sqrt(1-4*x^2)).

Offset 0, canonical program `A100066.P11903303257243455061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A100066 (n : ℕ) : ℤ :=
  A100066.P11903303257243455061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A100066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100192.P10449991430075084447

`2*A007854(n)-A000984(n)`
-/

namespace A100192.P10449991430075084447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007854 n - A000984 n

end

end A100192.P10449991430075084447

noncomputable section

/-- A100192: a(n) = Sum_{k=0..n} binomial(2*n,n+k)*2^k.

Offset 0, canonical program `A100192.P10449991430075084447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A100192 (n : ℕ) : ℤ :=
  A100192.P10449991430075084447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A100192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100429.P11083441272266622495

`A022303(comp[2*n+5]+2)`
-/

namespace A100429.P11083441272266622495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A100429.P11083441272266622495

noncomputable section

/-- A100429: Bisection of Kolakoski sequence A000002.

Offset 1, canonical program `A100429.P11083441272266622495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100429 (n : ℕ) : ℤ :=
  A100429.P11083441272266622495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100802.P2917269503347180124

`2*A007918(A065033(n))-n`
-/

namespace A100802.P2917269503347180124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (A065033 n).toNat - (n : ℤ)

end

end A100802.P2917269503347180124

noncomputable section

/-- A100802: a(n) = least k >= 0 such that (n+k)/2 is prime.

Offset 0, canonical program `A100802.P2917269503347180124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100802 (n : ℕ) : ℤ :=
  A100802.P2917269503347180124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101555.P877821324375609163

`A010060(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A101555.P877821324375609163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 n + 3 * a (n - 1)

end

end A101555.P877821324375609163

noncomputable section

/-- A101555: Convolution of A010060 and A000244.

Offset 0, canonical program `A101555.P877821324375609163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A101555 (n : ℕ) : ℤ :=
  A101555.P877821324375609163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A101555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101556.P9246590953496817602

`A010060(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A101556.P9246590953496817602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 n + 10 * a (n - 1)

end

end A101556.P9246590953496817602

noncomputable section

/-- A101556: A Thue-Morse convolution.

Offset 0, canonical program `A101556.P9246590953496817602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A101556 (n : ℕ) : ℤ :=
  A101556.P9246590953496817602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A101556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101650.P6445489699259495269

`(A002487(n+1)-1)%3`
-/

namespace A101650.P6445489699259495269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (n + 1) - 1) 3

end

end A101650.P6445489699259495269

noncomputable section

/-- A101650: A Thue-Morse-Stern sequence.

Offset 0, canonical program `A101650.P6445489699259495269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101650 (n : ℕ) : ℤ :=
  A101650.P6445489699259495269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101660.P15238381681422468022

`1-Δ[A007302(n)]`
-/

namespace A101660.P15238381681422468022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A101660.P15238381681422468022

noncomputable section

/-- A101660: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 12.

Offset 0, canonical program `A101660.P15238381681422468022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101660 (n : ℕ) : ℤ :=
  A101660.P15238381681422468022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101673.P15412235099696167501

`gcd(2, n)*A010060(n)`
-/

namespace A101673.P15412235099696167501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A010060 n

end

end A101673.P15412235099696167501

noncomputable section

/-- A101673: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 20.

Offset 0, canonical program `A101673.P15412235099696167501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101673 (n : ℕ) : ℤ :=
  A101673.P15412235099696167501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101674.P11494463839896824026

`gcd(2, n)*A000035(A089309(n))`
-/

namespace A101674.P11494463839896824026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A000035 (A089309 n).toNat

end

end A101674.P11494463839896824026

noncomputable section

/-- A101674: Fixed point of morphism 0 -> 01, 1 -> 20, 2 -> 21.

Offset 0, canonical program `A101674.P11494463839896824026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101674 (n : ℕ) : ℤ :=
  A101674.P11494463839896824026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102494.P7805800785029602726

`comp[A102493(n+1)]`
-/

namespace A102494.P7805800785029602726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102494.P7805800785029602726

noncomputable section

/-- A102494: Numbers in base-60 representation that cannot be written with decimal digits.

Offset 1, canonical program `A102494.P7805800785029602726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A102494 (n : ℕ) : ℤ :=
  (A102494.P7805800785029602726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A102494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103208.P184489622645366464

`eq[9, dr(A007504(n)²)]`
-/

namespace A103208.P184489622645366464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103208.P184489622645366464

noncomputable section

/-- A103208: Numbers k such that 3 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A103208.P184489622645366464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103208 (n : ℕ) : ℤ :=
  (A103208.P184489622645366464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103638.P17610773162151623303

`A103637(n+1)-A103440(n+1)`
-/

namespace A103638.P17610773162151623303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103637 (n + 1) - A103440 (n + 1)

end

end A103638.P17610773162151623303

noncomputable section

/-- A103638: a(n) = Sum_{d|n, d==2 mod 3} d^2.

Offset 1, canonical program `A103638.P17610773162151623303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103638 (n : ℕ) : ℤ :=
  A103638.P17610773162151623303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104080.P2628032959439395287

`A007918(2^n)`
-/

namespace A104080.P2628032959439395287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 ^ n)

end

end A104080.P2628032959439395287

noncomputable section

/-- A104080: Smallest prime >= 2^n.

Offset 0, canonical program `A104080.P2628032959439395287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104080 (n : ℕ) : ℤ :=
  A104080.P2628032959439395287.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104081.P13360857715571968060

`A007918(A000244(n))`
-/

namespace A104081.P13360857715571968060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000244 n).toNat

end

end A104081.P13360857715571968060

noncomputable section

/-- A104081: Smallest prime >= 3^n.

Offset 0, canonical program `A104081.P13360857715571968060`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104081 (n : ℕ) : ℤ :=
  A104081.P13360857715571968060.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104093.P9972697725533396511

`A014234(3*(n+1))`
-/

namespace A104093.P9972697725533396511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (3 * (n + 1))

end

end A104093.P9972697725533396511

noncomputable section

/-- A104093: Largest prime <= 8^n.

Offset 1, canonical program `A104093.P9972697725533396511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A104093 (n : ℕ) : ℤ :=
  A104093.P9972697725533396511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A104093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104108.P4969692448280166789

`A010060(record[A092412(n+1)+A008619(n)])`
-/

namespace A104108.P4969692448280166789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (n + 1) + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104108.P4969692448280166789

noncomputable section

/-- A104108: a(1) = 1, c(1)=1, if A(k) = sequence of first c(k) terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k)B(k) and c(k+1)= 2*c(k) if a(k) = 1, A(k+1) = A(k),0,B(k) and c(k+1)= 2*c(k)+1 if a(k) = 0.

Offset 1, canonical program `A104108.P4969692448280166789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104108 (n : ℕ) : ℤ :=
  A104108.P4969692448280166789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104280.P970002712020775772

`(A049591(n+1)+1)/2`
-/

namespace A104280.P970002712020775772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049591 (n + 1) + 1 : ℚ) / 2

end

end A104280.P970002712020775772

noncomputable section

/-- A104280: Numbers n such that 2n+1 is not prime and 2n-1 is prime.

Offset 1, canonical program `A104280.P970002712020775772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104280 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104280.P970002712020775772.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104496.P18327460265736652066

`A099324(n)+A168491(n)-A033999(n)`
-/

namespace A104496.P18327460265736652066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099324 n + (A168491 n - A033999 n)

end

end A104496.P18327460265736652066

noncomputable section

/-- A104496: Expansion of 2*(2*x+1)/((x+1)*(sqrt(4*x+1)+1)).

Offset 0, canonical program `A104496.P18327460265736652066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A104496 (n : ℕ) : ℤ :=
  A104496.P18327460265736652066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A104496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104530.P10775864358818668256

`lcm(2, A076035(n))-A076025(n)`
-/

namespace A104530.P10775864358818668256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A076035 n) : ℤ) - A076025 n

end

end A104530.P10775864358818668256

noncomputable section

/-- A104530: Expansion of (1+sqrt(1-4x))/(4sqrt(1-4x)-2).

Offset 0, canonical program `A104530.P10775864358818668256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A104530 (n : ℕ) : ℤ :=
  A104530.P10775864358818668256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A104530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104568.P1447854330914790321

`A037915(A099375(n))`
-/

namespace A104568.P1447854330914790321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A099375 n).toNat

end

end A104568.P1447854330914790321

noncomputable section

/-- A104568: Triangle of numbers that are 0 or 1 mod 3.

Offset 0, canonical program `A104568.P1447854330914790321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104568 (n : ℕ) : ℤ :=
  A104568.P1447854330914790321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104722.P17182887965710500432

`A059348(n+2)-A000007(n)`
-/

namespace A104722.P17182887965710500432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059348 (n + 2) - A000007 n

end

end A104722.P17182887965710500432

noncomputable section

/-- A104722: Self-convolution of repeated Catalan numbers.

Offset 0, canonical program `A104722.P17182887965710500432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A104722 (n : ℕ) : ℤ :=
  A104722.P17182887965710500432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A104722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104733.P14033359084981660770

`A058071(A112367(n))*A104582(n+1)`
-/

namespace A104733.P14033359084981660770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A112367 n).toNat * A104582 (n + 1)

end

end A104733.P14033359084981660770

noncomputable section

/-- A104733: Triangle T(n,k) = sum_{j=k..n} Fibonacci(n-j+1)*Fibonacci(k+1), read by rows, 0<=k<=n.

Offset 0, canonical program `A104733.P14033359084981660770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104733 (n : ℕ) : ℤ :=
  A104733.P14033359084981660770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105314.P11378633476736743267

`A117804((n+1)²)`
-/

namespace A105314.P11378633476736743267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 ((n + 1) ^ 2)

end

end A105314.P11378633476736743267

noncomputable section

/-- A105314: Write the natural numbers as an infinite sequence of digits, starting at the left; a(n) is the subset (i.e., the position in this sequence of the "counting digits") of the first digit of the n-th square.

Offset 1, canonical program `A105314.P11378633476736743267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314 (n : ℕ) : ℤ :=
  A105314.P11378633476736743267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A105314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105413.P9477685925488357748

`p?[A024675(n+1)-A162153(n+6)]`
-/

namespace A105413.P9477685925488357748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A162153 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105413.P9477685925488357748

noncomputable section

/-- A105413: Primes p = prime(k) such that both p+2 and prime(k+6)-2 are prime numbers.

Offset 1, canonical program `A105413.P9477685925488357748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413 (n : ℕ) : ℤ :=
  A105413.P9477685925488357748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A105413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105414.P3057525973384244371

`p?[A006093(n+1)-A162153(n+5)]`
-/

namespace A105414.P3057525973384244371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A162153 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105414.P3057525973384244371

noncomputable section

/-- A105414: Primes p = prime(k) such that p+2 and prime(k+7)-2 are both prime numbers.

Offset 1, canonical program `A105414.P3057525973384244371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414 (n : ℕ) : ℤ :=
  A105414.P3057525973384244371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A105414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105511.P8594542549922877954

`∑[char[A105501(n+1)]]`
-/

namespace A105511.P8594542549922877954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105501 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105511.P8594542549922877954

noncomputable section

/-- A105511: Number of times 1 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105511.P8594542549922877954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105511 (n : ℕ) : ℤ :=
  (A105511.P8594542549922877954.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105512.P13085090330306124009

`∑[char[A105502(n+1)]]`
-/

namespace A105512.P13085090330306124009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105512.P13085090330306124009

noncomputable section

/-- A105512: Number of times 2 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105512.P13085090330306124009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105512 (n : ℕ) : ℤ :=
  (A105512.P13085090330306124009.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105513.P16656894288480579329

`∑[char[A105503(n+1)]]`
-/

namespace A105513.P16656894288480579329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105513.P16656894288480579329

noncomputable section

/-- A105513: Number of times 3 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105513.P16656894288480579329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105513 (n : ℕ) : ℤ :=
  (A105513.P16656894288480579329.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105514.P10974530690365182663

`∑[char[A105504(n+1)]]`
-/

namespace A105514.P10974530690365182663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105504 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105514.P10974530690365182663

noncomputable section

/-- A105514: Number of times 4 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105514.P10974530690365182663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105514 (n : ℕ) : ℤ :=
  (A105514.P10974530690365182663.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105523.P5299360234432620638

`A087960(n)*A097331(n)`
-/

namespace A105523.P5299360234432620638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A097331 n

end

end A105523.P5299360234432620638

noncomputable section

/-- A105523: Expansion of 1-x*c(-x^2) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A105523.P5299360234432620638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A105523 (n : ℕ) : ℤ :=
  A105523.P5299360234432620638.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A105523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106060.P15162970793732190485

`∩[A015915(n+1), A023228(n+1)]`
-/

namespace A106060.P15162970793732190485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P15162970793732190485

noncomputable section

/-- A106060: Primes p such that 1*p + 8 and 8*p + 1 are primes.

Offset 1, canonical program `A106060.P15162970793732190485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060 (n : ℕ) : ℤ :=
  (A106060.P15162970793732190485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A106060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106255.P14504416590498202049

`A000217(val(A036561(n), 6)+1)`
-/

namespace A106255.P14504416590498202049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1)

end

end A106255.P14504416590498202049

noncomputable section

/-- A106255: Triangle composed of triangular numbers, row sums = A006918.

Offset 1, canonical program `A106255.P14504416590498202049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255 (n : ℕ) : ℤ :=
  A106255.P14504416590498202049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106272.P8541491872304346101

`A106271(n)-a(n-1)` with `a(0)=1`
-/

namespace A106272.P8541491872304346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106271 n - a (n - 1)

end

end A106272.P8541491872304346101

noncomputable section

/-- A106272: Antidiagonal sums of number triangle A106270.

Offset 0, canonical program `A106272.P8541491872304346101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106272 (n : ℕ) : ℤ :=
  A106272.P8541491872304346101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106314.P15491378883024418281

`(val(A036561(n), 6)+1)²`
-/

namespace A106314.P15491378883024418281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1) ^ 2

end

end A106314.P15491378883024418281

noncomputable section

/-- A106314: Triangle T(n,k) composed of the squares min(n,k)^2.

Offset 1, canonical program `A106314.P15491378883024418281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314 (n : ℕ) : ℤ :=
  (A106314.P15491378883024418281.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106459.P15170386012482602511

`(1-A035214(n))^n`
-/

namespace A106459.P15170386012482602511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A035214 n) ^ n

end

end A106459.P15170386012482602511

noncomputable section

/-- A106459: Expansion of f(-x, -x^3) in powers of x where f(,) is Ramanujan's general theta function.

Offset 0, canonical program `A106459.P15170386012482602511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106459 (n : ℕ) : ℤ :=
  A106459.P15170386012482602511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106841.P8849377993894975428

`8*A091072(n+1)`
-/

namespace A106841.P8849377993894975428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091072 (n + 1)

end

end A106841.P8849377993894975428

noncomputable section

/-- A106841: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+1.

Offset 1, canonical program `A106841.P8849377993894975428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106841 (n : ℕ) : ℤ :=
  A106841.P8849377993894975428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106935.P8140297274515338449

`∩[A002145(n+1), A038890(n+1)]`
-/

namespace A106935.P8140297274515338449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106935.P8140297274515338449

noncomputable section

/-- A106935: Primes of the form 3x^2+2xy+6y^2, with x and y any integer.

Offset 1, canonical program `A106935.P8140297274515338449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A106935 (n : ℕ) : ℤ :=
  (A106935.P8140297274515338449.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A106935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107038.P1274454564014350472

`Δ[A037918(n+1)]`
-/

namespace A107038.P1274454564014350472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107038.P1274454564014350472

noncomputable section

/-- A107038: First differences of indices of squarefree Fibonacci numbers.

Offset 0, canonical program `A107038.P1274454564014350472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A107038 (n : ℕ) : ℤ :=
  A107038.P1274454564014350472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A107038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107060.P14100999910005735281

`(n*A079780(n+1))%(2*(n+1))`
-/

namespace A107060.P14100999910005735281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A079780 (n + 1)) (2 * (n + 1) : ℤ)

end

end A107060.P14100999910005735281

noncomputable section

/-- A107060: a(n) = smallest number m >=0 such that n*prime(n)-m is a prime.

Offset 1, canonical program `A107060.P14100999910005735281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A107060 (n : ℕ) : ℤ :=
  A107060.P14100999910005735281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A107060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107232.P7835727660416448204

`A026010(n)+Δ[A001405(n)]`
-/

namespace A107232.P7835727660416448204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n + (f1 (n + 1) - f1 n)

end

end A107232.P7835727660416448204

noncomputable section

/-- A107232: Expansion of (1+x*c(x^2))^3/sqrt(1-4*x^2), c(x) the g.f. of A000108.

Offset 0, canonical program `A107232.P7835727660416448204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A107232 (n : ℕ) : ℤ :=
  A107232.P7835727660416448204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A107232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107755.P8010610364266313592

`A074938(n+1)-1`
-/

namespace A107755.P8010610364266313592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - 1

end

end A107755.P8010610364266313592

noncomputable section

/-- A107755: Numbers k such that Sum_{j=1..k} Catalan(j) == 0 (mod 3).

Offset 1, canonical program `A107755.P8010610364266313592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A107755 (n : ℕ) : ℤ :=
  A107755.P8010610364266313592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A107755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107987.P5415694799470960516

`A049591(n+1)+2`
-/

namespace A107987.P5415694799470960516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1) + 2

end

end A107987.P5415694799470960516

noncomputable section

/-- A107987: Odd composite numbers of the form p+2 where p is prime.

Offset 1, canonical program `A107987.P5415694799470960516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987 (n : ℕ) : ℤ :=
  A107987.P5415694799470960516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107987.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108178.P13174187955981682460

`2*A107968(n)-A107956(n)`
-/

namespace A108178.P13174187955981682460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107968 n - A107956 n

end

end A108178.P13174187955981682460

noncomputable section

/-- A108178: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(7n^2 + 23n + 20)/2880.

Offset 0, canonical program `A108178.P13174187955981682460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108178 (n : ℕ) : ℤ :=
  A108178.P13174187955981682460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108358.P14957281117479450170

`1-A021913(A004198(n))`
-/

namespace A108358.P14957281117479450170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A021913 (A004198 n).toNat

end

end A108358.P14957281117479450170

noncomputable section

/-- A108358: A mod 2 triangle based on floor((n+2)/2).

Offset 0, canonical program `A108358.P14957281117479450170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358 (n : ℕ) : ℤ :=
  A108358.P14957281117479450170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108581.P11690575044026609258

`C(A056556(n)+2, 2)`
-/

namespace A108581.P11690575044026609258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056556 n + 2).toNat 2

end

end A108581.P11690575044026609258

noncomputable section

/-- A108581: Positive triangular numbers repeated their own number of times.

Offset 1, canonical program `A108581.P11690575044026609258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108581 (n : ℕ) : ℤ :=
  (A108581.P11690575044026609258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108595.P5830331830864878917

`A102338(n+8)-10`
-/

namespace A108595.P5830331830864878917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 8) - 10

end

end A108595.P5830331830864878917

noncomputable section

/-- A108595: Numbers k such that 10*k + 103 is prime.

Offset 1, canonical program `A108595.P5830331830864878917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A108595 (n : ℕ) : ℤ :=
  A108595.P5830331830864878917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A108595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108624.P11110063196872125649

`A007440(n)-a(n-1)` with `a(0)=1`
-/

namespace A108624.P11110063196872125649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007440 n - a (n - 1)

end

end A108624.P11110063196872125649

noncomputable section

/-- A108624: G.f. satisfies x = A(x)*(1+A(x))/(1-A(x)-(A(x))^2).

Offset 1, canonical program `A108624.P11110063196872125649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108624 (n : ℕ) : ℤ :=
  A108624.P11110063196872125649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108763.P3829992224626505531

`A092486(2*A092486(A067076(n+1)))`
-/

namespace A108763.P3829992224626505531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * A092486 (A067076 (n + 1)).toNat).toNat

end

end A108763.P3829992224626505531

noncomputable section

/-- A108763: If n-th prime is 8m+1, then a(n) = 8m+3. If n-th prime is 8m+3, then a(n) = 8m+5. If n-th prime is 8m+5, then a(n) = 8m+7. If n-th prime is 8m+7, then a(n) = 8m+1.

Offset 2, canonical program `A108763.P3829992224626505531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A108763 (n : ℕ) : ℤ :=
  A108763.P3829992224626505531.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A108763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108854.P15242187199517262810

`A108584(n+1)+3`
-/

namespace A108854.P15242187199517262810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108584 (n + 1) + 3

end

end A108854.P15242187199517262810

noncomputable section

/-- A108854: Numbers k such that 10*k - 127 is prime.

Offset 1, canonical program `A108854.P15242187199517262810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108854 (n : ℕ) : ℤ :=
  A108854.P15242187199517262810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109083.P1945678919087495791

`round(A010816(3*(n+1))/6)`
-/

namespace A109083.P1945678919087495791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010816 (3 * (n + 1)) : ℚ) / 6)

end

end A109083.P1945678919087495791

noncomputable section

/-- A109083: Convolution of A002324 and A010815.

Offset 1, canonical program `A109083.P1945678919087495791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A109083 (n : ℕ) : ℤ :=
  A109083.P1945678919087495791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. -/
def A109083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109127.P1890116283645381104

`round(-(A010816(n+1)/3))`
-/

namespace A109127.P1890116283645381104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((A010816 (n + 1) : ℚ) / 3))

end

end A109127.P1890116283645381104

noncomputable section

/-- A109127: Expansion of q^(-1/8) * (eta(q^3) - eta(q)^3) / 3 in powers of q.

Offset 1, canonical program `A109127.P1890116283645381104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A109127 (n : ℕ) : ℤ :=
  A109127.P1890116283645381104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A109127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109580.P250940823031439561

`p?[A109579(n+1)]`
-/

namespace A109580.P250940823031439561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109580.P250940823031439561

noncomputable section

/-- A109580: Primes in A109579.

Offset 1, canonical program `A109580.P250940823031439561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580 (n : ℕ) : ℤ :=
  A109580.P250940823031439561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. -/
def A109580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109645.P4149127041279372500

`p?[A084854(n+2)]`
-/

namespace A109645.P4149127041279372500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109645.P4149127041279372500

noncomputable section

/-- A109645: Primes whose decimal expansion has the form ij, where i and j are integers with j < i.

Offset 1, canonical program `A109645.P4149127041279372500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A109645 (n : ℕ) : ℤ :=
  A109645.P4149127041279372500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A109645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109846.P1788492969012972076

`abs(n-A061601(n))`
-/

namespace A109846.P1788492969012972076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A061601 n|

end

end A109846.P1788492969012972076

noncomputable section

/-- A109846: Absolute difference between n and its 9's complement.

Offset 0, canonical program `A109846.P1788492969012972076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109846 (n : ℕ) : ℤ :=
  A109846.P1788492969012972076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109847.P355230552138122519

`lcm(n+1, A061601(n+1))`
-/

namespace A109847.P355230552138122519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A061601 (n + 1))

end

end A109847.P355230552138122519

noncomputable section

/-- A109847: Least common multiple of n and its 9's complement.

Offset 1, canonical program `A109847.P355230552138122519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847 (n : ℕ) : ℤ :=
  (A109847.P355230552138122519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109848.P3242327494572458418

`gcd(n+1, A061601(n+1))`
-/

namespace A109848.P3242327494572458418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 (n + 1))

end

end A109848.P3242327494572458418

noncomputable section

/-- A109848: Highest common factor of n and its 9's complement.

Offset 1, canonical program `A109848.P3242327494572458418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848 (n : ℕ) : ℤ :=
  (A109848.P3242327494572458418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110005.P16508309867021572198

`A110004(A263449(n))`
-/

namespace A110005.P16508309867021572198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A263449 n).toNat

end

end A110005.P16508309867021572198

noncomputable section

/-- A110005: n followed by n^2 followed by n^4 followed by n^3.

Offset 1, canonical program `A110005.P16508309867021572198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005 (n : ℕ) : ℤ :=
  A110005.P16508309867021572198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110008.P14974880625639452016

`A110004(A116966(n))`
-/

namespace A110008.P14974880625639452016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A116966 n).toNat

end

end A110008.P14974880625639452016

noncomputable section

/-- A110008: n followed by n^4 followed by n^3 followed by n^2.

Offset 1, canonical program `A110008.P14974880625639452016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110008 (n : ℕ) : ℤ :=
  A110008.P14974880625639452016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110397.P12959332454578711254

`(A061601(n+1)+n+2)²-(n+1)²`
-/

namespace A110397.P12959332454578711254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 (n + 1) + (n + 2 : ℤ)) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A110397.P12959332454578711254

noncomputable section

/-- A110397: a(n) = (10^k - n)(10^k + n), where k is the number of digits in n.

Offset 1, canonical program `A110397.P12959332454578711254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397 (n : ℕ) : ℤ :=
  A110397.P12959332454578711254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110510.P4459465771356179059

`A106566(n)*A130321(n)`
-/

namespace A110510.P4459465771356179059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A130321 n

end

end A110510.P4459465771356179059

noncomputable section

/-- A110510: Riordan array (1, x*c(2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110510.P4459465771356179059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510 (n : ℕ) : ℤ :=
  A110510.P4459465771356179059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6787 terms. -/
def A110510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110518.P11180625807063837773

`A106566(n)*A140303(n)`
-/

namespace A110518.P11180625807063837773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A140303 n

end

end A110518.P11180625807063837773

noncomputable section

/-- A110518: Riordan array (1, x*c(3x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A110518.P11180625807063837773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518 (n : ℕ) : ℤ :=
  A110518.P11180625807063837773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4754 terms. -/
def A110518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110651.P10291907235345254237

`A110004(xor(3, n)+1)`
-/

namespace A110651.P10291907235345254237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (Nat.xor 3 n + 1)

end

end A110651.P10291907235345254237

noncomputable section

/-- A110651: n^2 followed by n^4 followed by n^3 followed by n.

Offset 1, canonical program `A110651.P10291907235345254237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110651 (n : ℕ) : ℤ :=
  A110651.P10291907235345254237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110672.P13064412979197654835

`∑[A110671(n)]`
-/

namespace A110672.P13064412979197654835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110672.P13064412979197654835

noncomputable section

/-- A110672: Sequence is {a(7,n)}, where a(m,n) is defined in sequence A110665.

Offset 0, canonical program `A110672.P13064412979197654835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110672 (n : ℕ) : ℤ :=
  A110672.P13064412979197654835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110730.P8616049705140846369

`A090996(eq[2, A023416(n)])`
-/

namespace A110730.P8616049705140846369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P8616049705140846369

noncomputable section

/-- A110730: Irregular triangle read by rows in which row n lists n 1's followed by (n-1) 2's followed by (n-3) 3's ... followed by 1 n.

Offset 1, canonical program `A110730.P8616049705140846369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110730 (n : ℕ) : ℤ :=
  A110730.P8616049705140846369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111019.P749535475044442863

`A019467(n+2)/3-1`
-/

namespace A111019.P749535475044442863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019467 (n + 2) : ℚ) / 3 - 1

end

end A111019.P749535475044442863

noncomputable section

/-- A111019: Indices of Catalan numbers that are == 1 mod 3 (cf. A000108).

Offset 1, canonical program `A111019.P749535475044442863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A111019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111019.P749535475044442863.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A111019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111049.P6292796028926116323

`(A110552(n+1)+A071919(n))/2`
-/

namespace A111049.P6292796028926116323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110552 (n + 1) + A071919 n : ℚ) / 2

end

end A111049.P6292796028926116323

noncomputable section

/-- A111049: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A111049.P6292796028926116323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111049.P6292796028926116323.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A111049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111319.P8319744077221751074

`comp[n^gcd(5, A007504(n))]`
-/

namespace A111319.P8319744077221751074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Int.gcd 5 (A007504 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A111319.P8319744077221751074

noncomputable section

/-- A111319: Numbers k such that 5 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111319.P8319744077221751074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319 (n : ℕ) : ℤ :=
  (A111319.P8319744077221751074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111320.P13176253524952530355

`eq[3, (A007504(n)-3)%6]`
-/

namespace A111320.P13176253524952530355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 3) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111320.P13176253524952530355

noncomputable section

/-- A111320: Numbers k such that 6 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111320.P13176253524952530355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320 (n : ℕ) : ℤ :=
  (A111320.P13176253524952530355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8328 terms. -/
def A111320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111321.P11993108395501146979

`eq[7, gcd(7, A007504(n+1))]+1`
-/

namespace A111321.P11993108395501146979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111321.P11993108395501146979

noncomputable section

/-- A111321: Numbers k such that 7 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111321.P11993108395501146979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321 (n : ℕ) : ℤ :=
  (A111321.P11993108395501146979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7136 terms. -/
def A111321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111322.P16638155972908692796

`eq[8, gcd(8, A007504(n+1))]+1`
-/

namespace A111322.P16638155972908692796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111322.P16638155972908692796

noncomputable section

/-- A111322: Numbers k such that 8 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111322.P16638155972908692796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322 (n : ℕ) : ℤ :=
  (A111322.P16638155972908692796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6282 terms. -/
def A111322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111323.P1048443084486664615

`lt[8, dr(A007504(n))]`
-/

namespace A111323.P1048443084486664615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007504 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111323.P1048443084486664615

noncomputable section

/-- A111323: Numbers k such that 9 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111323.P1048443084486664615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323 (n : ℕ) : ℤ :=
  (A111323.P1048443084486664615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5667 terms. -/
def A111323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111324.P1944498692377045728

`eq[5, (A007504(n)-5)%10]`
-/

namespace A111324.P1944498692377045728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n - 5) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111324.P1944498692377045728

noncomputable section

/-- A111324: Numbers k such that 10 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111324.P1944498692377045728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324 (n : ℕ) : ℤ :=
  (A111324.P1944498692377045728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5028 terms. -/
def A111324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111325.P7187186331389231185

`lt[8, gcd(11, A007504(n+1))]+1`
-/

namespace A111325.P7187186331389231185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111325.P7187186331389231185

noncomputable section

/-- A111325: Numbers k such that 11 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111325.P7187186331389231185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325 (n : ℕ) : ℤ :=
  (A111325.P7187186331389231185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. -/
def A111325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111326.P17342450105142321715

`eq[12, gcd(12, A007504(n+1))]+1`
-/

namespace A111326.P17342450105142321715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111326.P17342450105142321715

noncomputable section

/-- A111326: Numbers k such that 12 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111326.P17342450105142321715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326 (n : ℕ) : ℤ :=
  (A111326.P17342450105142321715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4226 terms. -/
def A111326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111327.P16693516718763661567

`eq[13, gcd(13, A007504(n+1))]+1`
-/

namespace A111327.P16693516718763661567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111327.P16693516718763661567

noncomputable section

/-- A111327: Numbers k such that 13 divides prime(1) + ... + prime(k).

Offset 1, canonical program `A111327.P16693516718763661567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327 (n : ℕ) : ℤ :=
  (A111327.P16693516718763661567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3771 terms. -/
def A111327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111367.P12882933865931024001

`A089079(n+1)-4`
-/

namespace A111367.P12882933865931024001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089079 (n + 1) - 4

end

end A111367.P12882933865931024001

noncomputable section

/-- A111367: Numbers k such that 7*k + 5 is prime.

Offset 1, canonical program `A111367.P12882933865931024001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111367 (n : ℕ) : ℤ :=
  A111367.P12882933865931024001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111497.P5074465720884968157

`A111499(2*(n+1))-A111499(2*n+1)`
-/

namespace A111497.P5074465720884968157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111499 (2 * (n + 1)) - A111499 (2 * n + 1)

end

end A111497.P5074465720884968157

noncomputable section

/-- A111497: Difference between successive terms of floor(10^n/Li(10^n) - 1).

Offset 1, canonical program `A111497.P5074465720884968157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111497 (n : ℕ) : ℤ :=
  A111497.P5074465720884968157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111661.P12974684241340383549

`∑{d}[n+1, A103440(#)*A154955((n+1)/#)]`
-/

namespace A111661.P12974684241340383549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103440 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111661.P12974684241340383549

noncomputable section

/-- A111661: Expansion of eta(q)^4 * eta(q^2) * eta(q^6)^5 / eta(q^3)^4 in powers of q.

Offset 1, canonical program `A111661.P12974684241340383549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661 (n : ℕ) : ℤ :=
  A111661.P12974684241340383549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111708.P14227470248071541611

`(n+1)*(A061601(n)+n)`
-/

namespace A111708.P14227470248071541611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061601 n + (n : ℤ))

end

end A111708.P14227470248071541611

noncomputable section

/-- A111708: a(n) = n concatenated with 9's complement of n.

Offset 0, canonical program `A111708.P14227470248071541611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708 (n : ℕ) : ℤ :=
  A111708.P14227470248071541611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111854.P12628893320528606972

`∑[char[A034100(n+1)-1]]`
-/

namespace A111854.P12628893320528606972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034100 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111854.P12628893320528606972

noncomputable section

/-- A111854: Number of numbers m <= n such that 4 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111854.P12628893320528606972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854 (n : ℕ) : ℤ :=
  (A111854.P12628893320528606972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111855.P445997609701663267

`∑[char[A034101(n+1)-1]]`
-/

namespace A111855.P445997609701663267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034101 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111855.P445997609701663267

noncomputable section

/-- A111855: Number of numbers m <= n such that 5 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111855.P445997609701663267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855 (n : ℕ) : ℤ :=
  (A111855.P445997609701663267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112280.P11519997637088277000

`A111983(n)%9`
-/

namespace A112280.P11519997637088277000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111983 n) 9

end

end A112280.P11519997637088277000

noncomputable section

/-- A112280: Coefficients, read modulo 9, of the cube of q-series (q;q)_oo.

Offset 0, canonical program `A112280.P11519997637088277000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112280 (n : ℕ) : ℤ :=
  A112280.P11519997637088277000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A112280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112308.P12064346406734073467

`∑[A070857(n)]`
-/

namespace A112308.P12064346406734073467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P12064346406734073467

noncomputable section

/-- A112308: Sum of the heights of the second peaks in all Dyck paths of semilength n+2.

Offset 0, canonical program `A112308.P12064346406734073467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308 (n : ℕ) : ℤ :=
  A112308.P12064346406734073467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112347.P13846808065894593792

`Δ[A005811(floor(n²/(n+1)))]`
-/

namespace A112347.P13846808065894593792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112347.P13846808065894593792

noncomputable section

/-- A112347: Kronecker symbol (-1, n) except a(0) = 0.

Offset 0, canonical program `A112347.P13846808065894593792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347 (n : ℕ) : ℤ :=
  A112347.P13846808065894593792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112660.P11454736749846847626

`A330526(n+1)%A001248(n+1)`
-/

namespace A112660.P11454736749846847626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330526 (n + 1)) (A001248 (n + 1))

end

end A112660.P11454736749846847626

noncomputable section

/-- A112660: a(n) = (p-1)! mod p^2 where p = n-th prime.

Offset 1, canonical program `A112660.P11454736749846847626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660 (n : ℕ) : ℤ :=
  A112660.P11454736749846847626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. -/
def A112660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112681.P2005893278622678890

`A000040(eq[1, A106671(n+2)]+3)`
-/

namespace A112681.P2005893278622678890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A112681.P2005893278622678890

noncomputable section

/-- A112681: Primes such that the sum of the predecessor and successor primes is divisible by 3.

Offset 1, canonical program `A112681.P2005893278622678890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112681 (n : ℕ) : ℤ :=
  A112681.P2005893278622678890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112850.P878508428398291890

`2*A112849(n+1)*A103517(n)`
-/

namespace A112850.P878508428398291890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112849 (n + 1) * A103517 n

end

end A112850.P878508428398291890

noncomputable section

/-- A112850: Number of graph endomorphisms of undirected cycles of even length: |End(C_2n)|.

Offset 1, canonical program `A112850.P878508428398291890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A112850 (n : ℕ) : ℤ :=
  A112850.P878508428398291890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A112850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113262.P2399975146988731264

`∑{d}[n+1, #*A187074(#)]`
-/

namespace A113262.P2399975146988731264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A187074 d

end

end A113262.P2399975146988731264

noncomputable section

/-- A113262: One quarter of the number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

Offset 1, canonical program `A113262.P2399975146988731264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113262 (n : ℕ) : ℤ :=
  A113262.P2399975146988731264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113680.P4202360044323169764

`2-gcd(4, A036561(n))`
-/

namespace A113680.P4202360044323169764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 4 (A036561 n) : ℤ)

end

end A113680.P4202360044323169764

noncomputable section

/-- A113680: Riordan array ((1-x-2x^2)/(1-x),x).

Offset 0, canonical program `A113680.P4202360044323169764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680 (n : ℕ) : ℤ :=
  A113680.P4202360044323169764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113903.P6454317970146200745

`∑[A254667(∑{e}[n, #])]`
-/

namespace A113903.P6454317970146200745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P6454317970146200745

noncomputable section

/-- A113903: Sum of omega(n!) and bigomega(n!).

Offset 0, canonical program `A113903.P6454317970146200745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113903 (n : ℕ) : ℤ :=
  A113903.P6454317970146200745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114002.P11087141496141675113

`2*A051731(n+1)-A023531(n)`
-/

namespace A114002.P11087141496141675113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A023531 n

end

end A114002.P11087141496141675113

noncomputable section

/-- A114002: Expansion of g.f. x^k(1+x^(k+1))/(1-x^(k+1)).

Offset 0, canonical program `A114002.P11087141496141675113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002 (n : ℕ) : ℤ :=
  A114002.P11087141496141675113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114117.P17816901265294199500

`A000007(n)-Δ[A114114(n)]`
-/

namespace A114117.P17816901265294199500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A114117.P17816901265294199500

noncomputable section

/-- A114117: Inverse of 1's counting matrix A114116.

Offset 0, canonical program `A114117.P17816901265294199500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117 (n : ℕ) : ℤ :=
  A114117.P17816901265294199500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114118.P8543304473231040765

`A114114(n)+A101688(n+1)`
-/

namespace A114118.P8543304473231040765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n + A101688 (n + 1)

end

end A114118.P8543304473231040765

noncomputable section

/-- A114118: Number triangle T(n,k)=sum{j=0..n, C(floor((n+k+j)/3),k)C(k,floor((n+k+j)/3))}.

Offset 0, canonical program `A114118.P8543304473231040765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118 (n : ℕ) : ℤ :=
  A114118.P8543304473231040765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114213.P4149335441730124754

`A004198(n)!%2`
-/

namespace A114213.P4149335441730124754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004198 n).toNat % 2

end

end A114213.P4149335441730124754

noncomputable section

/-- A114213: A generalized Pascal triangle modulo 2.

Offset 0, canonical program `A114213.P4149335441730124754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213 (n : ℕ) : ℤ :=
  (A114213.P4149335441730124754.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114214.P11537761350900255498

`A002487(or(1, n))`
-/

namespace A114214.P11537761350900255498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.lor 1 n)

end

end A114214.P11537761350900255498

noncomputable section

/-- A114214: Diagonal sums of number triangle A114213.

Offset 0, canonical program `A114214.P11537761350900255498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114214 (n : ℕ) : ℤ :=
  A114214.P11537761350900255498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114381.P8894335192554772772

`A007504(A000040(n+2))-A007504(A006093(n+1))`
-/

namespace A114381.P8894335192554772772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 2)).toNat - A007504 (A006093 (n + 1)).toNat

end

end A114381.P8894335192554772772

noncomputable section

/-- A114381: Sums of p-th to the q-th prime where p and q are consecutive primes.

Offset 1, canonical program `A114381.P8894335192554772772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A114381 (n : ℕ) : ℤ :=
  A114381.P8894335192554772772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. -/
def A114381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114890.P12766305809805665187

`Δ[A003278(A081611(n))]+1`
-/

namespace A114890.P12766305809805665187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A081611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114890.P12766305809805665187

noncomputable section

/-- A114890: First differences of A114889.

Offset 1, canonical program `A114890.P12766305809805665187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890 (n : ℕ) : ℤ :=
  A114890.P12766305809805665187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115235.P5512606317749080234

`A113448(n+1)*A131713(n)`
-/

namespace A115235.P5512606317749080234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (n + 1) * A131713 n

end

end A115235.P5512606317749080234

noncomputable section

/-- A115235: Expansion of eta(q)^2*eta(q^9)*eta(q^18)/(eta(q^2)*eta(q^3)) in powers of q.

Offset 1, canonical program `A115235.P5512606317749080234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235 (n : ℕ) : ℤ :=
  A115235.P5512606317749080234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115356.P7662483456483370118

`A114114(n)%2`
-/

namespace A115356.P7662483456483370118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114114 n) 2

end

end A115356.P7662483456483370118

noncomputable section

/-- A115356: Matrix (1,x)+(x,x^2) in Riordan array notation.

Offset 0, canonical program `A115356.P7662483456483370118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356 (n : ℕ) : ℤ :=
  A115356.P7662483456483370118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115566.P8073929608010892039

`∩[A066344(n+1)-1, A066344(n+1)]`
-/

namespace A115566.P8073929608010892039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115566.P8073929608010892039

noncomputable section

/-- A115566: Numbers k such that 2^k, 2^(k+1) and 2^(k+2) have the same number of digits.

Offset 1, canonical program `A115566.P8073929608010892039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566 (n : ℕ) : ℤ :=
  (A115566.P8073929608010892039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116400.P9056853497896338160

`A037951(or(1, n))`
-/

namespace A116400.P9056853497896338160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (Nat.lor 1 n)

end

end A116400.P9056853497896338160

noncomputable section

/-- A116400: Expansion of e.g.f. Bessel_I(2,2x) + Bessel_I(3,2x) + Bessel_I(4,2x).

Offset 0, canonical program `A116400.P9056853497896338160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400 (n : ℕ) : ℤ :=
  A116400.P9056853497896338160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116409.P2006096629571327761

`3*a(n-1)-A082395(n)` with `a(0)=1`
-/

namespace A116409.P2006096629571327761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A082395 n

end

end A116409.P2006096629571327761

noncomputable section

/-- A116409: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2(1-x)(1-2x-3x^2)).

Offset 0, canonical program `A116409.P2006096629571327761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409 (n : ℕ) : ℤ :=
  A116409.P2006096629571327761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116520.P853808393403472097

`a(n-1)+A001316(n-1)²` with `a(0)=0`
-/

namespace A116520.P853808393403472097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001316 (n - 1) ^ 2

end

end A116520.P853808393403472097

noncomputable section

/-- A116520: a(0) = 0, a(1) = 1; a(n) = max { 4*a(k) + a(n-k) | 1 <= k <= n/2 }, for n > 1.

Offset 0, canonical program `A116520.P853808393403472097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116520 (n : ℕ) : ℤ :=
  A116520.P853808393403472097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116522.P4567962179520720721

`A256136(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A116522.P4567962179520720721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256136 (n - 1) + a (n - 1)

end

end A116522.P4567962179520720721

noncomputable section

/-- A116522: a(0)=1, a(1)=1, a(n)=7*a(n/2) for n=2,4,6,..., a(n)=6*a((n-1)/2)+a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116522.P4567962179520720721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522 (n : ℕ) : ℤ :=
  A116522.P4567962179520720721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116523.P12130739933144489115

`∑[A102376(n)²]-A102376(n)²`
-/

namespace A116523.P12130739933144489115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102376 n ^ 2

end

end A116523.P12130739933144489115

noncomputable section

/-- A116523: a(0)=1, a(1)=1, a(n) = 17*a(n/2) for n=2,4,6,..., a(n) = 16*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116523.P12130739933144489115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523 (n : ℕ) : ℤ :=
  A116523.P12130739933144489115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116525.P9195124493013691138

`∑[A102377(n)]-A102377(n)`
-/

namespace A116525.P9195124493013691138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102377 n

end

end A116525.P9195124493013691138

noncomputable section

/-- A116525: a(0)=1, a(1)=1, a(n) = 11*a(n/2) for even n, and a(n) = 10*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

Offset 0, canonical program `A116525.P9195124493013691138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525 (n : ℕ) : ℤ :=
  A116525.P9195124493013691138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116618.P392978224677000414

`A000045(A116614(n+1))`
-/

namespace A116618.P392978224677000414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A116614 (n + 1)).toNat

end

end A116618.P392978224677000414

noncomputable section

/-- A116618: Values of Fibonacci(n) for n such that prime(2n) mod 12 = 1.

Offset 1, canonical program `A116618.P392978224677000414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618 (n : ℕ) : ℤ :=
  A116618.P392978224677000414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A116618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116916.P8000741087611387261

`A010816(3*n)`
-/

namespace A116916.P8000741087611387261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n)

end

end A116916.P8000741087611387261

noncomputable section

/-- A116916: Expansion of q^(-1/8) * (eta(q)^3 + 3 * eta(q^9)^3) in powers of q^3.

Offset 0, canonical program `A116916.P8000741087611387261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916 (n : ℕ) : ℤ :=
  A116916.P8000741087611387261.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116948.P16350020595193954819

`dr(A099375(n)%3)`
-/

namespace A116948.P16350020595193954819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A099375 n) 3)

end

end A116948.P16350020595193954819

noncomputable section

/-- A116948: Riordan array ((1+2x^2)/(1-x^3),x).

Offset 0, canonical program `A116948.P16350020595193954819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948 (n : ℕ) : ℤ :=
  (A116948.P16350020595193954819.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117187.P12842748690522836276

`A037955(or(1, n)+1)`
-/

namespace A117187.P12842748690522836276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (Nat.lor 1 n + 1)

end

end A117187.P12842748690522836276

noncomputable section

/-- A117187: Expansion of (1+x)c(x^2)/((1-x^2*c(x^2))sqrt(1-4x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117187.P12842748690522836276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187 (n : ℕ) : ℤ :=
  A117187.P12842748690522836276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117377.P1485208591140608451

`2*A117362(n)-A109466(n)`
-/

namespace A117377.P1485208591140608451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117362 n - A109466 n

end

end A117377.P1485208591140608451

noncomputable section

/-- A117377: Riordan array (1-4x,x(1-x)).

Offset 0, canonical program `A117377.P1485208591140608451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377 (n : ℕ) : ℤ :=
  A117377.P1485208591140608451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117842.P12081368974413782069

`∑[A007918(n)]`
-/

namespace A117842.P12081368974413782069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P12081368974413782069

noncomputable section

/-- A117842: Partial sum of smallest prime >= n (A007918).

Offset 0, canonical program `A117842.P12081368974413782069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842 (n : ℕ) : ℤ :=
  A117842.P12081368974413782069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117869.P18256498155837451709

`∑[A001671(n)]-n`
-/

namespace A117869.P18256498155837451709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117869.P18256498155837451709

noncomputable section

/-- A117869: Partial sums of A000149.

Offset 0, canonical program `A117869.P18256498155837451709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869 (n : ℕ) : ℤ :=
  A117869.P18256498155837451709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117882.P6858586493466054488

`∑[A001673(n)]-n`
-/

namespace A117882.P6858586493466054488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117882.P6858586493466054488

noncomputable section

/-- A117882: Partial sums of floor(Pi^n).

Offset 0, canonical program `A117882.P6858586493466054488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882 (n : ℕ) : ℤ :=
  A117882.P6858586493466054488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117890.P14438909283196248010

`eq[n+1, lcm(n+1, A023416(n+1))]+1`
-/

namespace A117890.P14438909283196248010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A023416 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117890.P14438909283196248010

noncomputable section

/-- A117890: Numbers k such that number of non-leading 0's in binary representation of k divides k.

Offset 1, canonical program `A117890.P14438909283196248010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890 (n : ℕ) : ℤ :=
  (A117890.P14438909283196248010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118102.P5343364025708878754

`(n%2)^log2(A008967(n+4))`
-/

namespace A118102.P5343364025708878754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) ^ (Real.logb 2 (A008967 (n + 4) : ℝ))

end

end A118102.P5343364025708878754

noncomputable section

/-- A118102: Triangle read by rows giving successive states of cellular automaton generated by "Rule 94" initiated with a single ON (black) cell.

Offset 0, canonical program `A118102.P5343364025708878754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118102.P5343364025708878754.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118111.P3672481769883501696

`A071037(n*a(n-1))` with `a(0)=1`
-/

namespace A118111.P3672481769883501696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071037 ((n : ℤ) * a (n - 1)).toNat

end

end A118111.P3672481769883501696

noncomputable section

/-- A118111: Binary representation of n-th iteration of the Rule 190 elementary cellular automaton starting with a single black cell.

Offset 0, canonical program `A118111.P3672481769883501696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111 (n : ℕ) : ℤ :=
  A118111.P3672481769883501696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118447.P6254053121219792045

`(n+2)*A172060(n+1)`
-/

namespace A118447.P6254053121219792045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A172060 (n + 1)

end

end A118447.P6254053121219792045

noncomputable section

/-- A118447: Number of rooted n-edge one-vertex maps on the Klein bottle (dually: one-face maps).

Offset 2, canonical program `A118447.P6254053121219792045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447 (n : ℕ) : ℤ :=
  A118447.P6254053121219792045.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A118447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118499.P15079059931476377411

`eq[0, A106667(n+1)]+1`
-/

namespace A118499.P15079059931476377411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118499.P15079059931476377411

noncomputable section

/-- A118499: Numbers k such that the k-th prime number is not a Chen prime.

Offset 1, canonical program `A118499.P15079059931476377411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499 (n : ℕ) : ℤ :=
  (A118499.P15079059931476377411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A118499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118534.P17892582238153728483

`A062234(n+1)%A005722(A147965(n+1))`
-/

namespace A118534.P17892582238153728483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 1)) (A005722 (A147965 (n + 1)).toNat)

end

end A118534.P17892582238153728483

noncomputable section

/-- A118534: a(n) is the largest k such that prime(n+1) = prime(n) + (prime(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A118534.P17892582238153728483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534 (n : ℕ) : ℤ :=
  A118534.P17892582238153728483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118586.P6236173559146990027

`A190620(n+1)+1`
-/

namespace A118586.P6236173559146990027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190620 (n + 1) + 1

end

end A118586.P6236173559146990027

noncomputable section

/-- A118586: Numbers whose binary expansion contains group of at least two 1's followed by a nonempty group of 0's.

Offset 1, canonical program `A118586.P6236173559146990027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586 (n : ℕ) : ℤ :=
  A118586.P6236173559146990027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118754.P3684221222791973926

`A007918(A008587(n))`
-/

namespace A118754.P3684221222791973926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008587 n).toNat

end

end A118754.P3684221222791973926

noncomputable section

/-- A118754: Smallest prime >= 5*n.

Offset 0, canonical program `A118754.P3684221222791973926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754 (n : ℕ) : ℤ :=
  A118754.P3684221222791973926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118755.P17339163490274864131

`A007918(A008588(n))`
-/

namespace A118755.P17339163490274864131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008588 n).toNat

end

end A118755.P17339163490274864131

noncomputable section

/-- A118755: Smallest prime >= 6*n.

Offset 0, canonical program `A118755.P17339163490274864131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755 (n : ℕ) : ℤ :=
  A118755.P17339163490274864131.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119526.P17309535747538120691

`A027611(2^n)`
-/

namespace A119526.P17309535747538120691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (2 ^ n)

end

end A119526.P17309535747538120691

noncomputable section

/-- A119526: Odd denominators of n * n-th harmonic number = A027611[2^n].

Offset 0, canonical program `A119526.P17309535747538120691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526 (n : ℕ) : ℤ :=
  A119526.P17309535747538120691.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119733.P1003967431730408942

`(A116640(n)-A048883(n))/2`
-/

namespace A119733.P1003967431730408942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116640 n - A048883 n : ℚ) / 2

end

end A119733.P1003967431730408942

noncomputable section

/-- A119733: Offsets of the terms of the nodes of the reverse Collatz function.

Offset 0, canonical program `A119733.P1003967431730408942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119733.P1003967431730408942.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119900.P12631817968393924084

`C(∑[A010054(n)], A099375(n))`
-/

namespace A119900.P12631817968393924084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A099375 n).toNat

end

end A119900.P12631817968393924084

noncomputable section

/-- A119900: Triangle read by rows: T(n,k) is the number of binary words of length n with k strictly increasing runs, for 0<=k<=n.

Offset 0, canonical program `A119900.P12631817968393924084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900 (n : ℕ) : ℤ :=
  (A119900.P12631817968393924084.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119969.P5782052722859838512

`C(A277267(n+1), A035327(A078881(n+1)))`
-/

namespace A119969.P5782052722859838512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277267 (n + 1)).toNat (A035327 (A078881 (n + 1)).toNat).toNat

end

end A119969.P5782052722859838512

noncomputable section

/-- A119969: Sum{k>=0, C(2^k-1,n-2*(2^k-1))}.

Offset 0, canonical program `A119969.P5782052722859838512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A119969 (n : ℕ) : ℤ :=
  (A119969.P5782052722859838512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1104 terms. -/
def A119969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120108.P13431050358684570806

`A003418(A002024(n+1))/a(A112367(n))` with `a(0)=1`
-/

namespace A120108.P13431050358684570806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / a (A112367 n).toNat

end

end A120108.P13431050358684570806

noncomputable section

/-- A120108: Number triangle T(n,k) = lcm(1,..,n+1)/lcm(1,..,k+1).

Offset 0, canonical program `A120108.P13431050358684570806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120108.P13431050358684570806.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120303.P14720405322692262226

`A060308(A065475(n+1))`
-/

namespace A120303.P14720405322692262226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A065475 (n + 1)).toNat

end

end A120303.P14720405322692262226

noncomputable section

/-- A120303: Largest prime factor of Catalan number A000108(n).

Offset 2, canonical program `A120303.P14720405322692262226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303 (n : ℕ) : ℤ :=
  A120303.P14720405322692262226.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A120303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120691.P15009752455225398063

`Δ[A254667(n)-A260316(n)]`
-/

namespace A120691.P15009752455225398063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n - A260316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120691.P15009752455225398063

noncomputable section

/-- A120691: First differences of coefficients in the continued fraction for e.

Offset 0, canonical program `A120691.P15009752455225398063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A120691 (n : ℕ) : ℤ :=
  A120691.P15009752455225398063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A120691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120753.P16636594811176197176

`∪[A001954(n), A083051(n)]`
-/

namespace A120753.P16636594811176197176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P16636594811176197176

noncomputable section

/-- A120753: Numbers k such that {rk} > c, where r = (1/2)^(1/2), c = 1/2 and { } denotes fractional part.

Offset 1, canonical program `A120753.P16636594811176197176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753 (n : ℕ) : ℤ :=
  (A120753.P16636594811176197176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121281.P9987452267455542035

`A077011(((n+1)²+2)%A014132(n+1))`
-/

namespace A121281.P9987452267455542035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (Int.tmod ((n + 1) ^ 2 + 2 : ℤ) (A014132 (n + 1))).toNat

end

end A121281.P9987452267455542035

noncomputable section

/-- A121281: Triangle T(n,k) read by rows: T(n,0) = A002110(n) and T(n,k) = A002110(n)/prime(k) for 1<=k<=n.

Offset 0, canonical program `A121281.P9987452267455542035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A121281 (n : ℕ) : ℤ :=
  A121281.P9987452267455542035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A121281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121446.P4493713673701244054

`A006013(A028310(n))+A001764(n)`
-/

namespace A121446.P4493713673701244054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (A028310 n).toNat + A001764 n

end

end A121446.P4493713673701244054

noncomputable section

/-- A121446: Number of ternary trees with n edges and such that the first leaf in the preorder traversal is at level 1.

Offset 1, canonical program `A121446.P4493713673701244054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446 (n : ℕ) : ℤ :=
  A121446.P4493713673701244054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A121446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121455.P9993949302773689099

`and(5, (n+1)²)*A115607(n+1)`
-/

namespace A121455.P9993949302773689099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 5 ((n + 1) ^ 2) : ℤ) * A115607 (n + 1)

end

end A121455.P9993949302773689099

noncomputable section

/-- A121455: Expansion of q*(phi(-q)psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A121455.P9993949302773689099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455 (n : ℕ) : ℤ :=
  A121455.P9993949302773689099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121998.P10241062648816022235

`A002260(eq[0, A054521(n+1)]+1)`
-/

namespace A121998.P10241062648816022235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121998.P10241062648816022235

noncomputable section

/-- A121998: Table, n-th row gives numbers between 1 and n that have a common factor with n.

Offset 2, canonical program `A121998.P10241062648816022235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998 (n : ℕ) : ℤ :=
  A121998.P10241062648816022235.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A121998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122071.P3435191698193599100

`A113411(n)/A254046(n+1)`
-/

namespace A122071.P3435191698193599100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113411 n : ℚ) / (A254046 (n + 1) : ℚ)

end

end A122071.P3435191698193599100

noncomputable section

/-- A122071: Sum over divisors d of 2n+1 of Kronecker(-18/d).

Offset 0, canonical program `A122071.P3435191698193599100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122071.P3435191698193599100.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122198.P6463846619944974187

`A122155(A053644(n)+a(A053645(n)))` with `a(0)=0`
-/

namespace A122198.P6463846619944974187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122155 (A053644 n + a (A053645 n).toNat).toNat

end

end A122198.P6463846619944974187

noncomputable section

/-- A122198: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122198.P6463846619944974187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122198 (n : ℕ) : ℤ :=
  A122198.P6463846619944974187.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122199.P17065714589425841115

`A053644(A122155(n))+a(A053645(A122155(n)))` with `a(0)=0`
-/

namespace A122199.P17065714589425841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 (A122155 n).toNat + a (A053645 (A122155 n).toNat).toNat

end

end A122199.P17065714589425841115

noncomputable section

/-- A122199: Permutation of natural numbers: a recursed variant of A122155.

Offset 0, canonical program `A122199.P17065714589425841115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122199 (n : ℕ) : ℤ :=
  A122199.P17065714589425841115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122737.P5352890692816768516

`record[Δ[2*A055879(n+1)]]`
-/

namespace A122737.P5352890692816768516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122737.P5352890692816768516

noncomputable section

/-- A122737: Expansion of 1 - 3*x - sqrt(1 - 6*x + 5*x^2).

Offset 1, canonical program `A122737.P5352890692816768516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737 (n : ℕ) : ℤ :=
  A122737.P5352890692816768516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122754.P1087166714470174862

`10*(n+1)-A101306(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122754.P1087166714470174862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A101306 (n + 1)

end

end A122754.P1087166714470174862

noncomputable section

/-- A122754: a(n) = 10*n - A101306(n).

Offset 1, canonical program `A122754.P1087166714470174862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754 (n : ℕ) : ℤ :=
  A122754.P1087166714470174862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122759.P12807643020116895536

`A254006(A211197(n+1)-1)`
-/

namespace A122759.P12807643020116895536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A211197 (n + 1) - 1).toNat

end

end A122759.P12807643020116895536

noncomputable section

/-- A122759: Triangle T(n,m) read by rows: 3^n if m is odd, 0 if m is even.

Offset 1, canonical program `A122759.P12807643020116895536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759 (n : ℕ) : ℤ :=
  A122759.P12807643020116895536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122896.P5573786396997735909

`(A035214(n)+A000122(n))%2*A026300(A056943(n))`
-/

namespace A122896.P5573786396997735909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035214 n + A000122 n) 2 * A026300 (A056943 n).toNat

end

end A122896.P5573786396997735909

noncomputable section

/-- A122896: Riordan array (1, (1 - x - sqrt(1 - 2*x - 3*x^2)) / (2*x)), a Riordan array for directed animals. Triangle read by rows.

Offset 0, canonical program `A122896.P5573786396997735909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122896 (n : ℕ) : ℤ :=
  A122896.P5573786396997735909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123272.P13833021826799175583

`char[A029709(n+1)-(n+4)]`
-/

namespace A123272.P13833021826799175583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 1) - (n + 4 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123272.P13833021826799175583

noncomputable section

/-- A123272: Number of primes between consecutive terms of A105575.

Offset 1, canonical program `A123272.P13833021826799175583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272 (n : ℕ) : ℤ :=
  (A123272.P13833021826799175583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A123272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123594.P17678384235713202492

`a(A049705(n-1))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A123594.P17678384235713202492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (A049705 (n - 1)).toNat

end

end A123594.P17678384235713202492

noncomputable section

/-- A123594: Unique sequence of 0's and 1's which are either repeated or not repeated with the following property: when the sequence is 'coded' in writing down a 1 when an element is repeated and a 0 when it is not repeated and by putting the initial element in front of the sequence thus obtained, the above sequence appears.

Offset 1, canonical program `A123594.P17678384235713202492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594 (n : ℕ) : ℤ :=
  (A123594.P17678384235713202492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123746.P16894433032032204393

`A091520(n)/A001316(n)`
-/

namespace A123746.P16894433032032204393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A001316 n : ℚ)

end

end A123746.P16894433032032204393

noncomputable section

/-- A123746: Numerators of partial sums of a series for 1/sqrt(2).

Offset 0, canonical program `A123746.P16894433032032204393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123746.P16894433032032204393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124669.P372249676640486101

`record[A116570(n)-2]`
-/

namespace A124669.P372249676640486101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124669.P372249676640486101

noncomputable section

/-- A124669: Product of successive primes minus 2.

Offset 1, canonical program `A124669.P372249676640486101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669 (n : ℕ) : ℤ :=
  A124669.P372249676640486101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124825.P846435702103164471

`∩[A102342(n+1), A111250(n+1)]`
-/

namespace A124825.P846435702103164471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P846435702103164471

noncomputable section

/-- A124825: Numbers k such that 10k + 7 and 7k + 10 are primes.

Offset 1, canonical program `A124825.P846435702103164471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825 (n : ℕ) : ℤ :=
  (A124825.P846435702103164471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124926.P9374051233560020075

`A091867(A061579(n))`
-/

namespace A124926.P9374051233560020075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A061579 n).toNat

end

end A124926.P9374051233560020075

noncomputable section

/-- A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

Offset 0, canonical program `A124926.P9374051233560020075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926 (n : ℕ) : ℤ :=
  A124926.P9374051233560020075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A124926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125498.P12583085300510792170

`record[(n*n²)^and(1, A192085(n))]`
-/

namespace A125498.P12583085300510792170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℚ) ^ (Int.land 1 (A192085 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125498.P12583085300510792170

noncomputable section

/-- A125498: Odious cubes.

Offset 1, canonical program `A125498.P12583085300510792170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125498.P12583085300510792170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126120.P11676298334808492124

`A097331(n+1)`
-/

namespace A126120.P11676298334808492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

end

end A126120.P11676298334808492124

noncomputable section

/-- A126120: Catalan numbers (A000108) interpolated with 0's.

Offset 0, canonical program `A126120.P11676298334808492124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120 (n : ℕ) : ℤ :=
  A126120.P11676298334808492124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126205.P8861598925400809168

`∑{digits}[3^n, A075897(#+21)]`
-/

namespace A126205.P8861598925400809168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075897 (x + 21)).sum

end

end A126205.P8861598925400809168

noncomputable section

/-- A126205: Number of 3's in decimal expansion of 3^n, with n>=0.

Offset 0, canonical program `A126205.P8861598925400809168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205 (n : ℕ) : ℤ :=
  A126205.P8861598925400809168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126324.P3611906249858251984

`gcd(3*A097331(n), A097331(n+1))`
-/

namespace A126324.P3611906249858251984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A097331 n) (A097331 (n + 1))

end

end A126324.P3611906249858251984

noncomputable section

/-- A126324: a(2n) = Cat(n), a(2n+1) = 3*Cat(n), where Cat(n) = binomial(2n,n)/(n+1) are the Catalan numbers (A000108).

Offset 0, canonical program `A126324.P3611906249858251984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324 (n : ℕ) : ℤ :=
  (A126324.P3611906249858251984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126332.P1973723424677393430

`floor(A111225(n+1)/2)`
-/

namespace A126332.P1973723424677393430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111225 (n + 1) : ℚ) / 2⌋

end

end A126332.P1973723424677393430

noncomputable section

/-- A126332: Numbers k such that 10k + 13 is prime.

Offset 1, canonical program `A126332.P1973723424677393430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332 (n : ℕ) : ℤ :=
  A126332.P1973723424677393430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127170.P7991433110268517964

`∑{d}[A126988(n+1), A057427(#)]`
-/

namespace A127170.P7991433110268517964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A127170.P7991433110268517964

noncomputable section

/-- A127170: Triangle read by rows: T(n,k) is the number of divisors of n that are divisible by k, with 1 <= k <= n.

Offset 1, canonical program `A127170.P7991433110268517964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170 (n : ℕ) : ℤ :=
  A127170.P7991433110268517964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127322.P8390602753419418213

`A023416(A006257(eq[4, A000120(n)]))`
-/

namespace A127322.P8390602753419418213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127322.P8390602753419418213

noncomputable section

/-- A127322: Second 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

Offset 0, canonical program `A127322.P8390602753419418213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322 (n : ℕ) : ℤ :=
  A127322.P8390602753419418213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127324.P10851335711510860639

`val(A038466(n+1), 3)`
-/

namespace A127324.P10851335711510860639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038466 (n + 1)).toNat 3

end

end A127324.P10851335711510860639

noncomputable section

/-- A127324: Fourth 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056558.

Offset 0, canonical program `A127324.P10851335711510860639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324 (n : ℕ) : ℤ :=
  (A127324.P10851335711510860639.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127333.P6306977747944234696

`A034964(n+2)+A000040(n+1)`
-/

namespace A127333.P6306977747944234696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 2) + A000040 (n + 1)

end

end A127333.P6306977747944234696

noncomputable section

/-- A127333: Numbers that are the sum of 6 consecutive primes.

Offset 1, canonical program `A127333.P6306977747944234696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333 (n : ℕ) : ℤ :=
  A127333.P6306977747944234696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127348.P2677906627502020316

`A127345(n+2)+A000040(n+1)*A034961(n+2)`
-/

namespace A127348.P2677906627502020316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 2) + A000040 (n + 1) * A034961 (n + 2)

end

end A127348.P2677906627502020316

noncomputable section

/-- A127348: Coefficient of x^2 in the polynomial (x-p(n))*(x-p(n+1))*(x-p(n+2))*(x-p(n+3)), where p(k) is the k-th prime.

Offset 1, canonical program `A127348.P2677906627502020316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348 (n : ℕ) : ℤ :=
  A127348.P2677906627502020316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A127348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127449.P14956762782820329988

`A054521(n+1)*A054531(n+1)`
-/

namespace A127449.P14956762782820329988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A054531 (n + 1)

end

end A127449.P14956762782820329988

noncomputable section

/-- A127449: Triangle T(n,k) = n if gcd(n,k)=1, =0 otherwise.

Offset 1, canonical program `A127449.P14956762782820329988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449 (n : ℕ) : ℤ :=
  A127449.P14956762782820329988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127536.P3976489637807869491

`A262394(n+1)+A262394(n+1)-A006013(n+1)`
-/

namespace A127536.P3976489637807869491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262394 (n + 1) + (A262394 (n + 1) - A006013 (n + 1))

end

end A127536.P3976489637807869491

noncomputable section

/-- A127536: Sum of jump-lengths of all even trees with 2n edges.

Offset 1, canonical program `A127536.P3976489637807869491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536 (n : ℕ) : ℤ :=
  A127536.P3976489637807869491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A127536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127577.P11497758234224317345

`record[A057979(A127575(n+4))]`
-/

namespace A127577.P11497758234224317345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A127575 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127577.P11497758234224317345

noncomputable section

/-- A127577: Numbers n for which 32n+31 is prime.

Offset 1, canonical program `A127577.P11497758234224317345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577 (n : ℕ) : ℤ :=
  A127577.P11497758234224317345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A127577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127640.P1363589885829058691

`A005145(n+1)*A023531(n)`
-/

namespace A127640.P1363589885829058691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A023531 n

end

end A127640.P1363589885829058691

noncomputable section

/-- A127640: Triangle read by rows in which row n contains n-1 0's followed by prime(n).

Offset 1, canonical program `A127640.P1363589885829058691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640 (n : ℕ) : ℤ :=
  A127640.P1363589885829058691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127648.P14273563626416826954

`Δ[A061885(n)]-1`
-/

namespace A127648.P14273563626416826954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127648.P14273563626416826954

noncomputable section

/-- A127648: Triangle read by rows: row n consists of n zeros followed by n+1.

Offset 0, canonical program `A127648.P14273563626416826954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648 (n : ℕ) : ℤ :=
  A127648.P14273563626416826954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127773.P3035698408442550692

`C(Δ[A061885(n)], 2)`
-/

namespace A127773.P3035698408442550692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A127773.P3035698408442550692

noncomputable section

/-- A127773: Triangle read by rows: row n consists of n-1 zeros followed by n(n+1)/2.

Offset 1, canonical program `A127773.P3035698408442550692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773 (n : ℕ) : ℤ :=
  (A127773.P3035698408442550692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127846.P14279537381663799616

`floor(A086871(n)/2)`
-/

namespace A127846.P14279537381663799616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086871 n : ℚ) / 2⌋

end

end A127846.P14279537381663799616

noncomputable section

/-- A127846: Series reversion of x/(1+5x+4x^2).

Offset 0, canonical program `A127846.P14279537381663799616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846 (n : ℕ) : ℤ :=
  A127846.P14279537381663799616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128059.P6275643782124807022

`A110560(A325168(n+1))`
-/

namespace A128059.P6275643782124807022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A325168 (n + 1)).toNat

end

end A128059.P6275643782124807022

noncomputable section

/-- A128059: a(n) = numerator((2*n-1)^2/(2*(2*n)!)).

Offset 0, canonical program `A128059.P6275643782124807022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059 (n : ℕ) : ℤ :=
  A128059.P6275643782124807022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A128059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128137.P5492606734270784235

`Δ[A025581(n)]+2*A112367(n)`
-/

namespace A128137.P5492606734270784235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A112367 n

end

end A128137.P5492606734270784235

noncomputable section

/-- A128137: A002260 * A128132.

Offset 1, canonical program `A128137.P5492606734270784235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137 (n : ℕ) : ℤ :=
  A128137.P5492606734270784235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128181.P677379216419681310

`A002260(n+1)*A128175(n+1)`
-/

namespace A128181.P677379216419681310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128175 (n + 1)

end

end A128181.P677379216419681310

noncomputable section

/-- A128181: A007318 * A128179 as infinite lower triangular matrices.

Offset 1, canonical program `A128181.P677379216419681310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181 (n : ℕ) : ℤ :=
  A128181.P677379216419681310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128221.P5768733803824572043

`A028310(A128179(n+1))`
-/

namespace A128221.P5768733803824572043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A128179 (n + 1)).toNat

end

end A128221.P5768733803824572043

noncomputable section

/-- A128221: A128174 * A127701.

Offset 1, canonical program `A128221.P5768733803824572043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221 (n : ℕ) : ℤ :=
  A128221.P5768733803824572043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128288.P7303772657565545819

`A023163(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128288.P7303772657565545819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023163 (n + 2) : ℚ) / 3

end

end A128288.P7303772657565545819

noncomputable section

/-- A128288: a(n) = A023163(n)/3 for n > 1.

Offset 2, canonical program `A128288.P7303772657565545819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128288.P7303772657565545819.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128618.P684338942941651446

`A000045(A128179(n+1))`
-/

namespace A128618.P684338942941651446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128179 (n + 1)).toNat

end

end A128618.P684338942941651446

noncomputable section

/-- A128618: Triangle read by rows: A128174 * A127647 as infinite lower triangular matrices.

Offset 1, canonical program `A128618.P684338942941651446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618 (n : ℕ) : ℤ :=
  A128618.P684338942941651446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128746.P14051206347353493942

`A045445(n+1)+∑[A045890(n)]`
-/

namespace A128746.P14051206347353493942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128746.P14051206347353493942

noncomputable section

/-- A128746: Height of the last peak summed over all skew Dyck paths of semilength n.

Offset 1, canonical program `A128746.P14051206347353493942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746 (n : ℕ) : ℤ :=
  A128746.P14051206347353493942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128937.P8237969011932924957

`A117178(n)%2`
-/

namespace A128937.P8237969011932924957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117178 n) 2

end

end A128937.P8237969011932924957

noncomputable section

/-- A128937: Triangle formed by reading A039598 mod 2.

Offset 0, canonical program `A128937.P8237969011932924957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937 (n : ℕ) : ℤ :=
  A128937.P8237969011932924957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069060.P14017391621502611727

`A007955(A000051(n+1))`
-/

namespace A069060.P14017391621502611727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000051 (n + 1)).toNat

end

end A069060.P14017391621502611727

noncomputable section

/-- A069060: Product of divisors of 2^n + 1.

Offset 1, canonical program `A069060.P14017391621502611727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069060 (n : ℕ) : ℤ :=
  A069060.P14017391621502611727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069082.P1777789710719873366

`eq[A009278(n+1), A272027(n+1)]+1`
-/

namespace A069082.P1777789710719873366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069082.P1777789710719873366

noncomputable section

/-- A069082: Numbers n such that sigma(n)/tau(n) has denominator 3.

Offset 1, canonical program `A069082.P1777789710719873366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082 (n : ℕ) : ℤ :=
  (A069082.P1777789710719873366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A069082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069083.P18395257980087635032

`eq[A009278(n+1), A239050(n+1)]+1`
-/

namespace A069083.P18395257980087635032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069083.P18395257980087635032

noncomputable section

/-- A069083: Numbers n such that sigma(n)/tau(n) has denominator 4.

Offset 1, canonical program `A069083.P18395257980087635032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A069083 (n : ℕ) : ℤ :=
  (A069083.P18395257980087635032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A069083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069102.P15863805427309956499

`gcd(A130706(n), A164653(n+1))`
-/

namespace A069102.P15863805427309956499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A164653 (n + 1))

end

end A069102.P15863805427309956499

noncomputable section

/-- A069102: a(1) = 1; a(2) = 1; a(n) = Prime[n-1] + Prime[n-2] if n > 2.

Offset 1, canonical program `A069102.P15863805427309956499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069102 (n : ℕ) : ℤ :=
  (A069102.P15863805427309956499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069171.P16058303323936119467

`A002808(eq[3, A260626(n+1)])`
-/

namespace A069171.P16058303323936119467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069171.P16058303323936119467

noncomputable section

/-- A069171: Numbers k such that gcd(k, 2^k-1) = 3.

Offset 1, canonical program `A069171.P16058303323936119467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171 (n : ℕ) : ℤ :=
  A069171.P16058303323936119467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A069171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069231.P1710982746878742749

`eq[3, A069230(n+1)]+1`
-/

namespace A069231.P1710982746878742749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069231.P1710982746878742749

noncomputable section

/-- A069231: Numbers n such that there are exactly 3 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069231.P1710982746878742749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A069231 (n : ℕ) : ℤ :=
  (A069231.P1710982746878742749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A069231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069232.P17517502900018142505

`eq[2, A069230(n+1)]+1`
-/

namespace A069232.P17517502900018142505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069232.P17517502900018142505

noncomputable section

/-- A069232: Numbers n such that there are exactly 2 primes p satisfying the inequality n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069232.P17517502900018142505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A069232 (n : ℕ) : ℤ :=
  (A069232.P17517502900018142505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. -/
def A069232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069233.P13448844956543040906

`eq[1, A069230(n+1)]+1`
-/

namespace A069233.P13448844956543040906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069233.P13448844956543040906

noncomputable section

/-- A069233: Numbers k such that there is exactly 1 prime p satisfying the inequality k < p < k + tau(k)^2 where tau(k) = A000005(k).

Offset 1, canonical program `A069233.P13448844956543040906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A069233 (n : ℕ) : ℤ :=
  (A069233.P13448844956543040906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1029 terms. -/
def A069233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069754.P3749326683592309517

`∑[(A010051(n+1)-A010051(A028310(n)))²]`
-/

namespace A069754.P3749326683592309517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) - A010051 (A028310 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069754.P3749326683592309517

noncomputable section

/-- A069754: Counts transitions between prime and nonprime to reach the number n.

Offset 1, canonical program `A069754.P3749326683592309517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069754 (n : ℕ) : ℤ :=
  A069754.P3749326683592309517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069928.P1695334417311087564

`∑[A000007(A054025(n+1))]`
-/

namespace A069928.P1695334417311087564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P1695334417311087564

noncomputable section

/-- A069928: Number of integers k, 1<=k<=n, such that tau(k) divides sigma(k) where tau(k) is the number of divisors of k and sigma(k) the sum of divisors of k.

Offset 1, canonical program `A069928.P1695334417311087564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928 (n : ℕ) : ℤ :=
  A069928.P1695334417311087564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070546.P6456143545485569330

`∑[A036987(A009191(n+1)²)]`
-/

namespace A070546.P6456143545485569330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A009191 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070546.P6456143545485569330

noncomputable section

/-- A070546: a(n) = Card( k, 0

Offset 1, canonical program `A070546.P6456143545485569330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546 (n : ℕ) : ℤ :=
  A070546.P6456143545485569330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070909.P18225673285116895919

`A128227(n)%2`
-/

namespace A070909.P18225673285116895919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128227 n) 2

end

end A070909.P18225673285116895919

noncomputable section

/-- A070909: Triangle read by rows giving successive states of cellular automaton generated by "Rule 28" and by "Rule 156".

Offset 0, canonical program `A070909.P18225673285116895919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070909 (n : ℕ) : ℤ :=
  A070909.P18225673285116895919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071010.P2654454229242897100

`A000203(A022544(n+1))/4`
-/

namespace A071010.P2654454229242897100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A022544 (n + 1)).toNat : ℚ) / 4

end

end A071010.P2654454229242897100

noncomputable section

/-- A071010: Sigma(k)/4 when k is not a sum of 2 squares.

Offset 1, canonical program `A071010.P2654454229242897100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071010.P2654454229242897100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071011.P15902829894463259350

`∩[A001481(n+1), A248150(n+1)]`
-/

namespace A071011.P15902829894463259350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071011.P15902829894463259350

noncomputable section

/-- A071011: Numbers n such that n is a sum of 2 squares (i.e., n is in A001481(k)) and sigma(n) == 0 (mod 4).

Offset 1, canonical program `A071011.P15902829894463259350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A071011 (n : ℕ) : ℤ :=
  (A071011.P15902829894463259350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1046 terms. -/
def A071011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071111.P7558974791234017135

`A001000(n+2)`
-/

namespace A071111.P7558974791234017135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 2)

end

end A071111.P7558974791234017135

noncomputable section

/-- A071111: a(n) is the least integer x such that there exists an integer in the open interval (x/(i+1), x/i) for i= n-1, n-2 ..., 3, 2, 1.

Offset 2, canonical program `A071111.P7558974791234017135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111 (n : ℕ) : ℤ :=
  A071111.P7558974791234017135.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071228.P4535194681487630780

`(n+1)*A002808(n+1)`
-/

namespace A071228.P4535194681487630780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002808 (n + 1)

end

end A071228.P4535194681487630780

noncomputable section

/-- A071228: a(n) = n*(n-th composite number).

Offset 1, canonical program `A071228.P4535194681487630780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071228 (n : ℕ) : ℤ :=
  A071228.P4535194681487630780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071259.P17396136488218185286

`floor((A000040(n+1)+A002808(n+1))/2)`
-/

namespace A071259.P17396136488218185286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) + A002808 (n + 1) : ℚ) / 2⌋

end

end A071259.P17396136488218185286

noncomputable section

/-- A071259: Integer part of the arithmetic mean of the n-th prime p(n) and the n-th composite number C(n).

Offset 1, canonical program `A071259.P17396136488218185286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071259 (n : ℕ) : ℤ :=
  A071259.P17396136488218185286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071263.P13313201786565210703

`A017281(n+1)+A010051(A017281(n+1))`
-/

namespace A071263.P13313201786565210703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (n + 1) + A010051 (A017281 (n + 1)).toNat

end

end A071263.P13313201786565210703

noncomputable section

/-- A071263: Smallest nontrivial composite number beginning with n.

Offset 1, canonical program `A071263.P13313201786565210703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A071263 (n : ℕ) : ℤ :=
  A071263.P13313201786565210703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A071263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071326.P2879098409423793096

`A035316(n+1)-1`
-/

namespace A071326.P2879098409423793096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) - 1

end

end A071326.P2879098409423793096

noncomputable section

/-- A071326: Sum of squares > 1 dividing n.

Offset 1, canonical program `A071326.P2879098409423793096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071326 (n : ℕ) : ℤ :=
  A071326.P2879098409423793096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071336.P12527414434795799487

`10*A003136(n+2)+2`
-/

namespace A071336.P12527414434795799487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003136 (n + 2) + 2

end

end A071336.P12527414434795799487

noncomputable section

/-- A071336: Number of vertices of Goldberg-Casper-Klug pseudo-icosahedra.

Offset 1, canonical program `A071336.P12527414434795799487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071336 (n : ℕ) : ℤ :=
  A071336.P12527414434795799487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071538.P6551224478824605829

`∑[A010051(n+1)*A010051(n+3)]`
-/

namespace A071538.P6551224478824605829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A010051 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P6551224478824605829

noncomputable section

/-- A071538: Number of twin prime pairs (p, p+2) with p <= n.

Offset 1, canonical program `A071538.P6551224478824605829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071538 (n : ℕ) : ℤ :=
  A071538.P6551224478824605829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071538.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071717.P2528641483426211324

`A005807(n)-A120588(n)`
-/

namespace A071717.P2528641483426211324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A120588 n

end

end A071717.P2528641483426211324

noncomputable section

/-- A071717: Expansion of (1 + x^2*C)*C^2, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071717.P2528641483426211324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071717 (n : ℕ) : ℤ :=
  A071717.P2528641483426211324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071729.P4327875483729827891

`Δ[A071728(n)-∑[A071726(n)]]`
-/

namespace A071729.P4327875483729827891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071728 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071729.P4327875483729827891

noncomputable section

/-- A071729: Expansion of (1+x^3*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071729.P4327875483729827891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071729 (n : ℕ) : ℤ :=
  A071729.P4327875483729827891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071732.P16807153438452664902

`A071718(n)-Δ[A120588(n)]`
-/

namespace A071732.P16807153438452664902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 n - (f1 (n + 1) - f1 n)

end

end A071732.P16807153438452664902

noncomputable section

/-- A071732: Expansion of (1+x^3*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071732.P16807153438452664902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071732 (n : ℕ) : ℤ :=
  A071732.P16807153438452664902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071735.P2830187826988805830

`A071738(n)+A000245(n)`
-/

namespace A071735.P2830187826988805830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 n + A000245 n

end

end A071735.P2830187826988805830

noncomputable section

/-- A071735: Expansion of (1+x^3*C^3)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071735.P2830187826988805830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071735 (n : ℕ) : ℤ :=
  A071735.P2830187826988805830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071743.P394647172679144474

`Δ[A120588(A289207(n))]+A000108(n+1)`
-/

namespace A071743.P394647172679144474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000108 (n + 1)

end

end A071743.P394647172679144474

noncomputable section

/-- A071743: Expansion of (1+x^4*C)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071743.P394647172679144474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071743 (n : ℕ) : ℤ :=
  A071743.P394647172679144474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071748.P5053261563516852531

`A000108(n+1)+A071728(n)-A071727(n)`
-/

namespace A071748.P5053261563516852531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A071728 n - A071727 n)

end

end A071748.P5053261563516852531

noncomputable section

/-- A071748: Expansion of (1+x^4*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071748.P5053261563516852531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071748 (n : ℕ) : ℤ :=
  A071748.P5053261563516852531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071904.P6554188440157640390

`A007921(n+1)+2`
-/

namespace A071904.P6554188440157640390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) + 2

end

end A071904.P6554188440157640390

noncomputable section

/-- A071904: Odd composite numbers.

Offset 1, canonical program `A071904.P6554188440157640390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071904 (n : ℕ) : ℤ :=
  A071904.P6554188440157640390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072183.P11564982511114208187

`A061446(A000034(n+1)*A283971(n+1))`
-/

namespace A072183.P11564982511114208187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A000034 (n + 1) * A283971 (n + 1)).toNat

end

end A072183.P11564982511114208187

noncomputable section

/-- A072183: Sequence arising from factorization of the Fibonacci numbers.

Offset 1, canonical program `A072183.P11564982511114208187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A072183 (n : ℕ) : ℤ :=
  A072183.P11564982511114208187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A072183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072292.P7243147247323871744

`A069623(n+1)-1`
-/

namespace A072292.P7243147247323871744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n + 1) - 1

end

end A072292.P7243147247323871744

noncomputable section

/-- A072292: Number of proper powers b^d <= n (b > 1, d > 1).

Offset 1, canonical program `A072292.P7243147247323871744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072292 (n : ℕ) : ℤ :=
  A072292.P7243147247323871744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072587.P801725359986616698

`lt[1, gcd(2, A005361(n+1))]+1`
-/

namespace A072587.P801725359986616698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P801725359986616698

noncomputable section

/-- A072587: Numbers having at least one prime factor with an even exponent.

Offset 1, canonical program `A072587.P801725359986616698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587 (n : ℕ) : ℤ :=
  (A072587.P801725359986616698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072627.P14863741919564884877

`∑{d}[n+1, A010051((n-1)%#+1)]`
-/

namespace A072627.P14863741919564884877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (Int.tmod ((n : ℤ) - 1) (d : ℤ) + 1).toNat

end

end A072627.P14863741919564884877

noncomputable section

/-- A072627: Number of divisors d of n such that d-1 is prime.

Offset 1, canonical program `A072627.P14863741919564884877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072627 (n : ℕ) : ℤ :=
  A072627.P14863741919564884877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072668.P5648318357023435289

`A002808(n+1)-1`
-/

namespace A072668.P5648318357023435289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 1

end

end A072668.P5648318357023435289

noncomputable section

/-- A072668: Numbers one less than composite numbers.

Offset 1, canonical program `A072668.P5648318357023435289`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072668 (n : ℕ) : ℤ :=
  A072668.P5648318357023435289.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072702.P3007630778169906481

`A072710(n+2)-15`
-/

namespace A072702.P3007630778169906481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072710 (n + 2) - 15

end

end A072702.P3007630778169906481

noncomputable section

/-- A072702: Last digit of F(n) is 4 where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A072702.P3007630778169906481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072702 (n : ℕ) : ℤ :=
  A072702.P3007630778169906481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072748.P725762028645036703

`∑[val(eq[1, A005361(n+1)]+1, 3)]`
-/

namespace A072748.P725762028645036703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P725762028645036703

noncomputable section

/-- A072748: Counting factor 3 in the first n squarefree numbers.

Offset 1, canonical program `A072748.P725762028645036703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748 (n : ℕ) : ℤ :=
  (A072748.P725762028645036703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072749.P16362701567912148616

`∑[val(eq[1, A005361(n+1)]+1, 5)]`
-/

namespace A072749.P16362701567912148616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P16362701567912148616

noncomputable section

/-- A072749: Count of factors of 5 in the first n squarefree numbers.

Offset 1, canonical program `A072749.P16362701567912148616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749 (n : ℕ) : ℤ :=
  (A072749.P16362701567912148616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072762.P10691074695677222829

`a(n-1)*2+A010051(n+1)` with `a(0)=0`
-/

namespace A072762.P10691074695677222829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * 2 + A010051 (n + 1)

end

end A072762.P10691074695677222829

noncomputable section

/-- A072762: n coded as binary word of length=n with k-th bit set iff k is prime (1<=k<=n), decimal value.

Offset 1, canonical program `A072762.P10691074695677222829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072762 (n : ℕ) : ℤ :=
  A072762.P10691074695677222829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072783.P12718214040334104581

`Δ[A059841(A051777(n+1))]%A010766(n+1)`
-/

namespace A072783.P12718214040334104581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A051777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A010766 (n + 1))

end

end A072783.P12718214040334104581

noncomputable section

/-- A072783: Differences between A072740 and A072736.

Offset 0, canonical program `A072783.P12718214040334104581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072783 (n : ℕ) : ℤ :=
  A072783.P12718214040334104581.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073167.P4925457120864864700

`A002808(A000142(n+1))`
-/

namespace A073167.P4925457120864864700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000142 (n + 1)).toNat

end

end A073167.P4925457120864864700

noncomputable section

/-- A073167: The (n!)-th composite number.

Offset 1, canonical program `A073167.P4925457120864864700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073167 (n : ℕ) : ℤ :=
  A073167.P4925457120864864700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073169.P14738260624206914448

`A002808(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073169.P14738260624206914448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (n + 1 : ℤ)

end

end A073169.P14738260624206914448

noncomputable section

/-- A073169: a(n)=A002808(n)-n, difference between n-th composite and n.

Offset 1, canonical program `A073169.P14738260624206914448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073169 (n : ℕ) : ℤ :=
  A073169.P14738260624206914448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073171.P16806449841852337076

`A002808((n+1)²)`
-/

namespace A073171.P16806449841852337076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((n + 1) ^ 2)

end

end A073171.P16806449841852337076

noncomputable section

/-- A073171: The (n^2)-th composite number.

Offset 1, canonical program `A073171.P16806449841852337076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073171 (n : ℕ) : ℤ :=
  A073171.P16806449841852337076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073182.P3909354792223158963

`A243987(A007948(n+1)+A000217(n))`
-/

namespace A073182.P3909354792223158963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A007948 (n + 1) + A000217 n).toNat

end

end A073182.P3909354792223158963

noncomputable section

/-- A073182: Number of divisors of n which are not greater than the cubefree kernel of n.

Offset 1, canonical program `A073182.P3909354792223158963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A073182 (n : ℕ) : ℤ :=
  A073182.P3909354792223158963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A073182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073255.P11360122107156881549

`A000203(A002808(n+1))`
-/

namespace A073255.P11360122107156881549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002808 (n + 1)).toNat

end

end A073255.P11360122107156881549

noncomputable section

/-- A073255: Sum of divisors of n-th composite number.

Offset 1, canonical program `A073255.P11360122107156881549`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073255 (n : ℕ) : ℤ :=
  A073255.P11360122107156881549.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073267.P5858625629779266350

`A180094(n*A075897(n))`
-/

namespace A073267.P5858625629779266350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180094 ((n : ℤ) * A075897 n).toNat

end

end A073267.P5858625629779266350

noncomputable section

/-- A073267: Number of compositions (ordered partitions) of n into exactly two powers of 2.

Offset 0, canonical program `A073267.P5858625629779266350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073267 (n : ℕ) : ℤ :=
  A073267.P5858625629779266350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073367.P4763750874448608159

`A002808(n+4)%A065855(n+4)`
-/

namespace A073367.P4763750874448608159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 4)) (A065855 (n + 4))

end

end A073367.P4763750874448608159

noncomputable section

/-- A073367: Remainder when n-th composite is divided by number of composites not exceeding n.

Offset 4, canonical program `A073367.P4763750874448608159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073367 (n : ℕ) : ℤ :=
  A073367.P4763750874448608159.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073458.P13611208984373621108

`floor(A000040(n+1)/A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073458.P13611208984373621108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P13611208984373621108

noncomputable section

/-- A073458: a(n) = floor(prime(n)/composite(n)).

Offset 1, canonical program `A073458.P13611208984373621108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073458 (n : ℕ) : ℤ :=
  A073458.P13611208984373621108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073536.P2156523048821770055

`∑[A058841(n+1)+1]+1`
-/

namespace A073536.P2156523048821770055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058841 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073536.P2156523048821770055

noncomputable section

/-- A073536: Breaking indices for A058842 (i.e., n such that A058842(n) is not equal to 3*A058842 (n-1) ).

Offset 1, canonical program `A073536.P2156523048821770055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073536 (n : ℕ) : ℤ :=
  A073536.P2156523048821770055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073582.P16120339472927722873

`2*(A123123(n+1)-2)`
-/

namespace A073582.P16120339472927722873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123123 (n + 1) - 2)

end

end A073582.P16120339472927722873

noncomputable section

/-- A073582: Numbers k such that S(k) = k/2, where S(k) is the Kempner function A002034.

Offset 1, canonical program `A073582.P16120339472927722873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073582 (n : ℕ) : ℤ :=
  A073582.P16120339472927722873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073632.P11723121080494302604

`comp[A073634(n+1)]`
-/

namespace A073632.P11723121080494302604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073632.P11723121080494302604

noncomputable section

/-- A073632: Numbers k such that floor((3/2)^k) = A002379(k) is odd.

Offset 1, canonical program `A073632.P11723121080494302604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073632 (n : ℕ) : ℤ :=
  (A073632.P11723121080494302604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073718.P3252863766205308331

`A000079(A002808(n+1))`
-/

namespace A073718.P3252863766205308331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002808 (n + 1)).toNat

end

end A073718.P3252863766205308331

noncomputable section

/-- A073718: Powers of 2 with composite exponents.

Offset 1, canonical program `A073718.P3252863766205308331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073718 (n : ℕ) : ℤ :=
  A073718.P3252863766205308331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073765.P4906680144433019488

`C(A000040(n+1), A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073765.P4906680144433019488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A002808 (n + 1)).toNat

end

end A073765.P4906680144433019488

noncomputable section

/-- A073765: a(n) = binomial(prime(n), composite(n)).

Offset 1, canonical program `A073765.P4906680144433019488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073765 (n : ℕ) : ℤ :=
  (A073765.P4906680144433019488.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073765.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073766.P4951963372302388660

`C(A002808(n+2), A002808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073766.P4951963372302388660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 2)).toNat (A002808 (n + 1)).toNat

end

end A073766.P4951963372302388660

noncomputable section

/-- A073766: a(n) = binomial(composite(n+1), composite(n)) = binomial(A002808(n+1), A002808(n)).

Offset 1, canonical program `A073766.P4951963372302388660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073766 (n : ℕ) : ℤ :=
  (A073766.P4951963372302388660.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073783.P7345067272109289188

`A002808(n+2)-A002808(n+1)`
-/

namespace A073783.P7345067272109289188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) - A002808 (n + 1)

end

end A073783.P7345067272109289188

noncomputable section

/-- A073783: First differences of composite numbers.

Offset 1, canonical program `A073783.P7345067272109289188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073783 (n : ℕ) : ℤ :=
  A073783.P7345067272109289188.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073784.P3477652611026414592

`A000720(A002808(n+2))-A000720(A002808(n+1))`
-/

namespace A073784.P3477652611026414592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 2)).toNat - A000720 (A002808 (n + 1)).toNat

end

end A073784.P3477652611026414592

noncomputable section

/-- A073784: Number of primes between successive composite numbers.

Offset 1, canonical program `A073784.P3477652611026414592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073784 (n : ℕ) : ℤ :=
  A073784.P3477652611026414592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073800.P4820594876694067768

`(2^(n+1))%A002808(n+1)`
-/

namespace A073800.P4820594876694067768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 1) : ℤ) (A002808 (n + 1))

end

end A073800.P4820594876694067768

noncomputable section

/-- A073800: Remainder of division 2^n/c(n), where c(n)=A002808(n), the n-th composite.

Offset 1, canonical program `A073800.P4820594876694067768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A073800 (n : ℕ) : ℤ :=
  A073800.P4820594876694067768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A073800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073837.P15829496930880543402

`A063955(n*a(val(n, n+1))+1)` with `a(0)=2`
-/

namespace A073837.P15829496930880543402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063955 ((n : ℤ) * a (SequenceMachineLib.valuation n (n + 1)) + 1).toNat

end

end A073837.P15829496930880543402

noncomputable section

/-- A073837: Sum of primes p satisfying n <= p <= 2n.

Offset 1, canonical program `A073837.P15829496930880543402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073837 (n : ℕ) : ℤ :=
  A073837.P15829496930880543402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A073837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073882.P10708538489612221498

`A117490(n+1)+A010051(n+1)`
-/

namespace A073882.P10708538489612221498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + A010051 (n + 1)

end

end A073882.P10708538489612221498

noncomputable section

/-- A073882: Number of primes between n and n^2.

Offset 1, canonical program `A073882.P10708538489612221498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073882 (n : ℕ) : ℤ :=
  A073882.P10708538489612221498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074295.P9350857613342188456

`A089309(Δ[A216345(A016993(n))])`
-/

namespace A074295.P9350857613342188456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (f1 (n + 1) - f1 n).toNat

end

end A074295.P9350857613342188456

noncomputable section

/-- A074295: Dominant (i.e., most populous) digit in Kolakoski sequence (A000002) when partitioned into groups of 7.

Offset 1, canonical program `A074295.P9350857613342188456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A074295 (n : ℕ) : ℤ :=
  A074295.P9350857613342188456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1428 terms. -/
def A074295.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074674.P16459407419065976174

`Δ[p?[A031969(n+1)]]`
-/

namespace A074674.P16459407419065976174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074674.P16459407419065976174

noncomputable section

/-- A074674: Differences between successive four-digit distinct-digit primes.

Offset 1, canonical program `A074674.P16459407419065976174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 509 terms. -/
def A074674 (n : ℕ) : ℤ :=
  A074674.P16459407419065976174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 509 terms. -/
def A074674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074696.P4846602148293109203

`lt[n, A046798(n)]`
-/

namespace A074696.P4846602148293109203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A074696.P4846602148293109203

noncomputable section

/-- A074696: Numbers k such that 2^k+1 has more than k divisors (k such that A000005(2^k+1) > k).

Offset 1, canonical program `A074696.P4846602148293109203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A074696 (n : ℕ) : ℤ :=
  (A074696.P4846602148293109203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A074696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074739.P8677531906933437778

`lt[A062419(n+1), A062509(n+1)]+1`
-/

namespace A074739.P8677531906933437778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074739.P8677531906933437778

noncomputable section

/-- A074739: Numbers n such that omega(n) > log(log(n)).

Offset 1, canonical program `A074739.P8677531906933437778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739 (n : ℕ) : ℤ :=
  (A074739.P8677531906933437778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074740.P3277946273930303314

`A002866(n+1)/A066843(n+1)`
-/

namespace A074740.P3277946273930303314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002866 (n + 1) : ℚ) / (A066843 (n + 1) : ℚ)

end

end A074740.P3277946273930303314

noncomputable section

/-- A074740: a(n) = n!*2^(n-1)/Product_{k=1..n} tau(k) where tau = A000005.

Offset 1, canonical program `A074740.P3277946273930303314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074740.P3277946273930303314.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075436.P16769685247187580012

`2*A076025(n+1)`
-/

namespace A075436.P16769685247187580012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076025 (n + 1)

end

end A075436.P16769685247187580012

noncomputable section

/-- A075436: Right- or upward-moving paths connecting opposite corners of an n X n chessboard, visiting the diagonal in 0 up to (n-2) intermediate points between start and finish. Equivalently, subdivide the chessboard into 1 up to (n-1) blocks along the diagonal in all possible ways and sum the path-count over all sub-blocks.

Offset 2, canonical program `A075436.P16769685247187580012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A075436 (n : ℕ) : ℤ :=
  A075436.P16769685247187580012.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A075436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075526.P13453056913313804413

`A008578(n+2)-A008578(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075526.P13453056913313804413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A008578 (n + 1)

end

end A075526.P13453056913313804413

noncomputable section

/-- A075526: a(n) = A008578(n+2) - A008578(n+1).

Offset 0, canonical program `A075526.P13453056913313804413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075526 (n : ℕ) : ℤ :=
  A075526.P13453056913313804413.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075527.P10646359664599490544

`A008578(n+3)-A008578(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075527.P10646359664599490544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3) - A008578 (n + 1)

end

end A075527.P10646359664599490544

noncomputable section

/-- A075527: a(n) = A008578(n+3) - A008578(n+1).

Offset 0, canonical program `A075527.P10646359664599490544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075527 (n : ℕ) : ℤ :=
  A075527.P10646359664599490544.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075743.P8124416718606607743

`A010051(A007310(n+2))`
-/

namespace A075743.P8124416718606607743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007310 (n + 2)).toNat

end

end A075743.P8124416718606607743

noncomputable section

/-- A075743: For all numbers of the form 6*k +- 1 starting with 5, '1' indicates prime and '0' indicates composite.

Offset 1, canonical program `A075743.P8124416718606607743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075743 (n : ℕ) : ℤ :=
  A075743.P8124416718606607743.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075802.P15418155707765850726

`A069623(n+1)-A076411(n+1)`
-/

namespace A075802.P15418155707765850726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n + 1) - A076411 (n + 1)

end

end A075802.P15418155707765850726

noncomputable section

/-- A075802: Characteristic function of perfect powers, A001597.

Offset 1, canonical program `A075802.P15418155707765850726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075802 (n : ℕ) : ℤ :=
  A075802.P15418155707765850726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076108.P2131833645639796247

`A076109(n+1)^(n+1)`
-/

namespace A076108.P2131833645639796247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (n + 1) ^ (n + 1)

end

end A076108.P2131833645639796247

noncomputable section

/-- A076108: Least positive n-th power that is the sum of n consecutive integers, or 0 if no such n-th power exists.

Offset 1, canonical program `A076108.P2131833645639796247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076108 (n : ℕ) : ℤ :=
  A076108.P2131833645639796247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076216.P540175759321930494

`eq[1, A253414(n-floor(n/3))²]+1`
-/

namespace A076216.P540175759321930494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 ((n : ℤ) - ⌊(n : ℚ) / 3⌋).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076216.P540175759321930494

noncomputable section

/-- A076216: Partial sum of coefficients in the continued fraction expansion of sum(k>=0,1/2^(2^k-1)).

Offset 1, canonical program `A076216.P540175759321930494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076216 (n : ℕ) : ℤ :=
  (A076216.P540175759321930494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076273.P1350952103448014741

`A164653(n+1)+A057428(n)`
-/

namespace A076273.P1350952103448014741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1) + A057428 n

end

end A076273.P1350952103448014741

noncomputable section

/-- A076273: a(0) = 1, a(1) = 2; for n>1, a(n) = prime(n)+prime(n-1)-1.

Offset 0, canonical program `A076273.P1350952103448014741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076273 (n : ℕ) : ℤ :=
  A076273.P1350952103448014741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076274.P12157437344970773243

`2*A008578(n+1)-1`
-/

namespace A076274.P12157437344970773243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - 1

end

end A076274.P12157437344970773243

noncomputable section

/-- A076274: 2p-1 where p is 1 or a prime.

Offset 1, canonical program `A076274.P12157437344970773243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076274 (n : ℕ) : ℤ :=
  A076274.P12157437344970773243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076360.P16775053655456500281

`A062068(n+1)-A062069(n+1)`
-/

namespace A076360.P16775053655456500281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A062069 (n + 1)

end

end A076360.P16775053655456500281

noncomputable section

/-- A076360: a(n) = d(sigma(n)) - sigma(d(n)), where d(n) is the number of divisors of n and sigma(n) is their sum.

Offset 1, canonical program `A076360.P16775053655456500281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076360 (n : ℕ) : ℤ :=
  A076360.P16775053655456500281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076480.P9696198196575401842

`n+1+A076479(n+1)`
-/

namespace A076480.P9696198196575401842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A076479 (n + 1)

end

end A076480.P9696198196575401842

noncomputable section

/-- A076480: a(n) = n + mu(rad(n)), where mu is the Moebius function (A008683) and rad is the squarefree kernel (A007947).

Offset 1, canonical program `A076480.P9696198196575401842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076480 (n : ℕ) : ℤ :=
  A076480.P9696198196575401842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076479, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076537.P12288578895659982277

`eq[0, A300294(n+1)]`
-/

namespace A076537.P12288578895659982277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076537.P12288578895659982277

noncomputable section

/-- A076537: Map positive rational numbers to positive integers by diagonal method using c(p,q) = (p + q - 2) * (p + q - 1) / 2 + p where p and q are positive integers. a(n) is an increasing sequence including all c(p,q) where gcd(p,q) > 1.

Offset 1, canonical program `A076537.P12288578895659982277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A076537 (n : ℕ) : ℤ :=
  (A076537.P12288578895659982277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A076537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076934.P8649763762299317029

`(n+1)/A055881(n+1)!`
-/

namespace A076934.P8649763762299317029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A055881 (n + 1)).toNat : ℚ)

end

end A076934.P8649763762299317029

noncomputable section

/-- A076934: Smallest integer of the form n/k!.

Offset 1, canonical program `A076934.P8649763762299317029`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076934.P8649763762299317029.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076984.P13104546406193990713

`A023645(n+1)+1`
-/

namespace A076984.P13104546406193990713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 1

end

end A076984.P13104546406193990713

noncomputable section

/-- A076984: Number of Fibonacci numbers that are divisors of the n-th Fibonacci number.

Offset 1, canonical program `A076984.P13104546406193990713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076984 (n : ℕ) : ℤ :=
  A076984.P13104546406193990713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077026.P1798448941674800563

`1-A075989(n+1)+n`
-/

namespace A077026.P1798448941674800563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075989 (n + 1) + (n : ℤ)

end

end A077026.P1798448941674800563

noncomputable section

/-- A077026: a(n) = Sum_{k=1..n} floor(n/k + 1)-floor(n/k + 1/2).

Offset 1, canonical program `A077026.P1798448941674800563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077026 (n : ℕ) : ℤ :=
  A077026.P1798448941674800563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077354.P15018745007241807855

`A131740(n+1)-A007504(n+1)`
-/

namespace A077354.P15018745007241807855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) - A007504 (n + 1)

end

end A077354.P15018745007241807855

noncomputable section

/-- A077354: a(n) = Sum_{i=n+1..2n} prime(i) - Sum_{i=1..n} prime(i).

Offset 1, canonical program `A077354.P15018745007241807855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077354 (n : ℕ) : ℤ :=
  A077354.P15018745007241807855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077649.P3331464610391563116

`A000030(A002808(n+1))`
-/

namespace A077649.P3331464610391563116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A002808 (n + 1)).toNat

end

end A077649.P3331464610391563116

noncomputable section

/-- A077649: Initial digit of composite numbers.

Offset 1, canonical program `A077649.P3331464610391563116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077649 (n : ℕ) : ℤ :=
  A077649.P3331464610391563116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078155.P2137450689880317301

`A078160(n+1)-A027423(n+1)`
-/

namespace A078155.P2137450689880317301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078160 (n + 1) - A027423 (n + 1)

end

end A078155.P2137450689880317301

noncomputable section

/-- A078155: A078152(n!).

Offset 1, canonical program `A078155.P2137450689880317301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A078155 (n : ℕ) : ℤ :=
  A078155.P2137450689880317301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A078155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078157.P9337233492814694395

`A078152(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078157.P9337233492814694395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078152 (2 ^ (n + 1))

end

end A078157.P9337233492814694395

noncomputable section

/-- A078157: a(n) = A078152(2^n).

Offset 1, canonical program `A078157.P9337233492814694395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078157 (n : ℕ) : ℤ :=
  A078157.P9337233492814694395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078342.P16377039344616556995

`∑[char[A008578(n+1)]]-A056811(n+1)`
-/

namespace A078342.P16377039344616556995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056811 (n + 1)

end

end A078342.P16377039344616556995

noncomputable section

/-- A078342: Number of positive integers less than n that are coprime to all primes less than or equal to the square root of n.

Offset 1, canonical program `A078342.P16377039344616556995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078342 (n : ℕ) : ℤ :=
  A078342.P16377039344616556995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078349.P15992223728515405576

`A010051(n+1)+a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=1`
-/

namespace A078349.P15992223728515405576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010051 (n + 1) + a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A078349.P15992223728515405576

noncomputable section

/-- A078349: Number of primes in sequence h(m) defined by h(1) = n, h(m+1) = Floor(h(m)/2).

Offset 1, canonical program `A078349.P15992223728515405576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078349 (n : ℕ) : ℤ :=
  A078349.P15992223728515405576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078510.P9276633091591292466

`a(n-1)+a(n-A265359(n))` with `a(0)=0, a(1)=1`
-/

namespace A078510.P9276633091591292466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a ((n : ℤ) - A265359 n).toNat

end

end A078510.P9276633091591292466

noncomputable section

/-- A078510: Spiro-Fibonacci numbers, a(n) = sum of two previous terms that are nearest when terms arranged in a spiral.

Offset 0, canonical program `A078510.P9276633091591292466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078510 (n : ℕ) : ℤ :=
  (A078510.P9276633091591292466.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078643.P15551770542448101721

`A059389(comp[∑[n-1]]-char[1])`
-/

namespace A078643.P15551770542448101721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - (if ∃ j, f3 j = n then 1 else 0))

end

end A078643.P15551770542448101721

noncomputable section

/-- A078643: Numbers with exactly one representation as the sum of two Fibonacci numbers.

Offset 1, canonical program `A078643.P15551770542448101721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A078643 (n : ℕ) : ℤ :=
  A078643.P15551770542448101721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A078643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078782.P15257783046408188194

`A002808(A000040(n+1)-1)`
-/

namespace A078782.P15257783046408188194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A000040 (n + 1) - 1).toNat

end

end A078782.P15257783046408188194

noncomputable section

/-- A078782: Nonprimes (A018252) with prime (A000040) subscripts.

Offset 1, canonical program `A078782.P15257783046408188194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078782 (n : ℕ) : ℤ :=
  A078782.P15257783046408188194.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078782.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079280.P5015006494245718984

`A126869(A004442(n))+A116406(n)`
-/

namespace A079280.P5015006494245718984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A004442 n).toNat + A116406 n

end

end A079280.P5015006494245718984

noncomputable section

/-- A079280: Number of log-concave paths of length n starting from the origin (0,0) with steps from {N=(0,1), E=(1,0) and S=(0,-1)} that stay in the second octant and never touch the line y=x except possibly at the beginning or the end.

Offset 1, canonical program `A079280.P5015006494245718984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A079280 (n : ℕ) : ℤ :=
  A079280.P5015006494245718984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A079280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079317.P17612360631527221144

`1-(a(n-1)-∑[A147582(n+1)])` with `a(0)=1`
-/

namespace A079317.P17612360631527221144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079317.P17612360631527221144

noncomputable section

/-- A079317: Number of ON cells after n generations of cellular automaton on square grid in which cells which share exactly one edge with an ON cell change their state.

Offset 0, canonical program `A079317.P17612360631527221144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4242 terms. -/
def A079317 (n : ℕ) : ℤ :=
  A079317.P17612360631527221144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4242 terms. -/
def A079317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079424.P16692156195540481726

`A162802(n+2)`
-/

namespace A079424.P16692156195540481726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162802 (n + 2)

end

end A079424.P16692156195540481726

noncomputable section

/-- A079424: A bisection of A024675. Cf. A058296.

Offset 1, canonical program `A079424.P16692156195540481726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079424 (n : ℕ) : ℤ :=
  A079424.P16692156195540481726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079696.P2621453534582977077

`A002808(n+1)+1`
-/

namespace A079696.P2621453534582977077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + 1

end

end A079696.P2621453534582977077

noncomputable section

/-- A079696: Numbers one more than composite numbers.

Offset 1, canonical program `A079696.P2621453534582977077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079696 (n : ℕ) : ℤ :=
  A079696.P2621453534582977077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079696.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A080150.P5238773615938268091

`A080151(n+1)²`
-/

namespace A080150.P5238773615938268091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1) ^ 2

end

end A080150.P5238773615938268091

noncomputable section

/-- A080150: Let m = Wonderful Demlo number A002477(n); a(n) = square of the sum of digits of m.

Offset 1, canonical program `A080150.P5238773615938268091`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080150 (n : ℕ) : ℤ :=
  A080150.P5238773615938268091.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080159.P15846458939702770497

`A089627(n)/A128227(n)`
-/

namespace A080159.P15846458939702770497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089627 n : ℚ) / (A128227 n : ℚ)

end

end A080159.P15846458939702770497

noncomputable section

/-- A080159: Triangular array of ways of drawing k non-intersecting chords between n points on a circle; i.e., Motzkin polynomial coefficients.

Offset 0, canonical program `A080159.P15846458939702770497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080159 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080159.P15846458939702770497.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080345.P6999835387772028756

`∑{e}[A063375(p?[xor(1, n)+1]), #]`
-/

namespace A080345.P6999835387772028756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A080345.P6999835387772028756

noncomputable section

/-- A080345: a(n) is the number of prime factors in Fibonacci(prime(n)); that is, in the Fibonacci number whose index is the n-th prime.

Offset 1, canonical program `A080345.P6999835387772028756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A080345 (n : ℕ) : ℤ :=
  (A080345.P6999835387772028756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A080345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080389.P12053927034418777045

`eq[1, gcd(A037952(n), A131738(n))]`
-/

namespace A080389.P12053927034418777045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037952 n) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080389.P12053927034418777045

noncomputable section

/-- A080389: Numbers n such that gcd( n+1, binomial(n, floor(n/2)) ) = 1.

Offset 1, canonical program `A080389.P12053927034418777045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A080389 (n : ℕ) : ℤ :=
  (A080389.P12053927034418777045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A080389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080418.P2070778107889241742

`abs(A325191(n)+A097807(n))`
-/

namespace A080418.P2070778107889241742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325191 n + A097807 n|

end

end A080418.P2070778107889241742

noncomputable section

/-- A080418: Generalized Pascal triangle.

Offset 1, canonical program `A080418.P2070778107889241742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080418 (n : ℕ) : ℤ :=
  A080418.P2070778107889241742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081092.P1250874932712895324

`p?[A000040(n+1)*A010051(A014499(n+1))]`
-/

namespace A081092.P1250874932712895324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A014499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081092.P1250874932712895324

noncomputable section

/-- A081092: Primes having a prime number of 1's in their binary representation.

Offset 1, canonical program `A081092.P1250874932712895324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A081092 (n : ℕ) : ℤ :=
  A081092.P1250874932712895324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A081092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081249.P17615615709827917834

`∑[A081134(n+1)]`
-/

namespace A081249.P17615615709827917834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P17615615709827917834

noncomputable section

/-- A081249: Partial sums of A081134.

Offset 1, canonical program `A081249.P17615615709827917834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081249 (n : ℕ) : ℤ :=
  A081249.P17615615709827917834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082091.P12026919801001082135

`1+a(A005361(n+1)-1)` with `a(0)=1`
-/

namespace A082091.P12026919801001082135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A005361 (n + 1) - 1).toNat

end

end A082091.P12026919801001082135

noncomputable section

/-- A082091: a(n) = one more than the number of iterations of A005361 needed to reach 1 from the starting value n.

Offset 1, canonical program `A082091.P12026919801001082135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082091 (n : ℕ) : ℤ :=
  (A082091.P12026919801001082135.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082251.P3941284937175631650

`p?[A175965(n+10)-A175965(n+1)]`
-/

namespace A082251.P3941284937175631650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 10) - A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P3941284937175631650

noncomputable section

/-- A082251: Primes that are the sum of 9 consecutive primes.

Offset 1, canonical program `A082251.P3941284937175631650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A082251 (n : ℕ) : ℤ :=
  A082251.P3941284937175631650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A082251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082548.P10587941178877347751

`∑[A008578(A185115(n)+n)]`
-/

namespace A082548.P10587941178877347751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A185115 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082548.P10587941178877347751

noncomputable section

/-- A082548: a(n) is the number of values of k such that k can be expressed as the sum of distinct primes with largest prime in the sum equal to prime(n).

Offset 1, canonical program `A082548.P10587941178877347751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082548 (n : ℕ) : ℤ :=
  A082548.P10587941178877347751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082927.P8299807064602277529

`lt[0, A037913(n+1)]+1`
-/

namespace A082927.P8299807064602277529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082927.P8299807064602277529

noncomputable section

/-- A082927: Numbers in which at least one pair of adjacent digits differ by 1.

Offset 1, canonical program `A082927.P8299807064602277529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4387 terms. -/
def A082927 (n : ℕ) : ℤ :=
  (A082927.P8299807064602277529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4387 terms. -/
def A082927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082997.P7827061772394595048

`∑[A215480(n+1)]`
-/

namespace A082997.P7827061772394595048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082997.P7827061772394595048

noncomputable section

/-- A082997: a(n) = card{ x <= n : omega(x) = 2 }.

Offset 1, canonical program `A082997.P7827061772394595048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082997 (n : ℕ) : ℤ :=
  A082997.P7827061772394595048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083037.P6801730865427598023

`-A123737(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083037.P6801730865427598023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123737 (n + 1)

end

end A083037.P6801730865427598023

noncomputable section

/-- A083037: a(n)=2*A083036(n)-n. Also -A123737(n).

Offset 1, canonical program `A083037.P6801730865427598023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083037 (n : ℕ) : ℤ :=
  A083037.P6801730865427598023.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083141.P9150602828074558768

`A006005(A028310(2*n))*A008578(n+2)`
-/

namespace A083141.P9150602828074558768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A028310 (2 * n)).toNat * A008578 (n + 2)

end

end A083141.P9150602828074558768

noncomputable section

/-- A083141: Main diagonal of array in A083140.

Offset 1, canonical program `A083141.P9150602828074558768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A083141 (n : ℕ) : ℤ :=
  A083141.P9150602828074558768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A083141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083531.P1022850084911545269

`Δ[A002191(n+1)]`
-/

namespace A083531.P1022850084911545269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083531.P1022850084911545269

noncomputable section

/-- A083531: First difference sequence of A002191. Differences between possible values for sum of divisors of n.

Offset 1, canonical program `A083531.P1022850084911545269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083531 (n : ℕ) : ℤ :=
  A083531.P1022850084911545269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083786.P13265857354035121476

`A002808(n+1)%10`
-/

namespace A083786.P13265857354035121476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) 10

end

end A083786.P13265857354035121476

noncomputable section

/-- A083786: Composite numbers mod 10.

Offset 1, canonical program `A083786.P13265857354035121476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083786 (n : ℕ) : ℤ :=
  A083786.P13265857354035121476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084176.P7826877778170467656

`record[A059389(n+1)%A108035(n+1)]`
-/

namespace A084176.P7826877778170467656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059389 (n + 1)) (A108035 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084176.P7826877778170467656

noncomputable section

/-- A084176: Sums of two Fibonacci numbers (allowing 0 as a summand).

Offset 1, canonical program `A084176.P7826877778170467656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. -/
def A084176 (n : ℕ) : ℤ :=
  A084176.P7826877778170467656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. -/
def A084176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084473.P18183717668493917912

`A084471(A084471(n+1))`
-/

namespace A084473.P18183717668493917912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (A084471 (n + 1)).toNat

end

end A084473.P18183717668493917912

noncomputable section

/-- A084473: Replace 0 with 0000 in binary representation of n.

Offset 1, canonical program `A084473.P18183717668493917912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084473 (n : ℕ) : ℤ :=
  A084473.P18183717668493917912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084675.P7647099767913281496

`a(n-1)*A028310(A098369(∑[n]))` with `a(0)=1`
-/

namespace A084675.P7647099767913281496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A028310 (A098369 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A084675.P7647099767913281496

noncomputable section

/-- A084675: Product of the first n digits of the Golden Ratio phi = 1.6180339... (treating 0's as if they were 1's).

Offset 1, canonical program `A084675.P7647099767913281496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A084675 (n : ℕ) : ℤ :=
  A084675.P7647099767913281496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A084675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084840.P2801589053806159802

`Δ[A091194(A179865(n+1))]`
-/

namespace A084840.P2801589053806159802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084840.P2801589053806159802

noncomputable section

/-- A084840: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of abundant integers in n-th row.

Offset 1, canonical program `A084840.P2801589053806159802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A084840 (n : ℕ) : ℤ :=
  A084840.P2801589053806159802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A084840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084917.P988097393730579605

`∩[2*n, A084916(n+1)]/2`
-/

namespace A084917.P988097393730579605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A084917.P988097393730579605

noncomputable section

/-- A084917: Positive numbers of the form 3*y^2 - x^2.

Offset 1, canonical program `A084917.P988097393730579605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5189 terms. -/
def A084917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084917.P988097393730579605.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5189 terms. -/
def A084917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084970.P17840610211621121280

`13*A008365(n+1)`
-/

namespace A084970.P17840610211621121280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A008365 (n + 1)

end

end A084970.P17840610211621121280

noncomputable section

/-- A084970: Numbers whose smallest prime factor is 13.

Offset 1, canonical program `A084970.P17840610211621121280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084970 (n : ℕ) : ℤ :=
  A084970.P17840610211621121280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085020.P16835461110342014279

`∑{d}[n+1, (#+1)*A010051(#+1)]`
-/

namespace A085020.P16835461110342014279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1 : ℤ) * A010051 (d + 1)

end

end A085020.P16835461110342014279

noncomputable section

/-- A085020: a(n) = Sum_{d|n, (d+1) prime} (d + 1).

Offset 1, canonical program `A085020.P16835461110342014279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085020 (n : ℕ) : ℤ :=
  A085020.P16835461110342014279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085086.P9396323026637510600

`A158780(A073897(n+1))`
-/

namespace A085086.P9396323026637510600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A073897 (n + 1)).toNat

end

end A085086.P9396323026637510600

noncomputable section

/-- A085086: a(1) = 1; if n is composite then a(n) = Sum_{i < n, i not prime} a(i), else if n is prime then a(n) = sum_{ j < n, j is a noncomposite} a(j).

Offset 1, canonical program `A085086.P9396323026637510600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A085086 (n : ℕ) : ℤ :=
  A085086.P9396323026637510600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. -/
def A085086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085118.P8531841881475937223

`∪[A008578(n+2), A100484(n+2)]`
-/

namespace A085118.P8531841881475937223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085118.P8531841881475937223

noncomputable section

/-- A085118: Primes together with twice the odd primes.

Offset 1, canonical program `A085118.P8531841881475937223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085118 (n : ℕ) : ℤ :=
  (A085118.P8531841881475937223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085368.P7790068879867825108

`A007676(n)+A007677(n)`
-/

namespace A085368.P7790068879867825108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007676 n + A007677 n

end

end A085368.P7790068879867825108

noncomputable section

/-- A085368: Sum of numerators and denominators of convergents to e.

Offset 0, canonical program `A085368.P7790068879867825108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007676, A007677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085368 (n : ℕ) : ℤ :=
  A085368.P7790068879867825108.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007676, A007677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085403.P17921680985737888414

`-A006318(n+1-gcd(2, a(n-1)))` with `a(0)=1`
-/

namespace A085403.P17921680985737888414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -A006318 (n + 1 - Int.gcd 2 (a (n - 1)))

end

end A085403.P17921680985737888414

noncomputable section

/-- A085403: Expansion of (1-x+sqrt(1-6x+x^2))/2 in powers of x.

Offset 0, canonical program `A085403.P17921680985737888414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A085403 (n : ℕ) : ℤ :=
  A085403.P17921680985737888414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A085403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085424.P14560680484762153167

`A007302(n+1)-A085425(n+1)`
-/

namespace A085424.P14560680484762153167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (n + 1) - A085425 (n + 1)

end

end A085424.P14560680484762153167

noncomputable section

/-- A085424: Number of ones in the symmetric signed digit expansion of n with q=2 (i.e., the representation of n in the (-1,0,1)_2 number system).

Offset 1, canonical program `A085424.P14560680484762153167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085424 (n : ℕ) : ℤ :=
  A085424.P14560680484762153167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085957.P7417950753382749165

`6*A023256(n+1)+1`
-/

namespace A085957.P7417950753382749165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A023256 (n + 1) + 1

end

end A085957.P7417950753382749165

noncomputable section

/-- A085957: Primes p such that 6p + 1 and (p-1)/6 are primes.

Offset 1, canonical program `A085957.P7417950753382749165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085957 (n : ℕ) : ℤ :=
  A085957.P7417950753382749165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086086.P3994852289549069615

`round(A173830(n+1)+sqrt(A173830(n+1)))`
-/

namespace A086086.P3994852289549069615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173830 (n + 1) : ℝ) + Real.sqrt (A173830 (n + 1) : ℝ))

end

end A086086.P3994852289549069615

noncomputable section

/-- A086086: Primes p such that p - floor(sqrt(p)) is prime.

Offset 1, canonical program `A086086.P3994852289549069615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086086 (n : ℕ) : ℤ :=
  A086086.P3994852289549069615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086097.P11743620789435279125

`A086096(eq[1, Δ[A086096(n+1)]]+1)`
-/

namespace A086097.P11743620789435279125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086097.P11743620789435279125

noncomputable section

/-- A086097: Numbers n such that n and n+1 are semiprimes with a semiprime number of 1's in their binary representation.

Offset 1, canonical program `A086097.P11743620789435279125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A086097 (n : ℕ) : ℤ :=
  A086097.P11743620789435279125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A086097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086104.P11410882345256065790

`p?[A166499(n+1)]`
-/

namespace A086104.P11410882345256065790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086104.P11410882345256065790

noncomputable section

/-- A086104: Primes appearing as concatenation of the last digit of prime(A086101(n)) and the first digit of prime(A086101(n)+1).

Offset 1, canonical program `A086104.P11410882345256065790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A086104 (n : ℕ) : ℤ :=
  A086104.P11410882345256065790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3017 terms. -/
def A086104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086165.P5862930239187378690

`(A070919(n+1)-3*A048691(n+1)+2)/6`
-/

namespace A086165.P5862930239187378690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070919 (n + 1) - 3 * A048691 (n + 1) + 2 : ℚ) / 6

end

end A086165.P5862930239187378690

noncomputable section

/-- A086165: a(n) = |{ (x,y,z) | x < y < z and lcm(x,y,z) = n}|.

Offset 1, canonical program `A086165.P5862930239187378690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086165.P5862930239187378690.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086304.P12731462681422693653

`2*A089038(n+2)-1`
-/

namespace A086304.P12731462681422693653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089038 (n + 2) - 1

end

end A086304.P12731462681422693653

noncomputable section

/-- A086304: Numbers n such that n+6 is prime.

Offset 1, canonical program `A086304.P12731462681422693653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086304 (n : ℕ) : ℤ :=
  A086304.P12731462681422693653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086304.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086457.P6458068845989887651

`∩[A008851(n+1), A089951(n+1)]`
-/

namespace A086457.P6458068845989887651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086457.P6458068845989887651

noncomputable section

/-- A086457: Both n and n^2 have the same initial digit and also n and n^2 have the same final digit when expressed in base 10.

Offset 1, canonical program `A086457.P6458068845989887651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2096 terms. -/
def A086457 (n : ℕ) : ℤ :=
  (A086457.P6458068845989887651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2096 terms. -/
def A086457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086650.P6036601122150280832

`A002808(n+1)^A000040(n+1)`
-/

namespace A086650.P6036601122150280832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A086650.P6036601122150280832

noncomputable section

/-- A086650: n-th composite number raised to the n-th prime number.

Offset 1, canonical program `A086650.P6036601122150280832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086650 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086650.P6036601122150280832.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086701.P1636778428891806570

`A000040(n+1)^A002808(n+1)`
-/

namespace A086701.P1636778428891806570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A086701.P1636778428891806570

noncomputable section

/-- A086701: n-th prime number raised to the n-th composite number.

Offset 1, canonical program `A086701.P1636778428891806570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086701.P1636778428891806570.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087268.P11228589809658875935

`∪[A000040(n+1), A087269(n+1)]`
-/

namespace A087268.P11228589809658875935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087268.P11228589809658875935

noncomputable section

/-- A087268: Solutions to gcd(x, pi(x)) = 1, where pi is A000720.

Offset 1, canonical program `A087268.P11228589809658875935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087268 (n : ℕ) : ℤ :=
  (A087268.P11228589809658875935.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087270.P2212235212749245519

`A002808(lt[1, gcd(n+1, A018252(n+1))])`
-/

namespace A087270.P2212235212749245519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A087270.P2212235212749245519

noncomputable section

/-- A087270: Solutions to gcd(x,pi(x)) = gcd(x, A000720(x)) > 1. Numbers x such that x and pi(x) have common divisor larger than one.

Offset 1, canonical program `A087270.P2212235212749245519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7765 terms. -/
def A087270 (n : ℕ) : ℤ :=
  A087270.P2212235212749245519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7765 terms. -/
def A087270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087652.P15006884797631348990

`A007955(n+1)/A007947(n+1)`
-/

namespace A087652.P15006884797631348990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A087652.P15006884797631348990

noncomputable section

/-- A087652: Product of the nonprime divisors of n.

Offset 1, canonical program `A087652.P15006884797631348990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087652.P15006884797631348990.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087698.P14480629531617901505

`abs(A159853(n))`
-/

namespace A087698.P14480629531617901505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159853 n|

end

end A087698.P14480629531617901505

noncomputable section

/-- A087698: Triangle read by rows, giving T(n,k) = maximum number of examples (Boolean inputs) at Hamming distance 2 for symmetric Boolean functions that can have different outputs.

Offset 0, canonical program `A087698.P14480629531617901505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087698 (n : ℕ) : ℤ :=
  A087698.P14480629531617901505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087809.P10650941775456812475

`A047098(n)+A321957(n)/2`
-/

namespace A087809.P10650941775456812475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047098 n : ℚ) + (A321957 n : ℚ) / 2

end

end A087809.P10650941775456812475

noncomputable section

/-- A087809: Number of triangulations (by Euclidean triangles) having 3+3n vertices of a triangle with each side subdivided by n additional points.

Offset 0, canonical program `A087809.P10650941775456812475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A087809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087809.P10650941775456812475.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A087809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087812.P9290405347029471729

`A063473(n+1)-A002321(or(1, n))`
-/

namespace A087812.P9290405347029471729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063473 (n + 1) - A002321 (Nat.lor 1 n)

end

end A087812.P9290405347029471729

noncomputable section

/-- A087812: Sum of MoebiusMu for numbers between n and 2n inclusive.

Offset 1, canonical program `A087812.P9290405347029471729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087812 (n : ℕ) : ℤ :=
  A087812.P9290405347029471729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087919.P1182899045256911427

`record[gcd(A000720(n+1), A116127(n+1))]`
-/

namespace A087919.P1182899045256911427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (n + 1)) (A116127 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087919.P1182899045256911427

noncomputable section

/-- A087919: Indices for which there is at least one twin prime pair between two consecutive prime-indexed primes.

Offset 1, canonical program `A087919.P1182899045256911427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A087919 (n : ℕ) : ℤ :=
  (A087919.P1182899045256911427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A087919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088070.P18152770894034870490

`A063464(n+1)+1`
-/

namespace A088070.P18152770894034870490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063464 (n + 1) + 1

end

end A088070.P18152770894034870490

noncomputable section

/-- A088070: Numbers sandwiched between two numbers having the same number of prime divisors.

Offset 1, canonical program `A088070.P18152770894034870490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088070 (n : ℕ) : ℤ :=
  A088070.P18152770894034870490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088147.P372442780696729559

`2*A091931(n+1)+1`
-/

namespace A088147.P372442780696729559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091931 (n + 1) + 1

end

end A088147.P372442780696729559

noncomputable section

/-- A088147: n-th prime rotated one binary place to the left.

Offset 1, canonical program `A088147.P372442780696729559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088147 (n : ℕ) : ℤ :=
  A088147.P372442780696729559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088348.P12772427099632848417

`p?[A008578(n+1)+2*A230980(n)]`
-/

namespace A088348.P12772427099632848417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 2 * A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088348.P12772427099632848417

noncomputable section

/-- A088348: Primes of the form prime(n) + 2pi(n), where pi is A000720.

Offset 1, canonical program `A088348.P12772427099632848417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A088348 (n : ℕ) : ℤ :=
  A088348.P12772427099632848417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. -/
def A088348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088561.P14627225396330756799

`A000720(A088555(n+1))`
-/

namespace A088561.P14627225396330756799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088555 (n + 1)).toNat

end

end A088561.P14627225396330756799

noncomputable section

/-- A088561: A088555 indexed by A000040.

Offset 1, canonical program `A088561.P14627225396330756799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088561 (n : ℕ) : ℤ :=
  A088561.P14627225396330756799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088555, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088710.P3644724362584040461

`filter[A050704(n+2), A353799(#)]`
-/

namespace A088710.P3644724362584040461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A088710.P3644724362584040461

noncomputable section

/-- A088710: Numbers m which are a product of two primes j and k such that m-j-k is prime.

Offset 1, canonical program `A088710.P3644724362584040461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088710 (n : ℕ) : ℤ :=
  A088710.P3644724362584040461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088738.P15299027887312375454

`A076290(A002808(n+1))`
-/

namespace A088738.P15299027887312375454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A002808 (n + 1)).toNat

end

end A088738.P15299027887312375454

noncomputable section

/-- A088738: Sum of semiprime divisors of n-th composite number.

Offset 1, canonical program `A088738.P15299027887312375454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088738 (n : ℕ) : ℤ :=
  A088738.P15299027887312375454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088982.P4156197862445489170

`A000040(A002808(n+1))`
-/

namespace A088982.P4156197862445489170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat

end

end A088982.P4156197862445489170

noncomputable section

/-- A088982: Primes that are between consecutive prime-indexed primes.

Offset 1, canonical program `A088982.P4156197862445489170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088982 (n : ℕ) : ℤ :=
  A088982.P4156197862445489170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089269.P15934336637969450658

`eq[1-and(2, n), A005361(n+1)]+1`
-/

namespace A089269.P15934336637969450658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089269.P15934336637969450658

noncomputable section

/-- A089269: Squarefree numbers congruent to 1 or 2 mod 4.

Offset 1, canonical program `A089269.P15934336637969450658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269 (n : ℕ) : ℤ :=
  (A089269.P15934336637969450658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089293.P16711136094360143840

`∑{digits}[A202267(n+1), round(sqrt(#))]`
-/

namespace A089293.P16711136094360143840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.sqrt (x : ℝ))).sum

end

end A089293.P16711136094360143840

noncomputable section

/-- A089293: Sum of digits in the mixed-base enumeration system n=...d(4)d(3)d(2)d(1), where the digits satisfy 0<=d(i)<=1 if i is odd, 0<=d(i)<=2 if i is even.

Offset 0, canonical program `A089293.P16711136094360143840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089293 (n : ℕ) : ℤ :=
  A089293.P16711136094360143840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089408.P14427067045341250572

`gcd(A097331(n), A182122(n))`
-/

namespace A089408.P14427067045341250572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A182122 n)

end

end A089408.P14427067045341250572

noncomputable section

/-- A089408: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

Offset 0, canonical program `A089408.P14427067045341250572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089408 (n : ℕ) : ℤ :=
  (A089408.P14427067045341250572.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089440.P7458790694453305357

`p?[floor(A024900(n+1)/2)]`
-/

namespace A089440.P7458790694453305357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024900 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089440.P7458790694453305357

noncomputable section

/-- A089440: 14*p+13 and p are primes.

Offset 1, canonical program `A089440.P7458790694453305357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A089440 (n : ℕ) : ℤ :=
  A089440.P7458790694453305357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A089440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089618.P2029056665069521973

`floor(1/(2^(A030101(n+1)/A062383(n+1))-1))`
-/

namespace A089618.P2029056665069521973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((2 : ℝ) ^ ((A030101 (n + 1) : ℚ) / (A062383 (n + 1) : ℚ) : ℝ) - 1)⌋

end

end A089618.P2029056665069521973

noncomputable section

/-- A089618: Continued fraction elements constructed out of the van der Corput discrepancy sequence.

Offset 1, canonical program `A089618.P2029056665069521973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089618 (n : ℕ) : ℤ :=
  A089618.P2029056665069521973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089699.P4171371799159275731

`p?[A081988(n+1)+1]-1`
-/

namespace A089699.P4171371799159275731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A089699.P4171371799159275731

noncomputable section

/-- A089699: Numbers n with property that n + 1 as well as the (product of digits of n) + 1 are primes.

Offset 1, canonical program `A089699.P4171371799159275731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. -/
def A089699 (n : ℕ) : ℤ :=
  A089699.P4171371799159275731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. -/
def A089699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089819.P6058747411464055795

`2^(1-A010051(n+1))*a(n-1)` with `a(0)=2`
-/

namespace A089819.P6058747411464055795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 : ℚ) ^ (1 - A010051 (n + 1) : ℤ) * a (n - 1)

end

end A089819.P6058747411464055795

noncomputable section

/-- A089819: Number of subsets of {1,2,...,n} containing no primes.

Offset 1, canonical program `A089819.P6058747411464055795`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089819 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089819.P6058747411464055795.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089849.P12770552710507847731

`gcd(A097331(n), A126869(n))`
-/

namespace A089849.P12770552710507847731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097331 n) (A126869 n)

end

end A089849.P12770552710507847731

noncomputable section

/-- A089849: Number of fixed points in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089849.P12770552710507847731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849 (n : ℕ) : ℤ :=
  (A089849.P12770552710507847731.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A089849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089960.P1978568559231808263

`∩[A003233(n+1), A247425(n+1)]`
-/

namespace A089960.P1978568559231808263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089960.P1978568559231808263

noncomputable section

/-- A089960: Positions in A089959 where 4 occurs.

Offset 1, canonical program `A089960.P1978568559231808263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960 (n : ℕ) : ℤ :=
  (A089960.P1978568559231808263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A089960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090112.P17101591952633820706

`(A168141(n+1)-A010051(n+2))*A000720(n+1)`
-/

namespace A090112.P17101591952633820706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168141 (n + 1) - A010051 (n + 2)) * A000720 (n + 1)

end

end A090112.P17101591952633820706

noncomputable section

/-- A090112: a(n)=pi(n)*[pi(n)-pi(n-2)] where pi(n)=A000720(n).

Offset 1, canonical program `A090112.P17101591952633820706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090112 (n : ℕ) : ℤ :=
  A090112.P17101591952633820706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090113.P14649595053675925337

`∑[A010051(n+1)]*A168141(A028310(n))`
-/

namespace A090113.P14649595053675925337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A168141 (A028310 n).toNat

end

end A090113.P14649595053675925337

noncomputable section

/-- A090113: a(n)=pi(n)*[pi(n)-pi(n-3)] where pi(n)=A000720(n).

Offset 1, canonical program `A090113.P14649595053675925337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090113 (n : ℕ) : ℤ :=
  A090113.P14649595053675925337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090178.P3922482968985292774

`n+1+A008578(n+1)`
-/

namespace A090178.P3922482968985292774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A008578 (n + 1)

end

end A090178.P3922482968985292774

noncomputable section

/-- A090178: a(1) = 2; for n > 1, a(n) = n + prime(n-1).

Offset 1, canonical program `A090178.P3922482968985292774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090178 (n : ℕ) : ℤ :=
  A090178.P3922482968985292774.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090350.P9527209610901398862

`floor(A062298(n+1)/(2-A010051(n+1)))`
-/

namespace A090350.P9527209610901398862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062298 (n + 1) : ℚ) / (2 - A010051 (n + 1) : ℚ)⌋

end

end A090350.P9527209610901398862

noncomputable section

/-- A090350: a(n) = Floor[(n-PrimePi[n])/(2-PrimePi[n]+PrimePi[n-1])].

Offset 1, canonical program `A090350.P9527209610901398862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090350 (n : ℕ) : ℤ :=
  A090350.P9527209610901398862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090395.P17053832850949546132

`(n+1)/A009191(n+1)`
-/

namespace A090395.P17053832850949546132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090395.P17053832850949546132

noncomputable section

/-- A090395: Denominator of d(n)/n, where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A090395.P17053832850949546132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090395.P17053832850949546132.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090498.P16429585968713607720

`Δ[A006218(∑[n])]`
-/

namespace A090498.P16429585968713607720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P16429585968713607720

noncomputable section

/-- A090498: Number of divisors of all the numbers from (1/2)n(n-1)+1 to n(n+1)/2, i.e., tau(1), tau(2)+tau(3), tau(4)+tau(5)+tau(6), tau(7)+tau(8)+tau(9)+tau(10), ..., where tau(j) is the number of divisors of j.

Offset 1, canonical program `A090498.P16429585968713607720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498 (n : ℕ) : ℤ :=
  A090498.P16429585968713607720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090850.P13475755000448756326

`A046902(A061579(n))`
-/

namespace A090850.P13475755000448756326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A061579 n).toNat

end

end A090850.P13475755000448756326

noncomputable section

/-- A090850: Clark's triangle with f=6 read by row.

Offset 0, canonical program `A090850.P13475755000448756326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A090850 (n : ℕ) : ℤ :=
  A090850.P13475755000448756326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A090850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091067.P11627584915333469325

`A060833(n+2)-1`
-/

namespace A091067.P11627584915333469325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (n + 2) - 1

end

end A091067.P11627584915333469325

noncomputable section

/-- A091067: Numbers whose odd part is of the form 4*k+3.

Offset 1, canonical program `A091067.P11627584915333469325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091067 (n : ℕ) : ℤ :=
  A091067.P11627584915333469325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091258.P3360202150782361394

`A000203(n+1)/A001158(n+1)*A091259(n+1)`
-/

namespace A091258.P3360202150782361394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A001158 (n + 1) : ℚ) * (A091259 (n + 1) : ℚ)

end

end A091258.P3360202150782361394

noncomputable section

/-- A091258: Denominator of sigma_3(n)/sigma(n).

Offset 1, canonical program `A091258.P3360202150782361394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091258 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091258.P3360202150782361394.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091267.P93764247883844518

`A091237(2*(n+1))`
-/

namespace A091267.P93764247883844518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (2 * (n + 1))

end

end A091267.P93764247883844518

noncomputable section

/-- A091267: Lengths of runs of 3's in A039702.

Offset 1, canonical program `A091267.P93764247883844518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091267 (n : ℕ) : ℤ :=
  A091267.P93764247883844518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091318.P7056967124292507603

`A091237(2*n+3)`
-/

namespace A091318.P7056967124292507603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (2 * n + 3)

end

end A091318.P7056967124292507603

noncomputable section

/-- A091318: Lengths of runs of 1's in A039702.

Offset 1, canonical program `A091318.P7056967124292507603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091318 (n : ℕ) : ℤ :=
  A091318.P7056967124292507603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091428.P6349186138963889420

`∪[A056911(n+1), A081770(n+1)]`
-/

namespace A091428.P6349186138963889420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P6349186138963889420

noncomputable section

/-- A091428: Numbers k such that abs(A092673(k)) = 1.

Offset 1, canonical program `A091428.P6349186138963889420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091428 (n : ℕ) : ℤ :=
  (A091428.P6349186138963889420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091627.P13368407397155401185

`A091626(n)-n-1`
-/

namespace A091627.P13368407397155401185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091626 n - (n : ℤ) - 1

end

end A091627.P13368407397155401185

noncomputable section

/-- A091627: Number of ordered integer pairs (b,c) with 1 <= b,c <= n such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A091627.P13368407397155401185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091627 (n : ℕ) : ℤ :=
  A091627.P13368407397155401185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091799.P5376677535890053402

`A272172(A120529(n+1)+A034856(n+1))`
-/

namespace A091799.P5376677535890053402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (A120529 (n + 1) + A034856 (n + 1)).toNat

end

end A091799.P5376677535890053402

noncomputable section

/-- A091799: a(1) = 3. To get a(n+1), write the string a(1)a(2)...a(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence so far. Then a(n+1) = max(k,3).

Offset 1, canonical program `A091799.P5376677535890053402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A091799 (n : ℕ) : ℤ :=
  A091799.P5376677535890053402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A091799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091880.P8321771741329377910

`lt[1, A005361(A000040(n+1)+2)]+1`
-/

namespace A091880.P8321771741329377910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P8321771741329377910

noncomputable section

/-- A091880: A049232 indexed by A000040.

Offset 1, canonical program `A091880.P8321771741329377910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880 (n : ℕ) : ℤ :=
  (A091880.P8321771741329377910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091960.P18192591898842962700

`∑[abs(A253414(n))]`
-/

namespace A091960.P18192591898842962700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253414 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091960.P18192591898842962700

noncomputable section

/-- A091960: a(1)=1, a(2n)=a(2n-1)+(a(n)mod 2), a(2n+1)=a(2n)+1.

Offset 1, canonical program `A091960.P18192591898842962700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091960 (n : ℕ) : ℤ :=
  A091960.P18192591898842962700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092346.P12902471447094241510

`A010051(2*(n+1))+∑{d}[n, A002378(#)]`
-/

namespace A092346.P12902471447094241510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + ∑ d ∈ Nat.divisors (f1 n), A002378 d

end

end A092346.P12902471447094241510

noncomputable section

/-- A092346: a(0)=1; a(n) = sigma_1(n) + sigma_2(n).

Offset 0, canonical program `A092346.P12902471447094241510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092346 (n : ℕ) : ℤ :=
  A092346.P12902471447094241510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092494.P17574960425768699571

`A048865(n+1)+A013939(n+1)`
-/

namespace A092494.P17574960425768699571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A013939 (n + 1)

end

end A092494.P17574960425768699571

noncomputable section

/-- A092494: a(n) = Sum_{p prime and p<=n} ceiling(n/p).

Offset 1, canonical program `A092494.P17574960425768699571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494 (n : ℕ) : ℤ :=
  A092494.P17574960425768699571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092582.P14071940716078607765

`gcd(Δ[A173333(n+1)], A134082(n))`
-/

namespace A092582.P14071940716078607765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A134082 n)

end

end A092582.P14071940716078607765

noncomputable section

/-- A092582: Triangle read by rows: T(n,k) is the number of permutations p of [n] having length of first run equal to k.

Offset 1, canonical program `A092582.P14071940716078607765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A092582 (n : ℕ) : ℤ :=
  (A092582.P14071940716078607765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A092582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092604.P14882743689300084007

`comp[A013939(n+1)]`
-/

namespace A092604.P14882743689300084007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092604.P14882743689300084007

noncomputable section

/-- A092604: Complement of A013939.

Offset 1, canonical program `A092604.P14882743689300084007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604 (n : ℕ) : ℤ :=
  (A092604.P14882743689300084007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092633.P7450104256530509530

`eq[A257890(A055672(n)), A276729(n)]`
-/

namespace A092633.P7450104256530509530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092633.P7450104256530509530

noncomputable section

/-- A092633: Nonprime numbers with exactly three nonprime digits.

Offset 1, canonical program `A092633.P7450104256530509530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A092633 (n : ℕ) : ℤ :=
  (A092633.P7450104256530509530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2850 terms. -/
def A092633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092929.P4535680550638949594

`Δ[n*A008578(abs(1-n)+1)]`
-/

namespace A092929.P4535680550638949594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008578 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092929.P4535680550638949594

noncomputable section

/-- A092929: n-th partial arithmetic mean is equal to the n-th noncomposite number or to prime(n-1) for n>1.

Offset 1, canonical program `A092929.P4535680550638949594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092929 (n : ℕ) : ℤ :=
  A092929.P4535680550638949594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093696.P3961485579187327513

`eq[1, and(1, A339549(n+1))]+1`
-/

namespace A093696.P3961485579187327513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A339549 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093696.P3961485579187327513

noncomputable section

/-- A093696: Numbers n such that all divisors of n have an odd number of 1's in their binary expansions.

Offset 1, canonical program `A093696.P3961485579187327513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A093696 (n : ℕ) : ℤ :=
  (A093696.P3961485579187327513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A093696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093861.P7181153501879587618

`floor(A002808(n+1)^(A002808(n+1)/(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093861.P7181153501879587618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) : ℝ) ^ ((A002808 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A093861.P7181153501879587618

noncomputable section

/-- A093861: a(n) = floor(composite(n)^(composite(n)/n)), composite(n) = A002808(n).

Offset 1, canonical program `A093861.P7181153501879587618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093861 (n : ℕ) : ℤ :=
  A093861.P7181153501879587618.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094192.P18098978962141808339

`A038567(eq[2, gcd(2, (n+1)*A038567(n))])`
-/

namespace A094192.P18098978962141808339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((n + 1 : ℤ) * A038567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094192.P18098978962141808339

noncomputable section

/-- A094192: Values x of the generator pairs (x, y), x>y of primitive Pythagorean triples, sorted.

Offset 1, canonical program `A094192.P18098978962141808339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094192 (n : ℕ) : ℤ :=
  A094192.P18098978962141808339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094471.P10880822235094612413

`A038040(n+1)-A000203(n+1)`
-/

namespace A094471.P10880822235094612413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000203 (n + 1)

end

end A094471.P10880822235094612413

noncomputable section

/-- A094471: a(n) = Sum_{(n - k)|n, 0 <= k <= n} k.

Offset 1, canonical program `A094471.P10880822235094612413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094471 (n : ℕ) : ℤ :=
  A094471.P10880822235094612413.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094539.P16752972106222037044

`A094538(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094539.P16752972106222037044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094538 n : ℚ) / 3

end

end A094539.P16752972106222037044

noncomputable section

/-- A094539: a(n) = A094538(n)/3.

Offset 0, canonical program `A094539.P16752972106222037044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094539 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094539.P16752972106222037044.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094539.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095233.P12555546131037091696

`a(n-1)+A013939(n+1)` with `a(0)=1`
-/

namespace A095233.P12555546131037091696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A013939 (n + 1)

end

end A095233.P12555546131037091696

noncomputable section

/-- A095233: a(n) = a(n-1) + Sum(floor(n/p): p prime), a(1) = 1.

Offset 1, canonical program `A095233.P12555546131037091696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095233 (n : ℕ) : ℤ :=
  A095233.P12555546131037091696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095233.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095808.P3090164483403179767

`A078703(n+1)-1`
-/

namespace A095808.P3090164483403179767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1) - 1

end

end A095808.P3090164483403179767

noncomputable section

/-- A095808: Number of ways to write n in the form m + (m+1) + ... + (m+k-1) + (m+k) + (m+k-1) + ... + (m+1) + m with integers m>= 1, k>=1. Or, number of divisors d of 4n-1 with 0 < (d-1)^2 < 4n.

Offset 1, canonical program `A095808.P3090164483403179767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095808 (n : ℕ) : ℤ :=
  A095808.P3090164483403179767.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095874.P2652123685458855857

`∑[A354924(2*(n+1))]*A354924(2*(n+1))`
-/

namespace A095874.P2652123685458855857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A354924 (2 * (n + 1))

end

end A095874.P2652123685458855857

noncomputable section

/-- A095874: a(n) = k if n = A000961(k) (powers of primes), a(n) = 0 if n is not in A000961.

Offset 1, canonical program `A095874.P2652123685458855857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095874 (n : ℕ) : ℤ :=
  A095874.P2652123685458855857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095943.P14568149226162292481

`Δ[A098369(∑[n])]`
-/

namespace A095943.P14568149226162292481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P14568149226162292481

noncomputable section

/-- A095943: Differences between adjacent digits of golden ratio phi.

Offset 1, canonical program `A095943.P14568149226162292481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095943 (n : ℕ) : ℤ :=
  A095943.P14568149226162292481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A095943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096432.P17831341091393388892

`eq[1, A010051(A051903(n+1)+1)]+1`
-/

namespace A096432.P17831341091393388892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096432.P17831341091393388892

noncomputable section

/-- A096432: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that 1 + max{e_2, e_3, ...} is a prime.

Offset 1, canonical program `A096432.P17831341091393388892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096432 (n : ℕ) : ℤ :=
  (A096432.P17831341091393388892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097379.P7297816214369488730

`eq[1, A010051(A007947(n+1)+1)]+1`
-/

namespace A097379.P7297816214369488730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097379.P7297816214369488730

noncomputable section

/-- A097379: Numbers m such that 1+SquareFreeKernel(m) is prime.

Offset 1, canonical program `A097379.P7297816214369488730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6214 terms. -/
def A097379 (n : ℕ) : ℤ :=
  (A097379.P7297816214369488730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6214 terms. -/
def A097379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097456.P2347121820243890794

`floor((n+2)/Δ[A046992(n+1)])-1`
-/

namespace A097456.P2347121820243890794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋ - 1

end

end A097456.P2347121820243890794

noncomputable section

/-- A097456: Integer part of the ratio (number of composites <=n) / (number of primes <=n).

Offset 2, canonical program `A097456.P2347121820243890794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097456 (n : ℕ) : ℤ :=
  A097456.P2347121820243890794.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097955.P1775132031417090442

`A038879(3-A000007(n)+n)`
-/

namespace A097955.P1775132031417090442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (3 - A000007 n + (n : ℤ)).toNat

end

end A097955.P1775132031417090442

noncomputable section

/-- A097955: Primes p such that p divides 5^((p-1)/2) - 2^((p-1)/2).

Offset 1, canonical program `A097955.P1775132031417090442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A097955 (n : ℕ) : ℤ :=
  A097955.P1775132031417090442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A097955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098058.P16596621847938489443

`A000040(∑[A091237(n+1)])`
-/

namespace A098058.P16596621847938489443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A098058.P16596621847938489443

noncomputable section

/-- A098058: Prime(n) such that 4 does not divide the difference between prime(n) and prime(n+1).

Offset 1, canonical program `A098058.P16596621847938489443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5863 terms. -/
def A098058 (n : ℕ) : ℤ :=
  A098058.P16596621847938489443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5863 terms. -/
def A098058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098351.P12169775651702740969

`A002808(col(n)+1)*A002808(row(n)-col(n)+1)`
-/

namespace A098351.P12169775651702740969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.triCol n + 1) * A002808 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A098351.P12169775651702740969

noncomputable section

/-- A098351: Multiplication table of the composites read by antidiagonals.

Offset 1, canonical program `A098351.P12169775651702740969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098351 (n : ℕ) : ℤ :=
  A098351.P12169775651702740969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098363.P6417077990157004005

`A095711(n+1)*A138115(n+1)`
-/

namespace A098363.P6417077990157004005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (n + 1) * A138115 (n + 1)

end

end A098363.P6417077990157004005

noncomputable section

/-- A098363: Multiplication table of the digits of e read by antidiagonals.

Offset 0, canonical program `A098363.P6417077990157004005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098363 (n : ℕ) : ℤ :=
  A098363.P6417077990157004005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098391.P7594412131589195022

`A000040(n+1)-A098392(n+1)`
-/

namespace A098391.P7594412131589195022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A098392 (n + 1)

end

end A098391.P7594412131589195022

noncomputable section

/-- A098391: a(n) = Log2(Log2(prime(n))), where Log2 = A000523.

Offset 1, canonical program `A098391.P7594412131589195022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098391 (n : ℕ) : ℤ :=
  A098391.P7594412131589195022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098428.P10066825699657563365

`∑[and(A010051(n+7), A010051(n+1))]`
-/

namespace A098428.P10066825699657563365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (n + 7)) (A010051 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098428.P10066825699657563365

noncomputable section

/-- A098428: Number of sexy prime pairs (p, p+6) with p <= n.

Offset 1, canonical program `A098428.P10066825699657563365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098428 (n : ℕ) : ℤ :=
  A098428.P10066825699657563365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098465.P7616834246055726924

`A102318(n)-A005043(A093178(n))`
-/

namespace A098465.P7616834246055726924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102318 n - A005043 (A093178 n).toNat

end

end A098465.P7616834246055726924

noncomputable section

/-- A098465: Expansion of (sqrt(1+3*x)-sqrt(1-5*x))/(4*x*sqrt(1-x)).

Offset 0, canonical program `A098465.P7616834246055726924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A098465 (n : ℕ) : ℤ :=
  A098465.P7616834246055726924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A098465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098798.P14244074542585348825

`A006218(n+1)-A000203(n+1)`
-/

namespace A098798.P14244074542585348825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A000203 (n + 1)

end

end A098798.P14244074542585348825

noncomputable section

/-- A098798: a(n) = Sum_{1

Offset 1, canonical program `A098798.P14244074542585348825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098798 (n : ℕ) : ℤ :=
  A098798.P14244074542585348825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098858.P15736008101961754754

`p?[A184775(n+1)]`
-/

namespace A098858.P15736008101961754754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098858.P15736008101961754754

noncomputable section

/-- A098858: Primes p such that floor(sqrt(2)*p) is also a prime.

Offset 1, canonical program `A098858.P15736008101961754754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A098858 (n : ℕ) : ℤ :=
  A098858.P15736008101961754754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A098858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098925.P12998610641323261996

`abs(A092865(n))`
-/

namespace A098925.P12998610641323261996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092865 n|

end

end A098925.P12998610641323261996

noncomputable section

/-- A098925: Distribution of the number of ways for a child to climb a staircase having r steps (one step or two steps at a time).

Offset 0, canonical program `A098925.P12998610641323261996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925 (n : ℕ) : ℤ :=
  A098925.P12998610641323261996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092865, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098957.P4716822074248762999

`A030101(A000040(n+1))`
-/

namespace A098957.P4716822074248762999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A000040 (n + 1)).toNat

end

end A098957.P4716822074248762999

noncomputable section

/-- A098957: Decimal value of the reverse binary expansion of the prime numbers.

Offset 1, canonical program `A098957.P4716822074248762999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098957 (n : ℕ) : ℤ :=
  A098957.P4716822074248762999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098961.P11221875119800653851

`13*A001481(n+2)`
-/

namespace A098961.P11221875119800653851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A001481 (n + 2)

end

end A098961.P11221875119800653851

noncomputable section

/-- A098961: Sums of two squares and divisible by 13.

Offset 1, canonical program `A098961.P11221875119800653851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098961 (n : ℕ) : ℤ :=
  A098961.P11221875119800653851.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098961.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099039.P8333967815748513514

`A097807(n)*A106566(n)`
-/

namespace A099039.P8333967815748513514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A106566 n

end

end A099039.P8333967815748513514

noncomputable section

/-- A099039: Riordan array (1,c(-x)), where c(x) = g.f. of Catalan numbers.

Offset 0, canonical program `A099039.P8333967815748513514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099039 (n : ℕ) : ℤ :=
  A099039.P8333967815748513514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099323.P4978299837579704435

`∑[A033999(n)*A168051(n)]`
-/

namespace A099323.P4978299837579704435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A168051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099323.P4978299837579704435

noncomputable section

/-- A099323: Expansion of (sqrt(1+3*x) + sqrt(1-x))/(2*sqrt(1-x)).

Offset 0, canonical program `A099323.P4978299837579704435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A099323 (n : ℕ) : ℤ :=
  A099323.P4978299837579704435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A099323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099862.P16419779574124934599

`A002808(2*(n+1))`
-/

namespace A099862.P16419779574124934599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * (n + 1))

end

end A099862.P16419779574124934599

noncomputable section

/-- A099862: a(n) = (2*k)-th composite number; a bisection of A002808.

Offset 1, canonical program `A099862.P16419779574124934599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A099862 (n : ℕ) : ℤ :=
  A099862.P16419779574124934599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A099862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100363.P13811518360178267428

`∩[A063446(n+1)-1, A063446(n+1)]`
-/

namespace A100363.P13811518360178267428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100363.P13811518360178267428

noncomputable section

/-- A100363: Numbers n such that the numbers of divisors of n,n+1 and n+2 are k,2k,4k respectively for some k.

Offset 1, canonical program `A100363.P13811518360178267428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363 (n : ℕ) : ℤ :=
  (A100363.P13811518360178267428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A100363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100735.P10975525326014935037

`A100737(A004526(n))`
-/

namespace A100735.P10975525326014935037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100737 (A004526 n).toNat

end

end A100735.P10975525326014935037

noncomputable section

/-- A100735: Inverse modulo 2 binomial transform of 2^n.

Offset 0, canonical program `A100735.P10975525326014935037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A100735 (n : ℕ) : ℤ :=
  A100735.P10975525326014935037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A100735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100749.P2993982527896392758

`(A329918(comp[∑[n]])+A329918(n))/2`
-/

namespace A100749.P2993982527896392758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A329918 n : ℚ) / 2

end

end A100749.P2993982527896392758

noncomputable section

/-- A100749: Triangle read by rows: T(n,k)=number of 231- and 312-avoiding permutations of [n] having k fixed points.

Offset 0, canonical program `A100749.P2993982527896392758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100749.P2993982527896392758.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100961.P3793992329437476049

`A000032(A180160(n)^∑[A180160(n)])+1`
-/

namespace A100961.P3793992329437476049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((A180160 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat + 1

end

end A100961.P3793992329437476049

noncomputable section

/-- A100961: For a decimal string s, let f(s) = decimal string ijk, where i = number of even digits in s, j = number of odd digits in s, k=i+j (see A171797). Start with s = decimal expansion of n; a(n) = number of applications of f needed to reach the string 123.

Offset 0, canonical program `A100961.P3793992329437476049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A100961 (n : ℕ) : ℤ :=
  A100961.P3793992329437476049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A100961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100992.P6507978965781304571

`A123976(n+2)-1`
-/

namespace A100992.P6507978965781304571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123976 (n + 2) - 1

end

end A100992.P6507978965781304571

noncomputable section

/-- A100992: Indices k of Fibonacci numbers F(k) (A000045) that are divisible by k+1.

Offset 1, canonical program `A100992.P6507978965781304571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A100992 (n : ℕ) : ℤ :=
  A100992.P6507978965781304571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A100992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101123.P12730226774992521000

`A024902(n+1)-1`
-/

namespace A101123.P12730226774992521000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1) - 1

end

end A101123.P12730226774992521000

noncomputable section

/-- A101123: Numbers k for which 7*k + 11 is prime.

Offset 1, canonical program `A101123.P12730226774992521000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101123 (n : ℕ) : ℤ :=
  A101123.P12730226774992521000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101207.P6474118925145984398

`Δ[A056793(A028310(n))]^A001221(n+1)`
-/

namespace A101207.P6474118925145984398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A101207.P6474118925145984398

noncomputable section

/-- A101207: For each prime power n, a(n) is the number of positive integers that have n as their greatest prime power.

Offset 1, canonical program `A101207.P6474118925145984398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101207.P6474118925145984398.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2128 terms. -/
def A101207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101264.P9977125953316836564

`A010051(2*n+1)`
-/

namespace A101264.P9977125953316836564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

end

end A101264.P9977125953316836564

noncomputable section

/-- A101264: a(n) = 1 if 2*n + 1 is prime, otherwise a(n) = 0.

Offset 0, canonical program `A101264.P9977125953316836564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264 (n : ℕ) : ℤ :=
  A101264.P9977125953316836564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101403.P5867421329775423614

`A246439(n+1)-record[n*A164349(n)]`
-/

namespace A101403.P5867421329775423614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101403.P5867421329775423614

noncomputable section

/-- A101403: Number of times that n occurs in A101402.

Offset 0, canonical program `A101403.P5867421329775423614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A101403 (n : ℕ) : ℤ :=
  A101403.P5867421329775423614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. -/
def A101403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101691.P15330832678396903197

`A286548(A001316(abs(1-n)))+A209229(n)`
-/

namespace A101691.P15330832678396903197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A001316 |1 - (n : ℤ)|.toNat).toNat + A209229 n

end

end A101691.P15330832678396903197

noncomputable section

/-- A101691: A modular binomial sum sequence.

Offset 0, canonical program `A101691.P15330832678396903197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A101691 (n : ℕ) : ℤ :=
  A101691.P15330832678396903197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A101691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102273.P9293778753101194351

`∩[A097933(n+1), A106927(n+1)]`
-/

namespace A102273.P9293778753101194351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102273.P9293778753101194351

noncomputable section

/-- A102273: Primes p such that Q(sqrt(-21p)) has genus characters chi_{-3} = -1, chi_{-7} = +1.

Offset 1, canonical program `A102273.P9293778753101194351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A102273 (n : ℕ) : ℤ :=
  (A102273.P9293778753101194351.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. -/
def A102273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102297.P16199209272639470974

`∑{e}[∏{p}[A005381(n+1), #], #]`
-/

namespace A102297.P16199209272639470974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102297.P16199209272639470974

noncomputable section

/-- A102297: Number of distinct divisors of n+1 where n and n+1 are composite or twin composite numbers.

Offset 1, canonical program `A102297.P16199209272639470974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102297 (n : ℕ) : ℤ :=
  (A102297.P16199209272639470974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102298.P17921307606065959363

`∑{e}[A005381(n+1), #]`
-/

namespace A102298.P17921307606065959363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102298.P17921307606065959363

noncomputable section

/-- A102298: Number of prime divisors with multiplicity of n+1 where n and n+1 are composite or twin composite numbers.

Offset 1, canonical program `A102298.P17921307606065959363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A102298 (n : ℕ) : ℤ :=
  (A102298.P17921307606065959363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A102298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102300.P15809373364122392367

`∑{e}[∏{p}[1-A005381(n+1), #], #]`
-/

namespace A102300.P15809373364122392367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005381 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102300.P15809373364122392367

noncomputable section

/-- A102300: Number of distinct prime divisors of n where n and n+1 are composite or twin composite numbers.

Offset 1, canonical program `A102300.P15809373364122392367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102300 (n : ℕ) : ℤ :=
  (A102300.P15809373364122392367.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102609.P5262779225458545555

`A010051(n²-n+41)`
-/

namespace A102609.P5262779225458545555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n ^ 2 : ℤ) - (n : ℤ) + 41).toNat

end

end A102609.P5262779225458545555

noncomputable section

/-- A102609: a(n) = 1 iff n^2-n+41 is prime (else 0).

Offset 0, canonical program `A102609.P5262779225458545555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102609 (n : ℕ) : ℤ :=
  A102609.P5262779225458545555.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102689.P17299837537175666882

`4*A045803(A053742(2*n))`
-/

namespace A102689.P17299837537175666882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045803 (A053742 (2 * n)).toNat

end

end A102689.P17299837537175666882

noncomputable section

/-- A102689: a(n) = 10000*n + 2468.

Offset 0, canonical program `A102689.P17299837537175666882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102689 (n : ℕ) : ℤ :=
  A102689.P17299837537175666882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102722.P15212480551384616353

`A052488(n+1)-A006218(n+1)`
-/

namespace A102722.P15212480551384616353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - A006218 (n + 1)

end

end A102722.P15212480551384616353

noncomputable section

/-- A102722: Given n, sum all division remainders {n/k}, with k=1,...,n. The value a(n) is given by the floor of that sum. Note that {x}:=x-[x].

Offset 1, canonical program `A102722.P15212480551384616353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102722 (n : ℕ) : ℤ :=
  A102722.P15212480551384616353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102722.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103138.P4252151822810686873

`A062157(n)*A132372(A000124(n))`
-/

namespace A103138.P4252151822810686873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A132372 (A000124 n).toNat

end

end A103138.P4252151822810686873

noncomputable section

/-- A103138: Second column of inverse of Delannoy triangle.

Offset 0, canonical program `A103138.P4252151822810686873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A103138 (n : ℕ) : ℤ :=
  A103138.P4252151822810686873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A103138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103219.P4336052885139861027

`2*A104716(n+1)-A094728(n+1)`
-/

namespace A103219.P4336052885139861027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104716 (n + 1) - A094728 (n + 1)

end

end A103219.P4336052885139861027

noncomputable section

/-- A103219: Triangle read by rows: T(n,k) = (n+1-k)*(4*(n+1-k)^2 - 1)/3+2*k*(n+1-k)^2.

Offset 0, canonical program `A103219.P4336052885139861027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103219 (n : ℕ) : ℤ :=
  A103219.P4336052885139861027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103516.P4703470818759479887

`A103451(n)*A131923(n)`
-/

namespace A103516.P4703470818759479887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A131923 n

end

end A103516.P4703470818759479887

noncomputable section

/-- A103516: Triangle read by rows: count in a vee.

Offset 0, canonical program `A103516.P4703470818759479887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103516 (n : ℕ) : ℤ :=
  A103516.P4703470818759479887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103566.P1705433020270519279

`A120326(n+4)-4`
-/

namespace A103566.P1705433020270519279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120326 (n + 4) - 4

end

end A103566.P1705433020270519279

noncomputable section

/-- A103566: Sum of the primes > 5 modulo 3.

Offset 1, canonical program `A103566.P1705433020270519279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103566 (n : ℕ) : ℤ :=
  A103566.P1705433020270519279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103631.P9894107747466964003

`A065941(n+1)+A065941(n)-A374439(n+1)`
-/

namespace A103631.P9894107747466964003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (n + 1) + (A065941 n - A374439 (n + 1))

end

end A103631.P9894107747466964003

noncomputable section

/-- A103631: Triangle read by rows: T(n,k) = abs(qStirling2(n,k,q)) for q = -1, with 0 <= k <= n.

Offset 0, canonical program `A103631.P9894107747466964003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103631 (n : ℕ) : ℤ :=
  A103631.P9894107747466964003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A103631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103665.P17680637823505638001

`A045319(lt[A008329(n+1), A008328(n+1)])`
-/

namespace A103665.P17680637823505638001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103665.P17680637823505638001

noncomputable section

/-- A103665: Primes p such that the number of divisors of p-1 is greater than the number of divisors of p+1.

Offset 1, canonical program `A103665.P17680637823505638001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4662 terms. -/
def A103665 (n : ℕ) : ℤ :=
  A103665.P17680637823505638001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4662 terms. -/
def A103665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104152.P12944910986790038608

`∩[10*n, A102611(n+5)]`
-/

namespace A104152.P12944910986790038608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102611 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104152.P12944910986790038608

noncomputable section

/-- A104152: Numbers n such that n77 is prime and n is a multiple of ten.

Offset 1, canonical program `A104152.P12944910986790038608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152 (n : ℕ) : ℤ :=
  (A104152.P12944910986790038608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A104152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104213.P5615323875581109589

`p?[A104211(n+1)]`
-/

namespace A104213.P5615323875581109589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104213.P5615323875581109589

noncomputable section

/-- A104213: Primes with nonprime sums of digits.

Offset 1, canonical program `A104213.P5615323875581109589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A104213 (n : ℕ) : ℤ :=
  A104213.P5615323875581109589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. -/
def A104213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104275.P760458328655210773

`(A014076(n+1)+1)/2`
-/

namespace A104275.P760458328655210773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 1) + 1 : ℚ) / 2

end

end A104275.P760458328655210773

noncomputable section

/-- A104275: Numbers k such that 2k-1 is not prime.

Offset 1, canonical program `A104275.P760458328655210773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104275 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104275.P760458328655210773.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104550.P11450034910284479824

`Δ[A002002(n)]`
-/

namespace A104550.P11450034910284479824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104550.P11450034910284479824

noncomputable section

/-- A104550: Number of horizontal segments in all Schroeder paths of length 2n (a horizontal segment is a maximal string of horizontal steps).

Offset 1, canonical program `A104550.P11450034910284479824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104550 (n : ℕ) : ℤ :=
  A104550.P11450034910284479824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A104550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104712.P8393777965278521263

`A168577(n+2)-A014410(n+2)`
-/

namespace A104712.P8393777965278521263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168577 (n + 2) - A014410 (n + 2)

end

end A104712.P8393777965278521263

noncomputable section

/-- A104712: Pascal's triangle, with the first two columns removed.

Offset 2, canonical program `A104712.P8393777965278521263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104712 (n : ℕ) : ℤ :=
  A104712.P8393777965278521263.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104969.P1333012050977968884

`A000034(n)*A104970(A004526(n))`
-/

namespace A104969.P1333012050977968884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A104970 (A004526 n).toNat

end

end A104969.P1333012050977968884

noncomputable section

/-- A104969: Sum of squares of terms in rows of triangle A104967.

Offset 0, canonical program `A104969.P1333012050977968884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A104969 (n : ℕ) : ℤ :=
  A104969.P1333012050977968884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A104969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105083.P6544863876120215470

`A005374(n+1)-A005374(n)-2*(A202340(n+1)-2)`
-/

namespace A105083.P6544863876120215470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (n + 1) - A005374 n - 2 * (A202340 (n + 1) - 2)

end

end A105083.P6544863876120215470

noncomputable section

/-- A105083: Trajectory of 1 under the morphism 1 -> 12, 2 -> 3, 3 -> 1.

Offset 0, canonical program `A105083.P6544863876120215470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105083 (n : ℕ) : ℤ :=
  A105083.P6544863876120215470.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A202340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105307.P5045705934214273131

`A104117(A063375(n+1))-1`
-/

namespace A105307.P5045705934214273131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A063375 (n + 1)).toNat - 1

end

end A105307.P5045705934214273131

noncomputable section

/-- A105307: Base-2 logarithm of the number of divisors of Fibonacci(n) if that number is a power of 2, otherwise -1.

Offset 1, canonical program `A105307.P5045705934214273131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307 (n : ℕ) : ℤ :=
  A105307.P5045705934214273131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A105307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105673.P14538287794614071707

`2*A002654(n+1)`
-/

namespace A105673.P14538287794614071707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (n + 1)

end

end A105673.P14538287794614071707

noncomputable section

/-- A105673: One-half of theta series of square lattice (or half the number of ways of writing n > 0 as a sum of 2 squares), without the constant term, which is 1/2.

Offset 1, canonical program `A105673.P14538287794614071707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673 (n : ℕ) : ℤ :=
  A105673.P14538287794614071707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105695.P7871953186196150134

`Δ[A086246(n)]`
-/

namespace A105695.P7871953186196150134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105695.P7871953186196150134

noncomputable section

/-- A105695: Expansion of (1-x)*c(x/(1+x)), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A105695.P7871953186196150134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695 (n : ℕ) : ℤ :=
  A105695.P7871953186196150134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A105695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106080.P13440203208369835731

`∩[A023220(n+1), A023230(n+1)]`
-/

namespace A106080.P13440203208369835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106080.P13440203208369835731

noncomputable section

/-- A106080: Primes p such that 5*p+8 and 8*p+5 are primes.

Offset 1, canonical program `A106080.P13440203208369835731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A106080 (n : ℕ) : ℤ :=
  (A106080.P13440203208369835731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. -/
def A106080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106391.P13549094547017150546

`A102319(n)-A102318(n)`
-/

namespace A106391.P13549094547017150546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102319 n - A102318 n

end

end A106391.P13549094547017150546

noncomputable section

/-- A106391: A "cosh transform" of binomial(2n,n-1).

Offset 0, canonical program `A106391.P13549094547017150546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391 (n : ℕ) : ℤ :=
  A106391.P13549094547017150546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A106391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106633.P11456217349808284816

`A005408(n)+A006218(n)`
-/

namespace A106633.P11456217349808284816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A006218 n

end

end A106633.P11456217349808284816

noncomputable section

/-- A106633: Number of ways to express n as k+l*m, with k, l, m all in the range [0..n].

Offset 0, canonical program `A106633.P11456217349808284816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633 (n : ℕ) : ℤ :=
  A106633.P11456217349808284816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106843.P9879990537790880483

`lt[A035191(n+2), 3]+2`
-/

namespace A106843.P9879990537790880483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106843.P9879990537790880483

noncomputable section

/-- A106843: Numbers of form 3^i * prime(j), i>=0, j>0.

Offset 1, canonical program `A106843.P9879990537790880483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843 (n : ℕ) : ℤ :=
  (A106843.P9879990537790880483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. -/
def A106843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107148.P16161660040525170745

`∩[A106927(n+1), A141171(n+1)]`
-/

namespace A107148.P16161660040525170745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107148.P16161660040525170745

noncomputable section

/-- A107148: Primes of the form 2x^2 + 21y^2.

Offset 1, canonical program `A107148.P16161660040525170745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A107148 (n : ℕ) : ℤ :=
  (A107148.P16161660040525170745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A107148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107169.P7299049902031610127

`∪[A139857(n+1), A139897(n+1)]`
-/

namespace A107169.P7299049902031610127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107169.P7299049902031610127

noncomputable section

/-- A107169: Primes of the form 3x^2 + 20y^2.

Offset 1, canonical program `A107169.P7299049902031610127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107169 (n : ℕ) : ℤ :=
  (A107169.P7299049902031610127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107390.P7923518412452108324

`A002808(a(n-1)+a(n-2))` with `a(0)=4, a(1)=6`
-/

namespace A107390.P7923518412452108324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) + a (n - 2)).toNat

end

end A107390.P7923518412452108324

noncomputable section

/-- A107390: Composite Fibonacci sequence: each term is the composite with index equal to the sum of the previous two terms.

Offset 1, canonical program `A107390.P7923518412452108324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107390 (n : ℕ) : ℤ :=
  A107390.P7923518412452108324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107771.P11192892536720195870

`∩[A089038(n+1), A111223(n+1)]`
-/

namespace A107771.P11192892536720195870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107771.P11192892536720195870

noncomputable section

/-- A107771: Numbers n such that 2*n + 5 and 5*n + 2 are primes.

Offset 1, canonical program `A107771.P11192892536720195870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771 (n : ℕ) : ℤ :=
  (A107771.P11192892536720195870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1918 terms. -/
def A107771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107800.P13306673971916203850

`A001221(A006049(n+1))`
-/

namespace A107800.P13306673971916203850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006049 (n + 1)).toNat

end

end A107800.P13306673971916203850

noncomputable section

/-- A107800: a(n) = number of distinct primes dividing A006049(n) (and dividing A006049(n)+1).

Offset 1, canonical program `A107800.P13306673971916203850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A006049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A107800 (n : ℕ) : ℤ :=
  A107800.P13306673971916203850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A006049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A107800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107941.P1134882377618123010

`∑[(n+2)*A108680(n)-A107968(n)]`
-/

namespace A107941.P1134882377618123010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P1134882377618123010

noncomputable section

/-- A107941: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)^2*(n+5)(3n^2 + 13n + 15)/43200.

Offset 0, canonical program `A107941.P1134882377618123010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107941 (n : ℕ) : ℤ :=
  A107941.P1134882377618123010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107948.P506921335463334465

`A107946(2^n)`
-/

namespace A107948.P506921335463334465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (2 ^ n)

end

end A107948.P506921335463334465

noncomputable section

/-- A107948: Terms at positions 2^n of A107946 for n>=0.

Offset 0, canonical program `A107948.P506921335463334465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107948 (n : ℕ) : ℤ :=
  A107948.P506921335463334465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107966.P11630518422278864542

`(n+2)*A108680(n)-A107968(n)+A107891(n)-A047819(n)`
-/

namespace A107966.P11630518422278864542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n + (A107891 n - A047819 n)

end

end A107966.P11630518422278864542

noncomputable section

/-- A107966: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(5n^2 + 23n + 30)/8640.

Offset 0, canonical program `A107966.P11630518422278864542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966 (n : ℕ) : ℤ :=
  A107966.P11630518422278864542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107967.P4280652455653893188

`(n+2)*A108680(n)-A107968(n)`
-/

namespace A107967.P4280652455653893188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A108680 n - A107968 n

end

end A107967.P4280652455653893188

noncomputable section

/-- A107967: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(n^2 + 4n + 5)/1440.

Offset 0, canonical program `A107967.P4280652455653893188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107967 (n : ℕ) : ℤ :=
  A107967.P4280652455653893188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108151.P16650730596409365169

`A010051(A028387(n+1))*A028387(n+1)`
-/

namespace A108151.P16650730596409365169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028387 (n + 1)).toNat * A028387 (n + 1)

end

end A108151.P16650730596409365169

noncomputable section

/-- A108151: a(n) = n^2 + 3*n + 1 if prime or 0 if composite.

Offset 1, canonical program `A108151.P16650730596409365169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A108151 (n : ℕ) : ℤ :=
  A108151.P16650730596409365169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A108151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109264.P8993228771912653

`A117362(n)+A109466(n+1)`
-/

namespace A109264.P8993228771912653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n + A109466 (n + 1)

end

end A109264.P8993228771912653

noncomputable section

/-- A109264: Riordan array (1-x-x^2,x(1-x)).

Offset 0, canonical program `A109264.P8993228771912653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264 (n : ℕ) : ℤ :=
  A109264.P8993228771912653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A109264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109303.P4540766537819326846

`comp[A010784(n+1)]`
-/

namespace A109303.P4540766537819326846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P4540766537819326846

noncomputable section

/-- A109303: Numbers k with at least one duplicate base-10 digit (A107846(k) > 0).

Offset 1, canonical program `A109303.P4540766537819326846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109303 (n : ℕ) : ℤ :=
  (A109303.P4540766537819326846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109614.P13754154156094201326

`A109595(A064429(n)+1)`
-/

namespace A109614.P13754154156094201326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A064429 n + 1).toNat

end

end A109614.P13754154156094201326

noncomputable section

/-- A109614: n^3 followed by n followed by n^2.

Offset 1, canonical program `A109614.P13754154156094201326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109614 (n : ℕ) : ℤ :=
  A109614.P13754154156094201326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110127.P5274012538628892863

`A001109(n)-A002002(n)`
-/

namespace A110127.P5274012538628892863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n - A002002 n

end

end A110127.P5274012538628892863

noncomputable section

/-- A110127: Number of EE's crossing the line y = x (i.e., two consecutive E steps from the line y = x+1 to the line y = x-1) in all Delannoy paths of length n.

Offset 0, canonical program `A110127.P5274012538628892863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110127 (n : ℕ) : ℤ :=
  A110127.P5274012538628892863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110170.P5706490004854284683

`A000007(n)+2*A002002(n)`
-/

namespace A110170.P5706490004854284683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A002002 n

end

end A110170.P5706490004854284683

noncomputable section

/-- A110170: First differences of the central Delannoy numbers (A001850).

Offset 0, canonical program `A110170.P5706490004854284683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A110170 (n : ℕ) : ℤ :=
  A110170.P5706490004854284683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A110170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110475.P12090647268886317470

`A252736(A007948(n+1))`
-/

namespace A110475.P12090647268886317470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A007948 (n + 1)).toNat

end

end A110475.P12090647268886317470

noncomputable section

/-- A110475: Number of symbols '*' and '^' to write the canonical prime factorization of n.

Offset 1, canonical program `A110475.P12090647268886317470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475 (n : ℕ) : ℤ :=
  A110475.P12090647268886317470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110661.P15569028021835169260

`A006218(A002024(n+1))-A006218(A002262(n))`
-/

namespace A110661.P15569028021835169260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002024 (n + 1)).toNat - A006218 (A002262 n).toNat

end

end A110661.P15569028021835169260

noncomputable section

/-- A110661: Triangle read by rows: T(n,k) = total number of divisors of k, k+1, ..., n (1 <= k <= n).

Offset 1, canonical program `A110661.P15569028021835169260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661 (n : ℕ) : ℤ :=
  A110661.P15569028021835169260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A110661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110673.P14259157740145629283

`∩[A007921(n+1), A014076(n+1)+2]`
-/

namespace A110673.P14259157740145629283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110673.P14259157740145629283

noncomputable section

/-- A110673: Numbers that are neither the sum nor the difference of two primes.

Offset 1, canonical program `A110673.P14259157740145629283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7597 terms. -/
def A110673 (n : ℕ) : ℤ :=
  (A110673.P14259157740145629283.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7597 terms. -/
def A110673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111114.P9509912661584287548

`floor(A000040(n+2)/∑[A010051(n+2)])`
-/

namespace A111114.P9509912661584287548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A111114.P9509912661584287548

noncomputable section

/-- A111114: Integer part of prime(n)/pi(n).

Offset 2, canonical program `A111114.P9509912661584287548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111114 (n : ℕ) : ℤ :=
  A111114.P9509912661584287548.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111397.P3791276779509558651

`A002808(n+1)%3`
-/

namespace A111397.P3791276779509558651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) 3

end

end A111397.P3791276779509558651

noncomputable section

/-- A111397: Composite numbers (modulo 3).

Offset 1, canonical program `A111397.P3791276779509558651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111397 (n : ℕ) : ℤ :=
  A111397.P3791276779509558651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111398.P16875926661935331434

`∪[A030626(n+1), A016759(n)]`
-/

namespace A111398.P16875926661935331434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111398.P16875926661935331434

noncomputable section

/-- A111398: Numbers which are the cube roots of the product of their proper divisors.

Offset 1, canonical program `A111398.P16875926661935331434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398 (n : ℕ) : ℤ :=
  (A111398.P16875926661935331434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111527.P12584013183539316242

`A117178(n)*A117568(n)`
-/

namespace A111527.P12584013183539316242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n * A117568 n

end

end A111527.P12584013183539316242

noncomputable section

/-- A111527: Inverse of A111526. Row sums have general term C(n,floor(n/2))*(cos(Pi*n/2) + sin(Pi*n/2)).

Offset 0, canonical program `A111527.P12584013183539316242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527 (n : ℕ) : ℤ :=
  A111527.P12584013183539316242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111596.P6007535604357986319

`A097807(n)*A271703(n)`
-/

namespace A111596.P6007535604357986319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A271703 n

end

end A111596.P6007535604357986319

noncomputable section

/-- A111596: The matrix inverse of the unsigned Lah numbers A271703.

Offset 0, canonical program `A111596.P6007535604357986319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596 (n : ℕ) : ℤ :=
  A111596.P6007535604357986319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A111596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111653.P11815218496113125647

`A002808(∑[char[∑[n]]])`
-/

namespace A111653.P11815218496113125647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111653.P11815218496113125647

noncomputable section

/-- A111653: n-th composite number appears n times.

Offset 1, canonical program `A111653.P11815218496113125647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653 (n : ℕ) : ℤ :=
  A111653.P11815218496113125647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111655.P15410137681632435708

`A002808(A111654(n+1))`
-/

namespace A111655.P15410137681632435708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A111654 (n + 1)).toNat

end

end A111655.P15410137681632435708

noncomputable section

/-- A111655: n-th composite number appears n-th composite number times.

Offset 1, canonical program `A111655.P15410137681632435708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655 (n : ℕ) : ℤ :=
  A111655.P15410137681632435708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111657.P14274310389912407619

`A002808(A083375(n+1))`
-/

namespace A111657.P14274310389912407619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A083375 (n + 1)).toNat

end

end A111657.P14274310389912407619

noncomputable section

/-- A111657: n-th composite number appears n-th prime times.

Offset 1, canonical program `A111657.P14274310389912407619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657 (n : ℕ) : ℤ :=
  A111657.P14274310389912407619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111688.P14076338886946641188

`A093515(A065475(n+1))`
-/

namespace A111688.P14076338886946641188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A065475 (n + 1)).toNat

end

end A111688.P14076338886946641188

noncomputable section

/-- A111688: Primes and composite numbers alternately in increasing order.

Offset 1, canonical program `A111688.P14076338886946641188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688 (n : ℕ) : ℤ :=
  A111688.P14076338886946641188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111938.P12344735915851261426

`(n+1)*A002654(n+1)`
-/

namespace A111938.P12344735915851261426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002654 (n + 1)

end

end A111938.P12344735915851261426

noncomputable section

/-- A111938: a(n) = n times number of divisors of n of form 4m+1 - n times number of divisors of form 4m+3.

Offset 1, canonical program `A111938.P12344735915851261426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111938 (n : ℕ) : ℤ :=
  A111938.P12344735915851261426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111972.P10773037967819847724

`∑{e}[A260188(n+1), #]`
-/

namespace A111972.P10773037967819847724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111972.P10773037967819847724

noncomputable section

/-- A111972: a(n) = Max(omega(k): 1<=k<=n), where omega(n) = A001221(n), the number of distinct prime factors of n.

Offset 1, canonical program `A111972.P10773037967819847724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972 (n : ℕ) : ℤ :=
  (A111972.P10773037967819847724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112342.P7013210857343809106

`A000720(A002808(n+1)²)-A000720((A002808(n+1)-1)²)`
-/

namespace A112342.P7013210857343809106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1) ^ 2).toNat - A000720 ((A002808 (n + 1) - 1) ^ 2).toNat

end

end A112342.P7013210857343809106

noncomputable section

/-- A112342: Number of primes between (n-th composite - 1)^2 and (n-th composite)^2.

Offset 1, canonical program `A112342.P7013210857343809106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112342 (n : ℕ) : ℤ :=
  A112342.P7013210857343809106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112475.P12220316828217770936

`A035607(n)+A197870(n)-A008288(n)`
-/

namespace A112475.P12220316828217770936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A197870 n - A008288 n)

end

end A112475.P12220316828217770936

noncomputable section

/-- A112475: Riordan array (1/(1+x),x(1+x)/(1-x)).

Offset 0, canonical program `A112475.P12220316828217770936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112475 (n : ℕ) : ℤ :=
  A112475.P12220316828217770936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112604.P7169979849370553245

`A033762(2*n)`
-/

namespace A112604.P7169979849370553245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n)

end

end A112604.P7169979849370553245

noncomputable section

/-- A112604: Number of representations of n as a sum of three times a square and two times a triangular number.

Offset 0, canonical program `A112604.P7169979849370553245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604 (n : ℕ) : ℤ :=
  A112604.P7169979849370553245.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112773.P44553575666953962

`3*A008578(n+1)`
-/

namespace A112773.P44553575666953962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1)

end

end A112773.P44553575666953962

noncomputable section

/-- A112773: 3 together with primes multiplied by 3.

Offset 1, canonical program `A112773.P44553575666953962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112773 (n : ℕ) : ℤ :=
  A112773.P44553575666953962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112794.P1002080450273918995

`A000040(eq[0, A048448(n)%5])`
-/

namespace A112794.P1002080450273918995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112794.P1002080450273918995

noncomputable section

/-- A112794: Primes such that the sum of the predecessor and successor primes is divisible by 5.

Offset 1, canonical program `A112794.P1002080450273918995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112794 (n : ℕ) : ℤ :=
  A112794.P1002080450273918995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113063.P2944476771486333311

`lcm(xor(n, n+1)%3, A255648(n+1))`
-/

namespace A113063.P2944476771486333311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ) (A255648 (n + 1))

end

end A113063.P2944476771486333311

noncomputable section

/-- A113063: Associated with theta series of hexagonal net with respect to a node.

Offset 1, canonical program `A113063.P2944476771486333311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063 (n : ℕ) : ℤ :=
  (A113063.P2944476771486333311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113406.P10368065744675413005

`C(2, and(3, n+2))*A002654(n+1)`
-/

namespace A113406.P10368065744675413005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.land 3 (n + 2)) : ℤ) * A002654 (n + 1)

end

end A113406.P10368065744675413005

noncomputable section

/-- A113406: Half the number of integer solutions to x^2 + 4 * y^2 = n.

Offset 1, canonical program `A113406.P10368065744675413005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A113406 (n : ℕ) : ℤ :=
  A113406.P10368065744675413005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. -/
def A113406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113408.P246085839438288403

`A168561(n)*A210736(A135840(n+1))`
-/

namespace A113408.P246085839438288403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A210736 (A135840 (n + 1)).toNat

end

end A113408.P246085839438288403

noncomputable section

/-- A113408: Riordan array (1/(1-x^2-x^4*c(x^4)),x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A113408.P246085839438288403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A113408 (n : ℕ) : ℤ :=
  A113408.P246085839438288403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A113408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113429.P822979854111564575

`A197870(eq[1, A117898(n)])`
-/

namespace A113429.P822979854111564575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113429.P822979854111564575

noncomputable section

/-- A113429: Expansion of f(-x, -x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A113429.P822979854111564575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A113429 (n : ℕ) : ℤ :=
  A113429.P822979854111564575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. -/
def A113429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113580.P2441658852264608091

`∑{digits}[n, A008578(#+1)]`
-/

namespace A113580.P2441658852264608091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008578 (x + 1)).sum

end

end A113580.P2441658852264608091

noncomputable section

/-- A113580: Define prime(0) = 1; then a(n) = sum prime(d), where d ranges over the decimal digits of n.

Offset 0, canonical program `A113580.P2441658852264608091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580 (n : ℕ) : ℤ :=
  A113580.P2441658852264608091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113652.P8497104966869689107

`(-1)^n*A002654(n+1)`
-/

namespace A113652.P8497104966869689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002654 (n + 1)

end

end A113652.P8497104966869689107

noncomputable section

/-- A113652: Expansion of (1 - theta_4(q)^2) / 4 in powers of q.

Offset 1, canonical program `A113652.P8497104966869689107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113652 (n : ℕ) : ℤ :=
  A113652.P8497104966869689107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113866.P4859233891628937342

`p?[A064491(n+1)]`
-/

namespace A113866.P4859233891628937342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113866.P4859233891628937342

noncomputable section

/-- A113866: Primes in the sequence A064491.

Offset 1, canonical program `A113866.P4859233891628937342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866 (n : ℕ) : ℤ :=
  A113866.P4859233891628937342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A113866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113974.P1614566940091252666

`A033999(n)*A123331(n+1)`
-/

namespace A113974.P1614566940091252666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123331 (n + 1)

end

end A113974.P1614566940091252666

noncomputable section

/-- A113974: Expansion of (1-phi(x^3)^3/phi(x))/2 where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113974.P1614566940091252666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974 (n : ℕ) : ℤ :=
  A113974.P1614566940091252666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113998.P14714429809972250434

`A000007(A051777(n+1))`
-/

namespace A113998.P14714429809972250434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051777 (n + 1)).toNat

end

end A113998.P14714429809972250434

noncomputable section

/-- A113998: Reverse of triangle A051731.

Offset 1, canonical program `A113998.P14714429809972250434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113998 (n : ℕ) : ℤ :=
  A113998.P14714429809972250434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114306.P2446590887034808239

`lt[A000005(n+1), A063375(n+1)]+1`
-/

namespace A114306.P2446590887034808239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A114306.P2446590887034808239

noncomputable section

/-- A114306: Numbers k such that Fibonacci(k) has more divisors than k does.

Offset 1, canonical program `A114306.P2446590887034808239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306 (n : ℕ) : ℤ :=
  (A114306.P2446590887034808239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A114306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114587.P2300665656653397848

`A114515(n+3)-A114590(n+1)`
-/

namespace A114587.P2300665656653397848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 3) - A114590 (n + 1)

end

end A114587.P2300665656653397848

noncomputable section

/-- A114587: Number of peaks at odd levels in all hill-free Dyck paths of semilength n+3 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A114587.P2300665656653397848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587 (n : ℕ) : ℤ :=
  A114587.P2300665656653397848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A114587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114708.P3839565635950427400

`A114707(n+2)-A114707(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114708.P3839565635950427400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114707 (n + 2) - A114707 (n + 1)

end

end A114708.P3839565635950427400

noncomputable section

/-- A114708: a(n) = A114707(n) - A114707(n-1) = the number of distinct primes dividing n but not A114707(n-1).

Offset 2, canonical program `A114708.P3839565635950427400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114708 (n : ℕ) : ℤ :=
  A114708.P3839565635950427400.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A114707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114708.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115025.P2134596540067734763

`A030101(n)*A054243(n)+1`
-/

namespace A115025.P2134596540067734763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n * A054243 n + 1

end

end A115025.P2134596540067734763

noncomputable section

/-- A115025: a(n) = n-th element of n-th row of triangle shown below.

Offset 1, canonical program `A115025.P2134596540067734763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A115025 (n : ℕ) : ℤ :=
  A115025.P2134596540067734763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A115025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115281.P9615937288782899719

`A042963(A157458(n)+1)`
-/

namespace A115281.P9615937288782899719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A157458 n + 1).toNat

end

end A115281.P9615937288782899719

noncomputable section

/-- A115281: Correlation triangle for the sequence 2-0^n.

Offset 0, canonical program `A115281.P9615937288782899719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281 (n : ℕ) : ℤ :=
  A115281.P9615937288782899719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115359.P16582716396112812378

`A098157(n)*A115358(n)`
-/

namespace A115359.P16582716396112812378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098157 n * A115358 n

end

end A115359.P16582716396112812378

noncomputable section

/-- A115359: Matrix (1,x)-(x,x^2) in Riordan array notation.

Offset 0, canonical program `A115359.P16582716396112812378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115359 (n : ℕ) : ℤ :=
  A115359.P16582716396112812378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115361.P11540176887858945007

`abs(A115358(n))`
-/

namespace A115361.P11540176887858945007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115358 n|

end

end A115361.P11540176887858945007

noncomputable section

/-- A115361: Inverse of matrix (1,x)-(x,x^2) (expressed in Riordan array notation).

Offset 0, canonical program `A115361.P11540176887858945007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115361 (n : ℕ) : ℤ :=
  A115361.P11540176887858945007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115805.P5978121614112368766

`∩[A048719(n), A115823(n)]`
-/

namespace A115805.P5978121614112368766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P5978121614112368766

noncomputable section

/-- A115805: Numbers k such that 13*k = A048720(29,k), where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A115805.P5978121614112368766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805 (n : ℕ) : ℤ :=
  (A115805.P5978121614112368766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A115805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116361.P14000542580519849199

`A089309(A348363(n))`
-/

namespace A116361.P14000542580519849199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A348363 n).toNat

end

end A116361.P14000542580519849199

noncomputable section

/-- A116361: Smallest k such that n XOR n*2^k = n*(2^k + 1).

Offset 0, canonical program `A116361.P14000542580519849199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361 (n : ℕ) : ℤ :=
  A116361.P14000542580519849199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116466.P2154189998451542687

`A000034(n)*A112556(A004526(n))`
-/

namespace A116466.P2154189998451542687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A112556 (A004526 n).toNat

end

end A116466.P2154189998451542687

noncomputable section

/-- A116466: Unsigned row sums of triangle A114700.

Offset 0, canonical program `A116466.P2154189998451542687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466 (n : ℕ) : ℤ :=
  A116466.P2154189998451542687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116816.P12699467769989003574

`A159036(n+2)-∑[A020695(2*n+1)]`
-/

namespace A116816.P12699467769989003574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116816.P12699467769989003574

noncomputable section

/-- A116816: Number of permutations of length n which avoid the patterns 2314, 3124, 4312.

Offset 1, canonical program `A116816.P12699467769989003574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816 (n : ℕ) : ℤ :=
  A116816.P12699467769989003574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117396.P5688878678667839011

`gcd(Δ[A348482(n)], A103452(n))`
-/

namespace A117396.P5688878678667839011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A103452 n)

end

end A117396.P5688878678667839011

noncomputable section

/-- A117396: Triangle, read by rows, defined by: T(n,k) = (k+1)*T(n,k+1) - Sum_{j=1..n-k-1} T(j,0)*T(n,j+k+1) for n>k with T(n,n)=1 for n>=0.

Offset 0, canonical program `A117396.P5688878678667839011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396 (n : ℕ) : ℤ :=
  (A117396.P5688878678667839011.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117499.P1282103353634337278

`A168141(2*(n+1))+A168141(A233583(n+2))`
-/

namespace A117499.P1282103353634337278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (2 * (n + 1)) + A168141 (A233583 (n + 2)).toNat

end

end A117499.P1282103353634337278

noncomputable section

/-- A117499: Number of subsets of {n-1, n, n+1} that sum up to a prime.

Offset 1, canonical program `A117499.P1282103353634337278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499 (n : ℕ) : ℤ :=
  A117499.P1282103353634337278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A117499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118508.P5933305000914291636

`A002808(row(n)+1)%A002808(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118508.P5933305000914291636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (SequenceMachineLib.triRow n + 1)) (A002808 (SequenceMachineLib.triCol n + 1))

end

end A118508.P5933305000914291636

noncomputable section

/-- A118508: Triangle read by rows: R(n,k) = A002808(n) mod A002808(k), 0

Offset 1, canonical program `A118508.P5933305000914291636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118508 (n : ℕ) : ℤ :=
  A118508.P5933305000914291636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118801.P6489775398404717729

`A033999(A002262(n))*A112857(n)`
-/

namespace A118801.P6489775398404717729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A112857 n

end

end A118801.P6489775398404717729

noncomputable section

/-- A118801: Triangle T that satisfies the matrix products: C*[T^-1]*C = T and T*[C^-1]*T = C, where C is Pascal's triangle.

Offset 0, canonical program `A118801.P6489775398404717729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801 (n : ℕ) : ℤ :=
  A118801.P6489775398404717729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118877.P16238314102169242723

`A002808(n+1)*A002808(n+4)-A002808(n+2)*A002808(n+3)`
-/

namespace A118877.P16238314102169242723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A002808 (n + 4) - A002808 (n + 2) * A002808 (n + 3)

end

end A118877.P16238314102169242723

noncomputable section

/-- A118877: Determinant of n-th continuous block of 4 consecutive composites.

Offset 1, canonical program `A118877.P16238314102169242723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118877 (n : ℕ) : ℤ :=
  A118877.P16238314102169242723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118951.P16210819713689529076

`comp[A202267(n+1)]`
-/

namespace A118951.P16210819713689529076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118951.P16210819713689529076

noncomputable section

/-- A118951: Numbers containing at least one composite digit.

Offset 1, canonical program `A118951.P16210819713689529076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118951 (n : ℕ) : ℤ :=
  (A118951.P16210819713689529076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119012.P17349838365231914682

`A114515(n+1)-A114495(n+1)`
-/

namespace A119012.P17349838365231914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114515 (n + 1) - A114495 (n + 1)

end

end A119012.P17349838365231914682

noncomputable section

/-- A119012: Number of valleys strictly above the x-axis in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

Offset 1, canonical program `A119012.P17349838365231914682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012 (n : ℕ) : ℤ :=
  A119012.P17349838365231914682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A119012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119505.P7465890050861402913

`A097902(A000124(A097902(A000124(n+1))))`
-/

namespace A119505.P7465890050861402913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097902 (A000124 (A097902 (A000124 (n + 1)).toNat).toNat).toNat

end

end A119505.P7465890050861402913

noncomputable section

/-- A119505: The Pi-th digit of Pi where the digit value of 0 is interpreted as decimal 10.

Offset 1, canonical program `A119505.P7465890050861402913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505 (n : ℕ) : ℤ :=
  A119505.P7465890050861402913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A119505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119644.P9048720214858133115

`A000040(n+1+A001221(A002808(n+1)))`
-/

namespace A119644.P9048720214858133115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) + A001221 (A002808 (n + 1)).toNat).toNat

end

end A119644.P9048720214858133115

noncomputable section

/-- A119644: a(n) = n-th prime from among those primes which are coprime to the n-th composite.

Offset 1, canonical program `A119644.P9048720214858133115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119644 (n : ℕ) : ℤ :=
  A119644.P9048720214858133115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A119644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119830.P10829120068690796242

`A046521(n)*A132013(n)`
-/

namespace A119830.P10829120068690796242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n * A132013 n

end

end A119830.P10829120068690796242

noncomputable section

/-- A119830: Bi-diagonal inverse of (2n)!/(2k)!.

Offset 0, canonical program `A119830.P10829120068690796242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119830 (n : ℕ) : ℤ :=
  A119830.P10829120068690796242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119832.P6835891889042031517

`A112334(n)*A143051(A112334(n)²)`
-/

namespace A119832.P6835891889042031517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112334 n * A143051 (A112334 n ^ 2).toNat

end

end A119832.P6835891889042031517

noncomputable section

/-- A119832: Bi-diagonal inverse of (3n)!/(3k)!.

Offset 0, canonical program `A119832.P6835891889042031517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832 (n : ℕ) : ℤ :=
  A119832.P6835891889042031517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A119832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119992.P16604952427629540782

`A008578(A095117(n+1))`
-/

namespace A119992.P16604952427629540782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095117 (n + 1)).toNat

end

end A119992.P16604952427629540782

noncomputable section

/-- A119992: a(n) = n-th positive integer which is coprime to n!.

Offset 1, canonical program `A119992.P16604952427629540782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992 (n : ℕ) : ℤ :=
  A119992.P16604952427629540782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120387.P9382839840075496527

`ceil((n+1)/2)*A289207(A110560(n))`
-/

namespace A120387.P9382839840075496527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ * A289207 (A110560 n).toNat

end

end A120387.P9382839840075496527

noncomputable section

/-- A120387: c(n) mod b(n) where c(n) = (n-1)! and b(n) = Sum_{i=1..n} i.

Offset 1, canonical program `A120387.P9382839840075496527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387 (n : ℕ) : ℤ :=
  A120387.P9382839840075496527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120434.P2003402699123068110

`A199335(A099375(n)+1+n)`
-/

namespace A120434.P2003402699123068110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199335 (A099375 n + 1 + (n : ℤ)).toNat

end

end A120434.P2003402699123068110

noncomputable section

/-- A120434: Triangle read by rows: counts permutations by number of big descents.

Offset 2, canonical program `A120434.P2003402699123068110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A120434 (n : ℕ) : ℤ :=
  A120434.P2003402699123068110.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A120434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120438.P18071063481821398629

`A141035(A094743(n+2))`
-/

namespace A120438.P18071063481821398629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A094743 (n + 2)).toNat

end

end A120438.P18071063481821398629

noncomputable section

/-- A120438: Average of twin-prime pairs modulo 10 (least absolute residue).

Offset 1, canonical program `A120438.P18071063481821398629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438 (n : ℕ) : ℤ :=
  A120438.P18071063481821398629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120458.P12527743672854816924

`A008578(1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n+1]]]`
-/

namespace A120458.P12527743672854816924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P12527743672854816924

noncomputable section

/-- A120458: Triangle read by rows: row 0 is 1; for n>0, row n gives 1^n, prime(1)^n, prime(2)^n, ..., prime(n)^n.

Offset 0, canonical program `A120458.P12527743672854816924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458 (n : ℕ) : ℤ :=
  A120458.P12527743672854816924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120624.P15001731129403360422

`eq[A099894(n), A099905(A028310(n))]`
-/

namespace A120624.P15001731129403360422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120624.P15001731129403360422

noncomputable section

/-- A120624: Numbers n such that the n-th Catalan number C(2n,n)/(n+1) is divisible by 2n.

Offset 1, canonical program `A120624.P15001731129403360422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624 (n : ℕ) : ℤ :=
  (A120624.P15001731129403360422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1019 terms. -/
def A120624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120676.P5759093107457240539

`A120675(n+1)+1`
-/

namespace A120676.P5759093107457240539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120675 (n + 1) + 1

end

end A120676.P5759093107457240539

noncomputable section

/-- A120676: Number of prime factors of even squarefree numbers A039956.

Offset 1, canonical program `A120676.P5759093107457240539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676 (n : ℕ) : ℤ :=
  A120676.P5759093107457240539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121450.P5061707180200879465

`A033999(n)*A113446(n+1)`
-/

namespace A121450.P5061707180200879465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113446 (n + 1)

end

end A121450.P5061707180200879465

noncomputable section

/-- A121450: Expansion of (theta_4(q^3)^2 - theta_4(q)^2)/4 in powers of q.

Offset 1, canonical program `A121450.P5061707180200879465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450 (n : ℕ) : ℤ :=
  A121450.P5061707180200879465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121454.P16119568103753494855

`(-1)^(n+2)*A035162(n+1)`
-/

namespace A121454.P16119568103753494855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A035162 (n + 1)

end

end A121454.P16119568103753494855

noncomputable section

/-- A121454: Expansion of q * psi(-q) * psi(-q^7) in powers of q where psi(q) is a Ramanujan theta function.

Offset 1, canonical program `A121454.P16119568103753494855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121454 (n : ℕ) : ℤ :=
  A121454.P16119568103753494855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121479.P12523290855419051886

`A253145(lt[3, A069903(n+1)])`
-/

namespace A121479.P12523290855419051886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121479.P12523290855419051886

noncomputable section

/-- A121479: Triangular numbers with more than three distinct prime factors.

Offset 1, canonical program `A121479.P12523290855419051886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479 (n : ℕ) : ℤ :=
  A121479.P12523290855419051886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121614.P7539545876056911518

`∩[A104211(n+1), A108662(n+1)]`
-/

namespace A121614.P7539545876056911518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121614.P7539545876056911518

noncomputable section

/-- A121614: Numbers that have composite sum of digits and prime sum of squares of digits.

Offset 1, canonical program `A121614.P7539545876056911518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614 (n : ℕ) : ℤ :=
  (A121614.P7539545876056911518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121893.P2090054264174111428

`comp[∪[(n+2)²-1, A222030(n)]]`
-/

namespace A121893.P2090054264174111428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A121893.P2090054264174111428

noncomputable section

/-- A121893: Composite integers not equal to k*[k or k+1 or k+2] where k is a natural number.

Offset 1, canonical program `A121893.P2090054264174111428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893 (n : ℕ) : ℤ :=
  (A121893.P2090054264174111428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122132.P3265730221735149108

`floor(A192863(n+1)/2)`
-/

namespace A122132.P3265730221735149108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192863 (n + 1) : ℚ) / 2⌋

end

end A122132.P3265730221735149108

noncomputable section

/-- A122132: Squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A122132.P3265730221735149108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132 (n : ℕ) : ℤ :=
  A122132.P3265730221735149108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122414.P2301085849404796156

`A010051(A050873(n+1))`
-/

namespace A122414.P2301085849404796156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A050873 (n + 1)).toNat

end

end A122414.P2301085849404796156

noncomputable section

/-- A122414: Triangle T(n,k) for 1 <= k <= n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 1, canonical program `A122414.P2301085849404796156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414 (n : ℕ) : ℤ :=
  A122414.P2301085849404796156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122415.P16839992297758686135

`val(A077478(comp[∑[n]]+1)+1, 3)`
-/

namespace A122415.P16839992297758686135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat 3

end

end A122415.P16839992297758686135

noncomputable section

/-- A122415: Triangle T(n,k) for 1 < k < n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

Offset 3, canonical program `A122415.P16839992297758686135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415 (n : ℕ) : ℤ :=
  (A122415.P16839992297758686135.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A122415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122513.P12694980790389456141

`floor(A249164(n+1)/sqrt(6))`
-/

namespace A122513.P12694980790389456141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249164 (n + 1) : ℝ) / Real.sqrt (6 : ℝ)⌋

end

end A122513.P12694980790389456141

noncomputable section

/-- A122513: Numbers n such that 1+2n+3n^2 is a triangular number.

Offset 1, canonical program `A122513.P12694980790389456141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A122513 (n : ℕ) : ℤ :=
  A122513.P12694980790389456141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A122513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122515.P14647723614096955269

`A007504(n+1)-A046992(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122515.P14647723614096955269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A046992 (n + 1)

end

end A122515.P14647723614096955269

noncomputable section

/-- A122515: a(n) = A007504(n) - A046992(n).

Offset 1, canonical program `A122515.P14647723614096955269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122515 (n : ℕ) : ℤ :=
  A122515.P14647723614096955269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122516.P15119530128524371559

`p?[A046992(n+1)]`
-/

namespace A122516.P15119530128524371559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P15119530128524371559

noncomputable section

/-- A122516: Primes in A046992.

Offset 1, canonical program `A122516.P15119530128524371559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516 (n : ℕ) : ℤ :=
  A122516.P15119530128524371559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122538.P1373840780686066300

`A132372(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122538.P1373840780686066300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132372 (n - 1) - a (n - 1)

end

end A122538.P1373840780686066300

noncomputable section

/-- A122538: Riordan array (1, x*f(x)) where f(x)is the g.f. of A006318.

Offset 0, canonical program `A122538.P1373840780686066300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9317 terms. -/
def A122538 (n : ℕ) : ℤ :=
  A122538.P1373840780686066300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9317 terms. -/
def A122538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122856.P16127170756745905991

`A002654(3*n+2)`
-/

namespace A122856.P16127170756745905991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 2)

end

end A122856.P16127170756745905991

noncomputable section

/-- A122856: Expansion of f(x, x^5)^2 in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A122856.P16127170756745905991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122856 (n : ℕ) : ℤ :=
  A122856.P16127170756745905991.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122864.P189972794959072762

`A061347(n+1)*A113446(n+1)`
-/

namespace A122864.P189972794959072762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A113446 (n + 1)

end

end A122864.P189972794959072762

noncomputable section

/-- A122864: Expansion of eta(q^3)^2 * eta(q^4) * eta(q^6)^2 * eta(q^36) / (eta(q) * eta(q^9) * eta(q^12)^2) in powers of q.

Offset 1, canonical program `A122864.P189972794959072762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864 (n : ℕ) : ℤ :=
  A122864.P189972794959072762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122865.P3452293728173949375

`A002654(3*n+1)`
-/

namespace A122865.P3452293728173949375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (3 * n + 1)

end

end A122865.P3452293728173949375

noncomputable section

/-- A122865: Expansion of chi(x) * phi(x^3) * psi(-x^3) in powers of x where chi(), phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A122865.P3452293728173949375`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122865 (n : ℕ) : ℤ :=
  A122865.P3452293728173949375.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122950.P2513792860908533748

`A236076(A066182(n+1)-A002024(n+1))`
-/

namespace A122950.P2513792860908533748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A122950.P2513792860908533748

noncomputable section

/-- A122950: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 0, 1, -1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, -1, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122950.P2513792860908533748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122950 (n : ℕ) : ℤ :=
  A122950.P2513792860908533748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122960.P1556329167515398814

`A202023(A209293(n+1))`
-/

namespace A122960.P1556329167515398814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A209293 (n + 1)).toNat

end

end A122960.P1556329167515398814

noncomputable section

/-- A122960: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122960.P1556329167515398814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960 (n : ℕ) : ℤ :=
  A122960.P1556329167515398814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123164.P13278900734001591324

`A001850(n)-A002002(n)`
-/

namespace A123164.P13278900734001591324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A002002 n

end

end A123164.P13278900734001591324

noncomputable section

/-- A123164: Row sums of A123160.

Offset 0, canonical program `A123164.P13278900734001591324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A123164 (n : ℕ) : ℤ :=
  A123164.P13278900734001591324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A123164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123240.P10296889505221293768

`eq[0, A122895(n+1)]+1`
-/

namespace A123240.P10296889505221293768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123240.P10296889505221293768

noncomputable section

/-- A123240: Natural numbers with number of divisors not equal to a Fibonacci number.

Offset 1, canonical program `A123240.P10296889505221293768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240 (n : ℕ) : ℤ :=
  (A123240.P10296889505221293768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. -/
def A123240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123608.P17223732889640698517

`∩[A002808(n+1), A166602(n+1)]`
-/

namespace A123608.P17223732889640698517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P17223732889640698517

noncomputable section

/-- A123608: Numbers k such that k, k+1 and 2*k+1 are composite.

Offset 1, canonical program `A123608.P17223732889640698517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123608 (n : ℕ) : ℤ :=
  (A123608.P17223732889640698517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124569.P8820123207631878592

`∩[A069977(n+1)-4, A069977(n+1)]`
-/

namespace A124569.P8820123207631878592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124569.P8820123207631878592

noncomputable section

/-- A124569: Numbers k such that k, k+2, k+4 and k+6 are squarefree.

Offset 1, canonical program `A124569.P8820123207631878592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569 (n : ℕ) : ℤ :=
  (A124569.P8820123207631878592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124656.P12602646554450851436

`filter[A005101(n+1), A010060(#)]`
-/

namespace A124656.P12602646554450851436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A124656.P12602646554450851436

noncomputable section

/-- A124656: Abundant odious numbers. (Abundant numbers that have an odd number of ones in their binary representation.)

Offset 1, canonical program `A124656.P12602646554450851436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656 (n : ℕ) : ℤ :=
  A124656.P12602646554450851436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125061.P10139082883885245732

`abs(A138952(A028310(2*n)))`
-/

namespace A125061.P10139082883885245732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (A028310 (2 * n)).toNat|

end

end A125061.P10139082883885245732

noncomputable section

/-- A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A125061.P10139082883885245732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061 (n : ℕ) : ℤ :=
  A125061.P10139082883885245732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125110.P17127943066742272730

`A001481(n+1)^3`
-/

namespace A125110.P17127943066742272730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) ^ 3

end

end A125110.P17127943066742272730

noncomputable section

/-- A125110: Cubes which have a partition as the sum of 2 squares.

Offset 1, canonical program `A125110.P17127943066742272730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110 (n : ℕ) : ℤ :=
  A125110.P17127943066742272730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125110.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125111.P6188776523873180640

`A022544(n+1)^3`
-/

namespace A125111.P6188776523873180640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1) ^ 3

end

end A125111.P6188776523873180640

noncomputable section

/-- A125111: Cubes which do not have a partition as the sum of 2 squares.

Offset 1, canonical program `A125111.P6188776523873180640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111 (n : ℕ) : ℤ :=
  A125111.P6188776523873180640.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022544, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125721.P13273067158620434452

`2*A000142(n)/A027423(n)`
-/

namespace A125721.P13273067158620434452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000142 n : ℚ) / (A027423 n : ℚ)

end

end A125721.P13273067158620434452

noncomputable section

/-- A125721: a(n)=2*n!/d(n!); d(m)=A000005(m) is the number of divisors of m.

Offset 0, canonical program `A125721.P13273067158620434452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125721 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125721.P13273067158620434452.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A125721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126192.P9288968837919539928

`2^A000005(n+1)*A007955(n+1)`
-/

namespace A126192.P9288968837919539928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ) * (A007955 (n + 1) : ℚ)

end

end A126192.P9288968837919539928

noncomputable section

/-- A126192: Product of the even divisors of 2n.

Offset 1, canonical program `A126192.P9288968837919539928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126192.P9288968837919539928.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127172.P7443549897825496608

`A134676(n+1)/A002260(n+1)`
-/

namespace A127172.P7443549897825496608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134676 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A127172.P7443549897825496608

noncomputable section

/-- A127172: Triangle read by rows: A051731^3 as an infinite lower triangular matrix.

Offset 1, canonical program `A127172.P7443549897825496608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127172.P7443549897825496608.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127368.P5347369318367987090

`A054521(n+1)*A128227(n)`
-/

namespace A127368.P5347369318367987090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A128227 n

end

end A127368.P5347369318367987090

noncomputable section

/-- A127368: Relative prime triangle, read by rows.

Offset 1, canonical program `A127368.P5347369318367987090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368 (n : ℕ) : ℤ :=
  A127368.P5347369318367987090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127459.P12905099945906847377

`p?[A127458(n+1)]`
-/

namespace A127459.P12905099945906847377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127459.P12905099945906847377

noncomputable section

/-- A127459: Prime numbers n such that there are no primes between n and n+n^(1/3).

Offset 1, canonical program `A127459.P12905099945906847377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459 (n : ℕ) : ℤ :=
  A127459.P12905099945906847377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127580.P858959121209447716

`eq[1, A010051(A158071(n+1)-2)]`
-/

namespace A127580.P858959121209447716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A158071 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P858959121209447716

noncomputable section

/-- A127580: Numbers k such that 64k+63 is prime.

Offset 1, canonical program `A127580.P858959121209447716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A127580 (n : ℕ) : ℤ :=
  (A127580.P858959121209447716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A127580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127601.P16071854653763161976

`floor(∏[root(A008578(n+1), 4)])`
-/

namespace A127601.P16071854653763161976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127601.P16071854653763161976

noncomputable section

/-- A127601: Integer part of 4th root of product of first n primes.

Offset 0, canonical program `A127601.P16071854653763161976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601 (n : ℕ) : ℤ :=
  A127601.P16071854653763161976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127737.P11986191195381923134

`A128151(n+1)+2*A112367(n)`
-/

namespace A127737.P11986191195381923134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128151 (n + 1) + 2 * A112367 n

end

end A127737.P11986191195381923134

noncomputable section

/-- A127737: A002260 * A127701.

Offset 1, canonical program `A127737.P11986191195381923134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737 (n : ℕ) : ℤ :=
  A127737.P11986191195381923134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128106.P7556689747914329909

`A000007(n)+2*A001481(n+1)`
-/

namespace A128106.P7556689747914329909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A001481 (n + 1)

end

end A128106.P7556689747914329909

noncomputable section

/-- A128106: Sizes of possible gaps around a Gaussian prime: 1 and the even numbers in A001481.

Offset 1, canonical program `A128106.P7556689747914329909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106 (n : ℕ) : ℤ :=
  A128106.P7556689747914329909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128201.P11268292657469231375

`record[(n+1)*A009191(n+1)%2]`
-/

namespace A128201.P11268292657469231375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A009191 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128201.P11268292657469231375

noncomputable section

/-- A128201: Union of positive squares and the odd numbers.

Offset 1, canonical program `A128201.P11268292657469231375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201 (n : ℕ) : ℤ :=
  A128201.P11268292657469231375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128206.P14119497991343743682

`A053602(A134082(n))`
-/

namespace A128206.P14119497991343743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A134082 n).toNat

end

end A128206.P14119497991343743682

noncomputable section

/-- A128206: Inverse of number triangle A128207.

Offset 0, canonical program `A128206.P14119497991343743682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206 (n : ℕ) : ℤ :=
  A128206.P14119497991343743682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128229.P12675992775394156376

`abs(A132013(n))`
-/

namespace A128229.P12675992775394156376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132013 n|

end

end A128229.P12675992775394156376

noncomputable section

/-- A128229: A natural number transform, inverse of signed A094587.

Offset 1, canonical program `A128229.P12675992775394156376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128229 (n : ℕ) : ℤ :=
  A128229.P12675992775394156376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128619.P9969041913449071840

`A000045(A128621(n+1))`
-/

namespace A128619.P9969041913449071840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128621 (n + 1)).toNat

end

end A128619.P9969041913449071840

noncomputable section

/-- A128619: Triangle T(n, k) = A127647(n,k) * A128174(n,k), read by rows.

Offset 1, canonical program `A128619.P9969041913449071840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619 (n : ℕ) : ℤ :=
  A128619.P9969041913449071840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129138.P16114292618221871354

`A243987(∑[n]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A129138.P16114292618221871354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A129138.P16114292618221871354

noncomputable section

/-- A129138: a(n) = number of positive divisors of n that are <= phi(n), where phi(n) = A000010(n).

Offset 1, canonical program `A129138.P16114292618221871354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138 (n : ℕ) : ℤ :=
  A129138.P16114292618221871354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129144.P14517758672769090595

`Δ[A171746(a(n-2))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A129144.P14517758672769090595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  A171746 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P14517758672769090595

noncomputable section

/-- A129144: a(1)=a(2)=1; for n>2: a(n) = (s = sum of all previous terms) minus (maximal square less than s).

Offset 1, canonical program `A129144.P14517758672769090595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144 (n : ℕ) : ℤ :=
  A129144.P14517758672769090595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071557.P9922815785651542708

`eq[A000034(n), A128428(A000007(n)+n)]`
-/

namespace A071557.P9922815785651542708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071557.P9922815785651542708

noncomputable section

/-- A071557: Numbers k such that A065876(k) = k^2-k+1.

Offset 1, canonical program `A071557.P9922815785651542708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A071557 (n : ℕ) : ℤ :=
  (A071557.P9922815785651542708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A071557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071744.P1175977613929385666

`A099376(n)+A071747(n)`
-/

namespace A071744.P1175977613929385666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071747 n

end

end A071744.P1175977613929385666

noncomputable section

/-- A071744: Expansion of (1+x^4*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071744.P1175977613929385666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071744 (n : ℕ) : ℤ :=
  A071744.P1175977613929385666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072547.P9547033141978854223

`Δ[A112556(n)]`
-/

namespace A072547.P9547033141978854223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072547.P9547033141978854223

noncomputable section

/-- A072547: Main diagonal of the array in which first column and row are filled alternatively with 1's or 0's and then T(i,j) = T(i-1,j) + T(i,j-1).

Offset 1, canonical program `A072547.P9547033141978854223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A072547 (n : ℕ) : ℤ :=
  A072547.P9547033141978854223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A072547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072709.P15798147248747422225

`A072711(n+2)-15`
-/

namespace A072709.P15798147248747422225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072711 (n + 2) - 15

end

end A072709.P15798147248747422225

noncomputable section

/-- A072709: Integers m such that the last digit of Fibonacci(m) is 7.

Offset 1, canonical program `A072709.P15798147248747422225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072709 (n : ℕ) : ℤ :=
  A072709.P15798147248747422225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072845.P4251842277492704702

`∏{digits}[A136333(n+1), #]%10`
-/

namespace A072845.P4251842277492704702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod % 10

end

end A072845.P4251842277492704702

noncomputable section

/-- A072845: Let S(1) = {1, 3, 7, 9}, S(n) be obtained from S(n-1) via 1 -> {1, 3, 7, 9}, 3 -> {3, 9, 1, 7}, 7 -> {7, 1, 9, 3}, 9 -> {9, 7, 3, 1}, then this sequence is the concatenation of S(1), S(2), ...

Offset 1, canonical program `A072845.P4251842277492704702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072845 (n : ℕ) : ℤ :=
  (A072845.P4251842277492704702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073613.P6380677151097810050

`C(A140612(n+1)+1, 2)`
-/

namespace A073613.P6380677151097810050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140612 (n + 1) + 1).toNat 2

end

end A073613.P6380677151097810050

noncomputable section

/-- A073613: Triangular numbers which are the sum of two squares.

Offset 1, canonical program `A073613.P6380677151097810050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073613 (n : ℕ) : ℤ :=
  (A073613.P6380677151097810050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074215.P3734655287074817867

`eq[1, A083019(n+1)]+1`
-/

namespace A074215.P3734655287074817867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074215.P3734655287074817867

noncomputable section

/-- A074215: Numbers m such that m and F(m) are relatively prime, where F(m) denotes the m-th Fibonacci number.

Offset 1, canonical program `A074215.P3734655287074817867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6418 terms. -/
def A074215 (n : ℕ) : ℤ :=
  (A074215.P3734655287074817867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6418 terms. -/
def A074215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074226.P15430199150975512513

`eq[1, A317331(n+1)%3]+1`
-/

namespace A074226.P15430199150975512513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317331 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074226.P15430199150975512513

noncomputable section

/-- A074226: Numbers n such that Kronecker(3,n) = 1.

Offset 1, canonical program `A074226.P15430199150975512513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A074226 (n : ℕ) : ℤ :=
  (A074226.P15430199150975512513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A074226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076695.P7345591826054415002

`floor(A107323(n+6)/12)`
-/

namespace A076695.P7345591826054415002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107323 (n + 6) : ℚ) / 12⌋

end

end A076695.P7345591826054415002

noncomputable section

/-- A076695: Dimension of S2(G0(p)) where p runs through the odd primes >= 13, G0(N) is the Hecke subgroup of SL2(Z), consisting of 2 X 2 matrices (a,b; c,d) with c == 0 (mod N).

Offset 1, canonical program `A076695.P7345591826054415002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A076695 (n : ℕ) : ℤ :=
  A076695.P7345591826054415002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A076695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076746.P7131099468425738102

`∪[A289413(n+1)+4, A289413(n+1)]`
-/

namespace A076746.P7131099468425738102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289413 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076746.P7131099468425738102

noncomputable section

/-- A076746: List giving pairs of primes of the form 10k+3 and 10k+7.

Offset 1, canonical program `A076746.P7131099468425738102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076746 (n : ℕ) : ℤ :=
  (A076746.P7131099468425738102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078903.P15563082662112462031

`A000788(n+1)-(n+1)`
-/

namespace A078903.P15563082662112462031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (n + 1) - (n + 1 : ℤ)

end

end A078903.P15563082662112462031

noncomputable section

/-- A078903: a(n) = n^2 - Sum_{u=1..n} Sum_{v=1..u} valuation(2*v, 2).

Offset 1, canonical program `A078903.P15563082662112462031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078903 (n : ℕ) : ℤ :=
  A078903.P15563082662112462031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079247.P13961136694761078875

`A000203(n+1)-A086670(n+1)`
-/

namespace A079247.P13961136694761078875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A086670 (n + 1)

end

end A079247.P13961136694761078875

noncomputable section

/-- A079247: Number of pairs (p,q), 0 <= p < q, such that p+q divides n.

Offset 1, canonical program `A079247.P13961136694761078875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079247 (n : ℕ) : ℤ :=
  A079247.P13961136694761078875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080303.P9276496599391433279

`A084471(abs(1-A088697(n))+1)`
-/

namespace A080303.P9276496599391433279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (|1 - A088697 n| + 1).toNat

end

end A080303.P9276496599391433279

noncomputable section

/-- A080303: Rewrite 0->100 in the binary expansion of n.

Offset 0, canonical program `A080303.P9276496599391433279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A080303 (n : ℕ) : ℤ :=
  A080303.P9276496599391433279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A080303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084930.P17811611135321501921

`A008310(eq[0, floor(sqrt(4*n+1))%2])`
-/

namespace A084930.P17811611135321501921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A084930.P17811611135321501921

noncomputable section

/-- A084930: Triangle of coefficients of Chebyshev polynomials T_{2n+1} (x).

Offset 0, canonical program `A084930.P17811611135321501921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A084930 (n : ℕ) : ℤ :=
  A084930.P17811611135321501921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A084930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085722.P4138878208806873837

`eq[4, A193432(n)]`
-/

namespace A085722.P4138878208806873837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085722.P4138878208806873837

noncomputable section

/-- A085722: Numbers k such that k^2 + 1 is a semiprime.

Offset 1, canonical program `A085722.P4138878208806873837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722 (n : ℕ) : ℤ :=
  (A085722.P4138878208806873837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A085722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085763.P6554480403476350466

`A136687(2*(n+1))-A136687(n)`
-/

namespace A085763.P6554480403476350466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 (2 * (n + 1)) - A136687 n

end

end A085763.P6554480403476350466

noncomputable section

/-- A085763: Number of palindromes between n and 2n (inclusive).

Offset 1, canonical program `A085763.P6554480403476350466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085763 (n : ℕ) : ℤ :=
  A085763.P6554480403476350466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089250.P7432070379802121157

`A010879(A097902(∑[n+2]-1)+2)`
-/

namespace A089250.P7432070379802121157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 2).toNat

end

end A089250.P7432070379802121157

noncomputable section

/-- A089250: Add 2 (mod 10) to each decimal digit of Pi.

Offset 1, canonical program `A089250.P7432070379802121157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089250 (n : ℕ) : ℤ :=
  A089250.P7432070379802121157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089377.P16444229647022844988

`∩[A081988(n+1), A244607(n+1)]`
-/

namespace A089377.P16444229647022844988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089377.P16444229647022844988

noncomputable section

/-- A089377: Numbers whose product of digits +1 and -1 gives twin prime pairs.

Offset 1, canonical program `A089377.P16444229647022844988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A089377 (n : ℕ) : ℤ :=
  (A089377.P16444229647022844988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3915 terms. -/
def A089377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089732.P16063154535274882972

`A001263(A056536(abs(1-n)+1))`
-/

namespace A089732.P16063154535274882972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A056536 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A089732.P16063154535274882972

noncomputable section

/-- A089732: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n having k (1,1) steps (can be easily translated into RNA secondary structure terminology). Except for row 0, row n has ceiling(n/2) entries.

Offset 0, canonical program `A089732.P16063154535274882972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A089732 (n : ℕ) : ℤ :=
  A089732.P16063154535274882972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5042 terms. -/
def A089732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090529.P4680555822996673914

`∑[A316341(abs(1-n))]`
-/

namespace A090529.P4680555822996673914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090529.P4680555822996673914

noncomputable section

/-- A090529: a(n) is the smallest positive m such that n <= m!.

Offset 0, canonical program `A090529.P4680555822996673914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090529 (n : ℕ) : ℤ :=
  A090529.P4680555822996673914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090737.P10847885528079715946

`A290453(A007401(n+1))`
-/

namespace A090737.P10847885528079715946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290453 (A007401 (n + 1)).toNat

end

end A090737.P10847885528079715946

noncomputable section

/-- A090737: Triangle of Eulerian numbers modulo 3.

Offset 1, canonical program `A090737.P10847885528079715946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A090737 (n : ℕ) : ℤ :=
  A090737.P10847885528079715946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A090737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091018.P2259398009619809425

`A056536(n+1)-1`
-/

namespace A091018.P2259398009619809425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (n + 1) - 1

end

end A091018.P2259398009619809425

noncomputable section

/-- A091018: Numbers in n-th upward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

Offset 0, canonical program `A091018.P2259398009619809425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018 (n : ℕ) : ℤ :=
  A091018.P2259398009619809425.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092579.P16567581240661558732

`eq[1, A293435(n+1)]+1`
-/

namespace A092579.P16567581240661558732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092579.P16567581240661558732

noncomputable section

/-- A092579: A sieve using the Fibonacci sequence over the integers >=2. Any multiple of a Fibonacci number, F(n)*m, such that F(n)>=2 and m>=2 is excluded and what is left is included.

Offset 1, canonical program `A092579.P16567581240661558732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2657 terms. -/
def A092579 (n : ℕ) : ℤ :=
  (A092579.P16567581240661558732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2657 terms. -/
def A092579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092632.P7603526325188784515

`eq[2, A276729(n)+A055671(n)]`
-/

namespace A092632.P7603526325188784515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n + A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092632.P7603526325188784515

noncomputable section

/-- A092632: Nonprime numbers with exactly two nonprime digits.

Offset 1, canonical program `A092632.P7603526325188784515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A092632 (n : ℕ) : ℤ :=
  (A092632.P7603526325188784515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3137 terms. -/
def A092632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093882.P7713468628412793097

`(A055642(n)-1)*(n-9*floor(n/10))%A216556((n-∑{digits}[n, #])²)`
-/

namespace A093882.P7713468628412793097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055642 n - 1) * Int.tmod ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋) (A216556 (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)) ^ 2).toNat)

end

end A093882.P7713468628412793097

noncomputable section

/-- A093882: Sum of all the numbers formed by deleting one digit from n.

Offset 0, canonical program `A093882.P7713468628412793097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A093882 (n : ℕ) : ℤ :=
  A093882.P7713468628412793097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A093882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095346.P4704353315641718583

`or(1, Δ[A188435(n+1)])`
-/

namespace A095346.P4704353315641718583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A095346.P4704353315641718583

noncomputable section

/-- A095346: a(n) is the length of the n-th run of A095345.

Offset 1, canonical program `A095346.P4704353315641718583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095346 (n : ℕ) : ℤ :=
  A095346.P4704353315641718583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A095346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095374.P12292882618606204966

`A099774(n+2)-1`
-/

namespace A095374.P12292882618606204966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 2) - 1

end

end A095374.P12292882618606204966

noncomputable section

/-- A095374: One less than the number of divisors of 2*n + 1.

Offset 1, canonical program `A095374.P12292882618606204966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095374 (n : ℕ) : ℤ :=
  A095374.P12292882618606204966.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096169.P15892696127636071477

`eq[A141310(n), A193929(n)]`
-/

namespace A096169.P15892696127636071477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096169.P15892696127636071477

noncomputable section

/-- A096169: Odd n such that (n^4+1)/2 is prime.

Offset 1, canonical program `A096169.P15892696127636071477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A096169 (n : ℕ) : ℤ :=
  (A096169.P15892696127636071477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 868 terms. -/
def A096169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097519.P2332801550437158901

`p?[A013597(n)]`
-/

namespace A097519.P2332801550437158901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097519.P2332801550437158901

noncomputable section

/-- A097519: Prime differences between nextprime(2^n) and 2^n.

Offset 1, canonical program `A097519.P2332801550437158901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A097519 (n : ℕ) : ℤ :=
  A097519.P2332801550437158901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A097519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098142.P9774141478526730411

`eq[1, A099910(n+2)]+2`
-/

namespace A098142.P9774141478526730411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A098142.P9774141478526730411

noncomputable section

/-- A098142: Numbers n such that (p*(q-1)+(p-1)*q)/2 is prime, where p and q are consecutive odd primes, p

Offset 1, canonical program `A098142.P9774141478526730411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142 (n : ℕ) : ℤ :=
  (A098142.P9774141478526730411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A098142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099056.P6861540062732746160

`A099774(n+1)+A099055(n)`
-/

namespace A099056.P6861540062732746160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) + A099055 n

end

end A099056.P6861540062732746160

noncomputable section

/-- A099056: A bisection of A054519.

Offset 0, canonical program `A099056.P6861540062732746160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056 (n : ℕ) : ℤ :=
  A099056.P6861540062732746160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099848.P408237094223669535

`∑[char[A099849(n+1)]]+1`
-/

namespace A099848.P408237094223669535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099848.P408237094223669535

noncomputable section

/-- A099848: All natural numbers occur in their order as many times as they have ordered prime factorizations.

Offset 1, canonical program `A099848.P408237094223669535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099848 (n : ℕ) : ℤ :=
  (A099848.P408237094223669535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100490.P685113412066562622

`eq[gcd(10, n), A292438(n)]`
-/

namespace A100490.P685113412066562622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100490.P685113412066562622

noncomputable section

/-- A100490: Odd numbers ending in {1,3,7,9} that are not primes.

Offset 0, canonical program `A100490.P685113412066562622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100490 (n : ℕ) : ℤ :=
  (A100490.P685113412066562622.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100922.P17692804635926552874

`a(n-1)+C(n, A000788(a(n-1)))` with `a(0)=1`
-/

namespace A100922.P17692804635926552874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (A000788 (a (n - 1))).toNat

end

end A100922.P17692804635926552874

noncomputable section

/-- A100922: k appears A000120(k) times (appearances equal number of 1-bits).

Offset 0, canonical program `A100922.P17692804635926552874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100922 (n : ℕ) : ℤ :=
  (A100922.P17692804635926552874.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101503.P15868752021087344529

`A102721(n+3)-8`
-/

namespace A101503.P15868752021087344529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102721 (n + 3) - 8

end

end A101503.P15868752021087344529

noncomputable section

/-- A101503: Numbers k such that 11*k + 101 is prime.

Offset 1, canonical program `A101503.P15868752021087344529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A101503 (n : ℕ) : ℤ :=
  A101503.P15868752021087344529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A101503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101654.P14364751511690637778

`∏[A181668(a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A101654.P14364751511690637778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A181668 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101654.P14364751511690637778

noncomputable section

/-- A101654: a(n)=Product{k=0..n, 1+4^A010060(k)}/2.

Offset 0, canonical program `A101654.P14364751511690637778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A101654 (n : ℕ) : ℤ :=
  A101654.P14364751511690637778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A101654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102656.P8844784265076372744

`2*A215667(n+1)`
-/

namespace A102656.P8844784265076372744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215667 (n + 1)

end

end A102656.P8844784265076372744

noncomputable section

/-- A102656: Numbers k such that 11*k + 1 is prime.

Offset 1, canonical program `A102656.P8844784265076372744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102656 (n : ℕ) : ℤ :=
  A102656.P8844784265076372744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215667, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102657.P874716213421221396

`floor(sqrt(A276262(n+1)/11))`
-/

namespace A102657.P874716213421221396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A276262 (n + 1) : ℚ) / 11 : ℝ)⌋

end

end A102657.P874716213421221396

noncomputable section

/-- A102657: Numbers k such that 11*k^2 + 11*k + 1 is prime.

Offset 1, canonical program `A102657.P874716213421221396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102657 (n : ℕ) : ℤ :=
  A102657.P874716213421221396.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104698.P18061640039590236296

`A142978(A038722(n+1))`
-/

namespace A104698.P18061640039590236296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (A038722 (n + 1)).toNat

end

end A104698.P18061640039590236296

noncomputable section

/-- A104698: Triangle read by rows: T(n,k) = Sum_{j=0..n-k} binomial(k, j)*binomial(n-j+1, k+1).

Offset 0, canonical program `A104698.P18061640039590236296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A104698 (n : ℕ) : ℤ :=
  A104698.P18061640039590236296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A104698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105134.P12641584828989390445

`floor(A105126(n+1)/16)`
-/

namespace A105134.P12641584828989390445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105126 (n + 1) : ℚ) / 16⌋

end

end A105134.P12641584828989390445

noncomputable section

/-- A105134: Numbers n such that 16n+9 is prime.

Offset 1, canonical program `A105134.P12641584828989390445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105134 (n : ℕ) : ℤ :=
  A105134.P12641584828989390445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105425.P7820754552257510039

`eq[A101663(n), A286052(n+1)]`
-/

namespace A105425.P7820754552257510039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105425.P7820754552257510039

noncomputable section

/-- A105425: Interpret A105424 as a binary sequence and convert to decimal.

Offset 0, canonical program `A105425.P7820754552257510039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A105425 (n : ℕ) : ℤ :=
  (A105425.P7820754552257510039.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A105425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106118.P5269121123413051575

`p?[A136399(n+1)]`
-/

namespace A106118.P5269121123413051575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106118.P5269121123413051575

noncomputable section

/-- A106118: Primes with maximal digit > 1.

Offset 1, canonical program `A106118.P5269121123413051575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118 (n : ℕ) : ℤ :=
  A106118.P5269121123413051575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A106118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106847.P3405529995713514203

`∑[n*(A350102(n)-2)]`
-/

namespace A106847.P3405529995713514203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A350102 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P3405529995713514203

noncomputable section

/-- A106847: a(n) = Sum {k + j*m <= n} (k + j*m), with 0 < k,j,m <= n.

Offset 0, canonical program `A106847.P3405529995713514203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106847 (n : ℕ) : ℤ :=
  A106847.P3405529995713514203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108725.P8444148683181042035

`A107992(n+1)-2`
-/

namespace A108725.P8444148683181042035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107992 (n + 1) - 2

end

end A108725.P8444148683181042035

noncomputable section

/-- A108725: Numbers n such that 11*n + 19 is prime.

Offset 1, canonical program `A108725.P8444148683181042035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108725 (n : ℕ) : ℤ :=
  A108725.P8444148683181042035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108727.P5195277566401287610

`A107994(n+1)-3`
-/

namespace A108727.P5195277566401287610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107994 (n + 1) - 3

end

end A108727.P5195277566401287610

noncomputable section

/-- A108727: Numbers n such that 11*n + 31 is prime.

Offset 1, canonical program `A108727.P5195277566401287610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108727 (n : ℕ) : ℤ :=
  A108727.P5195277566401287610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108977.P10759412925620859983

`A138641(n+1)-1`
-/

namespace A108977.P10759412925620859983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138641 (n + 1) - 1

end

end A108977.P10759412925620859983

noncomputable section

/-- A108977: Numbers n such that 19*n + 17 is prime.

Offset 1, canonical program `A108977.P10759412925620859983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108977 (n : ℕ) : ℤ :=
  A108977.P10759412925620859983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109130.P2980007611023544684

`A027441((n+1)*A185114(n))`
-/

namespace A109130.P2980007611023544684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 ((n + 1 : ℤ) * A185114 n).toNat

end

end A109130.P2980007611023544684

noncomputable section

/-- A109130: Magic constant of smallest order-n perfect magic cube.

Offset 1, canonical program `A109130.P2980007611023544684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109130 (n : ℕ) : ℤ :=
  A109130.P2980007611023544684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110240.P11302623122308525512

`A269160(a(n-1))` with `a(0)=1`
-/

namespace A110240.P11302623122308525512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269160 (a (n - 1)).toNat

end

end A110240.P11302623122308525512

noncomputable section

/-- A110240: Decimal form of binary integer produced by the ON cells at n-th generation following Wolfram's Rule 30 cellular automaton starting from a single ON-cell represented as 1.

Offset 0, canonical program `A110240.P11302623122308525512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110240 (n : ℕ) : ℤ :=
  A110240.P11302623122308525512.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114439.P10768737933069284621

`eq[4, A276678(n+1)]+1`
-/

namespace A114439.P10768737933069284621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114439.P10768737933069284621

noncomputable section

/-- A114439: Indices of semiprime pentagonal numbers.

Offset 1, canonical program `A114439.P10768737933069284621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439 (n : ℕ) : ℤ :=
  (A114439.P10768737933069284621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A114439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114517.P2047956437619684237

`eq[4, A276680(n+1)]+1`
-/

namespace A114517.P2047956437619684237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114517.P2047956437619684237

noncomputable section

/-- A114517: Numbers k such that the k-th heptagonal number is semiprime.

Offset 1, canonical program `A114517.P2047956437619684237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517 (n : ℕ) : ℤ :=
  (A114517.P2047956437619684237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115079.P7940789343860326763

`A100995(A137734(A126988(n+1)²))`
-/

namespace A115079.P7940789343860326763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A137734 (A126988 (n + 1) ^ 2).toNat).toNat

end

end A115079.P7940789343860326763

noncomputable section

/-- A115079: Matrix log of triangle A051731, where nonzero elements in the matrix log are all unit fractions and represented here by the denominators, with zero elements remaining zero.

Offset 1, canonical program `A115079.P7940789343860326763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079 (n : ℕ) : ℤ :=
  A115079.P7940789343860326763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A115079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115404.P9169398074652638064

`eq[4, A193929(n)]`
-/

namespace A115404.P9169398074652638064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115404.P9169398074652638064

noncomputable section

/-- A115404: Numbers n such that n^4+1 is a 4-almost prime (product of four primes).

Offset 1, canonical program `A115404.P9169398074652638064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A115404 (n : ℕ) : ℤ :=
  (A115404.P9169398074652638064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A115404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121022.P12101257241342669327

`∩[2*n, A011532(n+1)]`
-/

namespace A121022.P12101257241342669327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P12101257241342669327

noncomputable section

/-- A121022: Even numbers containing a 2 in their decimal representation.

Offset 1, canonical program `A121022.P12101257241342669327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5729 terms. -/
def A121022 (n : ℕ) : ℤ :=
  (A121022.P12101257241342669327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5729 terms. -/
def A121022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123966.P2934336962651361883

`A124029(A028310(n))`
-/

namespace A123966.P2934336962651361883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A028310 n).toNat

end

end A123966.P2934336962651361883

noncomputable section

/-- A123966: Triangle A124029 with the (0,0) entry replaced by 4.

Offset 0, canonical program `A123966.P2934336962651361883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123966 (n : ℕ) : ℤ :=
  A123966.P2934336962651361883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123980.P14118247629457079037

`∩[A139405(n+1), A139406(n+1)]`
-/

namespace A123980.P14118247629457079037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P14118247629457079037

noncomputable section

/-- A123980: Numbers k for which 8*k+1, 8*k+5 and 8*k+7 are primes.

Offset 1, canonical program `A123980.P14118247629457079037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980 (n : ℕ) : ℤ :=
  (A123980.P14118247629457079037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125911.P3841651622429786425

`A007955(n+1)/A136655(n+1)`
-/

namespace A125911.P3841651622429786425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A136655 (n + 1) : ℚ)

end

end A125911.P3841651622429786425

noncomputable section

/-- A125911: Product of the even divisors of n.

Offset 1, canonical program `A125911.P3841651622429786425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125911.P3841651622429786425.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127674.P15909156756878056270

`A008310(A061885(n))`
-/

namespace A127674.P15909156756878056270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008310 (A061885 n).toNat

end

end A127674.P15909156756878056270

noncomputable section

/-- A127674: Coefficient table for Chebyshev polynomials T(2*n,x) (increasing even powers x, without zeros).

Offset 0, canonical program `A127674.P15909156756878056270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A127674 (n : ℕ) : ℤ :=
  A127674.P15909156756878056270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A127674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127795.P18243367526818959236

`A013597(3*n)`
-/

namespace A127795.P18243367526818959236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (3 * n)

end

end A127795.P18243367526818959236

noncomputable section

/-- A127795: Nextprime(8^n)-8^n.

Offset 0, canonical program `A127795.P18243367526818959236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795 (n : ℕ) : ℤ :=
  A127795.P18243367526818959236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128053.P4874709391304098829

`A128056(n)/A128055(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128053.P4874709391304098829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128056 n : ℚ) / (A128055 n : ℚ)

end

end A128053.P4874709391304098829

noncomputable section

/-- A128053: a(n)=A128056(n)/A128055(n).

Offset 0, canonical program `A128053.P4874709391304098829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128053.P4874709391304098829.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080633.P6291903132047608782

`A080646(A028310(n))+A057427(n)`
-/

namespace A080633.P6291903132047608782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080646 (A028310 n).toNat + A057427 n

end

end A080633.P6291903132047608782

noncomputable section

/-- A080633: a(1)=3; for n > 1, a(n) is the smallest integer greater than a(n-1) consistent with the condition "n is in the sequence if and only if a(n) is congruent to 1 (mod 4)".

Offset 1, canonical program `A080633.P6291903132047608782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080633 (n : ℕ) : ℤ :=
  A080633.P6291903132047608782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069470.P7953847650601744514

`a(n-1)+A007862(n)` with `a(0)=0`
-/

namespace A069470.P7953847650601744514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A007862 n

end

end A069470.P7953847650601744514

noncomputable section

/-- A069470: a(n) = Sum_{k>=1} floor(n/(k*(k+1)/2)).

Offset 0, canonical program `A069470.P7953847650601744514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069470 (n : ℕ) : ℤ :=
  A069470.P7953847650601744514.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069470.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074286.P6856108592712522312

`A054353(n+1)-(n+1)`
-/

namespace A074286.P6856108592712522312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - (n + 1 : ℤ)

end

end A074286.P6856108592712522312

noncomputable section

/-- A074286: Partial sum of the Kolakoski sequence (A000002) minus n.

Offset 1, canonical program `A074286.P6856108592712522312`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074286 (n : ℕ) : ℤ :=
  A074286.P6856108592712522312.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074286.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A075881.P5081293527233532591

`A008472(A007504(n+1))`
-/

namespace A075881.P5081293527233532591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A007504 (n + 1)).toNat

end

end A075881.P5081293527233532591

noncomputable section

/-- A075881: a(n) = the sum of the prime factors of Sum_{i=1..n} prime(i).

Offset 1, canonical program `A075881.P5081293527233532591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075881 (n : ℕ) : ℤ :=
  A075881.P5081293527233532591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075881.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076982.P9269232331312112831

`A007862(A000217(n+1))`
-/

namespace A076982.P9269232331312112831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A000217 (n + 1)).toNat

end

end A076982.P9269232331312112831

noncomputable section

/-- A076982: Number of triangular numbers that divide the n-th triangular number.

Offset 1, canonical program `A076982.P9269232331312112831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076982 (n : ℕ) : ℤ :=
  A076982.P9269232331312112831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079419.P9032335639255501518

`A000040(A079418(n+1))`
-/

namespace A079419.P9032335639255501518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079418 (n + 1)).toNat

end

end A079419.P9032335639255501518

noncomputable section

/-- A079419: Primes p such that p/i(p) < prime(i(p)-1)/(i(p)-1), where i(p) = A049084(p).

Offset 1, canonical program `A079419.P9032335639255501518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079419 (n : ℕ) : ℤ :=
  A079419.P9032335639255501518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079419.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082850.P5931678067167339352

`(1-A079559(n))*a(n-1)+1` with `a(0)=1`
-/

namespace A082850.P5931678067167339352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - A079559 n) * a (n - 1) + 1

end

end A082850.P5931678067167339352

noncomputable section

/-- A082850: Let S(0) = {}, S(n) = {S(n-1), S(n-1), n}; sequence gives S(infinity).

Offset 1, canonical program `A082850.P5931678067167339352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082850 (n : ℕ) : ℤ :=
  A082850.P5931678067167339352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083095.P498644682861140894

`A083094(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083095.P498644682861140894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083094 (n + 1) : ℚ) / 4

end

end A083095.P498644682861140894

noncomputable section

/-- A083095: a(n) = A083094(n)/4.

Offset 1, canonical program `A083095.P498644682861140894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083095 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083095.P498644682861140894.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083094, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083742.P9534833936880584863

`A073642(A036044(n))+A000120(n)`
-/

namespace A083742.P9534833936880584863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A036044 n).toNat + A000120 n

end

end A083742.P9534833936880584863

noncomputable section

/-- A083742: First differences of A006282.

Offset 0, canonical program `A083742.P9534833936880584863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A083742 (n : ℕ) : ℤ :=
  A083742.P9534833936880584863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A083742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083916.P17944496947031591987

`Δ[A218446(floor(n/2))]`
-/

namespace A083916.P17944496947031591987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218446 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083916.P17944496947031591987

noncomputable section

/-- A083916: Number of divisors of n that are congruent to 6 modulo 10.

Offset 1, canonical program `A083916.P17944496947031591987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083916 (n : ℕ) : ℤ :=
  A083916.P17944496947031591987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088568.P7969983954604256845

`3*(n+1)-2*A054353(n+1)`
-/

namespace A088568.P7969983954604256845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 2 * A054353 (n + 1)

end

end A088568.P7969983954604256845

noncomputable section

/-- A088568: 3*n - 2*(partial sums of Kolakoski sequence A000002).

Offset 1, canonical program `A088568.P7969983954604256845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088568 (n : ℕ) : ℤ :=
  A088568.P7969983954604256845.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088722.P5735559043475420597

`A007862(gcd(xor(1, -n), ∑[n]))-1`
-/

namespace A088722.P5735559043475420597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) - 1

end

end A088722.P5735559043475420597

noncomputable section

/-- A088722: Number of divisors d>1 of n such that d+1 also divides n.

Offset 1, canonical program `A088722.P5735559043475420597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088722 (n : ℕ) : ℤ :=
  A088722.P5735559043475420597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088724.P9000162378839682268

`2*(eq[2, A007862(n+1)]+1)`
-/

namespace A088724.P9000162378839682268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A088724.P9000162378839682268

noncomputable section

/-- A088724: Numbers having exactly one divisor d>1 such that also d+1 is a divisor.

Offset 1, canonical program `A088724.P9000162378839682268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088724 (n : ℕ) : ℤ :=
  (A088724.P9000162378839682268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089810.P10610905400910132793

`(-1)^n*A089807(n)`
-/

namespace A089810.P10610905400910132793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089807 n

end

end A089810.P10610905400910132793

noncomputable section

/-- A089810: Expansion of Jacobi theta function theta_3(Pi/6, q) in powers of q.

Offset 0, canonical program `A089810.P10610905400910132793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089807, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089810 (n : ℕ) : ℤ :=
  A089810.P10610905400910132793.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089807, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091992.P14038494647915660999

`∩[A024895(n+1), A087505(n+1)]`
-/

namespace A091992.P14038494647915660999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091992.P14038494647915660999

noncomputable section

/-- A091992: Numbers n such that 5*n-3 and 5*n+3 are both primes.

Offset 1, canonical program `A091992.P14038494647915660999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. -/
def A091992 (n : ℕ) : ℤ :=
  (A091992.P14038494647915660999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. -/
def A091992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096477.P17029621596018619196

`eq[2, A001223(A008578(n+1))]`
-/

namespace A096477.P17029621596018619196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P17029621596018619196

noncomputable section

/-- A096477: Subscripts for "secondary twin-primes": numbers k such that prime(prime(k)+1) - prime(prime(k)) = A073124(k) = 2.

Offset 1, canonical program `A096477.P17029621596018619196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A096477 (n : ℕ) : ℤ :=
  (A096477.P17029621596018619196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. -/
def A096477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105221.P17719623874901943766

`A008472(n+1)-A010051(n+1)*(n+1)`
-/

namespace A105221.P17719623874901943766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A010051 (n + 1) * (n + 1 : ℤ)

end

end A105221.P17719623874901943766

noncomputable section

/-- A105221: a(n) is the sum of n's distinct prime factors below n.

Offset 1, canonical program `A105221.P17719623874901943766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105221 (n : ℕ) : ℤ :=
  A105221.P17719623874901943766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105560.P7897608420550643844

`A008578(∑{e}[n+1, #]+1)`
-/

namespace A105560.P7897608420550643844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A105560.P7897608420550643844

noncomputable section

/-- A105560: a(1) = 1, and for n >= 2, a(n) = prime(bigomega(n)), where prime(n) = A000040(n) and bigomega(n) = A001222(n).

Offset 1, canonical program `A105560.P7897608420550643844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105560 (n : ℕ) : ℤ :=
  A105560.P7897608420550643844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106102.P3375998700621158916

`p?[A084373(n+1)]`
-/

namespace A106102.P3375998700621158916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106102.P3375998700621158916

noncomputable section

/-- A106102: Primes with smallest digit 2.

Offset 1, canonical program `A106102.P3375998700621158916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102 (n : ℕ) : ℤ :=
  A106102.P3375998700621158916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. -/
def A106102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108622.P357414125879417223

`A102669(A054899(n+1))+A055640(n+1)`
-/

namespace A108622.P357414125879417223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A054899 (n + 1)).toNat + A055640 (n + 1)

end

end A108622.P357414125879417223

noncomputable section

/-- A108622: Number of numerals to represent n in a base b multiplicative grouping numeral system where b=10.

Offset 1, canonical program `A108622.P357414125879417223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622 (n : ℕ) : ℤ :=
  A108622.P357414125879417223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112298.P13991926760380096719

`A010684(n)*A093829(n+1)`
-/

namespace A112298.P13991926760380096719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A093829 (n + 1)

end

end A112298.P13991926760380096719

noncomputable section

/-- A112298: Expansion of (a(q) - 3*a(q^2) + 2*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

Offset 1, canonical program `A112298.P13991926760380096719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298 (n : ℕ) : ℤ :=
  A112298.P13991926760380096719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113447.P16347397577668592874

`(-1)^n*A093829(n+1)`
-/

namespace A113447.P16347397577668592874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A093829 (n + 1)

end

end A113447.P16347397577668592874

noncomputable section

/-- A113447: Expansion of i * theta_2(i * q^3)^3 / (4 * theta_2(i * q)) in powers of q^2.

Offset 1, canonical program `A113447.P16347397577668592874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447 (n : ℕ) : ℤ :=
  A113447.P16347397577668592874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115979.P10695303619460681874

`(-1)^n*A096936(n+1)`
-/

namespace A115979.P10695303619460681874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A096936 (n + 1)

end

end A115979.P10695303619460681874

noncomputable section

/-- A115979: Expansion of (1 - theta_4(q)*theta_4(q^3))/2 in powers of q.

Offset 1, canonical program `A115979.P10695303619460681874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979 (n : ℕ) : ℤ :=
  A115979.P10695303619460681874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117204.P11529383568635817474

`(A117203(n+1)-1)/2`
-/

namespace A117204.P11529383568635817474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117203 (n + 1) - 1 : ℚ) / 2

end

end A117204.P11529383568635817474

noncomputable section

/-- A117204: Squarefree positive integers k such that 2*k+1 is also squarefree.

Offset 1, canonical program `A117204.P11529383568635817474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117204.P11529383568635817474.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117206.P17758905267963498377

`(A117205(n+1)+1)/2`
-/

namespace A117206.P17758905267963498377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117205 (n + 1) + 1 : ℚ) / 2

end

end A117206.P17758905267963498377

noncomputable section

/-- A117206: Squarefree positive integers k such that 2*k-1 is also squarefree.

Offset 1, canonical program `A117206.P17758905267963498377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117206.P17758905267963498377.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117206.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122180.P2062228255680378258

`A088434(n+1)-A001281(A200213(n+1))`
-/

namespace A122180.P2062228255680378258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) - A001281 (A200213 (n + 1)).toNat

end

end A122180.P2062228255680378258

noncomputable section

/-- A122180: Number of ways to write n as n = x*y*z with 1 < x < y < z < n.

Offset 1, canonical program `A122180.P2062228255680378258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180 (n : ℕ) : ℤ :=
  A122180.P2062228255680378258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123884.P10243261106257034172

`A093829(12*n+1)`
-/

namespace A123884.P10243261106257034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (12 * n + 1)

end

end A123884.P10243261106257034172

noncomputable section

/-- A123884: Expansion of phi(x) * phi(-x^6) / chi(-x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A123884.P10243261106257034172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884 (n : ℕ) : ℤ :=
  A123884.P10243261106257034172.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125902.P12495455694751999864

`A007504(A229109(n+1))-A008472(n+1)`
-/

namespace A125902.P12495455694751999864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A229109 (n + 1)).toNat - A008472 (n + 1)

end

end A125902.P12495455694751999864

noncomputable section

/-- A125902: a(n) = sum of the first n primes which are coprime to n.

Offset 1, canonical program `A125902.P12495455694751999864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902 (n : ℕ) : ℤ :=
  A125902.P12495455694751999864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126080.P8574941834857366715

`A003557(n+1)*A055631(n+1)`
-/

namespace A126080.P8574941834857366715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A055631 (n + 1)

end

end A126080.P8574941834857366715

noncomputable section

/-- A126080: a(n) = number of positive integers < n that are coprime to exactly one prime divisor of n.

Offset 1, canonical program `A126080.P8574941834857366715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080 (n : ℕ) : ℤ :=
  A126080.P8574941834857366715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127246.P14720288942938943665

`A127245(n)+2*A010060(n)`
-/

namespace A127246.P14720288942938943665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 n + 2 * A010060 n

end

end A127246.P14720288942938943665

noncomputable section

/-- A127246: Row sums of a Thue-Morse related triangle.

Offset 0, canonical program `A127246.P14720288942938943665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246 (n : ℕ) : ℤ :=
  A127246.P14720288942938943665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069158.P10112105031369206397

`A008966(n+1)-2*A010051(n+1)`
-/

namespace A069158.P10112105031369206397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - 2 * A010051 (n + 1)

end

end A069158.P10112105031369206397

noncomputable section

/-- A069158: a(n) = Product_{d|n} mu(d), product over positive divisors, d, of n, where mu(d) = Moebius function (A008683).

Offset 1, canonical program `A069158.P10112105031369206397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069158 (n : ℕ) : ℤ :=
  A069158.P10112105031369206397.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070713.P188697954911876999

`∩[A028839(n+1), A050626(n+1)]`
-/

namespace A070713.P188697954911876999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070713.P188697954911876999

noncomputable section

/-- A070713: Integers whose sum of digits as well as product of digits is a nonzero square.

Offset 1, canonical program `A070713.P188697954911876999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A070713 (n : ℕ) : ℤ :=
  (A070713.P188697954911876999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 749 terms. -/
def A070713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071650.P17002798655539676693

`A071649(n+1)-A071648(n+1)`
-/

namespace A071650.P17002798655539676693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (n + 1) - A071648 (n + 1)

end

end A071650.P17002798655539676693

noncomputable section

/-- A071650: Difference between sums of odd and even digits of n.

Offset 1, canonical program `A071650.P17002798655539676693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071648, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071650 (n : ℕ) : ℤ :=
  A071650.P17002798655539676693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071648, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073929.P216639716828988186

`A002251(n+1-floor(1/a(n-1)))` with `a(0)=1`
-/

namespace A073929.P216639716828988186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002251 ((n + 1 : ℤ) - ⌊1 / (a (n - 1) : ℚ)⌋).toNat

end

end A073929.P216639716828988186

noncomputable section

/-- A073929: a(1) = 1, a(n) = smallest number not included earlier such that the n-th partial sum (n>1) is divisible by n+1.

Offset 1, canonical program `A073929.P216639716828988186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073929 (n : ℕ) : ℤ :=
  A073929.P216639716828988186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073941.P15569608911463552460

`A081848(n+1)/3`
-/

namespace A073941.P15569608911463552460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

end

end A073941.P15569608911463552460

noncomputable section

/-- A073941: a(n) = ceiling((Sum_{k=1..n-1} a(k)) / 2) for n >= 2 starting with a(1) = 1.

Offset 1, canonical program `A073941.P15569608911463552460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073941.P15569608911463552460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081848, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074823.P11429893750671731771

`A034444(n+1)*A008966(n+1)`
-/

namespace A074823.P11429893750671731771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A008966 (n + 1)

end

end A074823.P11429893750671731771

noncomputable section

/-- A074823: a(n) = 2^omega(n)*mu(n)^2.

Offset 1, canonical program `A074823.P11429893750671731771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823 (n : ℕ) : ℤ :=
  A074823.P11429893750671731771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075492.P12090951350268640498

`lt[A007953(n), A277692(2*n+1)]`
-/

namespace A075492.P12090951350268640498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075492.P12090951350268640498

noncomputable section

/-- A075492: Numbers k such that sum of digits of k < number of divisors of k.

Offset 1, canonical program `A075492.P12090951350268640498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A075492 (n : ℕ) : ℤ :=
  (A075492.P12090951350268640498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A075492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075493.P5582353736651150310

`lt[0, A075491(n+1)]+1`
-/

namespace A075493.P5582353736651150310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A075493.P5582353736651150310

noncomputable section

/-- A075493: Numbers k such that (sum of digits of k) > (number of divisors of k).

Offset 1, canonical program `A075493.P5582353736651150310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493 (n : ℕ) : ℤ :=
  (A075493.P5582353736651150310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. -/
def A075493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077067.P10029377516240445440

`A049097(n+1)+1`
-/

namespace A077067.P10029377516240445440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1) + 1

end

end A077067.P10029377516240445440

noncomputable section

/-- A077067: Squarefree numbers of the form prime + 1.

Offset 1, canonical program `A077067.P10029377516240445440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077067 (n : ℕ) : ℤ :=
  A077067.P10029377516240445440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077067.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077410.P15301486694705534275

`sqrt((A077411(n)²-25)/24)`
-/

namespace A077410.P15301486694705534275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077411 n ^ 2 - 25 : ℚ) / 24 : ℝ)

end

end A077410.P15301486694705534275

noncomputable section

/-- A077410: Combined Diophantine Chebyshev sequences A077249 and A077251.

Offset 0, canonical program `A077410.P15301486694705534275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077410.P15301486694705534275.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077813.P3578931286237445826

`record[A077812(n+1)]`
-/

namespace A077813.P3578931286237445826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077813.P3578931286237445826

noncomputable section

/-- A077813: Squarefree numbers containing in their decimal representation only the digits 0 and 1.

Offset 1, canonical program `A077813.P3578931286237445826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6315 terms. -/
def A077813 (n : ℕ) : ℤ :=
  A077813.P3578931286237445826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6315 terms. -/
def A077813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080607.P18000900148135861103

`3*A003056(∑[A089807(n²)+1])`
-/

namespace A080607.P18000900148135861103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080607.P18000900148135861103

noncomputable section

/-- A080607: Golomb's sequence using multiples of 3.

Offset 1, canonical program `A080607.P18000900148135861103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A080607 (n : ℕ) : ℤ :=
  A080607.P18000900148135861103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A080607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084049.P14627945407384210214

`eq[A034690(n+1), A034690(n+2)]+1`
-/

namespace A084049.P14627945407384210214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034690 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A084049.P14627945407384210214

noncomputable section

/-- A084049: Numbers k such that k and k+1 have the same sum of digits of divisors; A034690(k) = A034690(k+1).

Offset 1, canonical program `A084049.P14627945407384210214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A084049 (n : ℕ) : ℤ :=
  (A084049.P14627945407384210214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A084049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084472.P1373641878596819009

`A007088(A084471(n+1))`
-/

namespace A084472.P1373641878596819009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084471 (n + 1)).toNat

end

end A084472.P1373641878596819009

noncomputable section

/-- A084472: Write n in binary and replace 0 with 00.

Offset 1, canonical program `A084472.P1373641878596819009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A084472 (n : ℕ) : ℤ :=
  A084472.P1373641878596819009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A084472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085370.P6391123702184118906

`eq[val(n+1, 3), A070635(n+1)]+1`
-/

namespace A085370.P6391123702184118906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085370.P6391123702184118906

noncomputable section

/-- A085370: Niven (or Harshad) numbers that are not divisible by 3.

Offset 1, canonical program `A085370.P6391123702184118906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370 (n : ℕ) : ℤ :=
  (A085370.P6391123702184118906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086482.P1865469059613182738

`2^A002251(n)`
-/

namespace A086482.P1865469059613182738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002251 n : ℤ)

end

end A086482.P1865469059613182738

noncomputable section

/-- A086482: Beginning with 1, the smallest number not included earlier such that the n-th partial product is an n-th power; or the geometric mean of the first n terms is an integer.

Offset 1, canonical program `A086482.P1865469059613182738`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086482.P1865469059613182738.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086486.P12972051268827397954

`eq[1, A340678(n+1)]+1`
-/

namespace A086486.P12972051268827397954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086486.P12972051268827397954

noncomputable section

/-- A086486: Numbers k such that the sum of the distinct prime divisors divides rad(k)=A007947(k).

Offset 1, canonical program `A086486.P12972051268827397954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A086486 (n : ℕ) : ℤ :=
  (A086486.P12972051268827397954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A086486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089227.P4238158558686104572

`eq[1, A010051(n*A007953(n)+1)]`
-/

namespace A089227.P4238158558686104572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n : ℤ) * A007953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089227.P4238158558686104572

noncomputable section

/-- A089227: Numbers k such that 1 + k*ds(k) is prime, where ds(k) is the sum of digits of k.

Offset 1, canonical program `A089227.P4238158558686104572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A089227 (n : ℕ) : ℤ :=
  (A089227.P4238158558686104572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A089227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089631.P9146961677256787666

`A007947(n+1)%A173557(n+1)`
-/

namespace A089631.P9146961677256787666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (n + 1)) (A173557 (n + 1))

end

end A089631.P9146961677256787666

noncomputable section

/-- A089631: a(n) = (Product_{p is a prime factor of n} p) mod (Product_{p is a prime factor of n} p-1).

Offset 1, canonical program `A089631.P9146961677256787666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089631 (n : ℕ) : ℤ :=
  A089631.P9146961677256787666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091195.P16655646601784351201

`∑[A245552(A080224(n+1)²)]`
-/

namespace A091195.P16655646601784351201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (A080224 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091195.P16655646601784351201

noncomputable section

/-- A091195: Number of numbers <= n having only one abundant divisor (A091191).

Offset 1, canonical program `A091195.P16655646601784351201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091195 (n : ℕ) : ℤ :=
  A091195.P16655646601784351201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092572.P8327665283738408758

`lt[1, A096936(n+1)]+1`
-/

namespace A092572.P8327665283738408758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A092572.P8327665283738408758

noncomputable section

/-- A092572: Numbers of the form x^2 + 3y^2 where x and y are positive integers.

Offset 1, canonical program `A092572.P8327665283738408758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092572 (n : ℕ) : ℤ :=
  (A092572.P8327665283738408758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093993.P17290700091184008815

`∑{d}[n+1, A010051(A007953(#))]`
-/

namespace A093993.P17290700091184008815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A007953 d).toNat

end

end A093993.P17290700091184008815

noncomputable section

/-- A093993: Number of divisors of n with a prime digital sum.

Offset 1, canonical program `A093993.P17290700091184008815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093993 (n : ℕ) : ℤ :=
  A093993.P17290700091184008815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095403.P6923104078230111594

`A007953(n+1)-A095402(n+1)`
-/

namespace A095403.P6923104078230111594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A095402 (n + 1)

end

end A095403.P6923104078230111594

noncomputable section

/-- A095403: Sum of digits of n minus the sum of digits of all distinct prime factors of n.

Offset 1, canonical program `A095403.P6923104078230111594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A095402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A095403 (n : ℕ) : ℤ :=
  A095403.P6923104078230111594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A095402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A095403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097262.P8743241402610439635

`15*A033052(n)`
-/

namespace A097262.P8743241402610439635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A033052 n

end

end A097262.P8743241402610439635

noncomputable section

/-- A097262: Numbers whose set of base 16 digits is {0,F}, where F base 16 = 15 base 10.

Offset 0, canonical program `A097262.P8743241402610439635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097262 (n : ℕ) : ℤ :=
  A097262.P8743241402610439635.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098488.P10933767284096351927

`A037213((A066568(n)+A053831(n))²)`
-/

namespace A098488.P10933767284096351927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A066568 n + A053831 n) ^ 2).toNat

end

end A098488.P10933767284096351927

noncomputable section

/-- A098488: Decimal modular Gray code for n.

Offset 0, canonical program `A098488.P10933767284096351927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A098488 (n : ℕ) : ℤ :=
  A098488.P10933767284096351927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A098488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100368.P13264735113197873513

`2*A038550(n+1)`
-/

namespace A100368.P13264735113197873513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038550 (n + 1)

end

end A100368.P13264735113197873513

noncomputable section

/-- A100368: Numbers of the form 2^k * p where k > 0 and p is an odd prime.

Offset 1, canonical program `A100368.P13264735113197873513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100368 (n : ℕ) : ℤ :=
  A100368.P13264735113197873513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038550, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105032.P9866371612079488807

`A007088(A103745(n+1))`
-/

namespace A105032.P9866371612079488807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A103745 (n + 1)).toNat

end

end A105032.P9866371612079488807

noncomputable section

/-- A105032: Binary equivalents of A103745.

Offset 1, canonical program `A105032.P9866371612079488807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A103745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105032 (n : ℕ) : ℤ :=
  A105032.P9866371612079488807.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A103745, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A105032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106103.P12542325979256717480

`p?[A284064(n+1)]`
-/

namespace A106103.P12542325979256717480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106103.P12542325979256717480

noncomputable section

/-- A106103: Primes with minimal digit = 3.

Offset 1, canonical program `A106103.P12542325979256717480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103 (n : ℕ) : ℤ :=
  A106103.P12542325979256717480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. -/
def A106103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106743.P3768313889033117879

`A057427(A317946(n+1))-A010051(n+1)`
-/

namespace A106743.P3768313889033117879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A317946 (n + 1)).toNat - A010051 (n + 1)

end

end A106743.P3768313889033117879

noncomputable section

/-- A106743: a(n) = -1 iff n is prime, a(n) = 1 iff n is not squarefree, otherwise (n is nonprime and squarefree) a(n) = 0.

Offset 1, canonical program `A106743.P3768313889033117879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106743 (n : ℕ) : ℤ :=
  A106743.P3768313889033117879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107288.P2457429078809289937

`p?[A028839(n+1)]`
-/

namespace A107288.P2457429078809289937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107288.P2457429078809289937

noncomputable section

/-- A107288: Primes whose digit sum is a square.

Offset 1, canonical program `A107288.P2457429078809289937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A107288 (n : ℕ) : ℤ :=
  A107288.P2457429078809289937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A107288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108594.P11342460370923421472

`A024912(n+6)-10`
-/

namespace A108594.P11342460370923421472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 6) - 10

end

end A108594.P11342460370923421472

noncomputable section

/-- A108594: Numbers k such that 10*k + 101 is prime.

Offset 1, canonical program `A108594.P11342460370923421472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108594 (n : ℕ) : ℤ :=
  A108594.P11342460370923421472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108857.P2974898687329617496

`A024912(n+7)-13`
-/

namespace A108857.P2974898687329617496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 7) - 13

end

end A108857.P2974898687329617496

noncomputable section

/-- A108857: Numbers n such that 10*n + 131 is prime.

Offset 1, canonical program `A108857.P2974898687329617496`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108857 (n : ℕ) : ℤ :=
  A108857.P2974898687329617496.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115454.P7778183975533024959

`A007088(A002808(n+1))`
-/

namespace A115454.P7778183975533024959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002808 (n + 1)).toNat

end

end A115454.P7778183975533024959

noncomputable section

/-- A115454: Composite positive integers written in base 2.

Offset 1, canonical program `A115454.P7778183975533024959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115454 (n : ℕ) : ℤ :=
  A115454.P7778183975533024959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`
-/

namespace A117656.P11004913678404553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A019554 (n + 1)).toNat * A337101 (2 * (n + 1))

end

end A117656.P11004913678404553061

noncomputable section

/-- A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

Offset 1, canonical program `A117656.P11004913678404553061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656 (n : ℕ) : ℤ :=
  A117656.P11004913678404553061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118731.P11117200247568763651

`lt[0, A071906(n)]`
-/

namespace A118731.P11117200247568763651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118731.P11117200247568763651

noncomputable section

/-- A118731: Numbers k such that 2^k has odd digit sum.

Offset 1, canonical program `A118731.P11117200247568763651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731 (n : ℕ) : ℤ :=
  (A118731.P11117200247568763651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. -/
def A118731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120068.P9891665714429493613

`A000720(A049097(n+1))`
-/

namespace A120068.P9891665714429493613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A049097 (n + 1)).toNat

end

end A120068.P9891665714429493613

noncomputable section

/-- A120068: Numbers n such that n-th prime + 1 is squarefree.

Offset 1, canonical program `A120068.P9891665714429493613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120068 (n : ℕ) : ℤ :=
  A120068.P9891665714429493613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122260.P1226289541384129242

`lt[A173557(A173557(n+1)), 3]+1`
-/

namespace A122260.P1226289541384129242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A173557 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122260.P1226289541384129242

noncomputable section

/-- A122260: Multiplicative closure of Pierpont primes.

Offset 1, canonical program `A122260.P1226289541384129242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A122260 (n : ℕ) : ℤ :=
  (A122260.P1226289541384129242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. -/
def A122260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123135.P8286442411414064837

`A062028(A000578(n+1))`
-/

namespace A123135.P8286442411414064837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000578 (n + 1)).toNat

end

end A123135.P8286442411414064837

noncomputable section

/-- A123135: a(n) = n^3 plus sum of digits of n^3.

Offset 1, canonical program `A123135.P8286442411414064837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123135 (n : ℕ) : ℤ :=
  A123135.P8286442411414064837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126684.P12104132709575714280

`∪[A000695(n), A062880(n)]`
-/

namespace A126684.P12104132709575714280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P12104132709575714280

noncomputable section

/-- A126684: Union of A000695 and 2*A000695.

Offset 1, canonical program `A126684.P12104132709575714280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684 (n : ℕ) : ℤ :=
  (A126684.P12104132709575714280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126864.P16516226284724470716

`gcd(n+1, A173557(n+1))`
-/

namespace A126864.P16516226284724470716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A173557 (n + 1))

end

end A126864.P16516226284724470716

noncomputable section

/-- A126864: a(n) = gcd(n, Product_{p|n} (p-1)), where the product is over the distinct primes, p, that divide n.

Offset 1, canonical program `A126864.P16516226284724470716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126864 (n : ℕ) : ℤ :=
  (A126864.P16516226284724470716.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128290.P17234554926705773976

`eq[A128212(n+1), A128244(n+1)]+1`
-/

namespace A128290.P17234554926705773976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A128290.P17234554926705773976

noncomputable section

/-- A128290: If p(x) is the product of the digits of the number x and s(x) the sum of the digits then the sequence lists all the numbers k for which p(s(k)) = s(p(k)), with k >= 1.

Offset 1, canonical program `A128290.P17234554926705773976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290 (n : ℕ) : ℤ :=
  (A128290.P17234554926705773976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069816.P2167086169845687567

`A118881(n)-A003132(n)`
-/

namespace A069816.P2167086169845687567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A003132 n

end

end A069816.P2167086169845687567

noncomputable section

/-- A069816: a(n) = (sum of digits of n)^2 - (sum of digits^2 of n).

Offset 0, canonical program `A069816.P2167086169845687567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A118881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069816 (n : ℕ) : ℤ :=
  A069816.P2167086169845687567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, A118881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070279.P16026357053581798392

`eq[A004092(n+1), A007953(n+1)]+1`
-/

namespace A070279.P16026357053581798392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A070279.P16026357053581798392

noncomputable section

/-- A070279: Sum of digits of n equals the sum of digits of 2n.

Offset 1, canonical program `A070279.P16026357053581798392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 791 terms. -/
def A070279 (n : ℕ) : ℤ :=
  (A070279.P16026357053581798392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 791 terms. -/
def A070279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071122.P15622955886049296024

`∑[A001370(n+1)]`
-/

namespace A071122.P15622955886049296024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P15622955886049296024

noncomputable section

/-- A071122: a(n) = a(n-1) + sum of decimal digits of 2^n.

Offset 1, canonical program `A071122.P15622955886049296024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071122 (n : ℕ) : ℤ :=
  A071122.P15622955886049296024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071404.P1885177704798718554

`∑[2*n+3-A077381(n+1)]`
-/

namespace A071404.P1885177704798718554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A077381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071404.P1885177704798718554

noncomputable section

/-- A071404: Which nonsquarefree number is a square number? a(n)-th nonsquarefree number equals n^2, the n-th square.

Offset 2, canonical program `A071404.P1885177704798718554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071404 (n : ℕ) : ℤ :=
  A071404.P1885177704798718554.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071702.P6180211292922770860

`∑[A079260(A014973(n+1)+2)]`
-/

namespace A071702.P6180211292922770860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079260 (A014973 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071702.P6180211292922770860

noncomputable section

/-- A071702: Number of twin prime pairs <= n of form (4*k+3,4*(k+1)+1), k>=0.

Offset 1, canonical program `A071702.P6180211292922770860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071702 (n : ℕ) : ℤ :=
  A071702.P6180211292922770860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072998.P10455100346834806727

`A007089(lt[A117966(n), A002483(n)])`
-/

namespace A072998.P10455100346834806727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072998.P10455100346834806727

noncomputable section

/-- A072998: To get a(n), write n in balanced ternary notation (using only digits -1, 0, 1, -1), then change -1's to 0's, 0's to 1's, and 1's to 2's.

Offset 0, canonical program `A072998.P10455100346834806727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A072998 (n : ℕ) : ℤ :=
  A072998.P10455100346834806727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A072998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073342.P12215052563229227587

`round(A007605(n+1)/A097944(n+1))`
-/

namespace A073342.P12215052563229227587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007605 (n + 1) : ℚ) / (A097944 (n + 1) : ℚ))

end

end A073342.P12215052563229227587

noncomputable section

/-- A073342: Average digit (rounded to the nearest integer) in the decimal expansion of n-th prime.

Offset 1, canonical program `A073342.P12215052563229227587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073342 (n : ℕ) : ℤ :=
  A073342.P12215052563229227587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074461.P7953821107585836169

`A004426(A000040(n+1))`
-/

namespace A074461.P7953821107585836169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A000040 (n + 1)).toNat

end

end A074461.P7953821107585836169

noncomputable section

/-- A074461: Average digit (rounded down) in the decimal expansion of the n-th prime number.

Offset 1, canonical program `A074461.P7953821107585836169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074461 (n : ℕ) : ℤ :=
  A074461.P7953821107585836169.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074462.P4840725664766834667

`ceil(A007605(n+1)/A097944(n+1))`
-/

namespace A074462.P4840725664766834667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007605 (n + 1) : ℚ) / (A097944 (n + 1) : ℚ)⌉

end

end A074462.P4840725664766834667

noncomputable section

/-- A074462: Average digit (rounded up) in the decimal expansion of prime(n).

Offset 1, canonical program `A074462.P4840725664766834667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074462 (n : ℕ) : ℤ :=
  A074462.P4840725664766834667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076203.P5595011529543371954

`lt[A010051(2*(n+1)), A010051(A001370(n))]`
-/

namespace A076203.P5595011529543371954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076203.P5595011529543371954

noncomputable section

/-- A076203: Numbers n such that the sum of the digits of 2^n is prime.

Offset 1, canonical program `A076203.P5595011529543371954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A076203 (n : ℕ) : ℤ :=
  (A076203.P5595011529543371954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A076203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081652.P14238066097852759484

`gcd(n+1, A007605(n+1))`
-/

namespace A081652.P14238066097852759484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007605 (n + 1))

end

end A081652.P14238066097852759484

noncomputable section

/-- A081652: Greatest common divisor of n and sum of decimal digits of n-th prime.

Offset 1, canonical program `A081652.P14238066097852759484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081652 (n : ℕ) : ℤ :=
  (A081652.P14238066097852759484.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081653.P15064107216708762607

`gcd(A007953(n+1), A007605(n+1))`
-/

namespace A081653.P15064107216708762607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (n + 1)) (A007605 (n + 1))

end

end A081653.P15064107216708762607

noncomputable section

/-- A081653: Greatest common divisor of sums of decimal digits of n and of n-th prime.

Offset 1, canonical program `A081653.P15064107216708762607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081653 (n : ℕ) : ℤ :=
  (A081653.P15064107216708762607.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A081653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090432.P416990136523759619

`A000040(lt[A007953(n+1), A007605(n+1)]+1)`
-/

namespace A090432.P416990136523759619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A090432.P416990136523759619

noncomputable section

/-- A090432: Primes prime(k) having a greater sum of digits than does k.

Offset 1, canonical program `A090432.P416990136523759619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6908 terms. -/
def A090432 (n : ℕ) : ℤ :=
  A090432.P416990136523759619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6908 terms. -/
def A090432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091921.P1800414580042850367

`A005069(n+1)%(n+1)`
-/

namespace A091921.P1800414580042850367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005069 (n + 1)) (n + 1 : ℤ)

end

end A091921.P1800414580042850367

noncomputable section

/-- A091921: Sum of odd proper distinct prime divisors of n. That is, the sum of odd distinct prime divisors of n that are less than n.

Offset 1, canonical program `A091921.P1800414580042850367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091921 (n : ℕ) : ℤ :=
  A091921.P1800414580042850367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104261.P6514449015023123147

`A007605(n+1)-A104260(n+1)`
-/

namespace A104261.P6514449015023123147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) - A104260 (n + 1)

end

end A104261.P6514449015023123147

noncomputable section

/-- A104261: Sum of even digits (0,2,4,6,8) of n-th prime.

Offset 1, canonical program `A104261.P6514449015023123147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A104260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104261 (n : ℕ) : ℤ :=
  A104261.P6514449015023123147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A104260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106754.P11658128273037177493

`p?[A166311(n+1)]`
-/

namespace A106754.P11658128273037177493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106754.P11658128273037177493

noncomputable section

/-- A106754: Primes p with digital sum equal to 11.

Offset 1, canonical program `A106754.P11658128273037177493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A106754 (n : ℕ) : ℤ :=
  A106754.P11658128273037177493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A106754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106762.P16451836161243382953

`A045319(eq[23, A007605(n+1)])`
-/

namespace A106762.P16451836161243382953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106762.P16451836161243382953

noncomputable section

/-- A106762: Primes with digit sum = 23.

Offset 1, canonical program `A106762.P16451836161243382953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. -/
def A106762 (n : ℕ) : ℤ :=
  A106762.P16451836161243382953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. -/
def A106762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108580.P112236071896363944

`lt[A180018(n), 0]`
-/

namespace A108580.P112236071896363944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108580.P112236071896363944

noncomputable section

/-- A108580: Numbers whose sum of bits when written in binary > sum of decimal digits.

Offset 1, canonical program `A108580.P112236071896363944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A108580 (n : ℕ) : ℤ :=
  (A108580.P112236071896363944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A108580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110390.P9353818697883513779

`A000045(n+7)%A004090(n+7)`
-/

namespace A110390.P9353818697883513779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 7)) (A004090 (n + 7))

end

end A110390.P9353818697883513779

noncomputable section

/-- A110390: a(n) = F(n) mod s(n) where s(n) is the sum of the digits of the n-th Fibonacci number F(n).

Offset 7, canonical program `A110390.P9353818697883513779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110390 (n : ℕ) : ℤ :=
  A110390.P9353818697883513779.a (n - 7)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117061.P6783340963500244464

`A118881(a(n-1))+1+n` with `a(0)=1`
-/

namespace A117061.P6783340963500244464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118881 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A117061.P6783340963500244464

noncomputable section

/-- A117061: a(n) = (s(n-1))^2+n, with a(1) = 1 and s(k) = A007953(a(k)).

Offset 1, canonical program `A117061.P6783340963500244464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061 (n : ℕ) : ℤ :=
  A117061.P6783340963500244464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117224.P6444175390300152224

`eq[A004159(n), A004164(n)]`
-/

namespace A117224.P6444175390300152224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P6444175390300152224

noncomputable section

/-- A117224: Numbers for which the square and the cube have the same digital sum.

Offset 1, canonical program `A117224.P6444175390300152224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224 (n : ℕ) : ℤ :=
  (A117224.P6444175390300152224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117511.P13071202074021553455

`A000217(eq[A004157(n+1), A004157(n)])`
-/

namespace A117511.P13071202074021553455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117511.P13071202074021553455

noncomputable section

/-- A117511: Triangular numbers for which the sum of the digits equals the sum of the digits of the next triangular number.

Offset 1, canonical program `A117511.P13071202074021553455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511 (n : ℕ) : ℤ :=
  A117511.P13071202074021553455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117674.P10937197086857291007

`p?[A187744(n+1)]`
-/

namespace A117674.P10937197086857291007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117674.P10937197086857291007

noncomputable section

/-- A117674: Prime numbers whose sum of digits is a triangular number.

Offset 1, canonical program `A117674.P10937197086857291007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674 (n : ℕ) : ℤ :=
  A117674.P10937197086857291007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A117674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119449.P14032157784951920134

`p?[A000040(n+1)+A007605(n+1)%2]`
-/

namespace A119449.P14032157784951920134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A007605 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P14032157784951920134

noncomputable section

/-- A119449: Primes with even digit sum.

Offset 1, canonical program `A119449.P14032157784951920134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449 (n : ℕ) : ℤ :=
  A119449.P14032157784951920134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121807.P13313933923101862632

`∑[A004676(n+1)]`
-/

namespace A121807.P13313933923101862632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P13313933923101862632

noncomputable section

/-- A121807: Partial sums of A004676.

Offset 1, canonical program `A121807.P13313933923101862632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807 (n : ℕ) : ℤ :=
  A121807.P13313933923101862632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126706.P11121898802900401573

`eq[1, A355447(n+1)]+1`
-/

namespace A126706.P11121898802900401573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A126706.P11121898802900401573

noncomputable section

/-- A126706: Positive integers which are neither squarefree integers nor prime powers.

Offset 1, canonical program `A126706.P11121898802900401573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706 (n : ℕ) : ℤ :=
  (A126706.P11121898802900401573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100336.P854489641558138116

`A090193(A128173(n))+1`
-/

namespace A100336.P854489641558138116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (A128173 n).toNat + 1

end

end A100336.P854489641558138116

noncomputable section

/-- A100336: Arshon's sequence with a different start: start from 2 and replace the letters in odd positions using 1 -> 123, 2 -> 231, 3 -> 312 and the letters in even positions using 1 -> 321, 2-> 132, 3 -> 213.

Offset 1, canonical program `A100336.P854489641558138116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100336 (n : ℕ) : ℤ :=
  A100336.P854489641558138116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100336.provenance : SequenceMachineLib.Provenance := .conjectured

