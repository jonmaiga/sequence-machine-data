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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A071762.P10622872981181749292

`A002275(A003056(n))+(1-A010054(n))*10^A025581(n)`
-/

namespace A071762.P10622872981181749292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A003056 n).toNat : ℚ) + (1 - A010054 n : ℚ) * (10 : ℚ) ^ (A025581 n : ℤ)

end

end A071762.P10622872981181749292

noncomputable section

/-- A071762: Leftmost 1 is converted to a 2, which then propagates one step at a time until it is rightmost; then it changes to a pair of 1's and the process repeats.

Offset 0, canonical program `A071762.P10622872981181749292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071762.P10622872981181749292.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071762.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A076535.P12854642302704976692

`n+1-4*A001316(n)`
-/

namespace A076535.P12854642302704976692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - 4 * A001316 n)

end

end A076535.P12854642302704976692

noncomputable section

/-- A076535: a(n) = A064405 (2^m+n) - 2^m (for m large enough this difference appears to be constant).

Offset 0, canonical program `A076535.P12854642302704976692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076535 (n : ℕ) : ℤ :=
  A076535.P12854642302704976692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076535.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A097613.P17801274350353294577

`ceil(A051924(n+1)/2)`
-/

namespace A097613.P17801274350353294577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051924 (n + 1) : ℚ) / 2⌉

end

end A097613.P17801274350353294577

noncomputable section

/-- A097613: a(n) = binomial(2n-3,n-1) + binomial(2n-2,n-2).

Offset 1, canonical program `A097613.P17801274350353294577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097613 (n : ℕ) : ℤ :=
  A097613.P17801274350353294577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097613.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A099976.P14840345860272964072

`2*A002458(n)`
-/

namespace A099976.P14840345860272964072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002458 n

end

end A099976.P14840345860272964072

noncomputable section

/-- A099976: Bisection of A000984.

Offset 0, canonical program `A099976.P14840345860272964072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099976 (n : ℕ) : ℤ :=
  A099976.P14840345860272964072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099976.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A110257.P16520114715403784889

`(4*n+1)*A002894(n)/4^A000120(n)`
-/

namespace A110257.P16520114715403784889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) * A002894 n : ℚ) / (4 : ℚ) ^ (A000120 n : ℤ)

end

end A110257.P16520114715403784889

noncomputable section

/-- A110257: Numerators in the coefficients that form the odd-indexed partial quotients of the continued fraction representation of the inverse tangent of 1/x.

Offset 1, canonical program `A110257.P16520114715403784889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110257.P16520114715403784889.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064064.P18196454259524292323

`a(A002262(n-1))+a(A003056(n-1))` with `a(0)=1`
-/

namespace A064064.P18196454259524292323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A002262 (n - 1)).toNat + a (A003056 (n - 1)).toNat

end

end A064064.P18196454259524292323

noncomputable section

/-- A064064: n-th step is to add a(n) to each previous number a(k) (including itself, i.e., k <= n) to produce n+1 more terms of the sequence, starting with a(0)=1.

Offset 0, canonical program `A064064.P18196454259524292323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064064 (n : ℕ) : ℤ :=
  (A064064.P18196454259524292323.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071295.P3465812326302079174

`A000120(n)*A023416(n)`
-/

namespace A071295.P3465812326302079174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A023416 n

end

end A071295.P3465812326302079174

noncomputable section

/-- A071295: Product of numbers of 0's and 1's in binary representation of n.

Offset 0, canonical program `A071295.P3465812326302079174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071295 (n : ℕ) : ℤ :=
  A071295.P3465812326302079174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071673.P16572548944788639740

`1+a(A025581(n-1))+a(A002262(n-1))` with `a(0)=0`
-/

namespace A071673.P16572548944788639740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A025581 (n - 1)).toNat + a (A002262 (n - 1)).toNat

end

end A071673.P16572548944788639740

noncomputable section

/-- A071673: Sequence a(n) obtained by setting a(0) = 0; then reading the table T(x,y)=a(x)+a(y)+1 in antidiagonal fashion.

Offset 0, canonical program `A071673.P16572548944788639740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071673 (n : ℕ) : ℤ :=
  (A071673.P16572548944788639740.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071673.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A085373.P10803437188431577307

`A119578(n+1)/2`
-/

namespace A085373.P10803437188431577307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119578 (n + 1) : ℚ) / 2

end

end A085373.P10803437188431577307

noncomputable section

/-- A085373: a(n) = binomial(2n+1, n+1)*binomial(n+2, 2).

Offset 0, canonical program `A085373.P10803437188431577307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085373 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085373.P10803437188431577307.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085373.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A067552.P17186920303504174424

`A007953(n)²-A004159(n)`
-/

namespace A067552.P17186920303504174424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A004159 n

end

end A067552.P17186920303504174424

noncomputable section

/-- A067552: a(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), where SumOfDigits = A007953.

Offset 0, canonical program `A067552.P17186920303504174424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067552 (n : ℕ) : ℤ :=
  A067552.P17186920303504174424.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062707.P7585015757933557598

`C(A004736(n+1), 2)*A002262(n)`
-/

namespace A062707.P7585015757933557598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ) * A002262 n

end

end A062707.P7585015757933557598

noncomputable section

/-- A062707: Table by antidiagonals of n*k*(k+1)/2.

Offset 0, canonical program `A062707.P7585015757933557598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062707 (n : ℕ) : ℤ :=
  A062707.P7585015757933557598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062707.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062836.P109274199651695140

`floor(A024450(n+1)/∑[A006093(n+1)])`
-/

namespace A062836.P109274199651695140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024450 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A062836.P109274199651695140

noncomputable section

/-- A062836: Floor[ Sum_{k=1..n,p(k)^2} / Sum_{k=1..n,p(k)-1} ].

Offset 1, canonical program `A062836.P109274199651695140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062836 (n : ℕ) : ℤ :=
  A062836.P109274199651695140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062992.P8931874765169475408

`A025225(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A062992.P8931874765169475408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025225 (n + 1) - a (n - 1)

end

end A062992.P8931874765169475408

noncomputable section

/-- A062992: Row sums of unsigned triangle A062991.

Offset 0, canonical program `A062992.P8931874765169475408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A062992 (n : ℕ) : ℤ :=
  A062992.P8931874765169475408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A062992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064058.P300498006429403485

`∑[A064057(n)-C(n+3, 3)]`
-/

namespace A064058.P300498006429403485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - (Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P300498006429403485

noncomputable section

/-- A064058: Ninth column of quintinomial coefficients.

Offset 0, canonical program `A064058.P300498006429403485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058 (n : ℕ) : ℤ :=
  A064058.P300498006429403485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064279.P14159687515513872245

`∑{d}[n+1, A001065(#)*A063445((n+1)/#)]`
-/

namespace A064279.P14159687515513872245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P14159687515513872245

noncomputable section

/-- A064279: Number of ordered pairs a,b of elements in the cyclic group C_n such that the subgroup generated by the pair a,b is a proper subgroup of C_n.

Offset 1, canonical program `A064279.P14159687515513872245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064279 (n : ℕ) : ℤ :=
  A064279.P14159687515513872245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064399.P18127450818113564184

`lt[A004159(n), A007953(n)]`
-/

namespace A064399.P18127450818113564184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064399.P18127450818113564184

noncomputable section

/-- A064399: Numbers k whose sum of digits exceeds the sum of the digits of k^2.

Offset 1, canonical program `A064399.P18127450818113564184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A064399 (n : ℕ) : ℤ :=
  (A064399.P18127450818113564184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. -/
def A064399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064464.P4731212445350682202

`ceil(log2(A060692(n+1)))`
-/

namespace A064464.P4731212445350682202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060692 (n + 1) : ℝ)⌉

end

end A064464.P4731212445350682202

noncomputable section

/-- A064464: Binary order (cf. A029837) of the number of parts if 3^n is partitioned into parts of size 2^n as far as possible and into parts of size 1^n (cf. A060692).

Offset 1, canonical program `A064464.P4731212445350682202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064464 (n : ℕ) : ℤ :=
  A064464.P4731212445350682202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065073.P8599182111085404624

`A062028(A000040(n+1))`
-/

namespace A065073.P8599182111085404624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000040 (n + 1)).toNat

end

end A065073.P8599182111085404624

noncomputable section

/-- A065073: a(n) = prime(n) + (sum of digits of prime(n)).

Offset 1, canonical program `A065073.P8599182111085404624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065073 (n : ℕ) : ℤ :=
  A065073.P8599182111085404624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065331.P8774004989157438008

`A006519(n+1)*A038500(n+1)`
-/

namespace A065331.P8774004989157438008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A038500 (n + 1)

end

end A065331.P8774004989157438008

noncomputable section

/-- A065331: Largest 3-smooth divisor of n.

Offset 1, canonical program `A065331.P8774004989157438008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065331 (n : ℕ) : ℤ :=
  A065331.P8774004989157438008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065713.P2914558267731047984

`A001370(2*n)`
-/

namespace A065713.P2914558267731047984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

end

end A065713.P2914558267731047984

noncomputable section

/-- A065713: Sum of digits of 4^n.

Offset 0, canonical program `A065713.P2914558267731047984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065713 (n : ℕ) : ℤ :=
  A065713.P2914558267731047984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065722.P14518484525193958893

`p?[A036955(n+1)]`
-/

namespace A065722.P14518484525193958893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065722.P14518484525193958893

noncomputable section

/-- A065722: Primes that when written in base 4, then reinterpreted in base 10, again give primes.

Offset 1, canonical program `A065722.P14518484525193958893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A065722 (n : ℕ) : ℤ :=
  A065722.P14518484525193958893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3221 terms. -/
def A065722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065762.P17525663113797957313

`A065595(n+1)+2*A024450(n+1)`
-/

namespace A065762.P17525663113797957313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065595 (n + 1) + 2 * A024450 (n + 1)

end

end A065762.P17525663113797957313

noncomputable section

/-- A065762: a(n) = (sum of first n primes)^2 + sum of (squares of first n primes).

Offset 1, canonical program `A065762.P17525663113797957313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065762 (n : ℕ) : ℤ :=
  A065762.P17525663113797957313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065878.P1041981114255732241

`comp[A049445(n+1)-1]+1`
-/

namespace A065878.P1041981114255732241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065878.P1041981114255732241

noncomputable section

/-- A065878: Numbers which are not an integer multiple of their number of binary 1's.

Offset 1, canonical program `A065878.P1041981114255732241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065878 (n : ℕ) : ℤ :=
  (A065878.P1041981114255732241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065890.P15936493256530540462

`A014689(n+1)-1`
-/

namespace A065890.P15936493256530540462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 1

end

end A065890.P15936493256530540462

noncomputable section

/-- A065890: Number of composites less than the n-th prime.

Offset 1, canonical program `A065890.P15936493256530540462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065890 (n : ℕ) : ℤ :=
  A065890.P15936493256530540462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065982.P2143420065164690676

`A162551(n)+4*a(n-1)` with `a(0)=2`
-/

namespace A065982.P2143420065164690676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A162551 n + 4 * a (n - 1)

end

end A065982.P2143420065164690676

noncomputable section

/-- A065982: a(n) = (n+1)*binomial(2*n,n) - 2^(2*n-1).

Offset 1, canonical program `A065982.P2143420065164690676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A065982 (n : ℕ) : ℤ :=
  A065982.P2143420065164690676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A065982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065994.P760857083720247298

`A001748(A014689(n+1))/3`
-/

namespace A065994.P760857083720247298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A014689 (n + 1)).toNat : ℚ) / 3

end

end A065994.P760857083720247298

noncomputable section

/-- A065994: a(n) = prime(prime(n) - n).

Offset 1, canonical program `A065994.P760857083720247298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A065994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065994.P760857083720247298.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A065994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066004.P14525788820147274037

`A001370(3*n)`
-/

namespace A066004.P14525788820147274037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (3 * n)

end

end A066004.P14525788820147274037

noncomputable section

/-- A066004: Sum of digits of 8^n.

Offset 0, canonical program `A066004.P14525788820147274037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A066004 (n : ℕ) : ℤ :=
  A066004.P14525788820147274037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A066004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066559.P10683272393969555234

`A056159(n+1)-A057428(A066209(n+1))`
-/

namespace A066559.P10683272393969555234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056159 (n + 1) - A057428 (A066209 (n + 1)).toNat

end

end A066559.P10683272393969555234

noncomputable section

/-- A066559: a(n) = ceiling(10^(n-1)/n).

Offset 1, canonical program `A066559.P10683272393969555234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A066559 (n : ℕ) : ℤ :=
  A066559.P10683272393969555234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A066559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066635.P3813954879404359062

`A053188(n+1)+Δ[A000196(n)²]`
-/

namespace A066635.P3813954879404359062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n + 1) + (f1 (n + 1) - f1 n)

end

end A066635.P3813954879404359062

noncomputable section

/-- A066635: Distance from n to closest square different from n.

Offset 1, canonical program `A066635.P3813954879404359062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066635 (n : ℕ) : ℤ :=
  A066635.P3813954879404359062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067002.P16545474126586428194

`A004982(n)/A001316(n)`
-/

namespace A067002.P16545474126586428194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004982 n : ℚ) / (A001316 n : ℚ)

end

end A067002.P16545474126586428194

noncomputable section

/-- A067002: Numerator of Sum_{k=0..n} 2^(k-2*n) * binomial(2*n-2*k,n-k) * binomial(n+k,n).

Offset 0, canonical program `A067002.P16545474126586428194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A067002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067002.P16545474126586428194.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A067002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067294.P8664796393436630874

`A038629(n)+A000108(n+2)`
-/

namespace A067294.P8664796393436630874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038629 n + A000108 (n + 2)

end

end A067294.P8664796393436630874

noncomputable section

/-- A067294: Third column of triangle A028364.

Offset 0, canonical program `A067294.P8664796393436630874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067294 (n : ℕ) : ℤ :=
  A067294.P8664796393436630874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067325.P15197000550133949116

`A067324(n+1)-2*A000108(n+1)`
-/

namespace A067325.P15197000550133949116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 (n + 1) - 2 * A000108 (n + 1)

end

end A067325.P15197000550133949116

noncomputable section

/-- A067325: Fourth column of triangle A067323.

Offset 0, canonical program `A067325.P15197000550133949116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A067325 (n : ℕ) : ℤ :=
  A067325.P15197000550133949116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A067325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067343.P8902143204584263014

`eq[A007953(n), A067342(A028310(n))]`
-/

namespace A067343.P8902143204584263014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067342 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067343.P8902143204584263014

noncomputable section

/-- A067343: Sum of decimal digits of n equals sum of decimal digits of sum of divisors of n.

Offset 1, canonical program `A067343.P8902143204584263014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067343 (n : ℕ) : ℤ :=
  (A067343.P8902143204584263014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067521.P8006543298138063662

`(lt[(n+1)%A004159(n+1), 1]+1)²`
-/

namespace A067521.P8006543298138063662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004159 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A067521.P8006543298138063662

noncomputable section

/-- A067521: Numbers n such that the square root of n is an integer and a multiple of the sum of the digits of n.

Offset 1, canonical program `A067521.P8006543298138063662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A067521 (n : ℕ) : ℤ :=
  (A067521.P8006543298138063662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A067521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067673.P1166334490651037384

`∩[A067672(n+1)-1, A067672(n+1)]`
-/

namespace A067673.P1166334490651037384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067673.P1166334490651037384

noncomputable section

/-- A067673: Numbers k such that floor((3/2)^(k+3))/floor((3/2)^k) = (3/2)^3.

Offset 1, canonical program `A067673.P1166334490651037384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A067673 (n : ℕ) : ℤ :=
  (A067673.P1166334490651037384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A067673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067804.P9760772521500680135

`A000984(A002262(n))*A000984(A025581(n))`
-/

namespace A067804.P9760772521500680135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A002262 n).toNat * A000984 (A025581 n).toNat

end

end A067804.P9760772521500680135

noncomputable section

/-- A067804: Triangle read by rows: T(n,k) is the number of walks (each step +-1) of length 2n which have a cumulative value of 0 last at step 2k.

Offset 0, canonical program `A067804.P9760772521500680135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067804 (n : ℕ) : ℤ :=
  A067804.P9760772521500680135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067859.P15803946867159928236

`sqrt(A061886(n))`
-/

namespace A067859.P15803946867159928236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061886 n : ℝ)

end

end A067859.P15803946867159928236

noncomputable section

/-- A067859: a(1) = 1; a(n+1) = floor(sqrt(Sum_{k=1..n} a(k)^2)).

Offset 1, canonical program `A067859.P15803946867159928236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A067859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067859.P15803946867159928236.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A067859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067978.P743960902897900319

`A067977(n)+A067431(n)`
-/

namespace A067978.P743960902897900319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067977 n + A067431 n

end

end A067978.P743960902897900319

noncomputable section

/-- A067978: Convolution of Fibonacci F(n+1), n>=0, with F(n+10), n>=0.

Offset 0, canonical program `A067978.P743960902897900319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067978 (n : ℕ) : ℤ :=
  A067978.P743960902897900319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A067978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067981.P4589928530987231224

`A067980(n)+A004799(n+1)`
-/

namespace A067981.P4589928530987231224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067980 n + A004799 (n + 1)

end

end A067981.P4589928530987231224

noncomputable section

/-- A067981: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+3), n>=0.

Offset 0, canonical program `A067981.P4589928530987231224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A067981 (n : ℕ) : ℤ :=
  A067981.P4589928530987231224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A067981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068130.P8380932321966618756

`A000217(eq[15, A004157(n)])`
-/

namespace A068130.P8380932321966618756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068130.P8380932321966618756

noncomputable section

/-- A068130: Triangular numbers with sum of digits = 15.

Offset 1, canonical program `A068130.P8380932321966618756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A068130 (n : ℕ) : ℤ :=
  A068130.P8380932321966618756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A068130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068131.P296359315164383935

`A000217(eq[21, A004157(n)])`
-/

namespace A068131.P296359315164383935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068131.P296359315164383935

noncomputable section

/-- A068131: Triangular numbers with sum of digits = 21.

Offset 1, canonical program `A068131.P296359315164383935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A068131 (n : ℕ) : ℤ :=
  A068131.P296359315164383935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A068131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068132.P10501098146319111768

`A000217(eq[28, A004157(n)])`
-/

namespace A068132.P10501098146319111768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068132.P10501098146319111768

noncomputable section

/-- A068132: Triangular numbers with sum of digits = 28.

Offset 1, canonical program `A068132.P10501098146319111768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A068132 (n : ℕ) : ℤ :=
  A068132.P10501098146319111768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1185 terms. -/
def A068132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068244.P4361570666989602982

`(A060888(n+1)+n)*∑[∑[n+1]]`
-/

namespace A068244.P4361570666989602982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060888 (n + 1) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A068244.P4361570666989602982

noncomputable section

/-- A068244: 1/6 the number of colorings of a 3 X 3 rhombic- or staggered- hexagonal array with n colors.

Offset 3, canonical program `A068244.P4361570666989602982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068244 (n : ℕ) : ℤ :=
  A068244.P4361570666989602982.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068363.P395449518968758804

`p?[A034961(n+1)+A031165(n+2)]`
-/

namespace A068363.P395449518968758804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A031165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068363.P395449518968758804

noncomputable section

/-- A068363: Primes p such that there exists k such that p = prime(k) + prime(k+2) + prime(k+4).

Offset 1, canonical program `A068363.P395449518968758804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A068363 (n : ℕ) : ℤ :=
  A068363.P395449518968758804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A068363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068504.P594807329965681907

`2^A023512(n+1)`
-/

namespace A068504.P594807329965681907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023512 (n + 1) : ℤ)

end

end A068504.P594807329965681907

noncomputable section

/-- A068504: Highest power of 2 dividing prime(n)+1.

Offset 1, canonical program `A068504.P594807329965681907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068504.P594807329965681907.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068552.P16266079210275203260

`n*A028329(n)-4^n`
-/

namespace A068552.P16266079210275203260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028329 n - (4 ^ n : ℤ)

end

end A068552.P16266079210275203260

noncomputable section

/-- A068552: 2n*binomial(2n,n) - 4^n.

Offset 0, canonical program `A068552.P16266079210275203260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A068552 (n : ℕ) : ℤ :=
  A068552.P16266079210275203260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A068552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068553.P13633146490698951460

`A048619(Δ[n²])`
-/

namespace A068553.P13633146490698951460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068553.P13633146490698951460

noncomputable section

/-- A068553: a(n) = lcm(1,2,...,2*n) / (n*binomial(2*n, n)).

Offset 1, canonical program `A068553.P13633146490698951460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A068553 (n : ℕ) : ℤ :=
  A068553.P13633146490698951460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A068553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068554.P15412628013919998094

`A005430(n)-A000302(n)`
-/

namespace A068554.P15412628013919998094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n - A000302 n

end

end A068554.P15412628013919998094

noncomputable section

/-- A068554: a(n) = n*binomial(2n, n) - 4^n.

Offset 0, canonical program `A068554.P15412628013919998094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068554 (n : ℕ) : ℤ :=
  A068554.P15412628013919998094.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068807.P3891556660410364740

`p?[A028838(n+1)]`
-/

namespace A068807.P3891556660410364740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068807.P3891556660410364740

noncomputable section

/-- A068807: Primes whose sum of digits is a power of 2.

Offset 1, canonical program `A068807.P3891556660410364740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A068807 (n : ℕ) : ℤ :=
  A068807.P3891556660410364740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1409 terms. -/
def A068807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069011.P9337676359071489470

`A002262(n)²+A003056(n)²`
-/

namespace A069011.P9337676359071489470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A003056 n ^ 2

end

end A069011.P9337676359071489470

noncomputable section

/-- A069011: Triangle with T(n,k) = n^2 + k^2.

Offset 0, canonical program `A069011.P9337676359071489470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069011 (n : ℕ) : ℤ :=
  A069011.P9337676359071489470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069011.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069482.P16607122436003558489

`Δ[A066872(n+1)]`
-/

namespace A069482.P16607122436003558489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069482.P16607122436003558489

noncomputable section

/-- A069482: a(n) = prime(n+1)^2 - prime(n)^2.

Offset 1, canonical program `A069482.P16607122436003558489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069482 (n : ℕ) : ℤ :=
  A069482.P16607122436003558489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069484.P12309562123868272033

`A048851(n+2)`
-/

namespace A069484.P12309562123868272033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2)

end

end A069484.P12309562123868272033

noncomputable section

/-- A069484: a(n) = prime(n+1)^2 + prime(n)^2.

Offset 1, canonical program `A069484.P12309562123868272033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069484 (n : ℕ) : ℤ :=
  A069484.P12309562123868272033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069721.P15657058802008382559

`floor(2^(n-1))*A276666(n)`
-/

namespace A069721.P15657058802008382559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A276666 n

end

end A069721.P15657058802008382559

noncomputable section

/-- A069721: Number of rooted unicursal planar maps with n edges and no vertices of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

Offset 1, canonical program `A069721.P15657058802008382559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069721 (n : ℕ) : ℤ :=
  A069721.P15657058802008382559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069721.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A069816.P2167086169845687567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069816 (n : ℕ) : ℤ :=
  A069816.P2167086169845687567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069835.P15006901086948875881

`∑[A054122(n)]`
-/

namespace A069835.P15006901086948875881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069835.P15006901086948875881

noncomputable section

/-- A069835: Define an array as follows: b(i,0)=b(0,j)=1, b(i,j) = 2*b(i-1,j-1) + b(i-1,j) + b(i,j-1). Then a(n) = b(n,n).

Offset 0, canonical program `A069835.P15006901086948875881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A069835 (n : ℕ) : ℤ :=
  A069835.P15006901086948875881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A069835.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069906.P3213861137805963780

`A026811(n)-∑[A026810(A142150(n))]`
-/

namespace A069906.P3213861137805963780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069906.P3213861137805963780

noncomputable section

/-- A069906: Number of pentagons that can be formed with perimeter n. In other words, number of partitions of n into five parts such that the sum of any four is more than the fifth.

Offset 0, canonical program `A069906.P3213861137805963780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906 (n : ℕ) : ℤ :=
  A069906.P3213861137805963780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069930.P8500379819724252552

`∑{d}[n+1, A134451(#-1)]`
-/

namespace A069930.P8500379819724252552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A134451 (d - 1)

end

end A069930.P8500379819724252552

noncomputable section

/-- A069930: Number of integers of the form (n+k)/(n-k) with 1 <= k <= n-1.

Offset 1, canonical program `A069930.P8500379819724252552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069930 (n : ℕ) : ℤ :=
  A069930.P8500379819724252552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069930.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071722.P10689110326163623616

`A099376(n)+A026012(n)`
-/

namespace A071722.P10689110326163623616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A026012 n

end

end A071722.P10689110326163623616

noncomputable section

/-- A071722: Expansion of (1+x^2*C^2)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071722.P10689110326163623616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071722 (n : ℕ) : ℤ :=
  A071722.P10689110326163623616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071722.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071816.P1910954212188492567

`∑[A070302(n+1)]`
-/

namespace A071816.P1910954212188492567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P1910954212188492567

noncomputable section

/-- A071816: Number of ordered solutions to x+y+z = u+v+w, 0 <= x, y, z, u, v, w < n.

Offset 1, canonical program `A071816.P1910954212188492567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071816 (n : ℕ) : ℤ :=
  A071816.P1910954212188492567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071906.P15390665811675828273

`A001370(n)%2`
-/

namespace A071906.P15390665811675828273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 n) 2

end

end A071906.P15390665811675828273

noncomputable section

/-- A071906: Sum of digits of 2^n (mod 2).

Offset 0, canonical program `A071906.P15390665811675828273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071906 (n : ℕ) : ℤ :=
  A071906.P15390665811675828273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072004.P1142489555843543606

`∑[A066872(n+1)-1]%A000040(n+1)`
-/

namespace A072004.P1142489555843543606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A072004.P1142489555843543606

noncomputable section

/-- A072004: Remainder when sum of squares of first n primes is divided by n-th prime.

Offset 1, canonical program `A072004.P1142489555843543606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072004 (n : ℕ) : ℤ :=
  A072004.P1142489555843543606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072004.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072192.P15559087047844524175

`lt[A023595(n+1), 2]+1`
-/

namespace A072192.P15559087047844524175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072192.P15559087047844524175

noncomputable section

/-- A072192: Indices of Sophie Germain primes: p and 2p+1 are primes.

Offset 1, canonical program `A072192.P15559087047844524175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A072192 (n : ℕ) : ℤ :=
  (A072192.P15559087047844524175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A072192.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072373.P2283036377366837827

`gcd(and(4, A001794(n)), A006235(n+1))`
-/

namespace A072373.P2283036377366837827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 4 (A001794 n)) (A006235 (n + 1))

end

end A072373.P2283036377366837827

noncomputable section

/-- A072373: Number of spanning trees of the n-prism graph Y_n (regarding case n = 2 as a simple graph).

Offset 1, canonical program `A072373.P2283036377366837827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A072373 (n : ℕ) : ℤ :=
  (A072373.P2283036377366837827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A072373.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A072609.P2032538925425816875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072609 (n : ℕ) : ℤ :=
  A072609.P2032538925425816875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072609.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072822.P2653041604261641271

`(23^A002262(n)+23^A003056(n))/2`
-/

namespace A072822.P2653041604261641271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((23 : ℚ) ^ (A002262 n : ℤ) + (23 : ℚ) ^ (A003056 n : ℤ)) / 2

end

end A072822.P2653041604261641271

noncomputable section

/-- A072822: The terms of A073215 (sums of two powers of 23) divided by 2.

Offset 0, canonical program `A072822.P2653041604261641271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A072822 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072822.P2653041604261641271.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A072822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073211.P4394998357951781572

`A001020(A002262(n))+A001020(A003056(n))`
-/

namespace A073211.P4394998357951781572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat + A001020 (A003056 n).toNat

end

end A073211.P4394998357951781572

noncomputable section

/-- A073211: Sum of two powers of 11.

Offset 0, canonical program `A073211.P4394998357951781572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. -/
def A073211 (n : ℕ) : ℤ :=
  A073211.P4394998357951781572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4751 terms. -/
def A073211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073213.P10181654025624929618

`A001026(A002262(n))+A001026(A003056(n))`
-/

namespace A073213.P10181654025624929618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (A002262 n).toNat + A001026 (A003056 n).toNat

end

end A073213.P10181654025624929618

noncomputable section

/-- A073213: Sum of two powers of 17.

Offset 0, canonical program `A073213.P10181654025624929618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. -/
def A073213 (n : ℕ) : ℤ :=
  A073213.P10181654025624929618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3403 terms. -/
def A073213.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073645.P5920658511944243410

`a(n-1)*char[∑[A025581(n)]]+1` with `a(0)=2`
-/

namespace A073645.P5920658511944243410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A073645.P5920658511944243410

noncomputable section

/-- A073645: a(1)=2 and, for all n>=1, a(n) is the length of the n-th run of increasing consecutive integers with each run after the first starting with 1.

Offset 1, canonical program `A073645.P5920658511944243410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073645 (n : ℕ) : ℤ :=
  (A073645.P5920658511944243410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073645.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073738.P9704381599669692586

`∑[A036467(n)]`
-/

namespace A073738.P9704381599669692586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073738.P9704381599669692586

noncomputable section

/-- A073738: Sum of every other prime <= n-th prime down to 2 or 1; equals the partial sums of A036467 (in which sums of two consecutive terms form the primes).

Offset 0, canonical program `A073738.P9704381599669692586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073738 (n : ℕ) : ℤ :=
  A073738.P9704381599669692586.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073738.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074065.P6948405385705331368

`A016789(n)-A054406(n+1)`
-/

namespace A074065.P6948405385705331368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A054406 (n + 1)

end

end A074065.P6948405385705331368

noncomputable section

/-- A074065: Numerators a(n) of fractions slowly converging to sqrt(3): let a(1) = 0, b(n) = n - a(n); if (a(n) + 1) / b(n) < sqrt(3), then a(n+1) = a(n) + 1, else a(n+1)= a(n).

Offset 1, canonical program `A074065.P6948405385705331368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074065 (n : ℕ) : ℤ :=
  A074065.P6948405385705331368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074116.P5873740248549221374

`2^A066343(n+1)`
-/

namespace A074116.P5873740248549221374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A066343 (n + 1) : ℤ)

end

end A074116.P5873740248549221374

noncomputable section

/-- A074116: Largest n-digit power of 2.

Offset 1, canonical program `A074116.P5873740248549221374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074116 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074116.P5873740248549221374.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066343, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074116.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A074909.P6707642907239843837

`C(∑[A010054(n)], A002262(n))`
-/

namespace A074909.P6707642907239843837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A002262 n).toNat

end

end A074909.P6707642907239843837

noncomputable section

/-- A074909: Running sum of Pascal's triangle (A007318), or beheaded Pascal's triangle read by beheaded rows.

Offset 0, canonical program `A074909.P6707642907239843837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074909 (n : ℕ) : ℤ :=
  (A074909.P6707642907239843837.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074909.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A075312.P13937281751554376934

`A000201(n+1)*A001950(n+1)`
-/

namespace A075312.P13937281751554376934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A001950 (n + 1)

end

end A075312.P13937281751554376934

noncomputable section

/-- A075312: Products of Wythoff pairs: [n*r]*[n*r^2], where [] is the floor function and r is the golden ratio, (1+sqrt(5))/2.

Offset 1, canonical program `A075312.P13937281751554376934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075312 (n : ℕ) : ℤ :=
  A075312.P13937281751554376934.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075317.P7457995589328707940

`A035337(n)%A054770(n+1)`
-/

namespace A075317.P7457995589328707940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) (A054770 (n + 1))

end

end A075317.P7457995589328707940

noncomputable section

/-- A075317: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the first member of pairs.

Offset 1, canonical program `A075317.P7457995589328707940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075317 (n : ℕ) : ℤ :=
  A075317.P7457995589328707940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075318.P6489539267058589071

`abs(1-2*A001950(n+1))`
-/

namespace A075318.P6489539267058589071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A001950 (n + 1)|

end

end A075318.P6489539267058589071

noncomputable section

/-- A075318: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the second member of pairs.

Offset 1, canonical program `A075318.P6489539267058589071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075318 (n : ℕ) : ℤ :=
  A075318.P6489539267058589071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075471.P15021078902774570681

`round(sqrt(A024450(n+1)/(n+1)))`
-/

namespace A075471.P15021078902774570681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A024450 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A075471.P15021078902774570681

noncomputable section

/-- A075471: Rounded root-mean-square (RMS) value of first n primes.

Offset 1, canonical program `A075471.P15021078902774570681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075471 (n : ℕ) : ℤ :=
  A075471.P15021078902774570681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075521.P14244373856164998827

`floor(p?[A075520(n+1)]/4)`
-/

namespace A075521.P14244373856164998827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A075521.P14244373856164998827

noncomputable section

/-- A075521: Primes p such that 4*p + (p mod 4) is also a prime.

Offset 1, canonical program `A075521.P14244373856164998827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A075521 (n : ℕ) : ℤ :=
  A075521.P14244373856164998827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A075521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075524.P11710820957233170645

`record[A074591(A075520(n+1))]`
-/

namespace A075524.P11710820957233170645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A075520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075524.P11710820957233170645

noncomputable section

/-- A075524: Nonprimes of form 4*p + (p mod 4), p prime.

Offset 1, canonical program `A075524.P11710820957233170645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A075524 (n : ℕ) : ℤ :=
  A075524.P11710820957233170645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A075524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076112.P16955840187618448059

`∑[A010054(n)]^A002262(n)`
-/

namespace A076112.P16955840187618448059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A002262 n : ℤ)

end

end A076112.P16955840187618448059

noncomputable section

/-- A076112: Triangle (read by rows) in which the n-th row contains first n terms of n geometric progression with first term 1 and common ratio (n-1).

Offset 1, canonical program `A076112.P16955840187618448059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A076112 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076112.P16955840187618448059.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A076112.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A076342.P17182392044292318344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076342 (n : ℕ) : ℤ :=
  A076342.P17182392044292318344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078268.P12910837297517375735

`(n+1)/A068822(n+1)`
-/

namespace A078268.P12910837297517375735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A068822 (n + 1) : ℚ)

end

end A078268.P12910837297517375735

noncomputable section

/-- A078268: Smallest integer which is an integer multiple of the number N obtained by placing the string "n" after a decimal point.

Offset 1, canonical program `A078268.P12910837297517375735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078268 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078268.P12910837297517375735.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078638.P13705343157640692303

`lcm(A007947(n+4), A078637(n+1))`
-/

namespace A078638.P13705343157640692303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 4)) (A078637 (n + 1))

end

end A078638.P13705343157640692303

noncomputable section

/-- A078638: a(n) = rad(n*(n+1)*(n+2)*(n+3)).

Offset 1, canonical program `A078638.P13705343157640692303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078638 (n : ℕ) : ℤ :=
  (A078638.P13705343157640692303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078638.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078747.P15397912367434804972

`∑{d}[n+1, A055615(#)*A078306((n+1)/#)]`
-/

namespace A078747.P15397912367434804972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A078306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P15397912367434804972

noncomputable section

/-- A078747: Expansion of Sum_{k>0} k*phi(k)*x^k/(1+x^k).

Offset 1, canonical program `A078747.P15397912367434804972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078747 (n : ℕ) : ℤ :=
  A078747.P15397912367434804972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078747.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078835.P6502726184382521084

`∑{d}[A024675(n+1), #]`
-/

namespace A078835.P6502726184382521084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078835.P6502726184382521084

noncomputable section

/-- A078835: Sum of the divisors of the average of consecutive odd primes.

Offset 1, canonical program `A078835.P6502726184382521084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078835 (n : ℕ) : ℤ :=
  (A078835.P6502726184382521084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079143.P22812743180656321

`∪[A001248(n+1), A036689(n+1)]`
-/

namespace A079143.P22812743180656321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079143.P22812743180656321

noncomputable section

/-- A079143: Numbers divisible by prime ceilings of their square roots + 1.

Offset 1, canonical program `A079143.P22812743180656321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079143 (n : ℕ) : ℤ :=
  (A079143.P22812743180656321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079292.P9237298591425678832

`∩[A046133(n+1)-2, A046133(n+1)]`
-/

namespace A079292.P9237298591425678832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079292.P9237298591425678832

noncomputable section

/-- A079292: Near twin primes of order 12: twin primes p,p+2 such that p+12 and p+14 are primes.

Offset 1, canonical program `A079292.P9237298591425678832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A079292 (n : ℕ) : ℤ :=
  (A079292.P9237298591425678832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A079292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079418.P154276308547552137

`lt[A062357(n+1), 0]+2`
-/

namespace A079418.P154276308547552137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A079418.P154276308547552137

noncomputable section

/-- A079418: Numbers k such that prime(k)/k < prime(k-1)/(k-1).

Offset 1, canonical program `A079418.P154276308547552137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079418 (n : ℕ) : ℤ :=
  (A079418.P154276308547552137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079419.P13015430704914119842

`A000040(lt[A062357(n+1), 0]+2)`
-/

namespace A079419.P13015430704914119842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A079419.P13015430704914119842

noncomputable section

/-- A079419: Primes p such that p/i(p) < prime(i(p)-1)/(i(p)-1), where i(p) = A049084(p).

Offset 1, canonical program `A079419.P13015430704914119842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079419 (n : ℕ) : ℤ :=
  A079419.P13015430704914119842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. -/
def A079419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079719.P827166596602017947

`A005428(n+2)-2`
-/

namespace A079719.P827166596602017947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (n + 2) - 2

end

end A079719.P827166596602017947

noncomputable section

/-- A079719: a(n) = n + floor(Sum_{k

Offset 0, canonical program `A079719.P827166596602017947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A079719 (n : ℕ) : ℤ :=
  A079719.P827166596602017947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A079719.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079901.P1463165230727689920

`A003056(n)^A002262(n)`
-/

namespace A079901.P1463165230727689920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A002262 n : ℤ)

end

end A079901.P1463165230727689920

noncomputable section

/-- A079901: Triangle of powers, T(n,k) = n^k, 0 <= k <= n, read by rows.

Offset 0, canonical program `A079901.P1463165230727689920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A079901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079901.P1463165230727689920.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A079901.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A080085.P4216384539738297619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080085 (n : ℕ) : ℤ :=
  A080085.P4216384539738297619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A080085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080098.P7543541268193481793

`or(A002262(n), A003056(n))`
-/

namespace A080098.P7543541268193481793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A003056 n)

end

end A080098.P7543541268193481793

noncomputable section

/-- A080098: Triangle T(n,k) = n OR k, 0 <= k <= n, bitwise logical OR, read by rows.

Offset 0, canonical program `A080098.P7543541268193481793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080098 (n : ℕ) : ℤ :=
  A080098.P7543541268193481793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080344.P14008918198358363005

`(A056847(n+1)-A053188(n+1))/2`
-/

namespace A080344.P14008918198358363005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056847 (n + 1) - A053188 (n + 1) : ℚ) / 2

end

end A080344.P14008918198358363005

noncomputable section

/-- A080344: Partial sums of A023969.

Offset 0, canonical program `A080344.P14008918198358363005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080344.P14008918198358363005.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080378.P2494150868123191363

`C(2, A023520(n+2)²)`
-/

namespace A080378.P2494150868123191363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A023520 (n + 2) ^ 2).toNat

end

end A080378.P2494150868123191363

noncomputable section

/-- A080378: Residues mod 4 of the n-th difference between consecutive primes.

Offset 1, canonical program `A080378.P2494150868123191363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080378 (n : ℕ) : ℤ :=
  (A080378.P2494150868123191363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080378.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080754.P2755472032536426284

`abs(A001952(n+1)-n)`
-/

namespace A080754.P2755472032536426284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001952 (n + 1) - (n : ℤ)|

end

end A080754.P2755472032536426284

noncomputable section

/-- A080754: a(n) = ceiling(n*(1+sqrt(2))).

Offset 1, canonical program `A080754.P2755472032536426284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080754 (n : ℕ) : ℤ :=
  A080754.P2755472032536426284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080820.P3405857355669494182

`A080819(n+1)^(1/2)`
-/

namespace A080820.P3405857355669494182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080819 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A080820.P3405857355669494182

noncomputable section

/-- A080820: Least m such that m^2 >= n*(n+1)/2.

Offset 1, canonical program `A080820.P3405857355669494182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080820.P3405857355669494182.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080820.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A081284.P1423847120179373102

`A081283(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A081284.P1423847120179373102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A081283 n + a (n - 2)

end

end A081284.P1423847120179373102

noncomputable section

/-- A081284: An interleaved sequence of pyramidal and polygonal numbers.

Offset 0, canonical program `A081284.P1423847120179373102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081284 (n : ℕ) : ℤ :=
  A081284.P1423847120179373102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081284.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081495.P18059496137314334868

`A004277(n)+Δ[A045992(n)]`
-/

namespace A081495.P18059496137314334868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (f1 (n + 1) - f1 n)

end

end A081495.P18059496137314334868

noncomputable section

/-- A081495: Start with Pascal's triangle; form a rhombus by sliding down n steps from top on both sides then sliding down inwards to complete the rhombus and then deleting the inner numbers; a(n) = sum of entries on perimeter of rhombus.

Offset 1, canonical program `A081495.P18059496137314334868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081495 (n : ℕ) : ℤ :=
  A081495.P18059496137314334868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081496.P15132134117608989616

`A027171(n)+4`
-/

namespace A081496.P15132134117608989616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027171 n + 4

end

end A081496.P15132134117608989616

noncomputable section

/-- A081496: Start with Pascal's triangle; a(n) is the sum of the numbers on the periphery of the n-th central rhombus containing exactly 4 numbers.

Offset 1, canonical program `A081496.P15132134117608989616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A081496 (n : ℕ) : ℤ :=
  A081496.P15132134117608989616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A081496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081551.P7080515350163513496

`A011557(A003056(n))+A002262(n)`
-/

namespace A081551.P7080515350163513496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A003056 n).toNat + A002262 n

end

end A081551.P7080515350163513496

noncomputable section

/-- A081551: Triangle, read by rows, in which the n-th row contains n smallest n-digit numbers.

Offset 1, canonical program `A081551.P7080515350163513496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A081551 (n : ℕ) : ℤ :=
  A081551.P7080515350163513496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A081551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081614.P12122110504523754094

`A005428(eq[1, and(1, A006999(n))])`
-/

namespace A081614.P12122110504523754094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081614.P12122110504523754094

noncomputable section

/-- A081614: Subsequence of A005428 with state = 1.

Offset 0, canonical program `A081614.P12122110504523754094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A081614 (n : ℕ) : ℤ :=
  A081614.P12122110504523754094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A081614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081615.P1987069733094205732

`record[gcd(A005428(n), A061418(n+1))]`
-/

namespace A081615.P1987069733094205732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005428 n) (A061418 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081615.P1987069733094205732

noncomputable section

/-- A081615: Subsequence of A005428 where state = 2.

Offset 0, canonical program `A081615.P1987069733094205732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A081615 (n : ℕ) : ℤ :=
  (A081615.P1987069733094205732.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A081615.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A081652.P14238066097852759484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081652 (n : ℕ) : ℤ :=
  (A081652.P14238066097852759484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081653.P12687433244256557766

`gcd(Δ[A037123(n)], A007605(n+1))`
-/

namespace A081653.P12687433244256557766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A007605 (n + 1))

end

end A081653.P12687433244256557766

noncomputable section

/-- A081653: Greatest common divisor of sums of decimal digits of n and of n-th prime.

Offset 1, canonical program `A081653.P12687433244256557766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081653 (n : ℕ) : ℤ :=
  (A081653.P12687433244256557766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081653.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082454.P6617542880565573363

`A011974(n)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A082454.P6617542880565573363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A011974 n - a (n - 1)

end

end A082454.P6617542880565573363

noncomputable section

/-- A082454: a(n) = prime(n) + prime(n-1) - a(n-1) with a(0) = a(1) = 0.

Offset 0, canonical program `A082454.P6617542880565573363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082454 (n : ℕ) : ℤ :=
  A082454.P6617542880565573363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082454.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082542.P3253226966033198615

`A000040(n+1)+A070750(n+1)`
-/

namespace A082542.P3253226966033198615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A070750 (n + 1)

end

end A082542.P3253226966033198615

noncomputable section

/-- A082542: a(n) = prime(n) + 2 - (prime(n) mod 4).

Offset 1, canonical program `A082542.P3253226966033198615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082542 (n : ℕ) : ℤ :=
  A082542.P3253226966033198615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082542.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082771.P10430934721500492141

`∑{d}[∑[A010054(n)], #^A002262(n)]`
-/

namespace A082771.P10430934721500492141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A082771.P10430934721500492141

noncomputable section

/-- A082771: Triangular array, read by rows: T(n,k) = Sum_{d|n} d^k, 0 <= k < n.

Offset 1, canonical program `A082771.P10430934721500492141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A082771 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082771.P10430934721500492141.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A082771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082786.P11135334232585507456

`val(A002024(n+1), A000040(A002262(n)+1))`
-/

namespace A082786.P11135334232585507456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002024 (n + 1)).toNat (A000040 (A002262 n + 1).toNat).toNat

end

end A082786.P11135334232585507456

noncomputable section

/-- A082786: Triangle, read by rows, of exponents of primes in canonical prime factorization of n: T(n,k) = greatest number such that prime(k)^T(n,k) divides n, 1 <= k <= n.

Offset 1, canonical program `A082786.P11135334232585507456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082786 (n : ℕ) : ℤ :=
  (A082786.P11135334232585507456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082899.P5647589413368550065

`A082893(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082899.P5647589413368550065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082893 (n + 1) - A000040 (n + 1)

end

end A082899.P5647589413368550065

noncomputable section

/-- A082899: a(n) = A082893(n)-A000040(n), that is difference of n-th prime and number closest to it and divisible by n.

Offset 1, canonical program `A082899.P5647589413368550065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A082893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082899 (n : ℕ) : ℤ :=
  A082899.P5647589413368550065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A082893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083036.P2474658439335323916

`∑[A083035(n+1)]`
-/

namespace A083036.P2474658439335323916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P2474658439335323916

noncomputable section

/-- A083036: Partial sums of A083035.

Offset 1, canonical program `A083036.P2474658439335323916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083036 (n : ℕ) : ℤ :=
  A083036.P2474658439335323916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083055.P8386572612985681419

`∑[A083054(n+1)%2]`
-/

namespace A083055.P8386572612985681419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083054 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P8386572612985681419

noncomputable section

/-- A083055: a(n) = cardinality{ k<=n / A083054(k)=1}.

Offset 1, canonical program `A083055.P8386572612985681419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083055 (n : ℕ) : ℤ :=
  A083055.P8386572612985681419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083055.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083553.P14618886648007354780

`A037165(n+1)+1`
-/

namespace A083553.P14618886648007354780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + 1

end

end A083553.P14618886648007354780

noncomputable section

/-- A083553: Product of prime(n+1)-1 and prime(n)-1.

Offset 1, canonical program `A083553.P14618886648007354780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083553 (n : ℕ) : ℤ :=
  A083553.P14618886648007354780.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083744.P3611656687007907114

`∑[(n+1)*ceil(A110658(n)/(n+1))]`
-/

namespace A083744.P3611656687007907114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A110658 n : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083744.P3611656687007907114

noncomputable section

/-- A083744: a(1) = 1; if a(n-1) + n is composite then a(n) = a(n-1) + n, else a(n) = a(n-1).

Offset 1, canonical program `A083744.P3611656687007907114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083744 (n : ℕ) : ℤ :=
  A083744.P3611656687007907114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083744.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084218.P6522014899142432729

`∑{d}[n+1, A053191(#)*A068970((n+1)/#)]`
-/

namespace A084218.P6522014899142432729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A068970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084218.P6522014899142432729

noncomputable section

/-- A084218: a(n) = sigma_4(n^2)/sigma_2(n^2).

Offset 1, canonical program `A084218.P6522014899142432729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084218 (n : ℕ) : ℤ :=
  A084218.P6522014899142432729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084747.P18190235347912313929

`A077152(n+1)-(n+2)`
-/

namespace A084747.P18190235347912313929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077152 (n + 1) - (n + 2 : ℤ)

end

end A084747.P18190235347912313929

noncomputable section

/-- A084747: Leading diagonal of triangle (shown below) in which row n lists the n smallest positive numbers k such that k + n is a prime.

Offset 1, canonical program `A084747.P18190235347912313929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084747 (n : ℕ) : ℤ :=
  A084747.P18190235347912313929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084792.P10596812045351244596

`A077152(n+1)-1`
-/

namespace A084792.P10596812045351244596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077152 (n + 1) - 1

end

end A084792.P10596812045351244596

noncomputable section

/-- A084792: Primes other than those of the form prime(prime(n)+n-1).

Offset 1, canonical program `A084792.P10596812045351244596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084792 (n : ℕ) : ℤ :=
  A084792.P10596812045351244596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084792.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085476.P10158605893369981195

`C(A025581(n), A002262(n)%A004736(n+1))`
-/

namespace A085476.P10158605893369981195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (Int.tmod (A002262 n) (A004736 (n + 1))).toNat

end

end A085476.P10158605893369981195

noncomputable section

/-- A085476: Periodic Pascal array, read by upward antidiagonals.

Offset 0, canonical program `A085476.P10158605893369981195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085476 (n : ℕ) : ℤ :=
  (A085476.P10158605893369981195.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085476.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085812.P3651475914520651274

`A114121(n+1)-2^n`
-/

namespace A085812.P3651475914520651274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114121 (n + 1) - (2 ^ n : ℤ)

end

end A085812.P3651475914520651274

noncomputable section

/-- A085812: Sum(sum(binomial(i,j),i=n..2*n),j=0..n).

Offset 0, canonical program `A085812.P3651475914520651274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A085812 (n : ℕ) : ℤ :=
  A085812.P3651475914520651274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A085812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087058.P7398587435211061824

`A087057(n+1)²`
-/

namespace A087058.P7398587435211061824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) ^ 2

end

end A087058.P7398587435211061824

noncomputable section

/-- A087058: Smallest square number greater than 2*n^2.

Offset 1, canonical program `A087058.P7398587435211061824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087057, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087058 (n : ℕ) : ℤ :=
  A087058.P7398587435211061824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087057, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087121.P180081637264790853

`A087052(A074294(n²+1))`
-/

namespace A087121.P180081637264790853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A074294 (n ^ 2 + 1)).toNat

end

end A087121.P180081637264790853

noncomputable section

/-- A087121: Take bounded lunar divisors of n as defined in A087028, add them using lunar addition. See A087082 for their conventional sum.

Offset 1, canonical program `A087121.P180081637264790853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087121 (n : ℕ) : ℤ :=
  A087121.P180081637264790853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087413.P4648167049105143445

`∑[A025174(n+1)]`
-/

namespace A087413.P4648167049105143445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087413.P4648167049105143445

noncomputable section

/-- A087413: a(n) = Sum_{k=1..n} C(3*k,k)/3.

Offset 1, canonical program `A087413.P4648167049105143445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A087413 (n : ℕ) : ℤ :=
  A087413.P4648167049105143445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A087413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087479.P10953408168577437528

`A087475(A025581(n))%∑[A010054(n)]`
-/

namespace A087479.P10953408168577437528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087475 (A025581 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087479.P10953408168577437528

noncomputable section

/-- A087479: Triangle read by rows where the n-th row has n terms: T(n,i)=i^2+4 mod n.

Offset 1, canonical program `A087479.P10953408168577437528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A087479 (n : ℕ) : ℤ :=
  A087479.P10953408168577437528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A087479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087681.P2693589106627016851

`A046133(n+1)+6`
-/

namespace A087681.P2693589106627016851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 6

end

end A087681.P2693589106627016851

noncomputable section

/-- A087681: Numbers n such that n + 6 and n - 6 are both prime.

Offset 1, canonical program `A087681.P2693589106627016851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087681 (n : ℕ) : ℤ :=
  A087681.P2693589106627016851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088686.P10388938499725904433

`eq[A074374(n), A111074(n)]`
-/

namespace A088686.P10388938499725904433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088686.P10388938499725904433

noncomputable section

/-- A088686: Positions of the records in the sum-of-primes function sopfr(n) if sopfr(prime) is taken to be 0.

Offset 1, canonical program `A088686.P10388938499725904433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A088686 (n : ℕ) : ℤ :=
  (A088686.P10388938499725904433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A088686.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A089253.P9623062397135395528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089253 (n : ℕ) : ℤ :=
  A089253.P9623062397135395528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089253.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089799.P17784310632554402563

`A000038(A002262(n))`
-/

namespace A089799.P17784310632554402563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A002262 n).toNat

end

end A089799.P17784310632554402563

noncomputable section

/-- A089799: Expansion of Jacobi theta function theta_2(q^(1/2))/q^(1/8).

Offset 0, canonical program `A089799.P17784310632554402563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089799 (n : ℕ) : ℤ :=
  A089799.P17784310632554402563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090396.P14342691533600740330

`A060939(n+1)%(n+1)`
-/

namespace A090396.P14342691533600740330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060939 (n + 1)) (n + 1 : ℤ)

end

end A090396.P14342691533600740330

noncomputable section

/-- A090396: Remainder when the sum of the first n primes is divided by n.

Offset 1, canonical program `A090396.P14342691533600740330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090396 (n : ℕ) : ℤ :=
  A090396.P14342691533600740330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090396.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A090455.P12087489954554024740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090455 (n : ℕ) : ℤ :=
  A090455.P12087489954554024740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090455.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A090491.P1940977484404229344

`A052282(n)+∑[A026810(n)]`
-/

namespace A090491.P1940977484404229344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052282 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090491.P1940977484404229344

noncomputable section

/-- A090491: G.f.: (1+x^3+x^4+x^5+x^6+x^9)/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^4)).

Offset 0, canonical program `A090491.P1940977484404229344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090491 (n : ℕ) : ℤ :=
  A090491.P1940977484404229344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090642.P761711418045384423

`C(A003056(n)², A002262(n))`
-/

namespace A090642.P761711418045384423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A002262 n).toNat

end

end A090642.P761711418045384423

noncomputable section

/-- A090642: Triangle read by rows: T(n,k) = binomial(n^2, k), 0 <= k <= n.

Offset 0, canonical program `A090642.P761711418045384423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A090642 (n : ℕ) : ℤ :=
  (A090642.P761711418045384423.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A090642.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091042.P13426641425650986763

`C(A005408(A003056(n)), 2*A002262(n))`
-/

namespace A091042.P13426641425650986763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n).toNat).toNat (2 * A002262 n).toNat

end

end A091042.P13426641425650986763

noncomputable section

/-- A091042: Triangle of even numbered entries of odd numbered rows of Pascal's triangle A007318.

Offset 0, canonical program `A091042.P13426641425650986763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9384 terms. -/
def A091042 (n : ℕ) : ℤ :=
  (A091042.P13426641425650986763.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9384 terms. -/
def A091042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091282.P45468277352217509

`A023506(n+1)+A023512(n+1)`
-/

namespace A091282.P45468277352217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1) + A023512 (n + 1)

end

end A091282.P45468277352217509

noncomputable section

/-- A091282: Exponent of 2 in prime(n)^2 - 1.

Offset 1, canonical program `A091282.P45468277352217509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023506, A023512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091282 (n : ℕ) : ℤ :=
  A091282.P45468277352217509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023506, A023512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A091282.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A091571.P3835739435343640567

`7*(n+1)+2*A087866(n)`
-/

namespace A091571.P3835739435343640567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) + 2 * A087866 n

end

end A091571.P3835739435343640567

noncomputable section

/-- A091571: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_8.

Offset 0, canonical program `A091571.P3835739435343640567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091571 (n : ℕ) : ℤ :=
  A091571.P3835739435343640567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087866, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091571.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A092216.P8078597315778311431

`12+A046133(n+1)`
-/

namespace A092216.P8078597315778311431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 + A046133 (n + 1)

end

end A092216.P8078597315778311431

noncomputable section

/-- A092216: Primes of the form p + 12 where p is a prime.

Offset 1, canonical program `A092216.P8078597315778311431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092216 (n : ℕ) : ℤ :=
  A092216.P8078597315778311431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046133, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092249.P8919152455619656948

`A091369(n+1)-∑[n]`
-/

namespace A092249.P8919152455619656948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092249.P8919152455619656948

noncomputable section

/-- A092249: Positions of the integers in the standard diagonal enumeration of the rationals (with the integers in the first column and diagonals moving up to the right).

Offset 1, canonical program `A092249.P8919152455619656948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249 (n : ℕ) : ℤ :=
  A092249.P8919152455619656948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092283.P12444525832838815071

`A002024(n+1)+(A002262(n)+1)²`
-/

namespace A092283.P12444525832838815071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002262 n + 1) ^ 2

end

end A092283.P12444525832838815071

noncomputable section

/-- A092283: Triangular array read by rows: T(n,k)=n+k^2, 1<=k<=n.

Offset 1, canonical program `A092283.P12444525832838815071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092283 (n : ℕ) : ℤ :=
  A092283.P12444525832838815071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092443.P10839671212827273342

`A002457(n)+A000984(n+1)`
-/

namespace A092443.P10839671212827273342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + A000984 (n + 1)

end

end A092443.P10839671212827273342

noncomputable section

/-- A092443: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

Offset 1, canonical program `A092443.P10839671212827273342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A092443 (n : ℕ) : ℤ :=
  A092443.P10839671212827273342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A092443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092477.P11851733261805957455

`A126646(A002262(n))^A002024(n+1)`
-/

namespace A092477.P11851733261805957455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (A002262 n).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P11851733261805957455

noncomputable section

/-- A092477: Triangle read by rows: T(n,k) = (2^k - 1)^n, 1<=k<=n.

Offset 1, canonical program `A092477.P11851733261805957455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A092477 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092477.P11851733261805957455.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A092477.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093445.P508633320961369722

`(n+1)*A025581(n)-(A002411(A025581(n))-(n+1))`
-/

namespace A093445.P508633320961369722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025581 n - (A002411 (A025581 n).toNat - (n + 1 : ℤ))

end

end A093445.P508633320961369722

noncomputable section

/-- A093445: The triangular triangle.

Offset 1, canonical program `A093445.P508633320961369722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A093445 (n : ℕ) : ℤ :=
  A093445.P508633320961369722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A093445.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094186.P15847844308210161823

`a(A002262(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A094186.P15847844308210161823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002262 (n - 2)).toNat

end

end A094186.P15847844308210161823

noncomputable section

/-- A094186: Taking a(1)=0 and a(2)=1, sequence (a(n))n>1 is defined as follows : letting w(k)=a(1)a(2)...a(k) and w(infinity)= limit k ->infinity a(1)a(2)w(1)w(2)...w(k) we have w(infinity)=a(1)a(2)a(3)a(4)...

Offset 1, canonical program `A094186.P15847844308210161823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094186 (n : ℕ) : ℤ :=
  (A094186.P15847844308210161823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094570.P6223897866103054201

`A000045(A002262(n))+A000045(A025581(n))`
-/

namespace A094570.P6223897866103054201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat + A000045 (A025581 n).toNat

end

end A094570.P6223897866103054201

noncomputable section

/-- A094570: Triangle T(n,k) read by rows: T(n,k) = F(k) + F(n-k) where F(n) is the n-th Fibonacci number.

Offset 0, canonical program `A094570.P6223897866103054201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094570 (n : ℕ) : ℤ :=
  A094570.P6223897866103054201.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094571.P6651088130842317953

`A007598(A002262(n))+A007598(A025581(n))`
-/

namespace A094571.P6651088130842317953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A002262 n).toNat + A007598 (A025581 n).toNat

end

end A094571.P6651088130842317953

noncomputable section

/-- A094571: Triangle of binary sums of squares of Fibonacci numbers.

Offset 0, canonical program `A094571.P6651088130842317953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094571 (n : ℕ) : ℤ :=
  A094571.P6651088130842317953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095140.P1731898256351669886

`A008975(n)%5`
-/

namespace A095140.P1731898256351669886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008975 n) 5

end

end A095140.P1731898256351669886

noncomputable section

/-- A095140: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 5.

Offset 0, canonical program `A095140.P1731898256351669886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095140 (n : ℕ) : ℤ :=
  A095140.P1731898256351669886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095142.P4320954372509994339

`C(A003056(n), A002262(n))%7`
-/

namespace A095142.P4320954372509994339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % 7

end

end A095142.P4320954372509994339

noncomputable section

/-- A095142: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 7.

Offset 0, canonical program `A095142.P4320954372509994339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095142 (n : ℕ) : ℤ :=
  (A095142.P4320954372509994339.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095145.P7466236904986588761

`C(A003056(n), A002262(n))%12`
-/

namespace A095145.P7466236904986588761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat % 12

end

end A095145.P7466236904986588761

noncomputable section

/-- A095145: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 12.

Offset 0, canonical program `A095145.P7466236904986588761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095145 (n : ℕ) : ℤ :=
  (A095145.P7466236904986588761.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095145.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A095209.P676887428399175964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095209 (n : ℕ) : ℤ :=
  A095209.P676887428399175964.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095209.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A095403.P6923104078230111594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095403 (n : ℕ) : ℤ :=
  A095403.P6923104078230111594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095403.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095831.P13690318566003332866

`A025581(n)²`
-/

namespace A095831.P13690318566003332866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

end

end A095831.P13690318566003332866

noncomputable section

/-- A095831: Triangle read by rows: T(n,k) = (n-k)^2, n>=1, 1<=k<=n.

Offset 1, canonical program `A095831.P13690318566003332866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095831 (n : ℕ) : ℤ :=
  A095831.P13690318566003332866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095832.P8913517570091818146

`floor((A099375(n)/2)²)`
-/

namespace A095832.P8913517570091818146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A099375 n : ℚ) / 2) ^ 2⌋

end

end A095832.P8913517570091818146

noncomputable section

/-- A095832: Triangle read by rows: T(n,k) = (n-k+1)*(n-k), n>=1, 1<=k<=n.

Offset 1, canonical program `A095832.P8913517570091818146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095832 (n : ℕ) : ℤ :=
  A095832.P8913517570091818146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095866.P644531041906584656

`A095863(n+1)-A095865(n+2)`
-/

namespace A095866.P644531041906584656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095863 (n + 1) - A095865 (n + 2)

end

end A095866.P644531041906584656

noncomputable section

/-- A095866: Largest n-digit number - largest n-digit triangular number.

Offset 1, canonical program `A095866.P644531041906584656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A095866 (n : ℕ) : ℤ :=
  A095866.P644531041906584656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A095866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095890.P2940166550467236077

`A110138(A099375(n))`
-/

namespace A095890.P2940166550467236077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A099375 n).toNat

end

end A095890.P2940166550467236077

noncomputable section

/-- A095890: Triangle read by rows: T(n,k) = (n-k+1)^(n-k), n>=1, 1<=k<=n.

Offset 1, canonical program `A095890.P2940166550467236077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095890 (n : ℕ) : ℤ :=
  A095890.P2940166550467236077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095893.P11849581041384721338

`A007778(A025581(n))`
-/

namespace A095893.P11849581041384721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (A025581 n).toNat

end

end A095893.P11849581041384721338

noncomputable section

/-- A095893: Triangle read by rows: T(n,k) = (n-k)^(n-k+1), n>=1, 1<=k<=n.

Offset 1, canonical program `A095893.P11849581041384721338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095893 (n : ℕ) : ℤ :=
  A095893.P11849581041384721338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096145.P17704489690967024670

`∑{digits}[C(A003056(n), A002262(n)), #]`
-/

namespace A096145.P17704489690967024670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A096145.P17704489690967024670

noncomputable section

/-- A096145: Sum of digits in Pascal's triangle (A007318) in decimal representation, triangle read by rows, 0<=k<=n.

Offset 0, canonical program `A096145.P17704489690967024670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096145 (n : ℕ) : ℤ :=
  (A096145.P17704489690967024670.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096145.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A096278.P7027253276892588421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096278 (n : ℕ) : ℤ :=
  A096278.P7027253276892588421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096380.P13338104757938133789

`A034961(n+1)-p?[a(n-1)+2]` with `a(0)=7`
-/

namespace A096380.P13338104757938133789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A096380.P13338104757938133789

noncomputable section

/-- A096380: Differences between the sum of the first three primes and the fourth prime in consecutive prime quadruples.

Offset 1, canonical program `A096380.P13338104757938133789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096380 (n : ℕ) : ℤ :=
  A096380.P13338104757938133789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096380.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096858.P12905405690355423415

`A005318(A002024(n+1))-A005318(A025581(n))`
-/

namespace A096858.P12905405690355423415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A002024 (n + 1)).toNat - A005318 (A025581 n).toNat

end

end A096858.P12905405690355423415

noncomputable section

/-- A096858: Triangle read by rows in which row n gives the n-set obtained as the differences {b(n)-b(n-i), 0 <= i <= n-1}, where b() = A005318().

Offset 1, canonical program `A096858.P12905405690355423415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096858 (n : ℕ) : ℤ :=
  A096858.P12905405690355423415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096858.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097453.P1775989512565720974

`p?[Δ[A071411(n+1)]]`
-/

namespace A097453.P1775989512565720974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P1775989512565720974

noncomputable section

/-- A097453: Primes in A014237 in the order of their appearance.

Offset 1, canonical program `A097453.P1775989512565720974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453 (n : ℕ) : ℤ :=
  A097453.P1775989512565720974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A097743.P1935338259299383222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, A061286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097743 (n : ℕ) : ℤ :=
  A097743.P1935338259299383222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001348, A061286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097807.P14328121779268374373

`A009531(A099375(n))`
-/

namespace A097807.P14328121779268374373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat

end

end A097807.P14328121779268374373

noncomputable section

/-- A097807: Riordan array (1/(1+x),1) read by rows.

Offset 0, canonical program `A097807.P14328121779268374373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097807 (n : ℕ) : ℤ :=
  A097807.P14328121779268374373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098157.P4439640968314401246

`C(floor(sqrt(2*(n+2))), 2*A025581(n))`
-/

namespace A098157.P4439640968314401246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.sqrt (2 * (n + 2))) (2 * A025581 n).toNat

end

end A098157.P4439640968314401246

noncomputable section

/-- A098157: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n+1,2k).

Offset 0, canonical program `A098157.P4439640968314401246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098157 (n : ℕ) : ℤ :=
  (A098157.P4439640968314401246.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098158.P6308155905540013847

`C(A003056(n), A099375(n)-1)`
-/

namespace A098158.P6308155905540013847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A099375 n - 1).toNat

end

end A098158.P6308155905540013847

noncomputable section

/-- A098158: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n, 2*k).

Offset 0, canonical program `A098158.P6308155905540013847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098158 (n : ℕ) : ℤ :=
  (A098158.P6308155905540013847.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098172.P15745615236012495795

`C(A003056(n), 3*A025581(n))`
-/

namespace A098172.P15745615236012495795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (3 * A025581 n).toNat

end

end A098172.P15745615236012495795

noncomputable section

/-- A098172: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n,3k).

Offset 0, canonical program `A098172.P15745615236012495795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098172 (n : ℕ) : ℤ :=
  (A098172.P15745615236012495795.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098173.P12158514089681588837

`C(A003056(n), 4*A025581(n))`
-/

namespace A098173.P12158514089681588837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (4 * A025581 n).toNat

end

end A098173.P12158514089681588837

noncomputable section

/-- A098173: Triangle T(n,k) with diagonals T(n,n-k) = binomial(n, 4k).

Offset 0, canonical program `A098173.P12158514089681588837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098173 (n : ℕ) : ℤ :=
  (A098173.P12158514089681588837.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098173.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098361.P7044536785034610126

`A000142(A002262(n))*A000142(A025581(n))`
-/

namespace A098361.P7044536785034610126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002262 n).toNat * A000142 (A025581 n).toNat

end

end A098361.P7044536785034610126

noncomputable section

/-- A098361: Multiplication table of the factorial numbers read by antidiagonals.

Offset 0, canonical program `A098361.P7044536785034610126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A098361 (n : ℕ) : ℤ :=
  A098361.P7044536785034610126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A098361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098369.P15697729695012141091

`A095713(A038722(n+1))*A095713(n+1)`
-/

namespace A098369.P15697729695012141091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A038722 (n + 1)).toNat * A095713 (n + 1)

end

end A098369.P15697729695012141091

noncomputable section

/-- A098369: Multiplication table of the digits of the golden ratio read by antidiagonals.

Offset 0, canonical program `A098369.P15697729695012141091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369 (n : ℕ) : ℤ :=
  A098369.P15697729695012141091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098369.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098761.P3457865346520638397

`p?[A096379(n+1)]`
-/

namespace A098761.P3457865346520638397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098761.P3457865346520638397

noncomputable section

/-- A098761: Primes of the form prime(n) + prime(n+1) - prime(n+2) with multiplicity, ordered by increasing n.

Offset 1, canonical program `A098761.P3457865346520638397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A098761 (n : ℕ) : ℤ :=
  A098761.P3457865346520638397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A098761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098996.P12117290804077941359

`(A008864(n+1)+A000040(n+1))*A036690(n+1)`
-/

namespace A098996.P12117290804077941359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + A000040 (n + 1)) * A036690 (n + 1)

end

end A098996.P12117290804077941359

noncomputable section

/-- A098996: a(n) = p*(p + 1)*(2*p + 1) where p is the n-th prime.

Offset 1, canonical program `A098996.P12117290804077941359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098996 (n : ℕ) : ℤ :=
  A098996.P12117290804077941359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099246.P4737145265859464127

`A070939(n)/A099244(A000007(n)+n)`
-/

namespace A099246.P4737145265859464127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A099244 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A099246.P4737145265859464127

noncomputable section

/-- A099246: Denominator of relative frequency of number of ones in the binary representation of n.

Offset 0, canonical program `A099246.P4737145265859464127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099246 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099246.P4737145265859464127.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099407.P8033397410898991072

`ceil(A037165(n+1)/2)`
-/

namespace A099407.P8033397410898991072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037165 (n + 1) : ℚ) / 2⌉

end

end A099407.P8033397410898991072

noncomputable section

/-- A099407: Number of points of self-intersection of the path of a billiard ball traveling at a 45-degree angle on a prime(n) X prime(n+1) billiard table. Also equal to 1/2 the number of the lattice points lying within a prime(n) X prime(n+1) rectangle.

Offset 1, canonical program `A099407.P8033397410898991072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099407 (n : ℕ) : ℤ :=
  A099407.P8033397410898991072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099407.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099909.P1261333731020433854

`A006094(n+2)-A024675(n+1)`
-/

namespace A099909.P1261333731020433854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) - A024675 (n + 1)

end

end A099909.P1261333731020433854

noncomputable section

/-- A099909: (prime(n)*(prime(n+1)-1) + (prime(n)-1)*prime(n+1)) / 2.

Offset 2, canonical program `A099909.P1261333731020433854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A099909 (n : ℕ) : ℤ :=
  A099909.P1261333731020433854.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A099909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100021.P10840842949691680391

`A098764(n+1)-3`
-/

namespace A100021.P10840842949691680391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - 3

end

end A100021.P10840842949691680391

noncomputable section

/-- A100021: a(n) = 3*prime(n) - prime(n+1) - 3.

Offset 1, canonical program `A100021.P10840842949691680391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100021 (n : ℕ) : ℤ :=
  A100021.P10840842949691680391.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098764, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100021.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100374.P54128355091214742

`A006519(Δ[A001748(n+1)])`
-/

namespace A100374.P54128355091214742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n).toNat

end

end A100374.P54128355091214742

noncomputable section

/-- A100374: Largest power of 2 dividing prime(n+1) - prime(n), the n-th consecutive prime difference.

Offset 1, canonical program `A100374.P54128355091214742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100374 (n : ℕ) : ℤ :=
  A100374.P54128355091214742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100500.P15370153323306391176

`A034961(3*n+1)`
-/

namespace A100500.P15370153323306391176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (3 * n + 1)

end

end A100500.P15370153323306391176

noncomputable section

/-- A100500: a(n) = prime(3n-2) + prime(3n-1) + prime(3n).

Offset 1, canonical program `A100500.P15370153323306391176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100500 (n : ℕ) : ℤ :=
  A100500.P15370153323306391176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100500.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A100714.P17142724427829783874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100714 (n : ℕ) : ℤ :=
  A100714.P17142724427829783874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101332.P12137526032187480116

`(n+1)*∑[A050141(n+1)]`
-/

namespace A101332.P12137526032187480116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101332.P12137526032187480116

noncomputable section

/-- A101332: a(n) = Knuth's Fibonacci (or circle) square "n o n".

Offset 1, canonical program `A101332.P12137526032187480116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101332 (n : ℕ) : ℤ :=
  A101332.P12137526032187480116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101345.P14532218159390660138

`A095098(n+1)-1`
-/

namespace A101345.P14532218159390660138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095098 (n + 1) - 1

end

end A101345.P14532218159390660138

noncomputable section

/-- A101345: a(n) = Knuth's Fibonacci (or circle) product "2 o n".

Offset 1, canonical program `A101345.P14532218159390660138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101345 (n : ℕ) : ℤ :=
  A101345.P14532218159390660138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102066.P12806262207819177951

`A098999(n+1)%6`
-/

namespace A102066.P12806262207819177951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098999 (n + 1)) 6

end

end A102066.P12806262207819177951

noncomputable section

/-- A102066: Sum of the first n primes, mod 6.

Offset 1, canonical program `A102066.P12806262207819177951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102066 (n : ℕ) : ℤ :=
  A102066.P12806262207819177951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102066.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`
-/

namespace A102548.P7683038375054225144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P7683038375054225144

noncomputable section

/-- A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

Offset 1, canonical program `A102548.P7683038375054225144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548 (n : ℕ) : ℤ :=
  A102548.P7683038375054225144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103217.P9968612035999895191

`C(A099375(n)+1, 2)`
-/

namespace A103217.P9968612035999895191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099375 n + 1).toNat 2

end

end A103217.P9968612035999895191

noncomputable section

/-- A103217: Hexagonal numbers triangle read by rows: T(n,k)=(n+1-k)*(2*(n+1-k)-1).

Offset 0, canonical program `A103217.P9968612035999895191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103217 (n : ℕ) : ℤ :=
  (A103217.P9968612035999895191.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103943.P10707217721028067963

`lcm(2, 4^n)-A032106(n+1)`
-/

namespace A103943.P10707217721028067963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℤ) - A032106 (n + 1)

end

end A103943.P10707217721028067963

noncomputable section

/-- A103943: Number of unrooted two-vertex n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103943.P10707217721028067963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A103943 (n : ℕ) : ℤ :=
  A103943.P10707217721028067963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A103943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104005.P11895213451388241575

`Δ[A052964(abs(1-n))]`
-/

namespace A104005.P11895213451388241575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104005.P11895213451388241575

noncomputable section

/-- A104005: a(n+3) = a(n+2) + 3a(n+1) - 2a(n); a(0) = 1, a(1) = -1, a(2)= 3.

Offset 0, canonical program `A104005.P11895213451388241575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A104005 (n : ℕ) : ℤ :=
  A104005.P11895213451388241575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A104005.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104201.P12103817333759853652

`A011974(A073169(n+1))`
-/

namespace A104201.P12103817333759853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A073169 (n + 1)).toNat

end

end A104201.P12103817333759853652

noncomputable section

/-- A104201: Sums of straddle primes.

Offset 4, canonical program `A104201.P12103817333759853652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201 (n : ℕ) : ℤ :=
  A104201.P12103817333759853652.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A104201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104268.P18087575557998394585

`A006419(n)+Δ[A014137(n)]`
-/

namespace A104268.P18087575557998394585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006419 n + (f1 (n + 1) - f1 n)

end

end A104268.P18087575557998394585

noncomputable section

/-- A104268: a(n) = 2*4^(n-1) - (3n-1)/(2n+2)*C(2n,n).

Offset 1, canonical program `A104268.P18087575557998394585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104268 (n : ℕ) : ℤ :=
  A104268.P18087575557998394585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A104268.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104571.P7156192359906544948

`A003816(A099375(n))`
-/

namespace A104571.P7156192359906544948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A099375 n).toNat

end

end A104571.P7156192359906544948

noncomputable section

/-- A104571: Triangle T(n,k) = A042948(n-k+1) read by rows, 0<=k<=n.

Offset 0, canonical program `A104571.P7156192359906544948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104571 (n : ℕ) : ℤ :=
  A104571.P7156192359906544948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104572.P17190232593110181506

`A001318(A099375(n))`
-/

namespace A104572.P17190232593110181506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A099375 n).toNat

end

end A104572.P17190232593110181506

noncomputable section

/-- A104572: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product A*B of the infinite lower triangular matrices A = [1; 3, 1; 5, 3, 1; 7, 5, 3, 1; ...] and B=[1; 2,1; 1,2,1; 2,1,2,1; ...].

Offset 1, canonical program `A104572.P17190232593110181506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104572 (n : ℕ) : ℤ :=
  A104572.P17190232593110181506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104582.P4159753034675005451

`A001911(A025581(n))+1`
-/

namespace A104582.P4159753034675005451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A025581 n).toNat + 1

end

end A104582.P4159753034675005451

noncomputable section

/-- A104582: Triangle read by rows: T(i,j) is the (i,j)-entry (1 <= j <= i) of the product of the lower triangular matrix (Fibonacci(i-j+1)) and of the lower triangular matrix all of whose entries are equal to 1 (for j <= i).

Offset 1, canonical program `A104582.P4159753034675005451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104582 (n : ℕ) : ℤ :=
  A104582.P4159753034675005451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104713.P17662720385851673761

`C(A002024(n+1)+2, A025581(n))`
-/

namespace A104713.P17662720385851673761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002024 (n + 1) + 2).toNat (A025581 n).toNat

end

end A104713.P17662720385851673761

noncomputable section

/-- A104713: Triangle T(n,k) = binomial(n,k), read by rows, 3 <= k <=n .

Offset 3, canonical program `A104713.P17662720385851673761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104713 (n : ℕ) : ℤ :=
  (A104713.P17662720385851673761.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104713.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104762.P17027989488132899519

`A123231(A099375(n))`
-/

namespace A104762.P17027989488132899519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A099375 n).toNat

end

end A104762.P17027989488132899519

noncomputable section

/-- A104762: Triangle read by rows: row n contains first n nonzero Fibonacci numbers in decreasing order.

Offset 1, canonical program `A104762.P17027989488132899519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104762 (n : ℕ) : ℤ :=
  A104762.P17027989488132899519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104764.P125420061018971658

`A082587(A099375(n))`
-/

namespace A104764.P125420061018971658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (A099375 n).toNat

end

end A104764.P125420061018971658

noncomputable section

/-- A104764: Triangle T(n,k) = Lucas(n-k+1) read by rows, 1<=k<=n.

Offset 1, canonical program `A104764.P125420061018971658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104764 (n : ℕ) : ℤ :=
  A104764.P125420061018971658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104765.P18282024818191995764

`abs(A075193(A002262(n)))`
-/

namespace A104765.P18282024818191995764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 (A002262 n).toNat|

end

end A104765.P18282024818191995764

noncomputable section

/-- A104765: Triangle T(n,k) read by rows: row n contains the first n Lucas numbers A000204.

Offset 1, canonical program `A104765.P18282024818191995764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104765 (n : ℕ) : ℤ :=
  A104765.P18282024818191995764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104766.P12493236039249980797

`A001629(A025581(n)+2)`
-/

namespace A104766.P12493236039249980797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (A025581 n + 2).toNat

end

end A104766.P12493236039249980797

noncomputable section

/-- A104766: Triangle T(n,k) = A001629(n-k+2) read by rows, 1<=k<=n.

Offset 1, canonical program `A104766.P12493236039249980797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104766 (n : ℕ) : ℤ :=
  A104766.P12493236039249980797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104768.P16790131426723885557

`4*A008441(n²+1)`
-/

namespace A104768.P16790131426723885557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 (n ^ 2 + 1)

end

end A104768.P16790131426723885557

noncomputable section

/-- A104768: Number of matrices G with entries in Z satisfying G^2=G+1 and having the form 2G=[1+p q-2n | q+2n 1-p].

Offset 0, canonical program `A104768.P16790131426723885557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768 (n : ℕ) : ℤ :=
  A104768.P16790131426723885557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105060.P7749975189105000730

`(A002262(n)+2)!-1`
-/

namespace A105060.P7749975189105000730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n + 2).toNat : ℤ) - 1

end

end A105060.P7749975189105000730

noncomputable section

/-- A105060: Triangle read by rows in which the n-th row consists of the first n nonzero terms of A033312.

Offset 1, canonical program `A105060.P7749975189105000730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A105060 (n : ℕ) : ℤ :=
  A105060.P7749975189105000730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A105060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105135.P7438831623917599193

`eq[1, A101264(4*(4*n+2))]`
-/

namespace A105135.P7438831623917599193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (4 * (4 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P7438831623917599193

noncomputable section

/-- A105135: Numbers n such that 32n+17 is prime.

Offset 1, canonical program `A105135.P7438831623917599193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A105135 (n : ℕ) : ℤ :=
  (A105135.P7438831623917599193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A105135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105469.P5083937897985848993

`Δ[round(A102781(n+1)/3)]`
-/

namespace A105469.P5083937897985848993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102781 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105469.P5083937897985848993

noncomputable section

/-- A105469: Number of numbers of the form 6k+3 with prime(n) <= 6k+3 < prime(n+1).

Offset 1, canonical program `A105469.P5083937897985848993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105469 (n : ℕ) : ℤ :=
  A105469.P5083937897985848993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A105469.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106187.P575274589459937692

`A000984(A025581(n))`
-/

namespace A106187.P575274589459937692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A025581 n).toNat

end

end A106187.P575274589459937692

noncomputable section

/-- A106187: Sequence array for central binomial numbers A000984.

Offset 0, canonical program `A106187.P575274589459937692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106187 (n : ℕ) : ℤ :=
  A106187.P575274589459937692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106269.P2701720384490681382

`ceil(A106188(n)/2)`
-/

namespace A106269.P2701720384490681382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106188 n : ℚ) / 2⌉

end

end A106269.P2701720384490681382

noncomputable section

/-- A106269: Expansion of 1/((1 - x^2)*(2 - c(x))), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A106269.P2701720384490681382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269 (n : ℕ) : ℤ :=
  A106269.P2701720384490681382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A106269.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106440.P15662350045666486590

`(n+1)*A002803(n)`
-/

namespace A106440.P15662350045666486590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002803 n

end

end A106440.P15662350045666486590

noncomputable section

/-- A106440: a(n) = binomial(2n+4,n)*binomial(n+4,4).

Offset 0, canonical program `A106440.P15662350045666486590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106440 (n : ℕ) : ℤ :=
  A106440.P15662350045666486590.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002803, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106440.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A106740.P18203027849950181357

`A000045(gcd(A025581(n), A133196(n+1)))`
-/

namespace A106740.P18203027849950181357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A025581 n) (A133196 (n + 1)))

end

end A106740.P18203027849950181357

noncomputable section

/-- A106740: Triangle read by rows: greatest common divisors of pairs of Fibonacci numbers greater than 1: T(n, k) = gcd(Fibonacci(n), Fibonacci(k)).

Offset 3, canonical program `A106740.P18203027849950181357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A106740 (n : ℕ) : ℤ :=
  A106740.P18203027849950181357.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A106740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107430.P11529680414182301624

`C(A003056(n), A004526(A002262(n)))`
-/

namespace A107430.P11529680414182301624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004526 (A002262 n).toNat).toNat

end

end A107430.P11529680414182301624

noncomputable section

/-- A107430: Triangle read by rows: row n is row n of Pascal's triangle (A007318) sorted into increasing order.

Offset 0, canonical program `A107430.P11529680414182301624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107430 (n : ℕ) : ℤ :=
  (A107430.P11529680414182301624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107471.P390287189862035674

`A098764(n+1)-A065091(n+1)`
-/

namespace A107471.P390287189862035674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - A065091 (n + 1)

end

end A107471.P390287189862035674

noncomputable section

/-- A107471: a(n) = 3*prime(n) - 2*prime(n+1).

Offset 1, canonical program `A107471.P390287189862035674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107471 (n : ℕ) : ℤ :=
  A107471.P390287189862035674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107471.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108645.P15487422926831177260

`2*A107968(n)-A107959(n)`
-/

namespace A108645.P15487422926831177260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107968 n - A107959 n

end

end A108645.P15487422926831177260

noncomputable section

/-- A108645: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(2*n^2 + 6*n + 5)/720.

Offset 0, canonical program `A108645.P15487422926831177260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108645 (n : ℕ) : ℤ :=
  A108645.P15487422926831177260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108754.P804238655971916212

`∑[A014689(n+1)-n]`
-/

namespace A108754.P804238655971916212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P804238655971916212

noncomputable section

/-- A108754: Difference between partial sum of the first n primes and n^2.

Offset 1, canonical program `A108754.P804238655971916212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108754 (n : ℕ) : ℤ :=
  A108754.P804238655971916212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108754.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108863.P15641938226968541285

`A027914(n)-A005717(n+1)`
-/

namespace A108863.P15641938226968541285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A005717 (n + 1)

end

end A108863.P15641938226968541285

noncomputable section

/-- A108863: Number of Dyck paths containing exactly one UUUD.

Offset 0, canonical program `A108863.P15641938226968541285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863 (n : ℕ) : ℤ :=
  A108863.P15641938226968541285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A108863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109004.P14948550553895644887

`gcd(A002262(n), A003056(n))`
-/

namespace A109004.P14948550553895644887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A003056 n)

end

end A109004.P14948550553895644887

noncomputable section

/-- A109004: Table of gcd(n, m) read by antidiagonals, n >= 0, m >= 0.

Offset 0, canonical program `A109004.P14948550553895644887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109004 (n : ℕ) : ℤ :=
  (A109004.P14948550553895644887.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109042.P10372275233379341162

`lcm(A002262(n), A025581(n))`
-/

namespace A109042.P10372275233379341162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A025581 n)

end

end A109042.P10372275233379341162

noncomputable section

/-- A109042: Square array read by antidiagonals: A(n, k) = lcm(n, k) for n >= 0, k >= 0.

Offset 0, canonical program `A109042.P10372275233379341162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109042 (n : ℕ) : ℤ :=
  (A109042.P10372275233379341162.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109042.provenance : SequenceMachineLib.Provenance := .conjectured

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

`round(-A010816(n+1)/3)`
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

/-! ## A109955.P11070320594210267159

`C(A004277(n)-A003056(n)², A025581(n))`
-/

namespace A109955.P11070320594210267159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 n - A003056 n ^ 2).toNat (A025581 n).toNat

end

end A109955.P11070320594210267159

noncomputable section

/-- A109955: Number triangle binomial(n+2k,3k).

Offset 0, canonical program `A109955.P11070320594210267159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109955 (n : ℕ) : ℤ :=
  (A109955.P11070320594210267159.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109974.P2214011444914212300

`∑{d}[A004736(n+1), #^A002262(n)]`
-/

namespace A109974.P2214011444914212300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A002262 n : ℤ)

end

end A109974.P2214011444914212300

noncomputable section

/-- A109974: Array read by downwards antidiagonals: sigma_k(n) for n >= 1, k >= 0.

Offset 0, canonical program `A109974.P2214011444914212300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A109974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109974.P2214011444914212300.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A109974.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110380.P5136329825465001748

`∑[A011557(A025581(n))]`
-/

namespace A110380.P5136329825465001748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110380.P5136329825465001748

noncomputable section

/-- A110380: a(n) = min{p + q + r + ...} where p,q,r,... are distinct unary numbers - containing only ones, i.e., of the form (10^k - 1)/9 - formed by using a total of n ones.

Offset 1, canonical program `A110380.P5136329825465001748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A110380 (n : ℕ) : ℤ :=
  A110380.P5136329825465001748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A110380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110515.P16865065084477646787

`1-and(2, C(A055461(n+1), 2))`
-/

namespace A110515.P16865065084477646787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 (Nat.choose (A055461 (n + 1)).toNat 2) : ℤ)

end

end A110515.P16865065084477646787

noncomputable section

/-- A110515: Sequence array for (1 - x + x^2 + x^3)/(1 - x^4).

Offset 0, canonical program `A110515.P16865065084477646787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110515 (n : ℕ) : ℤ :=
  A110515.P16865065084477646787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110515.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110662.P17120547529489749073

`A160664(A002024(n+1))-A160664(A002262(n))`
-/

namespace A110662.P17120547529489749073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A002024 (n + 1)).toNat - A160664 (A002262 n).toNat

end

end A110662.P17120547529489749073

noncomputable section

/-- A110662: Triangle read by rows: T(n,k) is the sum of the sums of divisors of k, k+1, ..., n (1 <= k <= n).

Offset 1, canonical program `A110662.P17120547529489749073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110662 (n : ℕ) : ℤ :=
  A110662.P17120547529489749073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110662.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111138.P485686665396904696

`∑[A002262(n)]`
-/

namespace A111138.P485686665396904696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111138.P485686665396904696

noncomputable section

/-- A111138: Let b(n) denote the number of nontriangular numbers less than or equal to n. Then a(n) = b(n-1) + a(b(n-1)), with a(1) = a(2) = 0, a(3) = 1.

Offset 1, canonical program `A111138.P485686665396904696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111138 (n : ℕ) : ℤ :=
  A111138.P485686665396904696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111333.P7362550556951660219

`A102781(n+1)+1`
-/

namespace A111333.P7362550556951660219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 1

end

end A111333.P7362550556951660219

noncomputable section

/-- A111333: Number of odd numbers <= n-th prime.

Offset 1, canonical program `A111333.P7362550556951660219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111333 (n : ℕ) : ℤ :=
  A111333.P7362550556951660219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111333.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111412.P3591798685441797589

`Δ[A054868(n)]`
-/

namespace A111412.P3591798685441797589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111412.P3591798685441797589

noncomputable section

/-- A111412: a(n) = f(f(n+1))-f(f(n)), where f(m) = wt(m) = A000120(m).

Offset 0, canonical program `A111412.P3591798685441797589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111412 (n : ℕ) : ℤ :=
  A111412.P3591798685441797589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111643.P2244943092013135216

`A111642(n)-∑[2*A111642(n)]`
-/

namespace A111643.P2244943092013135216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111642 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111643.P2244943092013135216

noncomputable section

/-- A111643: Expansion of 2*(x+1)^2/((x^2+4*x+1)*(x^2-2*x-1)).

Offset 0, canonical program `A111643.P2244943092013135216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111643 (n : ℕ) : ℤ :=
  A111643.P2244943092013135216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A111643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062501.P18268535818000705407

`∑{p}[A018252(n+1), A010051(#)]`
-/

namespace A062501.P18268535818000705407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A062501.P18268535818000705407

noncomputable section

/-- A062501: Number of distinct prime divisors of the nonprimes (including 1).

Offset 1, canonical program `A062501.P18268535818000705407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062501 (n : ℕ) : ℤ :=
  A062501.P18268535818000705407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062503.P11230107813318854754

`A000290(A005117(n+1))`
-/

namespace A062503.P11230107813318854754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A005117 (n + 1)).toNat

end

end A062503.P11230107813318854754

noncomputable section

/-- A062503: Squarefree numbers squared.

Offset 1, canonical program `A062503.P11230107813318854754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062503 (n : ℕ) : ℤ :=
  A062503.P11230107813318854754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062532.P17785931247852482798

`A014076(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062532.P17785931247852482798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) ^ 2

end

end A062532.P17785931247852482798

noncomputable section

/-- A062532: Odd nonprimes squared, or A014076(n)^2.

Offset 1, canonical program `A062532.P17785931247852482798`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062532 (n : ℕ) : ℤ :=
  A062532.P17785931247852482798.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062590.P15736737728538598181

`A010051(n+1)*A029835(n+1)`
-/

namespace A062590.P15736737728538598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A029835 (n + 1)

end

end A062590.P15736737728538598181

noncomputable section

/-- A062590: Variation on A029834: a discrete version of the Mangoldt function. If n is prime then floor(log(prime(n))) else 0.

Offset 1, canonical program `A062590.P15736737728538598181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A029835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062590 (n : ℕ) : ℤ :=
  A062590.P15736737728538598181.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A029835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062753.P6486166718394067354

`filter[A268620(n+2), A121262(#)]`
-/

namespace A062753.P6486166718394067354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A062753.P6486166718394067354

noncomputable section

/-- A062753: Multiples of 4 whose sum of digits is also a multiple of 4.

Offset 1, canonical program `A062753.P6486166718394067354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A062753 (n : ℕ) : ℤ :=
  A062753.P6486166718394067354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A062753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062770.P13203404241284622665

`A072774(n+2)`
-/

namespace A062770.P13203404241284622665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 2)

end

end A062770.P13203404241284622665

noncomputable section

/-- A062770: n/[largest power of squarefree kernel] equals 1; perfect powers of sqf-kernels (or sqf-numbers).

Offset 1, canonical program `A062770.P13203404241284622665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770 (n : ℕ) : ℤ :=
  A062770.P13203404241284622665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062820.P14889107755262625484

`∑[A062007(n+1)]`
-/

namespace A062820.P14889107755262625484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P14889107755262625484

noncomputable section

/-- A062820: Sum_{k=1..n} p(k)*mu(k).

Offset 1, canonical program `A062820.P14889107755262625484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062820 (n : ℕ) : ℤ :=
  A062820.P14889107755262625484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062821.P16085959548378605641

`A320111(A140434(n+1))`
-/

namespace A062821.P16085959548378605641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A140434 (n + 1)).toNat

end

end A062821.P16085959548378605641

noncomputable section

/-- A062821: Number of divisors of totient of n.

Offset 1, canonical program `A062821.P16085959548378605641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062821 (n : ℕ) : ℤ :=
  A062821.P16085959548378605641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062822.P13975965535724837111

`∑{d}[A005117(n+1), #]`
-/

namespace A062822.P13975965535724837111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A062822.P13975965535724837111

noncomputable section

/-- A062822: Sum of divisors of the squarefree numbers: sigma(A005117(n)).

Offset 1, canonical program `A062822.P13975965535724837111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062822 (n : ℕ) : ℤ :=
  (A062822.P13975965535724837111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062838.P4769683379412633527

`A005117(n+1)^3`
-/

namespace A062838.P4769683379412633527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) ^ 3

end

end A062838.P4769683379412633527

noncomputable section

/-- A062838: Cubes of squarefree numbers.

Offset 1, canonical program `A062838.P4769683379412633527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062838 (n : ℕ) : ℤ :=
  A062838.P4769683379412633527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062839.P16129045088072440583

`floor(A048448(n+1)/2)`
-/

namespace A062839.P16129045088072440583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048448 (n + 1) : ℚ) / 2⌋

end

end A062839.P16129045088072440583

noncomputable section

/-- A062839: a(n) = floor((prime(n-1)+prime(n+1))/2).

Offset 1, canonical program `A062839.P16129045088072440583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062839 (n : ℕ) : ℤ :=
  A062839.P16129045088072440583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062875.P9437955210362976688

`5^A102781(n+1)`
-/

namespace A062875.P9437955210362976688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A102781 (n + 1) : ℤ)

end

end A062875.P9437955210362976688

noncomputable section

/-- A062875: Records in A046112 (or A006339).

Offset 1, canonical program `A062875.P9437955210362976688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062875 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062875.P9437955210362976688.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102781, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062950.P11962313584920516019

`A001065(A055684(n+3)+1)-1`
-/

namespace A062950.P11962313584920516019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A055684 (n + 3) + 1).toNat - 1

end

end A062950.P11962313584920516019

noncomputable section

/-- A062950: C(H(n)), where C(n) is Chowla's function (A048050) and H(n) is the half-totient function (A023022).

Offset 3, canonical program `A062950.P11962313584920516019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950 (n : ℕ) : ℤ :=
  A062950.P11962313584920516019.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062957.P18008206236470764848

`A320059(n+1)-∑[2*n]`
-/

namespace A062957.P18008206236470764848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320059 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062957.P18008206236470764848

noncomputable section

/-- A062957: a(n) = C(n^2) - C(n), where C(n) is Chowla's function (A048050).

Offset 1, canonical program `A062957.P18008206236470764848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062957 (n : ℕ) : ℤ :=
  A062957.P18008206236470764848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063080.P8650061368992008328

`filter[A082293(n+1), A336040(#)]`
-/

namespace A063080.P8650061368992008328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A063080.P8650061368992008328

noncomputable section

/-- A063080: Numbers k such that k/d(k) is prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A063080.P8650061368992008328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A063080 (n : ℕ) : ℤ :=
  A063080.P8650061368992008328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. -/
def A063080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063086.P11683879308177536840

`gcd(A001223(n+1), A008864(n+1))`
-/

namespace A063086.P11683879308177536840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A008864 (n + 1))

end

end A063086.P11683879308177536840

noncomputable section

/-- A063086: a(n) = gcd(1 + prime(n+1), 1 + prime(n)).

Offset 1, canonical program `A063086.P11683879308177536840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063086 (n : ℕ) : ℤ :=
  (A063086.P11683879308177536840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063088.P15088011363565998970

`A091369(n+1)-A397992(n)`
-/

namespace A063088.P15088011363565998970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - A397992 n

end

end A063088.P15088011363565998970

noncomputable section

/-- A063088: a(n) = Sum_{k=1..n} phi(k) - Sum{k=1..n} d(k), where d() is the number of divisors function.

Offset 1, canonical program `A063088.P15088011363565998970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063088 (n : ℕ) : ℤ :=
  A063088.P15088011363565998970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063475.P17155963557761105303

`A001157(A055684(n+3)+1)`
-/

namespace A063475.P17155963557761105303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A055684 (n + 3) + 1).toNat

end

end A063475.P17155963557761105303

noncomputable section

/-- A063475: Sum_{d | H(n)} d^2, where H(n) is the Half-Totient function (A023022).

Offset 3, canonical program `A063475.P17155963557761105303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475 (n : ℕ) : ℤ :=
  A063475.P17155963557761105303.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063641.P1389479516569409955

`p?[A046316(n+1)-2]`
-/

namespace A063641.P1389479516569409955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063641.P1389479516569409955

noncomputable section

/-- A063641: Primes of form p*q*r - 2, where p, q and r are primes (not necessarily distinct).

Offset 1, canonical program `A063641.P1389479516569409955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A063641 (n : ℕ) : ℤ :=
  A063641.P1389479516569409955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A063641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063642.P3584060890965356888

`p?[A046316(n+1)+2]`
-/

namespace A063642.P3584060890965356888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063642.P3584060890965356888

noncomputable section

/-- A063642: Primes of form p*q*r + 2, where p, q and r are primes (not necessarily distinct).

Offset 1, canonical program `A063642.P3584060890965356888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A063642 (n : ℕ) : ℤ :=
  A063642.P3584060890965356888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. -/
def A063642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063766.P12128886107065429887

`A007918(A000400(n))`
-/

namespace A063766.P12128886107065429887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000400 n).toNat

end

end A063766.P12128886107065429887

noncomputable section

/-- A063766: a(n) is the smallest prime >= 6^n.

Offset 0, canonical program `A063766.P12128886107065429887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063766 (n : ℕ) : ℤ :=
  A063766.P12128886107065429887.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063880.P5681857792840883182

`record[lcm(4, lcm(27, A005117(n+1)))]`
-/

namespace A063880.P5681857792840883182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Int.lcm 27 (A005117 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P5681857792840883182

noncomputable section

/-- A063880: Numbers k such that sigma(k) = 2*usigma(k).

Offset 1, canonical program `A063880.P5681857792840883182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063880 (n : ℕ) : ℤ :=
  (A063880.P5681857792840883182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063912.P3574652520992359286

`p?[A001281(A001223(n+1))+a(n-1)]` with `a(0)=7`
-/

namespace A063912.P3574652520992359286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A001281 (A001223 (n + 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P3574652520992359286

noncomputable section

/-- A063912: Primes p such that 2*p - 11 is also prime.

Offset 1, canonical program `A063912.P3574652520992359286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A063912 (n : ℕ) : ℤ :=
  A063912.P3574652520992359286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A063912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063962.P11030534656895760199

`∑{e}[A382486(n+1), #]`
-/

namespace A063962.P11030534656895760199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A063962.P11030534656895760199

noncomputable section

/-- A063962: Number of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A063962.P11030534656895760199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962 (n : ℕ) : ℤ :=
  (A063962.P11030534656895760199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063962.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A064663.P444664997799943001

`A064661(n+1)-1`
-/

namespace A064663.P444664997799943001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064661 (n + 1) - 1

end

end A064663.P444664997799943001

noncomputable section

/-- A064663: a(n) = n - ceiling( prime(n)/log(prime(n)) ).

Offset 1, canonical program `A064663.P444664997799943001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064663 (n : ℕ) : ℤ :=
  A064663.P444664997799943001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064677.P14442918874238493608

`A152991(n+1)-A001223(n+1)`
-/

namespace A064677.P14442918874238493608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152991 (n + 1) - A001223 (n + 1)

end

end A064677.P14442918874238493608

noncomputable section

/-- A064677: a(n) = sigma(n) - D(n) - pi(n), where D(n)=A001223, pi(n)= A000720.

Offset 1, canonical program `A064677.P14442918874238493608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064677 (n : ℕ) : ℤ :=
  A064677.P14442918874238493608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064766.P6005750168765779772

`A332663(C(n+1, 2)+n)+1`
-/

namespace A064766.P6005750168765779772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 (Nat.choose (n + 1) 2 + n) + 1

end

end A064766.P6005750168765779772

noncomputable section

/-- A064766: Fill up an infinite triangular array by rows by successively writing numbers 1, then 1 up to 2*3/2, then 1 up to 3*4/2, then 1 up to 4*5/2 and so on, at the k-th step writing the numbers from 1 up to the k-th triangular number. The final elements of the rows of this infinite triangle form the sequence.

Offset 0, canonical program `A064766.P6005750168765779772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A064766 (n : ℕ) : ℤ :=
  A064766.P6005750168765779772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A064766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064775.P13267556708224384151

`∑[1-A341642(n+1)]`
-/

namespace A064775.P13267556708224384151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064775.P13267556708224384151

noncomputable section

/-- A064775: Number of positive integers k <= n such that all prime divisors of k are <= sqrt(k).

Offset 1, canonical program `A064775.P13267556708224384151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064775 (n : ℕ) : ℤ :=
  A064775.P13267556708224384151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064799.P13450618005534133469

`A000040(n+1)+A002808(n+1)`
-/

namespace A064799.P13450618005534133469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A002808 (n + 1)

end

end A064799.P13450618005534133469

noncomputable section

/-- A064799: Sum of n-th prime number and n-th composite number.

Offset 1, canonical program `A064799.P13450618005534133469`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064799 (n : ℕ) : ℤ :=
  A064799.P13450618005534133469.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064813.P8078473473580934433

`C(A002808(n+1), n+1)`
-/

namespace A064813.P8078473473580934433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002808 (n + 1)).toNat (n + 1)

end

end A064813.P8078473473580934433

noncomputable section

/-- A064813: a(n) = binomial(composite(n), n), where composite = A002808, composite numbers.

Offset 1, canonical program `A064813.P8078473473580934433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A064813 (n : ℕ) : ℤ :=
  (A064813.P8078473473580934433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A064813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064830.P10592305738085255730

`gcd(n+1, A084920(n+1))`
-/

namespace A064830.P10592305738085255730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A084920 (n + 1))

end

end A064830.P10592305738085255730

noncomputable section

/-- A064830: a(n) = gcd(n, prime(n)^2 - 1).

Offset 1, canonical program `A064830.P10592305738085255730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064830 (n : ℕ) : ℤ :=
  (A064830.P10592305738085255730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064924.P8868015607657857306

`A007917(n+2)*A049711(n+3)`
-/

namespace A064924.P8868015607657857306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A049711 (n + 3)

end

end A064924.P8868015607657857306

noncomputable section

/-- A064924: If n is prime then a(n) = n; for the subsequent nonprime positions a(n + k) = (k+1)*n; then at the next prime position a new subsequence begins.

Offset 2, canonical program `A064924.P8868015607657857306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064924 (n : ℕ) : ℤ :=
  A064924.P8868015607657857306.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065010.P16498944840396974367

`eq[7, A091453(n)]`
-/

namespace A065010.P16498944840396974367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065010.P16498944840396974367

noncomputable section

/-- A065010: Integers for which the periodic part of the continued fraction for the square root of n begins with 7.

Offset 1, canonical program `A065010.P16498944840396974367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A065010 (n : ℕ) : ℤ :=
  (A065010.P16498944840396974367.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A065010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065011.P17167326907996405947

`eq[8, A091453(n)]`
-/

namespace A065011.P17167326907996405947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065011.P17167326907996405947

noncomputable section

/-- A065011: Integers for which the periodic part of the continued fraction for the square root of n begins with 8.

Offset 1, canonical program `A065011.P17167326907996405947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A065011 (n : ℕ) : ℤ :=
  (A065011.P17167326907996405947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A065011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065012.P14673952544101312650

`eq[9, A091453(n)]`
-/

namespace A065012.P14673952544101312650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065012.P14673952544101312650

noncomputable section

/-- A065012: Integers for which the periodic part of the continued fraction for the square root of n begins with 9.

Offset 1, canonical program `A065012.P14673952544101312650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A065012 (n : ℕ) : ℤ :=
  (A065012.P14673952544101312650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A065012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065133.P12702642519193252515

`p?[2*n+1]%∑[A010051(n+2)]`
-/

namespace A065133.P12702642519193252515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065133.P12702642519193252515

noncomputable section

/-- A065133: Remainder when n-th prime is divided by the number of primes not exceeding n.

Offset 2, canonical program `A065133.P12702642519193252515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065133 (n : ℕ) : ℤ :=
  A065133.P12702642519193252515.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065134.P8917130816810710222

`A000027(n+2)%∑[A010051(n+2)]`
-/

namespace A065134.P8917130816810710222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065134.P8917130816810710222

noncomputable section

/-- A065134: Remainder when n is divided by the number of primes not exceeding n.

Offset 2, canonical program `A065134.P8917130816810710222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065134 (n : ℕ) : ℤ :=
  A065134.P8917130816810710222.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065227.P6933920780390560153

`A332663(∑[n])+1`
-/

namespace A065227.P6933920780390560153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A065227.P6933920780390560153

noncomputable section

/-- A065227: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the triangular numbers. The first elements of the rows form a(n).

Offset 0, canonical program `A065227.P6933920780390560153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A065227 (n : ℕ) : ℤ :=
  A065227.P6933920780390560153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A065227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065228.P11115784030113203353

`A064866(∑[n]+1)`
-/

namespace A065228.P11115784030113203353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A065228.P11115784030113203353

noncomputable section

/-- A065228: Fill a triangular array by rows by writing numbers 1 up to b(0), 1 up to b(1), etc., where b(n) are the square numbers. The first elements of the rows form a(n).

Offset 0, canonical program `A065228.P11115784030113203353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A065228 (n : ℕ) : ℤ :=
  A065228.P11115784030113203353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A065228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065348.P1935091354727821189

`eq[0, A065345(n+1)]+1`
-/

namespace A065348.P1935091354727821189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065348.P1935091354727821189

noncomputable section

/-- A065348: Positions of zeros in A065345.

Offset 1, canonical program `A065348.P1935091354727821189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8862 terms. -/
def A065348 (n : ℕ) : ℤ :=
  (A065348.P1935091354727821189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8862 terms. -/
def A065348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065359.P2716114422933254065

`A139351(n)-A139352(n)`
-/

namespace A065359.P2716114422933254065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A139352 n

end

end A065359.P2716114422933254065

noncomputable section

/-- A065359: Alternating bit sum for n: replace 2^k with (-1)^k in binary expansion of n.

Offset 0, canonical program `A065359.P2716114422933254065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065359 (n : ℕ) : ℤ :=
  A065359.P2716114422933254065.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065359.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A065435.P6402340277804625801

`A007917(a(n-2))+A007917(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A065435.P6402340277804625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007917 (a (n - 2)).toNat + A007917 (a (n - 1)).toNat

end

end A065435.P6402340277804625801

noncomputable section

/-- A065435: a(3) = 2, a(4) = 3; for n > 4, a(n) = {a(n-2)}+{a(n-1)}, where {a} means largest prime <= a.

Offset 3, canonical program `A065435.P6402340277804625801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065435 (n : ℕ) : ℤ :=
  A065435.P6402340277804625801.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065620.P132964274324401119

`(2*A265263(n)-n)*(2*A010060(n)-1)`
-/

namespace A065620.P132964274324401119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A265263 n - (n : ℤ)) * (2 * A010060 n - 1)

end

end A065620.P132964274324401119

noncomputable section

/-- A065620: a(0)=0; thereafter a(2n) = 2a(n), a(2n+1) = -2a(n) + 1.

Offset 0, canonical program `A065620.P132964274324401119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065620 (n : ℕ) : ℤ :=
  A065620.P132964274324401119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065704.P16680503474839831592

`∑{d}[n+1, A053866(#)]`
-/

namespace A065704.P16680503474839831592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d

end

end A065704.P16680503474839831592

noncomputable section

/-- A065704: Number of squares or twice squares dividing n.

Offset 1, canonical program `A065704.P16680503474839831592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704 (n : ℕ) : ℤ :=
  A065704.P16680503474839831592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065726.P14405010515887988270

`p?[A036963(n+1)]`
-/

namespace A065726.P14405010515887988270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065726.P14405010515887988270

noncomputable section

/-- A065726: Primes p whose base-8 expansion is also the decimal expansion of a prime.

Offset 1, canonical program `A065726.P14405010515887988270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A065726 (n : ℕ) : ℤ :=
  A065726.P14405010515887988270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. -/
def A065726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065727.P9498803677997058480

`p?[A036964(n+1)]`
-/

namespace A065727.P9498803677997058480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065727.P9498803677997058480

noncomputable section

/-- A065727: Primes p such that the decimal expansion of its base-9 conversion is also prime.

Offset 1, canonical program `A065727.P9498803677997058480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A065727 (n : ℕ) : ℤ :=
  A065727.P9498803677997058480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 949 terms. -/
def A065727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065857.P4025716272230891271

`A002808(A011557(n))`
-/

namespace A065857.P4025716272230891271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A011557 n).toNat

end

end A065857.P4025716272230891271

noncomputable section

/-- A065857: The (10^n)-th composite number.

Offset 0, canonical program `A065857.P4025716272230891271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065857 (n : ℕ) : ℤ :=
  A065857.P4025716272230891271.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065861.P13523811029634715553

`A056653(n+2)%∑[A010051(n+2)]`
-/

namespace A065861.P13523811029634715553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065861.P13523811029634715553

noncomputable section

/-- A065861: Remainder when the n-th composite number is divided by pi(n), the number of primes not exceeding n.

Offset 2, canonical program `A065861.P13523811029634715553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065861 (n : ℕ) : ℤ :=
  A065861.P13523811029634715553.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066197.P16024731333770080080

`A000040(n+1)*A007947(n+1)*A007947(A014688(n+1))`
-/

namespace A066197.P16024731333770080080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007947 (n + 1) * A007947 (A014688 (n + 1)).toNat

end

end A066197.P16024731333770080080

noncomputable section

/-- A066197: Squarefree kernel of (n*prime(n))*(n+prime(n)).

Offset 1, canonical program `A066197.P16024731333770080080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A066197 (n : ℕ) : ℤ :=
  A066197.P16024731333770080080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A066197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066760.P15906391362368166906

`1+A067392(n+1)-A000203(n+1)`
-/

namespace A066760.P15906391362368166906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A067392 (n + 1) - A000203 (n + 1)

end

end A066760.P15906391362368166906

noncomputable section

/-- A066760: a(n) = Sum_{1<=k<=n, k is not a divisor of n and k is not coprime to n} k.

Offset 1, canonical program `A066760.P15906391362368166906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066760 (n : ℕ) : ℤ :=
  A066760.P15906391362368166906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066876.P931542748291788386

`eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1`
-/

namespace A066876.P931542748291788386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n % (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066876.P931542748291788386

noncomputable section

/-- A066876: Numbers n such that prime(k+2) + prime(k-2) = 2*prime(k).

Offset 1, canonical program `A066876.P931542748291788386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066876 (n : ℕ) : ℤ :=
  (A066876.P931542748291788386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066886.P15290808169999445484

`floor(A181150(n+1)/2)`
-/

namespace A066886.P15290808169999445484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181150 (n + 1) : ℚ) / 2⌋

end

end A066886.P15290808169999445484

noncomputable section

/-- A066886: Sum of the elements in any transversal of a prime(n) X prime(n) array containing the numbers from 1 to prime(n)^2 in standard order.

Offset 1, canonical program `A066886.P15290808169999445484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066886 (n : ℕ) : ℤ :=
  A066886.P15290808169999445484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066886.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A067535.P4022981712752583231

`A005117(∑[char[A005117(n+1)]]+1)`
-/

namespace A067535.P4022981712752583231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067535.P4022981712752583231

noncomputable section

/-- A067535: Smallest squarefree number >= n.

Offset 1, canonical program `A067535.P4022981712752583231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067535 (n : ℕ) : ℤ :=
  A067535.P4022981712752583231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067563.P8241945958915333115

`A000040(n+1)*A002808(n+1)`
-/

namespace A067563.P8241945958915333115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A002808 (n + 1)

end

end A067563.P8241945958915333115

noncomputable section

/-- A067563: Product of n-th prime number and n-th composite number.

Offset 1, canonical program `A067563.P8241945958915333115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067563 (n : ℕ) : ℤ :=
  A067563.P8241945958915333115.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A067563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067614.P13727524300754459105

`A091453(A000040(n+1))`
-/

namespace A067614.P13727524300754459105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A000040 (n + 1)).toNat

end

end A067614.P13727524300754459105

noncomputable section

/-- A067614: a(n) is the second partial quotient in the simple continued fraction for sqrt(prime(n)).

Offset 1, canonical program `A067614.P13727524300754459105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A067614 (n : ℕ) : ℤ :=
  A067614.P13727524300754459105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A067614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067720.P10605338190023800648

`eq[A053000(A053000(n))², A001065(n+1)]`
-/

namespace A067720.P10605338190023800648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A053000 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P10605338190023800648

noncomputable section

/-- A067720: Numbers k such that phi(k^2+1) = k*phi(k+1).

Offset 1, canonical program `A067720.P10605338190023800648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A067720 (n : ℕ) : ℤ :=
  (A067720.P10605338190023800648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A067720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067792.P11711498623631889729

`A007918(A000203(n+1))`
-/

namespace A067792.P11711498623631889729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000203 (n + 1)).toNat

end

end A067792.P11711498623631889729

noncomputable section

/-- A067792: a(n) is the least prime >= sigma(n).

Offset 1, canonical program `A067792.P11711498623631889729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067792 (n : ℕ) : ℤ :=
  A067792.P11711498623631889729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067800.P328424139569097014

`filter[A014076(n+1), A374134(#)]`
-/

namespace A067800.P328424139569097014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A067800.P328424139569097014

noncomputable section

/-- A067800: Nonprime numbers k such that phi(k) > k/2.

Offset 1, canonical program `A067800.P328424139569097014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A067800 (n : ℕ) : ℤ :=
  A067800.P328424139569097014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A067800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067807.P1106689296877050053

`lt[A195735(n+1), 0]+1`
-/

namespace A067807.P1106689296877050053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067807.P1106689296877050053

noncomputable section

/-- A067807: Numbers k such that sigma(k)^2 > 2*sigma(k^2).

Offset 1, canonical program `A067807.P1106689296877050053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A067807 (n : ℕ) : ℤ :=
  (A067807.P1106689296877050053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A067807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067970.P18334042092421451489

`A014076(n+2)-A014076(n+1)`
-/

namespace A067970.P18334042092421451489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2) - A014076 (n + 1)

end

end A067970.P18334042092421451489

noncomputable section

/-- A067970: First differences of A014076, the odd nonprimes.

Offset 1, canonical program `A067970.P18334042092421451489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067970 (n : ℕ) : ℤ :=
  A067970.P18334042092421451489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067988.P7063124525952805528

`A129707(n+1)+A055243(n)`
-/

namespace A067988.P7063124525952805528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 1) + A055243 n

end

end A067988.P7063124525952805528

noncomputable section

/-- A067988: Row sums of triangle A067330; also of triangle A067418.

Offset 0, canonical program `A067988.P7063124525952805528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A067988 (n : ℕ) : ℤ :=
  A067988.P7063124525952805528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A067988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068207.P7943942854021389993

`eq[A129296(n+1), A292286(n+1)]+1`
-/

namespace A068207.P7943942854021389993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068207.P7943942854021389993

noncomputable section

/-- A068207: Numbers k such that the number of divisors of k^2-1 equals the number of divisors of k.

Offset 1, canonical program `A068207.P7943942854021389993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207 (n : ℕ) : ℤ :=
  (A068207.P7943942854021389993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A068207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068499.P703561085316997960

`A008578(n+1)-C(n, C(5, n²))`
-/

namespace A068499.P703561085316997960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (Nat.choose n (Nat.choose 5 (n ^ 2)) : ℤ)

end

end A068499.P703561085316997960

noncomputable section

/-- A068499: Numbers m such that m! reduced modulo (m+1) is not zero.

Offset 1, canonical program `A068499.P703561085316997960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068499 (n : ℕ) : ℤ :=
  A068499.P703561085316997960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068503.P5489899540009911754

`3^A099584(n+1)`
-/

namespace A068503.P5489899540009911754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A099584 (n + 1) : ℤ)

end

end A068503.P5489899540009911754

noncomputable section

/-- A068503: Highest power of 3 dividing prime(n)-1.

Offset 1, canonical program `A068503.P5489899540009911754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068503.P5489899540009911754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068780.P12907519640094677805

`A005381(n+1)-1`
-/

namespace A068780.P12907519640094677805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1) - 1

end

end A068780.P12907519640094677805

noncomputable section

/-- A068780: Composite numbers n such that n+1 is also composite.

Offset 1, canonical program `A068780.P12907519640094677805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068780 (n : ℕ) : ℤ :=
  A068780.P12907519640094677805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068780.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069097.P10375503292735525789

`∑{d}[n+1, A341772(#)]`
-/

namespace A069097.P10375503292735525789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d

end

end A069097.P10375503292735525789

noncomputable section

/-- A069097: Moebius transform of A064987, n*sigma(n).

Offset 1, canonical program `A069097.P10375503292735525789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069097 (n : ℕ) : ℤ :=
  A069097.P10375503292735525789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069097.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070010.P16560855416701728710

`gcd(A053246(n+1), A173455(n+1))`
-/

namespace A070010.P16560855416701728710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053246 (n + 1)) (A173455 (n + 1))

end

end A070010.P16560855416701728710

noncomputable section

/-- A070010: GCD of consecutive values of sum-of-proper divisors.

Offset 1, canonical program `A070010.P16560855416701728710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070010 (n : ℕ) : ℤ :=
  (A070010.P16560855416701728710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070098.P11418208378011695116

`A059169(n+1)-A070106(n+1)`
-/

namespace A070098.P11418208378011695116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) - A070106 (n + 1)

end

end A070098.P11418208378011695116

noncomputable section

/-- A070098: Number of integer triangles with perimeter n which are acute and isosceles.

Offset 1, canonical program `A070098.P11418208378011695116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070098 (n : ℕ) : ℤ :=
  A070098.P11418208378011695116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070320.P6872280522638046061

`A007917(or(1, n)+1)-1`
-/

namespace A070320.P6872280522638046061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Nat.lor 1 n + 1) - 1

end

end A070320.P6872280522638046061

noncomputable section

/-- A070320: a(n) = Max( phi(k) : k=1..n ).

Offset 1, canonical program `A070320.P6872280522638046061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320 (n : ℕ) : ℤ :=
  A070320.P6872280522638046061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070321.P3279728177595484177

`A005117(n+1-A057627(n+1))`
-/

namespace A070321.P3279728177595484177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 ((n + 1 : ℤ) - A057627 (n + 1)).toNat

end

end A070321.P3279728177595484177

noncomputable section

/-- A070321: Greatest squarefree number <= n.

Offset 1, canonical program `A070321.P3279728177595484177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070321 (n : ℕ) : ℤ :=
  A070321.P3279728177595484177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070321.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-- A070545: a(n) = Card( k, 0

Offset 1, canonical program `A070545.P9962568616879436559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545 (n : ℕ) : ℤ :=
  A070545.P9962568616879436559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070545.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070871.P13814172199849569583

`Δ[A007729(n)]*A002487(n+1)`
-/

namespace A070871.P13814172199849569583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002487 (n + 1)

end

end A070871.P13814172199849569583

noncomputable section

/-- A070871: a(n) = A002487(n) * A002487(n+1) (Conway's alimentary function).

Offset 1, canonical program `A070871.P13814172199849569583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070871 (n : ℕ) : ℤ :=
  A070871.P13814172199849569583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A070930.P12126478185496357273

`A070923((n+1)²)`
-/

namespace A070930.P12126478185496357273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 ((n + 1) ^ 2)

end

end A070930.P12126478185496357273

noncomputable section

/-- A070930: Smallest integer >= 0 of the form x^3 - n^4.

Offset 1, canonical program `A070930.P12126478185496357273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A070930 (n : ℕ) : ℤ :=
  A070930.P12126478185496357273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A070930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071255.P17108161913792232219

`A005117(a(n-1)+1)` with `a(0)=2`
-/

namespace A071255.P17108161913792232219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (a (n - 1) + 1).toNat

end

end A071255.P17108161913792232219

noncomputable section

/-- A071255: a(1) = 2, a(n+1) = a(n)-th squarefree number > 1.

Offset 1, canonical program `A071255.P17108161913792232219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071255 (n : ℕ) : ℤ :=
  A071255.P17108161913792232219.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071255.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A071259.P17396136488218185286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071259 (n : ℕ) : ℤ :=
  A071259.P17396136488218185286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 0, canonical program `A071883.P11933639635216744692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071883 (n : ℕ) : ℤ :=
  A071883.P11933639635216744692.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071883.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A071908.P8967790956812859439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071908 (n : ℕ) : ℤ :=
  A071908.P8967790956812859439.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071908.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A071909.P3018903466328539296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071909.P3018903466328539296.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071917.P7587842749427961361

`∑[A060715(n+1)]`
-/

namespace A071917.P7587842749427961361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P7587842749427961361

noncomputable section

/-- A071917: Number of pairs (x,y) where x is even, y is odd, 1<=x<=n, 1<=y<=n and x+y is prime.

Offset 1, canonical program `A071917.P7587842749427961361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071917 (n : ℕ) : ℤ :=
  A071917.P7587842749427961361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072047.P14021411740152222059

`∑{e}[A005117(n+1), #]`
-/

namespace A072047.P14021411740152222059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A072047.P14021411740152222059

noncomputable section

/-- A072047: Number of prime factors of the squarefree numbers: omega(A005117(n)).

Offset 1, canonical program `A072047.P14021411740152222059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072047 (n : ℕ) : ℤ :=
  (A072047.P14021411740152222059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072055.P6834316123461544049

`A089241(n+1)-1`
-/

namespace A072055.P6834316123461544049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 1

end

end A072055.P6834316123461544049

noncomputable section

/-- A072055: a(n) = 2*prime(n)+1.

Offset 1, canonical program `A072055.P6834316123461544049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072055 (n : ℕ) : ℤ :=
  A072055.P6834316123461544049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072055.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072273.P12501191474515330046

`A000120(A060594(n+1)-1)`
-/

namespace A072273.P12501191474515330046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060594 (n + 1) - 1).toNat

end

end A072273.P12501191474515330046

noncomputable section

/-- A072273: Index of powers of 2 that equal the number of noncongruent roots to the congruence x^2 == k (mod n) for (k,n)=1 and assuming solvability.

Offset 1, canonical program `A072273.P12501191474515330046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072273 (n : ℕ) : ℤ :=
  A072273.P12501191474515330046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072273.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072437.P9080563627844174689

`lt[A140211(n+1), 2]+1`
-/

namespace A072437.P9080563627844174689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140211 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P9080563627844174689

noncomputable section

/-- A072437: Numbers with no prime factors of form 4*k+3.

Offset 1, canonical program `A072437.P9080563627844174689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437 (n : ℕ) : ℤ :=
  (A072437.P9080563627844174689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072491.P7864567576661670138

`a(A064722(n))+1` with `a(0)=0`
-/

namespace A072491.P7864567576661670138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A064722 n).toNat + 1

end

end A072491.P7864567576661670138

noncomputable section

/-- A072491: Define f(1) = 0. For n>=2, let f(n) = n - p where p is the largest prime <= n. a(n) = number of iterations of f to reach 0, starting from n.

Offset 0, canonical program `A072491.P7864567576661670138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072491 (n : ℕ) : ℤ :=
  (A072491.P7864567576661670138.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072565.P9336075110416781300

`(A109805(n+1)+1)%A000040(n+1)`
-/

namespace A072565.P9336075110416781300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109805 (n + 1) + 1) (A000040 (n + 1))

end

end A072565.P9336075110416781300

noncomputable section

/-- A072565: a(n) = prime(n+1)*prime(n+2)+1 mod prime(n), where prime(n) is the n-th prime.

Offset 1, canonical program `A072565.P9336075110416781300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072565 (n : ℕ) : ℤ :=
  A072565.P9336075110416781300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072681.P9350570454593970315

`∑[A013632(n+1)-1-A064722(n+1)]`
-/

namespace A072681.P9350570454593970315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) - 1 - A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072681.P9350570454593970315

noncomputable section

/-- A072681: a(n) = (n - A007917(n)) * (A007918(n) - n).

Offset 2, canonical program `A072681.P9350570454593970315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072681 (n : ℕ) : ℤ :=
  A072681.P9350570454593970315.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072747.P10312719963861894901

`∑[val(A005117(n+1), 2)]`
-/

namespace A072747.P10312719963861894901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P10312719963861894901

noncomputable section

/-- A072747: Counting factor 2 in the first n squarefree numbers.

Offset 1, canonical program `A072747.P10312719963861894901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072747 (n : ℕ) : ℤ :=
  (A072747.P10312719963861894901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072750.P10876359717229383901

`∑[val(A005117(n+1), 7)]`
-/

namespace A072750.P10876359717229383901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P10876359717229383901

noncomputable section

/-- A072750: Counting factor 7 in the first n squarefree numbers.

Offset 1, canonical program `A072750.P10876359717229383901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072750 (n : ℕ) : ℤ :=
  (A072750.P10876359717229383901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072750.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072762.P12279821662267577530

`A010051(n+1)+2*a(n-1)` with `a(0)=0`
-/

namespace A072762.P12279821662267577530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010051 (n + 1) + 2 * a (n - 1)

end

end A072762.P12279821662267577530

noncomputable section

/-- A072762: n coded as binary word of length=n with k-th bit set iff k is prime (1<=k<=n), decimal value.

Offset 1, canonical program `A072762.P12279821662267577530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A072762 (n : ℕ) : ℤ :=
  A072762.P12279821662267577530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A072762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072778.P14682315086091063845

`∑[C(A071625(n+1), A071625(n+1)²)]`
-/

namespace A072778.P14682315086091063845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071625 (n + 1)).toNat (A071625 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072778.P14682315086091063845

noncomputable section

/-- A072778: Number of powers of squarefree numbers <= n.

Offset 1, canonical program `A072778.P14682315086091063845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072778 (n : ℕ) : ℤ :=
  (A072778.P14682315086091063845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072903.P14263052383570687834

`∪[A119413(n+1), A335437(n+1)]`
-/

namespace A072903.P14263052383570687834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072903.P14263052383570687834

noncomputable section

/-- A072903: Numbers m such that the discriminant of the quadratic field Q(sqrt(m)) < m.

Offset 1, canonical program `A072903.P14263052383570687834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072903 (n : ℕ) : ℤ :=
  (A072903.P14263052383570687834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073076.P15256774051440457723

`lt[A256277(n+1), 1]+1`
-/

namespace A073076.P15256774051440457723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256277 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073076.P15256774051440457723

noncomputable section

/-- A073076: Numbers k such that 2*k+1 divides C(2*k,k).

Offset 1, canonical program `A073076.P15256774051440457723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A073076 (n : ℕ) : ℤ :=
  (A073076.P15256774051440457723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A073076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073094.P6042488046944227531

`A008458(A120880(n+1))%10`
-/

namespace A073094.P6042488046944227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A120880 (n + 1)).toNat) 10

end

end A073094.P6042488046944227531

noncomputable section

/-- A073094: Final digit of C(2k,k) when not equal to zero.

Offset 1, canonical program `A073094.P6042488046944227531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073094 (n : ℕ) : ℤ :=
  A073094.P6042488046944227531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073094.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A073171.P16806449841852337076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073171 (n : ℕ) : ℤ :=
  A073171.P16806449841852337076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073171.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A073342.P12215052563229227587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073342 (n : ℕ) : ℤ :=
  A073342.P12215052563229227587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073438.P3549678285096826375

`-xor(n, -1)%∑[A010051(n+2)]`
-/

namespace A073438.P3549678285096826375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073438.P3549678285096826375

noncomputable section

/-- A073438: Remainder of division G[n]/Pi[n], where G[n] is the number of composites not exceeding n.

Offset 2, canonical program `A073438.P3549678285096826375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073438 (n : ℕ) : ℤ :=
  A073438.P3549678285096826375.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073458.P13611208984373621108

`floor(A000040(n+1)/A002808(n+1))`
-/

namespace A073458.P13611208984373621108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A073458.P13611208984373621108

noncomputable section

/-- A073458: a(n) = floor(prime(n)/composite(n)).

Offset 1, canonical program `A073458.P13611208984373621108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073458 (n : ℕ) : ℤ :=
  A073458.P13611208984373621108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A073634.P3279946231504670858

`eq[0, A072418(n+2)]+2`
-/

namespace A073634.P3279946231504670858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073634.P3279946231504670858

noncomputable section

/-- A073634: Numbers k such that floor((3/2)^k) = A002379(k) is even.

Offset 1, canonical program `A073634.P3279946231504670858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A073634 (n : ℕ) : ℤ :=
  (A073634.P3279946231504670858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A073634.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A073781.P9008484040697988353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073781 (n : ℕ) : ℤ :=
  A073781.P9008484040697988353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073781.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A073784.P11348036052450804536

`A010051(A002808(n+1)+1)`
-/

namespace A073784.P11348036052450804536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002808 (n + 1) + 1).toNat

end

end A073784.P11348036052450804536

noncomputable section

/-- A073784: Number of primes between successive composite numbers.

Offset 1, canonical program `A073784.P11348036052450804536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073784 (n : ℕ) : ℤ :=
  A073784.P11348036052450804536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073784.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074057.P6967748119844272720

`A140434(n+1)-A065475(n+1)`
-/

namespace A074057.P6967748119844272720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1) - A065475 (n + 1)

end

end A074057.P6967748119844272720

noncomputable section

/-- A074057: a(n) = 2*phi(n-2)-(n-1).

Offset 3, canonical program `A074057.P6967748119844272720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074057 (n : ℕ) : ℤ :=
  A074057.P6967748119844272720.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074216.P13813814254964927906

`A072864(n+1)²`
-/

namespace A074216.P13813814254964927906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1) ^ 2

end

end A074216.P13813814254964927906

noncomputable section

/-- A074216: Squares satisfying sigma(n)==0 (mod 3).

Offset 1, canonical program `A074216.P13813814254964927906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074216 (n : ℕ) : ℤ :=
  A074216.P13813814254964927906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074216.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074265.P13288545714084020054

`A022303(5*n+1)`
-/

namespace A074265.P13288545714084020054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (5 * n + 1)

end

end A074265.P13288545714084020054

noncomputable section

/-- A074265: Values of Kolakoski sequence A000002 at positions n = 0 mod 5.

Offset 1, canonical program `A074265.P13288545714084020054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A074265 (n : ℕ) : ℤ :=
  A074265.P13288545714084020054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A074265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074286.P18124953624771760881

`∑[2-A049705(n+1)]`
-/

namespace A074286.P18124953624771760881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074286.P18124953624771760881

noncomputable section

/-- A074286: Partial sum of the Kolakoski sequence (A000002) minus n.

Offset 1, canonical program `A074286.P18124953624771760881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074286 (n : ℕ) : ℤ :=
  A074286.P18124953624771760881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074286.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074325.P346685710110645117

`A001223(A000079(n))`
-/

namespace A074325.P346685710110645117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000079 n).toNat

end

end A074325.P346685710110645117

noncomputable section

/-- A074325: Difference between (1+2^n)-th and (2^n)-th primes. Also number of terms in blocks of A073798.

Offset 0, canonical program `A074325.P346685710110645117`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074325 (n : ℕ) : ℤ :=
  A074325.P346685710110645117.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074325.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A074461.P7953821107585836169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A004426, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074461 (n : ℕ) : ℤ :=
  A074461.P7953821107585836169.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A004426, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A074462.P4840725664766834667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074462 (n : ℕ) : ℤ :=
  A074462.P4840725664766834667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074595.P14791272909139769279

`∑{e}[A024619(n+1), #]`
-/

namespace A074595.P14791272909139769279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A074595.P14791272909139769279

noncomputable section

/-- A074595: Number of prime factors of numbers that are not prime powers (with multiplicity).

Offset 1, canonical program `A074595.P14791272909139769279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074595 (n : ℕ) : ℤ :=
  (A074595.P14791272909139769279.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074673.P10082879367460033562

`∩[A031969(n+1), A050757(n+1)]`
-/

namespace A074673.P10082879367460033562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074673.P10082879367460033562

noncomputable section

/-- A074673: Four-digit distinct-digit primes.

Offset 1, canonical program `A074673.P10082879367460033562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. -/
def A074673 (n : ℕ) : ℤ :=
  (A074673.P10082879367460033562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. -/
def A074673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076240.P7115261136017360923

`A318660(A000040(n+1))`
-/

namespace A076240.P7115261136017360923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318660 (A000040 (n + 1)).toNat

end

end A076240.P7115261136017360923

noncomputable section

/-- A076240: Remainder when 2nd order prime pp(n) = A006450(n) is divided by n-th prime = A000040(n).

Offset 1, canonical program `A076240.P7115261136017360923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A076240 (n : ℕ) : ℤ :=
  A076240.P7115261136017360923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6543 terms. -/
def A076240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076259.P17974691457858298678

`A005117(n+2)-A005117(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076259.P17974691457858298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) - A005117 (n + 1)

end

end A076259.P17974691457858298678

noncomputable section

/-- A076259: Gaps between squarefree numbers: a(n) = A005117(n+1) - A005117(n).

Offset 1, canonical program `A076259.P17974691457858298678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076259 (n : ℕ) : ℤ :=
  A076259.P17974691457858298678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076259.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076413.P15169787164116097640

`A069626(n+1)-A011782(A032741(n+1))`
-/

namespace A076413.P15169787164116097640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1) - A011782 (A032741 (n + 1)).toNat

end

end A076413.P15169787164116097640

noncomputable section

/-- A076413: Number of ways n is expressible as the least common multiple of a nonempty set of positive integers not containing either 1 or n.

Offset 1, canonical program `A076413.P15169787164116097640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076413 (n : ℕ) : ℤ :=
  A076413.P15169787164116097640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076545.P6221361317140441619

`∑[A076544(n+1)]`
-/

namespace A076545.P6221361317140441619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076545.P6221361317140441619

noncomputable section

/-- A076545: a(n) = Sum_{k=1..n} (mu(k) + sqf(k)) where mu(k) is Moebius function, sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

Offset 1, canonical program `A076545.P6221361317140441619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076545 (n : ℕ) : ℤ :=
  A076545.P6221361317140441619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076752.P13429521633124521481

`∑{d}[n+1, A206369(#)]`
-/

namespace A076752.P13429521633124521481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d

end

end A076752.P13429521633124521481

noncomputable section

/-- A076752: a(n) = Sum_{d is a square divisor of n} n/d.

Offset 1, canonical program `A076752.P13429521633124521481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752 (n : ℕ) : ℤ :=
  A076752.P13429521633124521481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076881.P18022169618499632962

`∑[A010051(n+2)]-floor((n+2)/log(n+2))`
-/

namespace A076881.P18022169618499632962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋

end

end A076881.P18022169618499632962

noncomputable section

/-- A076881: pi(n) - floor(n / log(n)), where pi(n) = the number of primes <= n.

Offset 2, canonical program `A076881.P18022169618499632962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076881 (n : ℕ) : ℤ :=
  A076881.P18022169618499632962.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076881.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077463.P3404474754757640182

`A060715(n+1)-A101264(n)`
-/

namespace A077463.P3404474754757640182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) - A101264 n

end

end A077463.P3404474754757640182

noncomputable section

/-- A077463: Number of primes p such that n < p < 2n-2.

Offset 1, canonical program `A077463.P3404474754757640182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077463 (n : ℕ) : ℤ :=
  A077463.P3404474754757640182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077463.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078722.P14824033831423424767

`A078721(n)+A001223(A000124(n))`
-/

namespace A078722.P14824033831423424767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078721 n + A001223 (A000124 n).toNat

end

end A078722.P14824033831423424767

noncomputable section

/-- A078722: a(n) = prime(n*(n+1)/2+2).

Offset 0, canonical program `A078722.P14824033831423424767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A078722 (n : ℕ) : ℤ :=
  A078722.P14824033831423424767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A078722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078771.P8502218742761172896

`A008475(n+1)-A001414(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078771.P8502218742761172896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A001414 (n + 1)

end

end A078771.P8502218742761172896

noncomputable section

/-- A078771: a(n) = A008475(n) - A001414(n).

Offset 1, canonical program `A078771.P8502218742761172896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078771 (n : ℕ) : ℤ :=
  A078771.P8502218742761172896.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078837.P5145990239234732204

`(A072205(n+1)-2)*A130290(n+1)`
-/

namespace A078837.P5145990239234732204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072205 (n + 1) - 2) * A130290 (n + 1)

end

end A078837.P5145990239234732204

noncomputable section

/-- A078837: a(n) = Sum_{k=1..prime(n)-1} floor(k^3/prime(n)).

Offset 1, canonical program `A078837.P5145990239234732204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078837 (n : ℕ) : ℤ :=
  A078837.P5145990239234732204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078838.P952050066526175109

`2*A005945(A102781(n+1))`
-/

namespace A078838.P952050066526175109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005945 (A102781 (n + 1)).toNat

end

end A078838.P952050066526175109

noncomputable section

/-- A078838: a(n) = Sum_{k=1..(p-1)*(p-2)} floor((k*p)^(1/3)) where p is the n-th prime.

Offset 1, canonical program `A078838.P952050066526175109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A078838 (n : ℕ) : ℤ :=
  A078838.P952050066526175109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A078838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079085.P15859101647096427914

`∑{e}[A079093(n+1), #]`
-/

namespace A079085.P15859101647096427914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A079085.P15859101647096427914

noncomputable section

/-- A079085: Number of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079085.P15859101647096427914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A079085 (n : ℕ) : ℤ :=
  (A079085.P15859101647096427914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A079085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079090.P14473548198844936515

`∑{p}[A079093(n+1), #]`
-/

namespace A079090.P14473548198844936515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079090.P14473548198844936515

noncomputable section

/-- A079090: Sum of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

Offset 1, canonical program `A079090.P14473548198844936515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A079090 (n : ℕ) : ℤ :=
  (A079090.P14473548198844936515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A079090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079295.P17127191197915102483

`A101264(A000040(n+1))`
-/

namespace A079295.P17127191197915102483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A000040 (n + 1)).toNat

end

end A079295.P17127191197915102483

noncomputable section

/-- A079295: (D(p)-6)/(12p) where D(p) denotes the denominator of the 2p-th Bernoulli number and p runs through the primes.

Offset 1, canonical program `A079295.P17127191197915102483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A101264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079295 (n : ℕ) : ℤ :=
  A079295.P17127191197915102483.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A101264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079295.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079551.P1605593596487844367

`∑[char[A000040(n+1)]*A274010(n)]`
-/

namespace A079551.P1605593596487844367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A274010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079551.P1605593596487844367

noncomputable section

/-- A079551: a(n) = Sum_{primes p <= n} d(p-1), where d() = A000005.

Offset 0, canonical program `A079551.P1605593596487844367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079551 (n : ℕ) : ℤ :=
  A079551.P1605593596487844367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A079870.P165111451500732316

`A143731(n+1)+A079866(n+1)`
-/

namespace A079870.P165111451500732316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + A079866 (n + 1)

end

end A079870.P165111451500732316

noncomputable section

/-- A079870: a(1)=1 and for n>1: ceiling(n^(1/Omega(n))), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079870.P165111451500732316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079870 (n : ℕ) : ℤ :=
  A079870.P165111451500732316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079870.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080374.P16756862821907867169

`lcm(a(n-1), A001223(n+1))` with `a(0)=1`
-/

namespace A080374.P16756862821907867169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A001223 (n + 1))

end

end A080374.P16756862821907867169

noncomputable section

/-- A080374: a(n)=lcm of first n consecutive prime differences.

Offset 1, canonical program `A080374.P16756862821907867169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080374 (n : ℕ) : ℤ :=
  (A080374.P16756862821907867169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080722.P13409397924054965325

`A006166(n-A057427(n))+n`
-/

namespace A080722.P13409397924054965325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 ((n : ℤ) - A057427 n).toNat + (n : ℤ)

end

end A080722.P13409397924054965325

noncomputable section

/-- A080722: a(0) = 0; for n > 0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a term of the sequence if and only if a(n) == 1 (mod 3)".

Offset 0, canonical program `A080722.P13409397924054965325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080722 (n : ℕ) : ℤ :=
  A080722.P13409397924054965325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080722.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081404.P4452157079477573813

`A008475(A006093(n+1))`
-/

namespace A081404.P4452157079477573813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A006093 (n + 1)).toNat

end

end A081404.P4452157079477573813

noncomputable section

/-- A081404: a(n) = A008475(prime(n)-1).

Offset 1, canonical program `A081404.P4452157079477573813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A081404 (n : ℕ) : ℤ :=
  A081404.P4452157079477573813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A081404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081875.P11648244356831158345

`∑{d}[n+1, A067856(#)*A322187((n+1)/#)]`
-/

namespace A081875.P11648244356831158345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A322187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A081875.P11648244356831158345

noncomputable section

/-- A081875: a(n) = Sum_{d|n} phi(n/d)*C(2*d,d)/2.

Offset 1, canonical program `A081875.P11648244356831158345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081875 (n : ℕ) : ℤ :=
  A081875.P11648244356831158345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A081875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082156.P1891690113207071663

`A004736(n+1)+A002620(A128076(n+1))`
-/

namespace A082156.P1891690113207071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002620 (A128076 (n + 1)).toNat

end

end A082156.P1891690113207071663

noncomputable section

/-- A082156: Dispersion of the complement of row 1 of A056536.

Offset 1, canonical program `A082156.P1891690113207071663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156 (n : ℕ) : ℤ :=
  A082156.P1891690113207071663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082156.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082508.P5152993145593451446

`filter[A001223(n+1), A010055(#)]`
-/

namespace A082508.P5152993145593451446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A082508.P5152993145593451446

noncomputable section

/-- A082508: Differences between consecutive primes that are powers of 2 in order of their appearance. Differences that are not powers of 2 are deleted from A001223.

Offset 1, canonical program `A082508.P5152993145593451446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A082508 (n : ℕ) : ℤ :=
  A082508.P5152993145593451446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3724 terms. -/
def A082508.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082555.P269021292616838060

`p?[A371239(n+1)]`
-/

namespace A082555.P269021292616838060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082555.P269021292616838060

noncomputable section

/-- A082555: Primes whose base-3 representation does not contain a 0.

Offset 1, canonical program `A082555.P269021292616838060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A082555 (n : ℕ) : ℤ :=
  A082555.P269021292616838060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1394 terms. -/
def A082555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082886.P17747584522747470578

`floor(A001223(n+1)/log(A000040(n+1)))`
-/

namespace A082886.P17747584522747470578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 1) : ℝ) / Real.log (A000040 (n + 1) : ℝ)⌋

end

end A082886.P17747584522747470578

noncomputable section

/-- A082886: a(n) = floor((prime(n+1)-prime(n))/log(prime(n))).

Offset 1, canonical program `A082886.P17747584522747470578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082886 (n : ℕ) : ℤ :=
  A082886.P17747584522747470578.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082886.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A083550.P10022725985667639331

`A001223(n+1)*A001223(n+2)`
-/

namespace A083550.P10022725985667639331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A001223 (n + 2)

end

end A083550.P10022725985667639331

noncomputable section

/-- A083550: Product of 2 consecutive prime differences of two successive terms of A001223.

Offset 1, canonical program `A083550.P10022725985667639331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083550 (n : ℕ) : ℤ :=
  A083550.P10022725985667639331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083551.P5233934583423530355

`lcm(A001223(n+1), A001223(n+2))`
-/

namespace A083551.P5233934583423530355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001223 (n + 1)) (A001223 (n + 2))

end

end A083551.P5233934583423530355

noncomputable section

/-- A083551: Least common multiple of 2 consecutive prime differences, of two successive terms of A001223.

Offset 1, canonical program `A083551.P5233934583423530355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083551 (n : ℕ) : ℤ :=
  (A083551.P5233934583423530355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083551.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A083786.P13265857354035121476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083786 (n : ℕ) : ℤ :=
  A083786.P13265857354035121476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083786.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A084290.P12844808655589070540

`A001223(record[2*(n+1)/A001223(n+2)])`
-/

namespace A084290.P12844808655589070540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A001223 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084290.P12844808655589070540

noncomputable section

/-- A084290: Difference between consecutive primes arising before difference (d=2) between twin primes. In A001223, terms before the ones that equal 2.

Offset 1, canonical program `A084290.P12844808655589070540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084290 (n : ℕ) : ℤ :=
  A084290.P12844808655589070540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084291.P5500729874406725872

`A001223(eq[2, A001223(n+1)]+2)`
-/

namespace A084291.P5500729874406725872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A084291.P5500729874406725872

noncomputable section

/-- A084291: Difference between consecutive primes arising after difference (d=2) between twin primes. In A001223, terms succeeding those that equal 2.

Offset 1, canonical program `A084291.P5500729874406725872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5423 terms. -/
def A084291 (n : ℕ) : ℤ :=
  A084291.P5500729874406725872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5423 terms. -/
def A084291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084365.P3708481916935732312

`∏{p}[A024619(n+1), #]`
-/

namespace A084365.P3708481916935732312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A084365.P3708481916935732312

noncomputable section

/-- A084365: Squarefree kernel of numbers that are not prime powers.

Offset 1, canonical program `A084365.P3708481916935732312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084365 (n : ℕ) : ℤ :=
  (A084365.P3708481916935732312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084916.P17538053219360215237

`eq[1, char[A120865(n+1)]]`
-/

namespace A084916.P17538053219360215237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084916.P17538053219360215237

noncomputable section

/-- A084916: Positive numbers of the form k = x^2 - 3*y^2.

Offset 1, canonical program `A084916.P17538053219360215237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A084916 (n : ℕ) : ℤ :=
  (A084916.P17538053219360215237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A084916.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085760.P7929265480734596502

`record[A008475(or(3, n))]`
-/

namespace A085760.P7929265480734596502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Nat.lor 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085760.P7929265480734596502

noncomputable section

/-- A085760: Prime powers of the form 4n+3.

Offset 1, canonical program `A085760.P7929265480734596502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A085760 (n : ℕ) : ℤ :=
  A085760.P7929265480734596502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4819 terms. -/
def A085760.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086062.P3763696700270825147

`∑[A014612(n+1)]`
-/

namespace A086062.P3763696700270825147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P3763696700270825147

noncomputable section

/-- A086062: Sum of first n 3-almost primes.

Offset 1, canonical program `A086062.P3763696700270825147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086062 (n : ℕ) : ℤ :=
  A086062.P3763696700270825147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086062.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A086650.P6036601122150280832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086650 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086650.P6036601122150280832.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086664.P2485339941124509508

`1-A008475(n+1)+n`
-/

namespace A086664.P2485339941124509508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008475 (n + 1) + (n : ℤ)

end

end A086664.P2485339941124509508

noncomputable section

/-- A086664: a(n) = n - (sum of prime power components of n).

Offset 1, canonical program `A086664.P2485339941124509508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086664 (n : ℕ) : ℤ :=
  A086664.P2485339941124509508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086664.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A086701.P1636778428891806570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086701.P1636778428891806570.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086701.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086933.P4574553822298761829

`∑{d}[n+1, A111938(#)*A374367((n+1)/#)]`
-/

namespace A086933.P4574553822298761829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111938 d * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086933.P4574553822298761829

noncomputable section

/-- A086933: Number of solutions to x^2 + y^2 = 0 mod n.

Offset 1, canonical program `A086933.P4574553822298761829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933 (n : ℕ) : ℤ :=
  A086933.P4574553822298761829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087267.P1672816073380811605

`gcd(xor(n, -1), ∑[A010051(n+1)])`
-/

namespace A087267.P1672816073380811605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087267.P1672816073380811605

noncomputable section

/-- A087267: a(n) = gcd(n, pi(n)) where pi is A000720.

Offset 1, canonical program `A087267.P1672816073380811605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087267 (n : ℕ) : ℤ :=
  (A087267.P1672816073380811605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087267.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087680.P10355844668314196368

`A023202(n+1)+4`
-/

namespace A087680.P10355844668314196368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) + 4

end

end A087680.P10355844668314196368

noncomputable section

/-- A087680: Numbers n such that n + 4 and n - 4 are both prime.

Offset 1, canonical program `A087680.P10355844668314196368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087680 (n : ℕ) : ℤ :=
  A087680.P10355844668314196368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087680.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088420.P1927350733136831084

`or(A101264(n+2)+1, A101264(2*n+3))`
-/

namespace A088420.P1927350733136831084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101264 (n + 2) + 1) (A101264 (2 * n + 3))

end

end A088420.P1927350733136831084

noncomputable section

/-- A088420: Number of primes in arithmetic progression starting with 3 and with d = 2n.

Offset 1, canonical program `A088420.P1927350733136831084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088420 (n : ℕ) : ℤ :=
  A088420.P1927350733136831084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088683.P17789304423585038432

`A001223(3*(n+1))+A001223(3*n+4)`
-/

namespace A088683.P17789304423585038432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * (n + 1)) + A001223 (3 * n + 4)

end

end A088683.P17789304423585038432

noncomputable section

/-- A088683: a(n) = prime(3*n+2) - prime(3*n).

Offset 1, canonical program `A088683.P17789304423585038432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088683 (n : ℕ) : ℤ :=
  A088683.P17789304423585038432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088684.P11538417431754173552

`A001223(3*n+4)+A001223(3*n+5)`
-/

namespace A088684.P11538417431754173552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (3 * n + 4) + A001223 (3 * n + 5)

end

end A088684.P11538417431754173552

noncomputable section

/-- A088684: Prime(3n+3)-prime(3n+1).

Offset 1, canonical program `A088684.P11538417431754173552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088684 (n : ℕ) : ℤ :=
  A088684.P11538417431754173552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088684.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089186.P2318256457982008999

`A178914(n+1)`
-/

namespace A089186.P2318256457982008999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 (n + 1)

end

end A089186.P2318256457982008999

noncomputable section

/-- A089186: Decreases from 9 * 10^k down to 1, restarting at 9 * 10^(k+1).

Offset 1, canonical program `A089186.P2318256457982008999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089186 (n : ℕ) : ℤ :=
  A089186.P2318256457982008999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089186.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089530.P4943488569424409347

`record[(n+1)*A101264(A000040(n+1)+1)]`
-/

namespace A089530.P4943488569424409347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A101264 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089530.P4943488569424409347

noncomputable section

/-- A089530: A023204 indexed by A000040.

Offset 1, canonical program `A089530.P4943488569424409347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A089530 (n : ℕ) : ℤ :=
  A089530.P4943488569424409347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A089530.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A089805.P10188225100685804719

`Δ[xor(n, floor(n/2))]*A053866(3*n+2)`
-/

namespace A089805.P10188225100685804719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053866 (3 * n + 2)

end

end A089805.P10188225100685804719

noncomputable section

/-- A089805: Expansion of Jacobi theta function (theta_4(q^6) - theta_4(q^(2/3)))/2/q^(2/3).

Offset 0, canonical program `A089805.P10188225100685804719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805 (n : ℕ) : ℤ :=
  A089805.P10188225100685804719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090406.P3246366314136724833

`A010051(n+2)+A010051(n+3)+A010051(n+4)`
-/

namespace A090406.P3246366314136724833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A010051 (n + 3) + A010051 (n + 4)

end

end A090406.P3246366314136724833

noncomputable section

/-- A090406: a(n) = PrimePi(n+3) - PrimePi(n).

Offset 1, canonical program `A090406.P3246366314136724833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090406 (n : ℕ) : ℤ :=
  A090406.P3246366314136724833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090406.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090722.P4706722054819847709

`round(sqrt(A138401(n+4)%10))`
-/

namespace A090722.P4706722054819847709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A138401 (n + 4)) 10 : ℝ))

end

end A090722.P4706722054819847709

noncomputable section

/-- A090722: a(n) = if 10 - Mod(Prime(n),10) == {1,3,7,9} respectively then {1,2,3,0}.

Offset 4, canonical program `A090722.P4706722054819847709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A090722 (n : ℕ) : ℤ :=
  A090722.P4706722054819847709.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A090722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090864.P12852176110486031095

`eq[0, A080995(n)]`
-/

namespace A090864.P12852176110486031095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090864.P12852176110486031095

noncomputable section

/-- A090864: Complement of generalized pentagonal numbers (A001318).

Offset 1, canonical program `A090864.P12852176110486031095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090864 (n : ℕ) : ℤ :=
  (A090864.P12852176110486031095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092089.P5474914897670283616

`∑{d}[n+1, A060594(#)]`
-/

namespace A092089.P5474914897670283616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060594 d

end

end A092089.P5474914897670283616

noncomputable section

/-- A092089: Number of odd-length palindromes among the k-tuples of partial quotients of the continued fraction expansions of n/r, r = 1, ..., n.

Offset 1, canonical program `A092089.P5474914897670283616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092089 (n : ℕ) : ℤ :=
  A092089.P5474914897670283616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092147.P7362101994296480782

`∑{d}[n+1, A000089(#)]-1`
-/

namespace A092147.P7362101994296480782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d - 1

end

end A092147.P7362101994296480782

noncomputable section

/-- A092147: Number of even-length palindromes among the k-tuples of partial quotients of the continued fraction expansions of n/r, r=1,...,n.

Offset 1, canonical program `A092147.P7362101994296480782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092147 (n : ℕ) : ℤ :=
  A092147.P7362101994296480782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092147.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A093526.P5414565113038595436

`A195686(n+1)/(n+2)`
-/

namespace A093526.P5414565113038595436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195686 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A093526.P5414565113038595436

noncomputable section

/-- A093526: Numerators of even raw moments in the distribution of line lengths for lines picked at random in the unit disk.

Offset 0, canonical program `A093526.P5414565113038595436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093526 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093526.P5414565113038595436.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093667.P7930936676327328865

`A001223(n+2)+A000040(n+1)`
-/

namespace A093667.P7930936676327328865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + A000040 (n + 1)

end

end A093667.P7930936676327328865

noncomputable section

/-- A093667: a(n) = prime(n) - prime(n+1) + prime(n+2).

Offset 1, canonical program `A093667.P7930936676327328865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A093667 (n : ℕ) : ℤ :=
  A093667.P7930936676327328865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A093667.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A094104.P401703695270972638

`p?[A001748(n+1)+A001223(n+1)]`
-/

namespace A094104.P401703695270972638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P401703695270972638

noncomputable section

/-- A094104: Primes of the form 2*prime(n) + prime(n+1).

Offset 1, canonical program `A094104.P401703695270972638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A094104 (n : ℕ) : ℤ :=
  A094104.P401703695270972638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A094104.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094472.P5330188970798968953

`A081307(n+1)-A061468(n+1)`
-/

namespace A094472.P5330188970798968953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A061468 (n + 1)

end

end A094472.P5330188970798968953

noncomputable section

/-- A094472: a(n) = n*tau(n) - sigma(n) - phi(n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A094472.P5330188970798968953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094472 (n : ℕ) : ℤ :=
  A094472.P5330188970798968953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094524.P5875110581569912900

`A162337(n+2)`
-/

namespace A094524.P5875110581569912900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 2)

end

end A094524.P5875110581569912900

noncomputable section

/-- A094524: Primes of form 3*prime(m) + 2.

Offset 1, canonical program `A094524.P5875110581569912900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094524 (n : ℕ) : ℤ :=
  A094524.P5875110581569912900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A094524.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095711.P13774796746947022199

`A138115(A038722(n+1))`
-/

namespace A095711.P13774796746947022199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A038722 (n + 1)).toNat

end

end A095711.P13774796746947022199

noncomputable section

/-- A095711: Triangle of numbers obtained by reversing the first n digits of e and juxtaposing.

Offset 1, canonical program `A095711.P13774796746947022199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A095711 (n : ℕ) : ℤ :=
  A095711.P13774796746947022199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A095711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095826.P6298974977224630570

`eq[0, A002262(A054055(n)+n)]`
-/

namespace A095826.P6298974977224630570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P6298974977224630570

noncomputable section

/-- A095826: Numbers k such that k + largest digit of k is a triangular number.

Offset 1, canonical program `A095826.P6298974977224630570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A095826 (n : ℕ) : ℤ :=
  (A095826.P6298974977224630570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A095826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095852.P3008320700076348156

`(C(comp[∑[n]]-n, 2)-n)^A128227(n)²`
-/

namespace A095852.P3008320700076348156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A128227 n ^ 2 : ℤ)

end

end A095852.P3008320700076348156

noncomputable section

/-- A095852: Triangle read by rows: T(n,k) = (n-k+1)^(k^2), n>=1, 1<=k<=n.

Offset 1, canonical program `A095852.P3008320700076348156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A095852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095852.P3008320700076348156.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A095852.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A095902.P2506920193957968763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095902 (n : ℕ) : ℤ :=
  A095902.P2506920193957968763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283480, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096157.P16966813079005757665

`lt[A325937(n+1)², 2]+1`
-/

namespace A096157.P16966813079005757665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096157.P16966813079005757665

noncomputable section

/-- A096157: Numbers whose numbers of odd and even proper divisors differ at most by 1.

Offset 1, canonical program `A096157.P16966813079005757665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157 (n : ℕ) : ℤ :=
  (A096157.P16966813079005757665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096157.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097902.P17574819608236868466

`A138114(A038722(n+1))*A138114(n+1)`
-/

namespace A097902.P17574819608236868466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A038722 (n + 1)).toNat * A138114 (n + 1)

end

end A097902.P17574819608236868466

noncomputable section

/-- A097902: Multiplication table of the digits of Pi read by antidiagonals.

Offset 0, canonical program `A097902.P17574819608236868466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902 (n : ℕ) : ℤ :=
  A097902.P17574819608236868466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A097902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098080.P15055727507018318769

`record[n%2*A127421(n+1)]`
-/

namespace A098080.P15055727507018318769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A127421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098080.P15055727507018318769

noncomputable section

/-- A098080: Nontrivial slowest increasing sequence whose succession of digits is that of the nonnegative integers.

Offset 0, canonical program `A098080.P15055727507018318769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098080 (n : ℕ) : ℤ :=
  A098080.P15055727507018318769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098368.P456142889449428924

`A139261(A038722(n+1))*A139261(n+1)`
-/

namespace A098368.P456142889449428924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A038722 (n + 1)).toNat * A139261 (n + 1)

end

end A098368.P456142889449428924

noncomputable section

/-- A098368: Multiplication table of the digits of the Euler-Mascheroni constant read by antidiagonals.

Offset 0, canonical program `A098368.P456142889449428924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368 (n : ℕ) : ℤ :=
  A098368.P456142889449428924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A098368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098392.P2010536417266136406

`A000040(n+1)-A000523(A098388(n+1))`
-/

namespace A098392.P2010536417266136406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000523 (A098388 (n + 1)).toNat

end

end A098392.P2010536417266136406

noncomputable section

/-- A098392: Prime(n)-Log2(Log2(prime(n))), where Log2=A000523.

Offset 1, canonical program `A098392.P2010536417266136406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098392 (n : ℕ) : ℤ :=
  A098392.P2010536417266136406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098392.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A098579.P5419655144951964955

`2^n*A002420(n)`
-/

namespace A098579.P5419655144951964955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002420 n

end

end A098579.P5419655144951964955

noncomputable section

/-- A098579: Expansion of sqrt(1-8*x).

Offset 0, canonical program `A098579.P5419655144951964955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A098579 (n : ℕ) : ℤ :=
  A098579.P5419655144951964955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A098579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098580.P443404764633942695

`A002420(n)*A134401(n)`
-/

namespace A098580.P443404764633942695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A134401 n

end

end A098580.P443404764633942695

noncomputable section

/-- A098580: Expansion of (sqrt(1-8*x)-4*x)/sqrt(1-8*x).

Offset 0, canonical program `A098580.P443404764633942695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A098580 (n : ℕ) : ℤ :=
  A098580.P443404764633942695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A098580.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A098957.P4716822074248762999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098957 (n : ℕ) : ℤ :=
  A098957.P4716822074248762999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A098957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098991.P5792837169112827656

`eq[0, A098035(n+1)]+1`
-/

namespace A098991.P5792837169112827656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098991.P5792837169112827656

noncomputable section

/-- A098991: Numbers n where A098035(n)=0.

Offset 1, canonical program `A098991.P5792837169112827656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A098991 (n : ℕ) : ℤ :=
  (A098991.P5792837169112827656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A098991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099055.P11362990028236912789

`∑[A274010(2*n)]+2*n+1`
-/

namespace A099055.P11362990028236912789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A099055.P11362990028236912789

noncomputable section

/-- A099055: A bisection of A054519.

Offset 0, canonical program `A099055.P11362990028236912789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055 (n : ℕ) : ℤ :=
  A099055.P11362990028236912789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A099055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099102.P10776649680953999616

`lt[A020338(n+1)/(n+2), A000203(n+1)]+1`
-/

namespace A099102.P10776649680953999616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (n + 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A099102.P10776649680953999616

noncomputable section

/-- A099102: Natural numbers n with fewer digits than sigma(n).

Offset 1, canonical program `A099102.P10776649680953999616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3647 terms. -/
def A099102 (n : ℕ) : ℤ :=
  (A099102.P10776649680953999616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3647 terms. -/
def A099102.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099510.P4331747082263248372

`C(A052928(A128076(n+1)), A002262(n))`
-/

namespace A099510.P4331747082263248372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052928 (A128076 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A099510.P4331747082263248372

noncomputable section

/-- A099510: Triangle, read by rows, of trinomial coefficients arranged so that there are n+1 terms in row n by setting T(n,k) equal to the coefficient of z^k in (1 + 2*z + z^2)^(n-[k/2]), for n>=k>=0, where [k/2] is the integer floor of k/2.

Offset 0, canonical program `A099510.P4331747082263248372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099510 (n : ℕ) : ℤ :=
  (A099510.P4331747082263248372.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099822.P4941690864949644625

`A005117(2*n+1)`
-/

namespace A099822.P4941690864949644625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * n + 1)

end

end A099822.P4941690864949644625

noncomputable section

/-- A099822: Bisection of A005117.

Offset 1, canonical program `A099822.P4941690864949644625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099822 (n : ℕ) : ℤ :=
  A099822.P4941690864949644625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099835.P17347924561769071639

`A005117(2*(n+1))`
-/

namespace A099835.P17347924561769071639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (2 * (n + 1))

end

end A099835.P17347924561769071639

noncomputable section

/-- A099835: Bisection of A005117.

Offset 1, canonical program `A099835.P17347924561769071639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099835 (n : ℕ) : ℤ :=
  A099835.P17347924561769071639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099835.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099905.P9802532201216539233

`A099908(n+1)%(n+1)`
-/

namespace A099905.P9802532201216539233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099908 (n + 1)) (n + 1 : ℤ)

end

end A099905.P9802532201216539233

noncomputable section

/-- A099905: a(n) = binomial(2n-1, n-1) mod n.

Offset 1, canonical program `A099905.P9802532201216539233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099905 (n : ℕ) : ℤ :=
  A099905.P9802532201216539233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099906.P10868242903989615005

`A099908(n+1)%(n+1)²`
-/

namespace A099906.P10868242903989615005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099908 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A099906.P10868242903989615005

noncomputable section

/-- A099906: a(n) = binomial(2n-1,n-1) mod n^2.

Offset 1, canonical program `A099906.P10868242903989615005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099906 (n : ℕ) : ℤ :=
  A099906.P10868242903989615005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099907.P4616687458396139228

`A099908(n+1)%∑[A003215(n)]`
-/

namespace A099907.P4616687458396139228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099908 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099907.P4616687458396139228

noncomputable section

/-- A099907: a(n) = C(2n-1,n-1) mod n^3.

Offset 1, canonical program `A099907.P4616687458396139228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099907 (n : ℕ) : ℤ :=
  A099907.P4616687458396139228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099907.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100450.P9268367360250409235

`A122553(n)+4*A321879(n)`
-/

namespace A100450.P9268367360250409235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + 4 * A321879 n

end

end A100450.P9268367360250409235

noncomputable section

/-- A100450: Number of ordered triples (i,j,k) with |i| + |j| + |k| <= n and gcd(i,j,k) <= 1.

Offset 0, canonical program `A100450.P9268367360250409235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100450 (n : ℕ) : ℤ :=
  A100450.P9268367360250409235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100803.P18284078702291543981

`2*A001223(n+1)-1`
-/

namespace A100803.P18284078702291543981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001223 (n + 1) - 1

end

end A100803.P18284078702291543981

noncomputable section

/-- A100803: A100802(m) where A100802(m) > A100802(m-1).

Offset 1, canonical program `A100803.P18284078702291543981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100803 (n : ℕ) : ℤ :=
  A100803.P18284078702291543981.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100917.P11816385517224532937

`p?[A230980(n)+A008578(n+1)]`
-/

namespace A100917.P11816385517224532937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100917.P11816385517224532937

noncomputable section

/-- A100917: Primes of the form pi(n) + prime(n).

Offset 1, canonical program `A100917.P11816385517224532937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 963 terms. -/
def A100917 (n : ℕ) : ℤ :=
  A100917.P11816385517224532937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 963 terms. -/
def A100917.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101681.P7450056971872264129

`lt[A056617(n), n]`
-/

namespace A101681.P7450056971872264129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101681.P7450056971872264129

noncomputable section

/-- A101681: Numbers k such that gcd(C(2k,k), 2k+1) > 1.

Offset 1, canonical program `A101681.P7450056971872264129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681 (n : ℕ) : ℤ :=
  (A101681.P7450056971872264129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A101681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101909.P198107438944663547

`A060715(2*(n+1))`
-/

namespace A101909.P198107438944663547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 * (n + 1))

end

end A101909.P198107438944663547

noncomputable section

/-- A101909: Number of primes between 2n and 4n.

Offset 1, canonical program `A101909.P198107438944663547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101909 (n : ℕ) : ℤ :=
  A101909.P198107438944663547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101909.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102304.P12298609267666980490

`A001414(A014612(n+1))`
-/

namespace A102304.P12298609267666980490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014612 (n + 1)).toNat

end

end A102304.P12298609267666980490

noncomputable section

/-- A102304: Sum of prime factors (counted with multiplicity) of the numbers having exactly three prime factors.

Offset 1, canonical program `A102304.P12298609267666980490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102304 (n : ℕ) : ℤ :=
  A102304.P12298609267666980490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102552.P1921326590522321813

`Δ[-A001223(n+2)/2]`
-/

namespace A102552.P1921326590522321813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A001223 (n + 2) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102552.P1921326590522321813

noncomputable section

/-- A102552: a(n) = prime(n) - (prime(n+1) + prime(n-1))/2.

Offset 3, canonical program `A102552.P1921326590522321813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102552.P1921326590522321813.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102609.P732617847738312024

`A010051((1-n)²+n+40)`
-/

namespace A102609.P732617847738312024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((1 - (n : ℤ)) ^ 2 + (n : ℤ) + 40).toNat

end

end A102609.P732617847738312024

noncomputable section

/-- A102609: a(n) = 1 iff n^2-n+41 is prime (else 0).

Offset 0, canonical program `A102609.P732617847738312024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A102609 (n : ℕ) : ℤ :=
  A102609.P732617847738312024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A102609.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103131.P5239793970225112123

`A057427(n)-A136521(A060594(n+1))`
-/

namespace A103131.P5239793970225112123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A136521 (A060594 (n + 1)).toNat

end

end A103131.P5239793970225112123

noncomputable section

/-- A103131: The product of the residues in [1,n] relatively prime to n, taken modulo n.

Offset 1, canonical program `A103131.P5239793970225112123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103131 (n : ℕ) : ℤ :=
  A103131.P5239793970225112123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103131.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A103664.P16967067740305570785

`p?[lt[A274010(n), A274010(n+1)]]`
-/

namespace A103664.P16967067740305570785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A103664.P16967067740305570785

noncomputable section

/-- A103664: Primes p such that the number of divisors of p-1 is less than the number of divisors of p+1.

Offset 1, canonical program `A103664.P16967067740305570785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664 (n : ℕ) : ℤ :=
  (A103664.P16967067740305570785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A103664.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104147.P7291418644979591770

`A263846(n+1)+1`
-/

namespace A104147.P7291418644979591770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (n + 1) + 1

end

end A104147.P7291418644979591770

noncomputable section

/-- A104147: Number of cubes <= n-th prime.

Offset 0, canonical program `A104147.P7291418644979591770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147 (n : ℕ) : ℤ :=
  A104147.P7291418644979591770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A104147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104192.P3970936077478306181

`A014688(n+1)-A121048(n+1)`
-/

namespace A104192.P3970936077478306181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A121048 (n + 1)

end

end A104192.P3970936077478306181

noncomputable section

/-- A104192: a(n) = prime(n) - phi(n).

Offset 1, canonical program `A104192.P3970936077478306181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104192 (n : ℕ) : ℤ :=
  A104192.P3970936077478306181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104192.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104295.P12822078153906725739

`A001223(A005097(n+1))`
-/

namespace A104295.P12822078153906725739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A005097 (n + 1)).toNat

end

end A104295.P12822078153906725739

noncomputable section

/-- A104295: a(n) = A104294(n) - A104293(n).

Offset 2, canonical program `A104295.P12822078153906725739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104295 (n : ℕ) : ℤ :=
  A104295.P12822078153906725739.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104295.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105346.P11197310878766235424

`A014612(eq[3, ∑{e}[n, #]])`
-/

namespace A105346.P11197310878766235424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A105346.P11197310878766235424

noncomputable section

/-- A105346: 3-almost primes whose indices are 3-almost primes: a(n) = A014612(A014612(n)).

Offset 1, canonical program `A105346.P11197310878766235424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A105346 (n : ℕ) : ℤ :=
  A105346.P11197310878766235424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A105346.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A105942.P6803081580382728287

`A027821(n+3)/A027800(n)*A027818(n)`
-/

namespace A105942.P6803081580382728287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027821 (n + 3) : ℚ) / (A027800 n : ℚ) * (A027818 n : ℚ)

end

end A105942.P6803081580382728287

noncomputable section

/-- A105942: a(n) = binomial(n+6,6)*binomial(n+9,6).

Offset 0, canonical program `A105942.P6803081580382728287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105942.P6803081580382728287.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106062.P4524901779774754399

`∩[A046133(n+1), A075704(n)]`
-/

namespace A106062.P4524901779774754399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106062.P4524901779774754399

noncomputable section

/-- A106062: Primes p such that 1*p + 12 and 12*p + 1 are primes.

Offset 1, canonical program `A106062.P4524901779774754399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1813 terms. -/
def A106062 (n : ℕ) : ℤ :=
  (A106062.P4524901779774754399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1813 terms. -/
def A106062.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A106092.P1085686516415469086

`lt[A325937(n+2), 2]+2`
-/

namespace A106092.P1085686516415469086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106092.P1085686516415469086

noncomputable section

/-- A106092: Even numbers and primes.

Offset 1, canonical program `A106092.P1085686516415469086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092 (n : ℕ) : ℤ :=
  (A106092.P1085686516415469086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106149.P11845332744349769622

`∑{e}[A001223(n+1), #]`
-/

namespace A106149.P11845332744349769622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P11845332744349769622

noncomputable section

/-- A106149: Number of prime factors with multiplicity of the difference between consecutive primes.

Offset 1, canonical program `A106149.P11845332744349769622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106149 (n : ℕ) : ℤ :=
  (A106149.P11845332744349769622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106190.P5124580202269895927

`A002420(A025581(n))`
-/

namespace A106190.P5124580202269895927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (A025581 n).toNat

end

end A106190.P5124580202269895927

noncomputable section

/-- A106190: Triangle read by rows: T(n,k) = binomial(2(n-k),n-k)/(1-2(n-k)).

Offset 0, canonical program `A106190.P5124580202269895927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106190 (n : ℕ) : ℤ :=
  A106190.P5124580202269895927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106268.P2002744397126662748

`A210736(A099375(n)-1)`
-/

namespace A106268.P2002744397126662748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A099375 n - 1).toNat

end

end A106268.P2002744397126662748

noncomputable section

/-- A106268: Number triangle T(n,k) = (-1)^(n-k)*binomial(k-n, n-k) = (0^(n-k) + binomial(2*(n-k), n-k))/2 if k <= n, 0 otherwise; Riordan array (1/(2-C(x)), x) where C(x) is g.f. for Catalan numbers A000108.

Offset 0, canonical program `A106268.P2002744397126662748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106268 (n : ℕ) : ℤ :=
  A106268.P2002744397126662748.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106268.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107294.P2899559741915195423

`gcd(A014688(n+1), A062357(n+1))`
-/

namespace A107294.P2899559741915195423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014688 (n + 1)) (A062357 (n + 1))

end

end A107294.P2899559741915195423

noncomputable section

/-- A107294: GCD of (n + prime(n)) and (n + 1 + prime(n+1)).

Offset 1, canonical program `A107294.P2899559741915195423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107294 (n : ℕ) : ℤ :=
  (A107294.P2899559741915195423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107373.P1366174915629894838

`A323988(n)-2^n`
-/

namespace A107373.P1366174915629894838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - (2 ^ n : ℤ)

end

end A107373.P1366174915629894838

noncomputable section

/-- A107373: a(n) = (n/2)*binomial(n-1, floor((n-1)/2)) - 2^(n-2).

Offset 1, canonical program `A107373.P1366174915629894838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A107373 (n : ℕ) : ℤ :=
  A107373.P1366174915629894838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A107373.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107680.P2091678372907018845

`A003462(A000523(n+1))`
-/

namespace A107680.P2091678372907018845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A000523 (n + 1)).toNat

end

end A107680.P2091678372907018845

noncomputable section

/-- A107680: Repeating k-th ternary repunit (A003462) 2^k times, k >= 0.

Offset 0, canonical program `A107680.P2091678372907018845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107680 (n : ℕ) : ℤ :=
  A107680.P2091678372907018845.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107730.P12269102477692489208

`lt[A001223(n+1)%5, 1]+1`
-/

namespace A107730.P12269102477692489208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A107730.P12269102477692489208

noncomputable section

/-- A107730: Numbers n such that prime(n+1) has the same last digit as prime(n).

Offset 1, canonical program `A107730.P12269102477692489208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A107730 (n : ℕ) : ℤ :=
  (A107730.P12269102477692489208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. -/
def A107730.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A108946.P7071863590462326529

`n%2-A097948(n)`
-/

namespace A108946.P7071863590462326529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A097948 n

end

end A108946.P7071863590462326529

noncomputable section

/-- A108946: a(2n) = A001570(n), a(2n+1) = -A007654(n+1).

Offset 0, canonical program `A108946.P7071863590462326529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946 (n : ℕ) : ℤ :=
  A108946.P7071863590462326529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A108946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108954.P9291632496851182646

`1-A376759(n+1)+n`
-/

namespace A108954.P9291632496851182646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A376759 (n + 1) + (n : ℤ)

end

end A108954.P9291632496851182646

noncomputable section

/-- A108954: a(n) = pi(2*n) - pi(n). Number of primes in the interval (n,2n].

Offset 1, canonical program `A108954.P9291632496851182646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108954 (n : ℕ) : ℤ :=
  A108954.P9291632496851182646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108954.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109578.P13973728524548716716

`A010051(n+2)*A001223(n+1)`
-/

namespace A109578.P13973728524548716716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) * A001223 (n + 1)

end

end A109578.P13973728524548716716

noncomputable section

/-- A109578: a(n) = (pi(n+1)-pi(n)) * (prime(n+1)-prime(n)), where pi(k) is the number of prime numbers less than or equal to k (= A000720(k)) and prime(k) is the k-th prime number (= A000040(k)).

Offset 1, canonical program `A109578.P13973728524548716716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109578 (n : ℕ) : ℤ :=
  A109578.P13973728524548716716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A109578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109584.P2007252456060764204

`A001223(n+1)^∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A109584.P2007252456060764204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109584.P2007252456060764204

noncomputable section

/-- A109584: a(n) = (prime(n+1) - prime(n))^pi(n).

Offset 1, canonical program `A109584.P2007252456060764204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A109584 (n : ℕ) : ℤ :=
  A109584.P2007252456060764204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A109584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110187.P7748430197088379820

`record[A082344(A014612(n+2))]`
-/

namespace A110187.P7748430197088379820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A014612 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110187.P7748430197088379820

noncomputable section

/-- A110187: 3-almost primes p * q * r relatively prime to p+q+r.

Offset 1, canonical program `A110187.P7748430197088379820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A110187 (n : ℕ) : ℤ :=
  A110187.P7748430197088379820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A110187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110209.P16639845999686422386

`A014612(n)+a(n-1)` with `a(0)=1`
-/

namespace A110209.P16639845999686422386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014612 n + a (n - 1)

end

end A110209.P16639845999686422386

noncomputable section

/-- A110209: 1 + sum of first n 3-almost primes.

Offset 0, canonical program `A110209.P16639845999686422386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110209 (n : ℕ) : ℤ :=
  A110209.P16639845999686422386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110209.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110914.P2878250641217037902

`A120880(floor((3*n+1)/2))-a(n-1)` with `a(0)=1`
-/

namespace A110914.P2878250641217037902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120880 ⌊(3 * n + 1 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A110914.P2878250641217037902

noncomputable section

/-- A110914: "Self-convolution mod 3" of central Delannoy numbers (see comment).

Offset 0, canonical program `A110914.P2878250641217037902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A110914 (n : ℕ) : ℤ :=
  A110914.P2878250641217037902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A110914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110934.P9568083779091695448

`A014612(n+3)-A014612(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110934.P9568083779091695448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 3) - A014612 (n + 1)

end

end A110934.P9568083779091695448

noncomputable section

/-- A110934: a(n) = A014612(n+2) - A014612(n).

Offset 1, canonical program `A110934.P9568083779091695448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110934 (n : ℕ) : ℤ :=
  A110934.P9568083779091695448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110934.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A111060.P14556973860726102007

`∑{p}[A005117(n+1), #]`
-/

namespace A111060.P14556973860726102007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111060.P14556973860726102007

noncomputable section

/-- A111060: a(n) = sum of primes dividing the n-th squarefree positive integer.

Offset 1, canonical program `A111060.P14556973860726102007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111060 (n : ℕ) : ℤ :=
  (A111060.P14556973860726102007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062879.P8862703960269035905

`A171070(n+1)-A036796(n)`
-/

namespace A062879.P8862703960269035905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1) - A036796 n

end

end A062879.P8862703960269035905

noncomputable section

/-- A062879: Integers whose Zeckendorf expansion does not contain ones at even positions.

Offset 1, canonical program `A062879.P8862703960269035905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062879 (n : ℕ) : ℤ :=
  A062879.P8862703960269035905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062996.P11625453850010715147

`∪[A055933(n+1), A062997(n+1)]`
-/

namespace A062996.P11625453850010715147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062996.P11625453850010715147

noncomputable section

/-- A062996: Numbers whose sum of digits is greater than or equal to its product of digits.

Offset 1, canonical program `A062996.P11625453850010715147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062996 (n : ℕ) : ℤ :=
  (A062996.P11625453850010715147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063531.P3268237155309024633

`eq[1, A007913(A000203(n+1)+1)]+1`
-/

namespace A063531.P3268237155309024633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063531.P3268237155309024633

noncomputable section

/-- A063531: Numbers k such that sigma(k) + 1 is a square.

Offset 1, canonical program `A063531.P3268237155309024633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A063531 (n : ℕ) : ℤ :=
  (A063531.P3268237155309024633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A063531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063845.P4984766055789301031

`A000203(A064971(n+1)/(n+1))`
-/

namespace A063845.P4984766055789301031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A064971 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A063845.P4984766055789301031

noncomputable section

/-- A063845: a(n) = sigma(usigma(n)), where usigma(n) is the sum of unitary divisors of n (A034448) and sigma(n) is the sum of the divisors (A000203).

Offset 1, canonical program `A063845.P4984766055789301031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063845 (n : ℕ) : ℤ :=
  A063845.P4984766055789301031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064865.P16846928706753949874

`A064866(∑[n+1])`
-/

namespace A064865.P16846928706753949874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064865.P16846928706753949874

noncomputable section

/-- A064865: Fill a triangular array by rows by writing numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on. The final elements of the rows form the sequence.

Offset 1, canonical program `A064865.P16846928706753949874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A064865 (n : ℕ) : ℤ :=
  A064865.P16846928706753949874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A064865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065344.P697457149190660026

`A065345(n+1)%Δ[A180118(n)]`
-/

namespace A065344.P697457149190660026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065345 (n + 1)) (f1 (n + 1) - f1 n)

end

end A065344.P697457149190660026

noncomputable section

/-- A065344: a(n) = binomial(2*n,n) mod ((n+1)*(n+2)).

Offset 1, canonical program `A065344.P697457149190660026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065344 (n : ℕ) : ℤ :=
  A065344.P697457149190660026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066136.P8726344444493965524

`floor(A073897(n+1)/2)`
-/

namespace A066136.P8726344444493965524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073897 (n + 1) : ℚ) / 2⌋

end

end A066136.P8726344444493965524

noncomputable section

/-- A066136: Primes are replaced by their local sequence number in A000040, while composites are replaced by their sequence number in A002808; (a kind of eigen- or home-indexing).

Offset 1, canonical program `A066136.P8726344444493965524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136 (n : ℕ) : ℤ :=
  A066136.P8726344444493965524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066252.P11570633216633909996

`A073897(A073897(n+2))-1`
-/

namespace A066252.P11570633216633909996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (A073897 (n + 2)).toNat - 1

end

end A066252.P11570633216633909996

noncomputable section

/-- A066252: a(n) = A066248(A066248(n)).

Offset 1, canonical program `A066252.P11570633216633909996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5757 terms. -/
def A066252 (n : ℕ) : ℤ :=
  A066252.P11570633216633909996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5757 terms. -/
def A066252.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A067459.P11641626775103324224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A067459 (n : ℕ) : ℤ :=
  A067459.P11641626775103324224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A067459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068074.P10780644470615338530

`∑{d}[n+1, -A317528(#)]`
-/

namespace A068074.P10780644470615338530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-A317528 d)

end

end A068074.P10780644470615338530

noncomputable section

/-- A068074: a(n) = Sum_{d|n} (-1)^d*2^omega(n/d) where omega(x) is the number of distinct prime factors in the factorization of x.

Offset 1, canonical program `A068074.P10780644470615338530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068074 (n : ℕ) : ℤ :=
  A068074.P10780644470615338530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069111.P12631494153249817284

`A007913(2^n+1)`
-/

namespace A069111.P12631494153249817284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 ^ n + 1)

end

end A069111.P12631494153249817284

noncomputable section

/-- A069111: Squarefree part of 2^n+1 : the smallest number such that a(n)*(2^n+1) is a square.

Offset 0, canonical program `A069111.P12631494153249817284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069111 (n : ℕ) : ℤ :=
  A069111.P12631494153249817284.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069111.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069113.P8105437494189770969

`A007913(A000984(n))`
-/

namespace A069113.P8105437494189770969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000984 n).toNat

end

end A069113.P8105437494189770969

noncomputable section

/-- A069113: Squarefree part of C(2n,n), the central binomial numbers: the smallest number such that a(n)*C(2n,n) is a square.

Offset 0, canonical program `A069113.P8105437494189770969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069113 (n : ℕ) : ℤ :=
  A069113.P8105437494189770969.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069114.P11265781668908461192

`A007913(A006093(n+1))`
-/

namespace A069114.P11265781668908461192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A006093 (n + 1)).toNat

end

end A069114.P11265781668908461192

noncomputable section

/-- A069114: Squarefree part of prime(n)-1 : the smallest number such that a(n)*(prime(n)-1) is a square.

Offset 1, canonical program `A069114.P11265781668908461192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A069114 (n : ℕ) : ℤ :=
  A069114.P11265781668908461192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A069114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069115.P13502381392976731434

`A007913(A008864(n+1))`
-/

namespace A069115.P13502381392976731434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008864 (n + 1)).toNat

end

end A069115.P13502381392976731434

noncomputable section

/-- A069115: Squarefree part of prime(n)+1 : the smallest number such that a(n)*(prime(n)+1) is a square.

Offset 1, canonical program `A069115.P13502381392976731434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A069115 (n : ℕ) : ℤ :=
  A069115.P13502381392976731434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A069115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069122.P5368121479878641074

`lt[A007913(n+2), A007913(n+1)]+1`
-/

namespace A069122.P5368121479878641074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P5368121479878641074

noncomputable section

/-- A069122: Numbers k such that the squarefree part of k is greater than the squarefree part of (k+1).

Offset 1, canonical program `A069122.P5368121479878641074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069122 (n : ℕ) : ℤ :=
  (A069122.P5368121479878641074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069170.P8927692347085288677

`A069208(Δ[A051349(n)])`
-/

namespace A069170.P8927692347085288677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (f1 (n + 1) - f1 n).toNat

end

end A069170.P8927692347085288677

noncomputable section

/-- A069170: Values of phi(k)*Sum_{d|k} 1/phi(d) for nonprimes k.

Offset 1, canonical program `A069170.P8927692347085288677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A069170 (n : ℕ) : ℤ :=
  A069170.P8927692347085288677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A069170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069891.P9601038511984379204

`A007913(n)+a(n-1)` with `a(0)=0`
-/

namespace A069891.P9601038511984379204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007913 n + a (n - 1)

end

end A069891.P9601038511984379204

noncomputable section

/-- A069891: a(n) = Sum_{k=1..n} A007913(k), the squarefree part of k.

Offset 0, canonical program `A069891.P9601038511984379204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069891 (n : ℕ) : ℤ :=
  A069891.P9601038511984379204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070191.P17002932225715111264

`eq[9, A087968(or(1, 3*n))]`
-/

namespace A070191.P17002932225715111264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087968 (Nat.lor 1 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070191.P17002932225715111264

noncomputable section

/-- A070191: Numbers k such that gcd(3*k, 8^k+1) = 3.

Offset 1, canonical program `A070191.P17002932225715111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7096 terms. -/
def A070191 (n : ℕ) : ℤ :=
  (A070191.P17002932225715111264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7096 terms. -/
def A070191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070309.P13550694292198192403

`A072994(A060679(n+1))-1`
-/

namespace A070309.P13550694292198192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A060679 (n + 1)).toNat - 1

end

end A070309.P13550694292198192403

noncomputable section

/-- A070309: Number of solutions 2<=x<=A060679(n) to the equation x^A060679(n)==1 (mod A060679(n)) where A060679(n) are the orders of non-cyclic groups.

Offset 1, canonical program `A070309.P13550694292198192403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6886 terms. -/
def A070309 (n : ℕ) : ℤ :=
  A070309.P13550694292198192403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6886 terms. -/
def A070309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070732.P12916774599128756623

`A001615(n+1)*A026741(n+1)`
-/

namespace A070732.P12916774599128756623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A026741 (n + 1)

end

end A070732.P12916774599128756623

noncomputable section

/-- A070732: Size of largest conjugacy class in the group GL(2,Z_n).

Offset 1, canonical program `A070732.P12916774599128756623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070732 (n : ℕ) : ℤ :=
  A070732.P12916774599128756623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071532.P10723472939112800491

`∑[2*A072418(n+1)-1]`
-/

namespace A071532.P10723472939112800491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072418 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071532.P10723472939112800491

noncomputable section

/-- A071532: a(n) = (-1) * Sum_{k=1..n} (-1)^floor((3/2)^k).

Offset 1, canonical program `A071532.P10723472939112800491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071532 (n : ℕ) : ℤ :=
  A071532.P10723472939112800491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071532.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072284.P10214590110291181418

`record[A007913(A105570(n)+1)]`
-/

namespace A072284.P10214590110291181418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A105570 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P10214590110291181418

noncomputable section

/-- A072284: Numbers k begins a new chain of squarefree integers. I.e., k is squarefree but k-1 is not.

Offset 1, canonical program `A072284.P10214590110291181418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072284 (n : ℕ) : ℤ :=
  A072284.P10214590110291181418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072284.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A073730.P5401388595630753803

`A054054(n+1)+10*A054055(n+1)`
-/

namespace A073730.P5401388595630753803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (n + 1) + 10 * A054055 (n + 1)

end

end A073730.P5401388595630753803

noncomputable section

/-- A073730: Concatenation of largest and smallest digits of n in decimal representation.

Offset 1, canonical program `A073730.P5401388595630753803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073730 (n : ℕ) : ℤ :=
  A073730.P5401388595630753803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073730.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074847.P10505165968805150031

`A000203(A053165(n+1))*A300909(n+1)`
-/

namespace A074847.P10505165968805150031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053165 (n + 1)).toNat * A300909 (n + 1)

end

end A074847.P10505165968805150031

noncomputable section

/-- A074847: Sum of 4-infinitary divisors of n: if n=Product p(i)^r(i) and d=Product p(i)^s(i), each s(i) has a digit a<=b in its 4-ary expansion everywhere that the corresponding r(i) has a digit b, then d is a 4-infinitary-divisor of n.

Offset 1, canonical program `A074847.P10505165968805150031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847 (n : ℕ) : ℤ :=
  A074847.P10505165968805150031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074847.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080736.P3377769303044766093

`lcm((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A317528(n+1))`
-/

namespace A080736.P3377769303044766093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A317528 (n + 1))

end

end A080736.P3377769303044766093

noncomputable section

/-- A080736: Multiplicative function defined by a(1)=1, a(2)=0, a(2^r) = phi(2^r) (r>1), a(p^r) = phi(p^r) (p odd prime, r>=1), where phi is Euler's function A000010.

Offset 1, canonical program `A080736.P3377769303044766093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080736 (n : ℕ) : ℤ :=
  (A080736.P3377769303044766093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082097.P8858972731409509774

`A334954(a(n-1))+n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082097.P8858972731409509774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A334954 (a (n - 1)).toNat + (n : ℤ)

end

end A082097.P8858972731409509774

noncomputable section

/-- A082097: a(n) = d(a(n-1)) + n = A000005(a(n-1)) + n, with a(1)=1.

Offset 1, canonical program `A082097.P8858972731409509774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A082097 (n : ℕ) : ℤ :=
  A082097.P8858972731409509774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A082097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082493.P9204270265961951822

`n-A082495(n+1)`
-/

namespace A082493.P9204270265961951822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082495 (n + 1)

end

end A082493.P9204270265961951822

noncomputable section

/-- A082493: a(n) = n*ceiling(2^n/n) - 2^n.

Offset 1, canonical program `A082493.P9204270265961951822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082493 (n : ℕ) : ℤ :=
  A082493.P9204270265961951822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082900.P16197010022293834706

`A015910(n+1)-A112983(n+1)`
-/

namespace A082900.P16197010022293834706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1) - A112983 (n + 1)

end

end A082900.P16197010022293834706

noncomputable section

/-- A082900: a(n) = A082894(n)-A000079(n), the difference of 2^n and the number closest to it and divisible by n.

Offset 1, canonical program `A082900.P16197010022293834706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082900 (n : ℕ) : ℤ :=
  A082900.P16197010022293834706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083481.P14678934424777581008

`A007913(n+1)*A007913(n+2)`
-/

namespace A083481.P14678934424777581008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 2)

end

end A083481.P14678934424777581008

noncomputable section

/-- A083481: Squarefree part of the n-th oblong number.

Offset 1, canonical program `A083481.P14678934424777581008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083481 (n : ℕ) : ℤ :=
  A083481.P14678934424777581008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083794.P16651843307609193916

`comp[eq[0, A182394(n+2)]+1]+1`
-/

namespace A083794.P16651843307609193916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A083794.P16651843307609193916

noncomputable section

/-- A083794: Numbers k such that tau(k) is different from tau(k-1), where tau(m) = number of divisors of m.

Offset 1, canonical program `A083794.P16651843307609193916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083794 (n : ℕ) : ℤ :=
  (A083794.P16651843307609193916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084373.P17875525676827923178

`eq[A032741(n)+1, A054054(n)]`
-/

namespace A084373.P17875525676827923178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084373.P17875525676827923178

noncomputable section

/-- A084373: Numbers k such that smallest digit of k = total number of divisors of k.

Offset 1, canonical program `A084373.P17875525676827923178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A084373 (n : ℕ) : ℤ :=
  (A084373.P17875525676827923178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A084373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084936.P175864866204785172

`A336551(A013929(n+1))+1`
-/

namespace A084936.P175864866204785172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A013929 (n + 1)).toNat + 1

end

end A084936.P175864866204785172

noncomputable section

/-- A084936: Nonsquarefree numbers divided by their squarefree kernels.

Offset 1, canonical program `A084936.P175864866204785172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084936 (n : ℕ) : ℤ :=
  A084936.P175864866204785172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085155.P45423891283562747

`∩[A028260(n+1), A085156(n+1)]`
-/

namespace A085155.P45423891283562747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085155.P45423891283562747

noncomputable section

/-- A085155: Powers of semiprimes.

Offset 1, canonical program `A085155.P45423891283562747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. -/
def A085155 (n : ℕ) : ℤ :=
  (A085155.P45423891283562747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. -/
def A085155.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085681.P2453027393435325629

`filter[A225241(n+3), A353670(#)]`
-/

namespace A085681.P2453027393435325629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A085681.P2453027393435325629

noncomputable section

/-- A085681: Integers of the form 2^k*p where p is a prime > 2^k.

Offset 1, canonical program `A085681.P2453027393435325629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A085681 (n : ℕ) : ℤ :=
  A085681.P2453027393435325629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A085681.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086669.P4971627234888346327

`∑{d}[n+1, A290098(#)]`
-/

namespace A086669.P4971627234888346327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A290098 d

end

end A086669.P4971627234888346327

noncomputable section

/-- A086669: a(n) = number of divisors of n that are fundamental discriminants.

Offset 1, canonical program `A086669.P4971627234888346327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086669 (n : ℕ) : ℤ :=
  A086669.P4971627234888346327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086669.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087694.P12240670254306234750

`∑{d}[n+1, A162397(#)*A227128((n+1)/#)]`
-/

namespace A087694.P12240670254306234750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162397 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087694.P12240670254306234750

noncomputable section

/-- A087694: Number of solutions to x^2 + xy + y^2 == 0 (mod n).

Offset 1, canonical program `A087694.P12240670254306234750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087694 (n : ℕ) : ℤ :=
  A087694.P12240670254306234750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087694.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091806.P2486439758366413823

`A092886(n)/gcd(A092886(n), A105309(n))`
-/

namespace A091806.P2486439758366413823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092886 n : ℚ) / (Int.gcd (A092886 n) (A105309 n) : ℚ)

end

end A091806.P2486439758366413823

noncomputable section

/-- A091806: Given the infinite continued fraction i+(i/(i+(i/(i+...)))), where i is the square root of (-1), this is the numerator of the real part of the convergents.

Offset 1, canonical program `A091806.P2486439758366413823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091806.P2486439758366413823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A091806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091962.P6812419120274730789

`floor(A133111(n+3+n)/16)`
-/

namespace A091962.P6812419120274730789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133111 (n + 3 + n) : ℚ) / 16⌋

end

end A091962.P6812419120274730789

noncomputable section

/-- A091962: From enumerating paths in the plane.

Offset 0, canonical program `A091962.P6812419120274730789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091962 (n : ℕ) : ℤ :=
  A091962.P6812419120274730789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A091962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092131.P2307947649775479021

`A013597(n+1)%(n+1)²`
-/

namespace A092131.P2307947649775479021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013597 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A092131.P2307947649775479021

noncomputable section

/-- A092131: Distance from 2^n to the next prime.

Offset 1, canonical program `A092131.P2307947649775479021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A092131 (n : ℕ) : ℤ :=
  A092131.P2307947649775479021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A092131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092205.P4058687897291920720

`A236213(A007913(n+1))`
-/

namespace A092205.P4058687897291920720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (A007913 (n + 1)).toNat

end

end A092205.P4058687897291920720

noncomputable section

/-- A092205: Number of units in the imaginary quadratic field Q(sqrt(-n)).

Offset 1, canonical program `A092205.P4058687897291920720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092205 (n : ℕ) : ℤ :=
  A092205.P4058687897291920720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096445.P14489248109655328566

`∑{d}[n+1, A120630(#)*A145392((n+1)/#)]`
-/

namespace A096445.P14489248109655328566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A145392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096445.P14489248109655328566

noncomputable section

/-- A096445: Number of reduced primitive positive definite binary quadratic forms of determinant n^2.

Offset 1, canonical program `A096445.P14489248109655328566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445 (n : ℕ) : ℤ :=
  A096445.P14489248109655328566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097385.P16831053754396584263

`A054055(n)^A054054(n)+n`
-/

namespace A097385.P16831053754396584263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054055 n : ℚ) ^ (A054054 n : ℤ) + (n : ℚ)

end

end A097385.P16831053754396584263

noncomputable section

/-- A097385: a(n) = (largest digit of n)^(smallest digit of n) + n.

Offset 0, canonical program `A097385.P16831053754396584263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097385.P16831053754396584263.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097385.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100073.P14220404356122435277

`ceil(A320111(n+1)-A334954(n+1)/2)`
-/

namespace A100073.P14220404356122435277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320111 (n + 1) : ℚ) - (A334954 (n + 1) : ℚ) / 2⌉

end

end A100073.P14220404356122435277

noncomputable section

/-- A100073: Number of representations of n as the difference of two positive squares.

Offset 1, canonical program `A100073.P14220404356122435277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100073 (n : ℕ) : ℤ :=
  A100073.P14220404356122435277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102350.P10623588059510317665

`A246933(9*(n+1))`
-/

namespace A102350.P10623588059510317665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246933 (9 * (n + 1))

end

end A102350.P10623588059510317665

noncomputable section

/-- A102350: Prime(144*n).

Offset 1, canonical program `A102350.P10623588059510317665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A102350 (n : ℕ) : ℤ :=
  A102350.P10623588059510317665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. -/
def A102350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102540.P12409149115680564712

`A000040(A118499(n+1))`
-/

namespace A102540.P12409149115680564712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A118499 (n + 1)).toNat

end

end A102540.P12409149115680564712

noncomputable section

/-- A102540: Primes that are not Chen primes (see A109611).

Offset 1, canonical program `A102540.P12409149115680564712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A102540 (n : ℕ) : ℤ :=
  A102540.P12409149115680564712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A102540.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A102820.P6198136110421382965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102820 (n : ℕ) : ℤ :=
  A102820.P6198136110421382965.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102820.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A105202.P11734223398601534137

`A105203(A005408(n)-A132141(n+1))`
-/

namespace A105202.P11734223398601534137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (A005408 n - A132141 (n + 1)).toNat

end

end A105202.P11734223398601534137

noncomputable section

/-- A105202: Irregular triangle read by rows: row n gives the word f(f(f(...(1)))) [with n applications of f], where f is the morphism 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}.

Offset 0, canonical program `A105202.P11734223398601534137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105202 (n : ℕ) : ℤ :=
  A105202.P11734223398601534137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105202.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107396.P12188816917565824463

`3*7*A133111(n+4)`
-/

namespace A107396.P12188816917565824463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (7 * A133111 (n + 4))

end

end A107396.P12188816917565824463

noncomputable section

/-- A107396: a(n) = binomial(n+5, 5) * binomial(n+7, 5).

Offset 0, canonical program `A107396.P12188816917565824463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A107396 (n : ℕ) : ℤ :=
  A107396.P12188816917565824463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A107396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107758.P5135231134874170272

`∑{d}[n+1, A363289(#)]`
-/

namespace A107758.P5135231134874170272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A363289 d

end

end A107758.P5135231134874170272

noncomputable section

/-- A107758: (+2)Sigma(n): If n = Product p_i^r_i then a(n) = Product (2 + Sum p_i^s_i, s_i=1 to r_i) = Product (1 + (p_i^(r_i+1)-1)/(p_i-1)), a(1) = 1.

Offset 1, canonical program `A107758.P5135231134874170272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758 (n : ℕ) : ℤ :=
  A107758.P5135231134874170272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A066436.P14967679808844480665

`∪[A090684(n+1), A264823(n+1)]`
-/

namespace A066436.P14967679808844480665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066436.P14967679808844480665

noncomputable section

/-- A066436: Primes of the form 2*n^2 - 1.

Offset 1, canonical program `A066436.P14967679808844480665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066436 (n : ℕ) : ℤ :=
  (A066436.P14967679808844480665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066436.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092621.P5799589778367909611

`A000040(eq[1, A109066(n+1)]+1)`
-/

namespace A092621.P5799589778367909611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A092621.P5799589778367909611

noncomputable section

/-- A092621: Primes with exactly one prime digit.

Offset 1, canonical program `A092621.P5799589778367909611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A092621 (n : ℕ) : ℤ :=
  A092621.P5799589778367909611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A092621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092623.P15617629317689966350

`p?[A092625(n+1)]`
-/

namespace A092623.P15617629317689966350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092623.P15617629317689966350

noncomputable section

/-- A092623: Primes with exactly three prime digits.

Offset 1, canonical program `A092623.P15617629317689966350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A092623 (n : ℕ) : ℤ :=
  A092623.P15617629317689966350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A092623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063124.P8664082751821069779

`A020900(n+1)-n`
-/

namespace A063124.P8664082751821069779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1) - (n : ℤ)

end

end A063124.P8664082751821069779

noncomputable section

/-- A063124: a(n) = # { primes p | prime(n) <= p < 2*prime(n) } where prime(n) is the n-th prime.

Offset 1, canonical program `A063124.P8664082751821069779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063124 (n : ℕ) : ℤ :=
  A063124.P8664082751821069779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065765.P15311003886774525712

`A195585(n+1)+A065764(n+1)`
-/

namespace A065765.P15311003886774525712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195585 (n + 1) + A065764 (n + 1)

end

end A065765.P15311003886774525712

noncomputable section

/-- A065765: Sum of divisors of twice square numbers.

Offset 1, canonical program `A065765.P15311003886774525712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065765 (n : ℕ) : ℤ :=
  A065765.P15311003886774525712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065765.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068544.P4052281466746777693

`lt[2*A008578(n+1), A038040(A028310(n))]`
-/

namespace A068544.P4052281466746777693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068544.P4052281466746777693

noncomputable section

/-- A068544: Numbers k such that k*tau(k) > 2*prime(k).

Offset 1, canonical program `A068544.P4052281466746777693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544 (n : ℕ) : ℤ :=
  (A068544.P4052281466746777693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1072 terms. -/
def A068544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068901.P14633773127575240148

`n-A087611(n+1)`
-/

namespace A068901.P14633773127575240148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A087611 (n + 1)

end

end A068901.P14633773127575240148

noncomputable section

/-- A068901: Least number that when added to the n-th prime gives a multiple of n.

Offset 1, canonical program `A068901.P14633773127575240148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068901 (n : ℕ) : ℤ :=
  A068901.P14633773127575240148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068901.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071596.P11338932595279572028

`filter[A071594(n+1), A354034(#)]`
-/

namespace A071596.P11338932595279572028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A071596.P11338932595279572028

noncomputable section

/-- A071596: Even numbers k such that the number of 1's in binary representation of k equals omega(k), the number of distinct primes in the factorization of k.

Offset 1, canonical program `A071596.P11338932595279572028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A071596 (n : ℕ) : ℤ :=
  A071596.P11338932595279572028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A071596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072910.P14603752282820593002

`A057020(A023883(n+1))`
-/

namespace A072910.P14603752282820593002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A023883 (n + 1)).toNat

end

end A072910.P14603752282820593002

noncomputable section

/-- A072910: a(n) = sigma(A023883(n)) / tau(A023883(n)).

Offset 1, canonical program `A072910.P14603752282820593002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6460 terms. -/
def A072910 (n : ℕ) : ℤ :=
  A072910.P14603752282820593002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6460 terms. -/
def A072910.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 4, canonical program `A073367.P4763750874448608159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073367 (n : ℕ) : ℤ :=
  A073367.P4763750874448608159.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073367.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A078471.P5381098536636148179

`A093005(n+1)-A024930(n+1)`
-/

namespace A078471.P5381098536636148179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1) - A024930 (n + 1)

end

end A078471.P5381098536636148179

noncomputable section

/-- A078471: Sum of all odd divisors of all positive integers <= n.

Offset 1, canonical program `A078471.P5381098536636148179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078471 (n : ℕ) : ℤ :=
  A078471.P5381098536636148179.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079627.P16123061929790760579

`2*A074905(n+1)-A061398(n+1)`
-/

namespace A079627.P16123061929790760579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074905 (n + 1) - A061398 (n + 1)

end

end A079627.P16123061929790760579

noncomputable section

/-- A079627: a(n) = Sum_{prime(n) < m < prime(n+1)} mu(m), where mu is the Moebius function (A008683).

Offset 1, canonical program `A079627.P16123061929790760579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079627 (n : ℕ) : ℤ :=
  A079627.P16123061929790760579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079627.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081848.P16688892493849896551

`3*A005428(abs(1-n))`
-/

namespace A081848.P16688892493849896551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005428 |1 - (n : ℤ)|.toNat

end

end A081848.P16688892493849896551

noncomputable section

/-- A081848: Number of numbers whose base-3/2 expansion (see A024629) has n digits.

Offset 1, canonical program `A081848.P16688892493849896551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A081848 (n : ℕ) : ℤ :=
  A081848.P16688892493849896551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A081848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083900.P8267360639211876912

`A083899(n+1)+A083892(n+1)`
-/

namespace A083900.P8267360639211876912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083899 (n + 1) + A083892 (n + 1)

end

end A083900.P8267360639211876912

noncomputable section

/-- A083900: Number of divisors of n with largest digit <= 5 (base 10).

Offset 1, canonical program `A083900.P8267360639211876912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083900 (n : ℕ) : ℤ :=
  A083900.P8267360639211876912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083900.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084645.P5298302243866845739

`eq[1, A046080(n+1)]+1`
-/

namespace A084645.P5298302243866845739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084645.P5298302243866845739

noncomputable section

/-- A084645: Hypotenuses for which there exists a unique integer-sided right triangle.

Offset 1, canonical program `A084645.P5298302243866845739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A084645 (n : ℕ) : ℤ :=
  (A084645.P5298302243866845739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9236 terms. -/
def A084645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084646.P13615093716191733077

`eq[2, A046080(n+1)]+1`
-/

namespace A084646.P13615093716191733077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084646.P13615093716191733077

noncomputable section

/-- A084646: Hypotenuses for which there exist exactly 2 distinct integer triangles.

Offset 1, canonical program `A084646.P13615093716191733077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A084646 (n : ℕ) : ℤ :=
  (A084646.P13615093716191733077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 517 terms. -/
def A084646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084648.P11290905101379260209

`eq[4, A046080(n+1)]+1`
-/

namespace A084648.P11290905101379260209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084648.P11290905101379260209

noncomputable section

/-- A084648: Hypotenuses for which there exist exactly 4 distinct integer triangles.

Offset 1, canonical program `A084648.P11290905101379260209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A084648 (n : ℕ) : ℤ :=
  (A084648.P11290905101379260209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A084648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086222.P1188365077820885668

`A086165(n+1)+A048691(n+1)`
-/

namespace A086222.P1188365077820885668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A048691 (n + 1)

end

end A086222.P1188365077820885668

noncomputable section

/-- A086222: a(n) = card{ (x,y,z) | x <= y <= z and lcm(x,y,z) = n }.

Offset 1, canonical program `A086222.P1188365077820885668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A086165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086222 (n : ℕ) : ℤ :=
  A086222.P1188365077820885668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A086165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086849.P3631588082345199433

`A000217(A000037(n+1))-A000330(A000196(A000037(n+1)))`
-/

namespace A086849.P3631588082345199433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000037 (n + 1)).toNat - A000330 (A000196 (A000037 (n + 1)).toNat).toNat

end

end A086849.P3631588082345199433

noncomputable section

/-- A086849: Sum of first n nonsquares.

Offset 1, canonical program `A086849.P3631588082345199433`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086849 (n : ℕ) : ℤ :=
  A086849.P3631588082345199433.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086849.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088561.P2952561313645306254

`A000720(A088555(n+1)+1)`
-/

namespace A088561.P2952561313645306254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088555 (n + 1) + 1).toNat

end

end A088561.P2952561313645306254

noncomputable section

/-- A088561: A088555 indexed by A000040.

Offset 1, canonical program `A088561.P2952561313645306254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A088555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088561 (n : ℕ) : ℤ :=
  A088561.P2952561313645306254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A088555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088737.P1992063766082002598

`A086971(A002808(n+1))`
-/

namespace A088737.P1992063766082002598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A002808 (n + 1)).toNat

end

end A088737.P1992063766082002598

noncomputable section

/-- A088737: Number of semiprime divisors of n-th composite number.

Offset 1, canonical program `A088737.P1992063766082002598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737 (n : ℕ) : ℤ :=
  A088737.P1992063766082002598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8770 terms. -/
def A088737.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097101.P17642704868951540346

`eq[7, A046080(A004277(n))]`
-/

namespace A097101.P17642704868951540346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097101.P17642704868951540346

noncomputable section

/-- A097101: Numbers m that are the hypotenuse of exactly 7 distinct integer-sided right triangles, i.e., m^2 can be written as a sum of two squares in 7 ways.

Offset 1, canonical program `A097101.P17642704868951540346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A097101 (n : ℕ) : ℤ :=
  (A097101.P17642704868951540346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A097101.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A097327.P3677544989114888276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097327 (n : ℕ) : ℤ :=
  A097327.P3677544989114888276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097454.P2717210328983116484

`1+A072731(n+1)`
-/

namespace A097454.P2717210328983116484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A072731 (n + 1)

end

end A097454.P2717210328983116484

noncomputable section

/-- A097454: a(n) = (number of nonprimes <= n) - (number of primes <= n).

Offset 1, canonical program `A097454.P2717210328983116484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097454 (n : ℕ) : ℤ :=
  A097454.P2717210328983116484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072731, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101932.P9208845352759817678

`A006073(n+1)+1`
-/

namespace A101932.P9208845352759817678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1) + 1

end

end A101932.P9208845352759817678

noncomputable section

/-- A101932: Numbers n with omega(n) equal to omega(n-1) and omega (n+1).

Offset 1, canonical program `A101932.P9208845352759817678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101932 (n : ℕ) : ℤ :=
  A101932.P9208845352759817678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A101932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102187.P15003554201520063795

`A057020(A003601(n+1))`
-/

namespace A102187.P15003554201520063795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A003601 (n + 1)).toNat

end

end A102187.P15003554201520063795

noncomputable section

/-- A102187: Arithmetic means of divisors of arithmetic numbers (arithmetic numbers, A003601, are those for which the average of the divisors is an integer).

Offset 1, canonical program `A102187.P15003554201520063795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A102187 (n : ℕ) : ℤ :=
  A102187.P15003554201520063795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7688 terms. -/
def A102187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103326.P15150555984287749825

`5*A088545(n+1)`
-/

namespace A103326.P15150555984287749825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088545 (n + 1)

end

end A103326.P15150555984287749825

noncomputable section

/-- A103326: a(n) = Fibonacci(5n)/Fibonacci(n).

Offset 1, canonical program `A103326.P15150555984287749825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103326 (n : ℕ) : ℤ :=
  A103326.P15150555984287749825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088545, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103326.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A106405.P14402904271098237239

`A086971(n+1)-A106404(n+1)`
-/

namespace A106405.P14402904271098237239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A106404 (n + 1)

end

end A106405.P14402904271098237239

noncomputable section

/-- A106405: Number of odd semiprimes dividing n.

Offset 1, canonical program `A106405.P14402904271098237239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, A106404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106405 (n : ℕ) : ℤ :=
  A106405.P14402904271098237239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086971, A106404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A106405.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A110969.P16632424768012697550

`Δ[record[A008475(n+1)-A025528(n+1)]]`
-/

namespace A110969.P16632424768012697550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A025528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110969.P16632424768012697550

noncomputable section

/-- A110969: Length of the runs of ones in A014963.

Offset 1, canonical program `A110969.P16632424768012697550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969 (n : ℕ) : ℤ :=
  A110969.P16632424768012697550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. -/
def A110969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062570.P5760445635637791384

`A000034(n)*A000010(n+1)`
-/

namespace A062570.P5760445635637791384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000010 (n + 1)

end

end A062570.P5760445635637791384

noncomputable section

/-- A062570: a(n) = phi(2*n).

Offset 1, canonical program `A062570.P5760445635637791384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570 (n : ℕ) : ℤ :=
  A062570.P5760445635637791384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062624.P14204432833030423673

`A000010(A000108(n))`
-/

namespace A062624.P14204432833030423673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000108 n).toNat

end

end A062624.P14204432833030423673

noncomputable section

/-- A062624: Number of integers less than A000108(n) relatively prime to A000108(n).

Offset 0, canonical program `A062624.P14204432833030423673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062624 (n : ℕ) : ℤ :=
  A062624.P14204432833030423673.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062624.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A062830.P994650721519872774

`A181440(n+1)-A000010(A028310(n))`
-/

namespace A062830.P994650721519872774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 1) - A000010 (A028310 n).toNat

end

end A062830.P994650721519872774

noncomputable section

/-- A062830: a(n) = #{ 0 <= k <= n : K(n, k) = 0 } where K(n, k) is the Kronecker symbol. This is the number of integers 0 <= k <= n that are not coprime to n.

Offset 0, canonical program `A062830.P994650721519872774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062830 (n : ℕ) : ℤ :=
  A062830.P994650721519872774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062849.P14264521753656188479

`record[gcd(A147845(n+1)-1, lcm(3, n))]`
-/

namespace A062849.P14264521753656188479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147845 (n + 1) - 1) (Nat.lcm 3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062849.P14264521753656188479

noncomputable section

/-- A062849: When expressed in base 2 and then interpreted in base 8, is a multiple of the original number.

Offset 1, canonical program `A062849.P14264521753656188479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A062849 (n : ℕ) : ℤ :=
  (A062849.P14264521753656188479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A062849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062952.P16809286703388466493

`∑{d}[n+1, A000203(#)*A000010(#)]`
-/

namespace A062952.P16809286703388466493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000010 d

end

end A062952.P16809286703388466493

noncomputable section

/-- A062952: Multiplicative with a(p^e) = (p^(2*e+2)-p^(e+1)-p^e+p)/(p^2-1).

Offset 1, canonical program `A062952.P16809286703388466493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952 (n : ℕ) : ℤ :=
  A062952.P16809286703388466493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062958.P12901331491880060464

`lt[ratio[A000010(n+1)], 2]+1`
-/

namespace A062958.P12901331491880060464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A062958.P12901331491880060464

noncomputable section

/-- A062958: Numbers k such that phi(k+1) < 2*phi(k), where phi = A000010.

Offset 1, canonical program `A062958.P12901331491880060464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7391 terms. -/
def A062958 (n : ℕ) : ℤ :=
  (A062958.P12901331491880060464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7391 terms. -/
def A062958.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062972.P5621875404486289771

`lt[A048050(n+1)%A000010(n+1), 1]+1`
-/

namespace A062972.P5621875404486289771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A062972.P5621875404486289771

noncomputable section

/-- A062972: Numbers k such that the Chowla function of k is divisible by phi(k).

Offset 1, canonical program `A062972.P5621875404486289771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A062972 (n : ℕ) : ℤ :=
  (A062972.P5621875404486289771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. -/
def A062972.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A063070.P5416196495209204381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063070 (n : ℕ) : ℤ :=
  A063070.P5416196495209204381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063070.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A063449.P15389851829037356267

`lt[A000005(n+1), A051950(n+2)]+1`
-/

namespace A063449.P15389851829037356267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A063449.P15389851829037356267

noncomputable section

/-- A063449: Numbers k for which d(k+1) > 2*d(k), where d(j) = A000005(j).

Offset 1, canonical program `A063449.P15389851829037356267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449 (n : ℕ) : ℤ :=
  (A063449.P15389851829037356267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5451 terms. -/
def A063449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063530.P18432981326514031293

`eq[1, A007913(A000010(n+1)+1)]+1`
-/

namespace A063530.P18432981326514031293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063530.P18432981326514031293

noncomputable section

/-- A063530: Numbers k such that phi(k)+1 is a square.

Offset 1, canonical program `A063530.P18432981326514031293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A063530 (n : ℕ) : ℤ :=
  (A063530.P18432981326514031293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A063530.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A065387.P11284875715279330998

`A000203(n+1)+A000010(n+1)`
-/

namespace A065387.P11284875715279330998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000010 (n + 1)

end

end A065387.P11284875715279330998

noncomputable section

/-- A065387: a(n) = sigma(n) + phi(n).

Offset 1, canonical program `A065387.P11284875715279330998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065387 (n : ℕ) : ℤ :=
  A065387.P11284875715279330998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065390.P11259095994126347679

`record[A000203(A000010(n+1))]`
-/

namespace A065390.P11259095994126347679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065390.P11259095994126347679

noncomputable section

/-- A065390: Peak values reached by A062402 at the sites listed in A065389.

Offset 1, canonical program `A065390.P11259095994126347679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A065390 (n : ℕ) : ℤ :=
  A065390.P11259095994126347679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A065390.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A065608.P12445239359989980431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065608 (n : ℕ) : ℤ :=
  A065608.P12445239359989980431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065608.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A066446.P5739828571146208619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066446 (n : ℕ) : ℤ :=
  A066446.P5739828571146208619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066446.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066500.P11127892168974382539

`eq[0, A000010(n+1)%5]+1`
-/

namespace A066500.P11127892168974382539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066500.P11127892168974382539

noncomputable section

/-- A066500: Numbers k such that 5 divides phi(k).

Offset 1, canonical program `A066500.P11127892168974382539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066500 (n : ℕ) : ℤ :=
  (A066500.P11127892168974382539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066502.P8139223299223943289

`eq[0, A000010(n+2)%7]+2`
-/

namespace A066502.P8139223299223943289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066502.P8139223299223943289

noncomputable section

/-- A066502: Numbers k such that 7 divides phi(k).

Offset 1, canonical program `A066502.P8139223299223943289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066502 (n : ℕ) : ℤ :=
  (A066502.P8139223299223943289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066781.P13882244352398290553

`2^A000010(n+1)`
-/

namespace A066781.P13882244352398290553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A066781.P13882244352398290553

noncomputable section

/-- A066781: a(n) = 2^phi(n).

Offset 1, canonical program `A066781.P13882244352398290553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066781.P13882244352398290553.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066791.P12256946050341986723

`A000010(A002061(n+1))`
-/

namespace A066791.P12256946050341986723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002061 (n + 1)).toNat

end

end A066791.P12256946050341986723

noncomputable section

/-- A066791: a(n) = phi(n^2 + n + 1).

Offset 0, canonical program `A066791.P12256946050341986723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066791 (n : ℕ) : ℤ :=
  A066791.P12256946050341986723.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066792.P1612491882997732710

`A000010(A053698(n))`
-/

namespace A066792.P1612491882997732710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053698 n).toNat

end

end A066792.P1612491882997732710

noncomputable section

/-- A066792: a(n) = phi(n^3 + n^2 + n + 1).

Offset 0, canonical program `A066792.P1612491882997732710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066792 (n : ℕ) : ℤ :=
  A066792.P1612491882997732710.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066792.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067349.P16400170929539486865

`A000005(∑{d}[n+1, #]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A067349.P16400170929539486865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A067349.P16400170929539486865

noncomputable section

/-- A067349: Number of divisors of sigma(n)+phi(n).

Offset 1, canonical program `A067349.P16400170929539486865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067349 (n : ℕ) : ℤ :=
  A067349.P16400170929539486865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067351.P7450103734320064596

`eq[2, A001221(A000203(n+1)+A000010(n+1))]+1`
-/

namespace A067351.P7450103734320064596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (n + 1) + A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067351.P7450103734320064596

noncomputable section

/-- A067351: Numbers k such that sigma(k) + phi(k) has exactly 2 distinct prime divisors.

Offset 1, canonical program `A067351.P7450103734320064596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7301 terms. -/
def A067351 (n : ℕ) : ℤ :=
  (A067351.P7450103734320064596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7301 terms. -/
def A067351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067467.P5397239229491418573

`p?[(n+1)*(A001221(A000010(n+1))-2)]`
-/

namespace A067467.P5397239229491418573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001221 (A000010 (n + 1)).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067467.P5397239229491418573

noncomputable section

/-- A067467: Primes p such that p-1 has 3 distinct prime factors.

Offset 1, canonical program `A067467.P5397239229491418573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4283 terms. -/
def A067467 (n : ℕ) : ℤ :=
  A067467.P5397239229491418573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4283 terms. -/
def A067467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067541.P934572602238230955

`A000010(n+2)/and(2, n)!`
-/

namespace A067541.P934572602238230955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ)

end

end A067541.P934572602238230955

noncomputable section

/-- A067541: a(n) = phi(n*(n+1)/2)/phi(n) where phi is the Euler totient function A000010(n).

Offset 1, canonical program `A067541.P934572602238230955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067541.P934572602238230955.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067704.P10410918183322062006

`eq[2, A000010(A000203(n+1))/A000010(n+1)]+1`
-/

namespace A067704.P10410918183322062006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A067704.P10410918183322062006

noncomputable section

/-- A067704: Numbers n such that phi(sigma(n)) = 2*phi(n).

Offset 1, canonical program `A067704.P10410918183322062006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A067704 (n : ℕ) : ℤ :=
  (A067704.P10410918183322062006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A067704.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069049.P17776412635063250248

`eq[A015910(A000010(n+1)), A015910(n+1)]+1`
-/

namespace A069049.P17776412635063250248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069049.P17776412635063250248

noncomputable section

/-- A069049: Numbers k such that 2^k mod k = 2^phi(k) mod phi(k).

Offset 1, canonical program `A069049.P17776412635063250248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A069049 (n : ℕ) : ℤ :=
  (A069049.P17776412635063250248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A069049.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069579.P15303065662107838082

`eq[A007913(A000010(n+1)), A173557(n+1)]+1`
-/

namespace A069579.P15303065662107838082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069579.P15303065662107838082

noncomputable section

/-- A069579: Numbers k such that phi(core(k)) = core(phi(k)) where core(k) is the squarefree part of k (the smallest integer such that k*core(k) is a square).

Offset 1, canonical program `A069579.P15303065662107838082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3479 terms. -/
def A069579 (n : ℕ) : ℤ :=
  (A069579.P15303065662107838082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3479 terms. -/
def A069579.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A069949.P11973078331391515623

`∑{d}[n+1, A000010(#+1)]`
-/

namespace A069949.P11973078331391515623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (d + 1)

end

end A069949.P11973078331391515623

noncomputable section

/-- A069949: a(n) = Sum_{d|n} phi(d+1).

Offset 1, canonical program `A069949.P11973078331391515623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069949 (n : ℕ) : ℤ :=
  A069949.P11973078331391515623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070032.P5106669173627734381

`floor(A000203(n+1)/A000010(n+1))`
-/

namespace A070032.P5106669173627734381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)⌋

end

end A070032.P5106669173627734381

noncomputable section

/-- A070032: Integer part of sigma(n)/phi(n).

Offset 1, canonical program `A070032.P5106669173627734381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070032 (n : ℕ) : ℤ :=
  A070032.P5106669173627734381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070163.P16977619286068916584

`p?[n-A000010(n+1)]`
-/

namespace A070163.P16977619286068916584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070163.P16977619286068916584

noncomputable section

/-- A070163: Primes arising in A070162.

Offset 1, canonical program `A070163.P16977619286068916584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070163 (n : ℕ) : ℤ :=
  A070163.P16977619286068916584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070163.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071108.P7008044690600439881

`a(n-2)+a(n-1)*A000005(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A071108.P7008044690600439881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A000005 (n + 1)

end

end A071108.P7008044690600439881

noncomputable section

/-- A071108: CONTINUANT transform of {d(n)}, 1, 2, 2, 3, 2, 4, ... (A000005).

Offset 1, canonical program `A071108.P7008044690600439881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A071108 (n : ℕ) : ℤ :=
  A071108.P7008044690600439881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A071108.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A071601.P1755047745125711473

`eq[A001316(A000010(n+1)), A001316(n+1)]+1`
-/

namespace A071601.P1755047745125711473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071601.P1755047745125711473

noncomputable section

/-- A071601: Numbers k such that k and phi(k) have the same number of 1's in their binary representation.

Offset 1, canonical program `A071601.P1755047745125711473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A071601 (n : ℕ) : ℤ :=
  (A071601.P1755047745125711473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A071601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072303.P6106614484039131218

`lt[(n²+n)%A000010(n+1), 1]+1`
-/

namespace A072303.P6106614484039131218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 + n : ℤ) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072303.P6106614484039131218

noncomputable section

/-- A072303: Numbers n for which n is congruent to n^2 mod phi(n).

Offset 1, canonical program `A072303.P6106614484039131218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A072303 (n : ℕ) : ℤ :=
  (A072303.P6106614484039131218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. -/
def A072303.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072779.P8933871589259974098

`A001157(n+1)+A000203(n+1)*A000010(n+1)`
-/

namespace A072779.P8933871589259974098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + A000203 (n + 1) * A000010 (n + 1)

end

end A072779.P8933871589259974098

noncomputable section

/-- A072779: a(n) = sigma_2(n) + phi(n) * sigma(n).

Offset 1, canonical program `A072779.P8933871589259974098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072779 (n : ℕ) : ℤ :=
  A072779.P8933871589259974098.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072779.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072911.P17054128587681888485

`∏{e}[n+1, A000010(#)]`
-/

namespace A072911.P17054128587681888485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000010 (Nat.factorization (f1 n) p)

end

end A072911.P17054128587681888485

noncomputable section

/-- A072911: Number of "phi-divisors" of n.

Offset 1, canonical program `A072911.P17054128587681888485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072911 (n : ℕ) : ℤ :=
  A072911.P17054128587681888485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072917.P88394405705983197

`A013632(A000010(n+1))`
-/

namespace A072917.P88394405705983197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000010 (n + 1)).toNat

end

end A072917.P88394405705983197

noncomputable section

/-- A072917: a(n) = p(n) - phi(n), where p(n) is the least prime greater than phi(n).

Offset 1, canonical program `A072917.P88394405705983197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A013632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072917 (n : ℕ) : ℤ :=
  A072917.P88394405705983197.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A013632, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072917.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A073757.P6861480467973211752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073757 (n : ℕ) : ℤ :=
  A073757.P6861480467973211752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073808.P10399761724564126745

`A000005(A179931(n+1))`
-/

namespace A073808.P10399761724564126745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A179931 (n + 1)).toNat

end

end A073808.P10399761724564126745

noncomputable section

/-- A073808: Number of common divisors of sigma_1(n) and sigma_2(n).

Offset 1, canonical program `A073808.P10399761724564126745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073808 (n : ℕ) : ℤ :=
  A073808.P10399761724564126745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073808.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074821.P5811129272772757011

`eq[A000005(2*n+3), A000005(n+1)]+1`
-/

namespace A074821.P5811129272772757011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074821.P5811129272772757011

noncomputable section

/-- A074821: Numbers k such that tau(k) = tau(2k+1).

Offset 1, canonical program `A074821.P5811129272772757011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7994 terms. -/
def A074821 (n : ℕ) : ℤ :=
  (A074821.P5811129272772757011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7994 terms. -/
def A074821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074942.P6498389063173733852

`A010872(A000010(n+1))`
-/

namespace A074942.P6498389063173733852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000010 (n + 1)).toNat

end

end A074942.P6498389063173733852

noncomputable section

/-- A074942: a(n) = phi(n) mod 3.

Offset 1, canonical program `A074942.P6498389063173733852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074942 (n : ℕ) : ℤ :=
  A074942.P6498389063173733852.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074943.P4376149166701076810

`A010872(A000005(n+1))`
-/

namespace A074943.P4376149166701076810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000005 (n + 1)).toNat

end

end A074943.P4376149166701076810

noncomputable section

/-- A074943: a(n) = tau(n) mod 3.

Offset 1, canonical program `A074943.P4376149166701076810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074943 (n : ℕ) : ℤ :=
  A074943.P4376149166701076810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075177.P9409297406548734582

`eq[2, A000005(A007605(n+1))]+1`
-/

namespace A075177.P9409297406548734582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007605 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075177.P9409297406548734582

noncomputable section

/-- A075177: Indices of additive primes, see A046704.

Offset 1, canonical program `A075177.P9409297406548734582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. -/
def A075177 (n : ℕ) : ℤ :=
  (A075177.P9409297406548734582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. -/
def A075177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075747.P3624415254183292028

`eq[2, A000005(A128468(7*n))]`
-/

namespace A075747.P3624415254183292028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128468 (7 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075747.P3624415254183292028

noncomputable section

/-- A075747: Numbers n such that 210*n + 17 is prime.

Offset 1, canonical program `A075747.P3624415254183292028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A075747 (n : ℕ) : ℤ :=
  (A075747.P3624415254183292028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A075747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075882.P5666725492503868813

`A000010(∑[record[∑{p}[n+2, #]]])`
-/

namespace A075882.P5666725492503868813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075882.P5666725492503868813

noncomputable section

/-- A075882: a(n) = phi(Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A075882.P5666725492503868813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A075882 (n : ℕ) : ℤ :=
  A075882.P5666725492503868813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A075882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076300.P7338240880064656560

`lt[A000005(A008706(n+1)+A000040(n+1)), 3]+1`
-/

namespace A076300.P7338240880064656560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008706 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076300.P7338240880064656560

noncomputable section

/-- A076300: Numbers k such that prime(k) + s*k is prime, s=5.

Offset 1, canonical program `A076300.P7338240880064656560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A076300 (n : ℕ) : ℤ :=
  (A076300.P7338240880064656560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A076300.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A077510.P12327398340584914313

`eq[2, A000005(A000720(n+1)+n+1)]+1`
-/

namespace A077510.P12327398340584914313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000720 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077510.P12327398340584914313

noncomputable section

/-- A077510: Numbers k such that k + pi(k) is a prime.

Offset 1, canonical program `A077510.P12327398340584914313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5079 terms. -/
def A077510 (n : ℕ) : ℤ :=
  (A077510.P12327398340584914313.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5079 terms. -/
def A077510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077651.P9375760711476955691

`A000030(A000010(n+1))`
-/

namespace A077651.P9375760711476955691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000010 (n + 1)).toNat

end

end A077651.P9375760711476955691

noncomputable section

/-- A077651: Initial digit of phi(n), where phi is Euler totient function, A000010.

Offset 1, canonical program `A077651.P9375760711476955691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077651 (n : ℕ) : ℤ :=
  A077651.P9375760711476955691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000030, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A077651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078321.P465909229591695369

`A000010((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078321.P465909229591695369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078321.P465909229591695369

noncomputable section

/-- A078321: Euler's totient of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078321.P465909229591695369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078321 (n : ℕ) : ℤ :=
  A078321.P465909229591695369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A078321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078704.P17725575729352616635

`A000196(A000010(n+1))`
-/

namespace A078704.P17725575729352616635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000010 (n + 1)).toNat

end

end A078704.P17725575729352616635

noncomputable section

/-- A078704: Integer part of the square root of phi(n).

Offset 1, canonical program `A078704.P17725575729352616635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078704 (n : ℕ) : ℤ :=
  A078704.P17725575729352616635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078772.P10417017956842784990

`A000010(A175851(abs(1-n)+1))`
-/

namespace A078772.P10417017956842784990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A175851 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A078772.P10417017956842784990

noncomputable section

/-- A078772: a(n) = phi(n-p) where p is largest prime < n, a(1) = a(2) = 1 by convention.

Offset 1, canonical program `A078772.P10417017956842784990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078772 (n : ℕ) : ℤ :=
  A078772.P10417017956842784990.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079552.P14816231143647664336

`A000005(A006093(n))+a(n-1)` with `a(0)=0`
-/

namespace A079552.P14816231143647664336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A006093 n).toNat + a (n - 1)

end

end A079552.P14816231143647664336

noncomputable section

/-- A079552: Record values in A079551.

Offset 0, canonical program `A079552.P14816231143647664336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079552 (n : ℕ) : ℤ :=
  A079552.P14816231143647664336.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079814.P13038477736834189508

`lt[A000010(A042948(n)+1), A256502(n+1)]`
-/

namespace A079814.P13038477736834189508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A042948 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079814.P13038477736834189508

noncomputable section

/-- A079814: Odd integers k such that phi(k)/k < 6/Pi^2 where phi = A000010.

Offset 1, canonical program `A079814.P13038477736834189508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A079814 (n : ℕ) : ℤ :=
  (A079814.P13038477736834189508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A079814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080148.P1689586419844120662

`comp[A080147(n+1)-2]+2`
-/

namespace A080148.P1689586419844120662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A080148.P1689586419844120662

noncomputable section

/-- A080148: Positions of primes of the form 4*k+3 (A002145) among all primes (A000040).

Offset 1, canonical program `A080148.P1689586419844120662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080148 (n : ℕ) : ℤ :=
  (A080148.P1689586419844120662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080148.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A081241.P18283941350862078452

`(A145341(n+3)-3)/2`
-/

namespace A081241.P18283941350862078452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 3) - 3 : ℚ) / 2

end

end A081241.P18283941350862078452

noncomputable section

/-- A081241: Position in B of reversal of n-th term of B, where B is the logic-binary sequence, A007931.

Offset 1, canonical program `A081241.P18283941350862078452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081241.P18283941350862078452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081619.P7456844298066121194

`record[(n+1)*A005369(2*A000005(n+1))]`
-/

namespace A081619.P7456844298066121194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005369 (2 * A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081619.P7456844298066121194

noncomputable section

/-- A081619: Numbers whose divisors can be arranged as equilateral triangle.

Offset 1, canonical program `A081619.P7456844298066121194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8353 terms. -/
def A081619 (n : ℕ) : ℤ :=
  A081619.P7456844298066121194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8353 terms. -/
def A081619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082377.P15011776684150655685

`lt[A007947(n+1), A000010(n+1)+2]+1`
-/

namespace A082377.P15011776684150655685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082377.P15011776684150655685

noncomputable section

/-- A082377: Numbers k such that rad(k) - phi(k) <= 1, where rad = A007947 and phi = A000010.

Offset 1, canonical program `A082377.P15011776684150655685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082377 (n : ℕ) : ℤ :=
  (A082377.P15011776684150655685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082513.P14151738527547448767

`A000720(n+1)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082513.P14151738527547448767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000005 (n + 1)

end

end A082513.P14151738527547448767

noncomputable section

/-- A082513: a(n)=A000720(n)-A000005(n).

Offset 1, canonical program `A082513.P14151738527547448767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082513 (n : ℕ) : ℤ :=
  A082513.P14151738527547448767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082514.P13229630575248176506

`A000720(n+1)+A000005(n+1)`
-/

namespace A082514.P13229630575248176506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000005 (n + 1)

end

end A082514.P13229630575248176506

noncomputable section

/-- A082514: a(n) = pi(n) + tau(n).

Offset 1, canonical program `A082514.P13229630575248176506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082514 (n : ℕ) : ℤ :=
  A082514.P13229630575248176506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082515.P15614925756413171437

`A000720(n+1)+A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082515.P15614925756413171437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000010 (n + 1)

end

end A082515.P15614925756413171437

noncomputable section

/-- A082515: a(n)=A000720(n)+A000010(n).

Offset 1, canonical program `A082515.P15614925756413171437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082515 (n : ℕ) : ℤ :=
  A082515.P15614925756413171437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083019.P15740513110664928279

`A000005(gcd(n+1, A002708(n+1)))`
-/

namespace A083019.P15740513110664928279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A002708 (n + 1)))

end

end A083019.P15740513110664928279

noncomputable section

/-- A083019: Number of common divisors of n and F(n) where F(n) denotes the n-th Fibonacci number.

Offset 1, canonical program `A083019.P15740513110664928279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083019 (n : ℕ) : ℤ :=
  A083019.P15740513110664928279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083239.P10010670586367493324

`A000010(n)-a(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083239.P10010670586367493324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 n - a (n - 1)

end

end A083239.P10010670586367493324

noncomputable section

/-- A083239: First order recursion: a(0) = 1; a(n) = phi(n) - a(n-1) = A000010(n) - a(n-1).

Offset 0, canonical program `A083239.P10010670586367493324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083239 (n : ℕ) : ℤ :=
  A083239.P10010670586367493324.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083272.P5000618419740904812

`n*A000005(a(n-1))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083272.P5000618419740904812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A000005 (a (n - 1)).toNat + 1

end

end A083272.P5000618419740904812

noncomputable section

/-- A083272: a(n) = n*tau(a(n-1)) + 1 = n*A000005(a(n-1)) + 1, a(0) = 1.

Offset 0, canonical program `A083272.P5000618419740904812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083272 (n : ℕ) : ℤ :=
  A083272.P5000618419740904812.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083548.P15553026466042676037

`lcm(n+1-A000010(n+1), n+2-A000010(n+2))`
-/

namespace A083548.P15553026466042676037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A000010 (n + 1)) ((n + 2 : ℤ) - A000010 (n + 2))

end

end A083548.P15553026466042676037

noncomputable section

/-- A083548: Least common multiple of cototient values of consecutive integers.

Offset 1, canonical program `A083548.P15553026466042676037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083548 (n : ℕ) : ℤ :=
  (A083548.P15553026466042676037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084300.P13506649886164335287

`A010875(A000010(n+1))`
-/

namespace A084300.P13506649886164335287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000010 (n + 1)).toNat

end

end A084300.P13506649886164335287

noncomputable section

/-- A084300: a(n) = phi(n) mod 6.

Offset 1, canonical program `A084300.P13506649886164335287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084300 (n : ℕ) : ℤ :=
  A084300.P13506649886164335287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084474.P8230348332531806502

`A084472(A084471(n+1))`
-/

namespace A084474.P8230348332531806502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084472 (A084471 (n + 1)).toNat

end

end A084474.P8230348332531806502

noncomputable section

/-- A084474: Write n in binary and replace 0 with 0000.

Offset 1, canonical program `A084474.P8230348332531806502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084474 (n : ℕ) : ℤ :=
  A084474.P8230348332531806502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084474.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A086680.P9420142532378401602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086680 (n : ℕ) : ℤ :=
  A086680.P9420142532378401602.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086680.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A086690.P3097928174086633679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086690 (n : ℕ) : ℤ :=
  A086690.P3097928174086633679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088434.P6459778276779683770

`∑{d}[n+1, A152467(A014681(A000005(#)+1))]`
-/

namespace A088434.P6459778276779683770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152467 (A014681 (A000005 d + 1).toNat).toNat

end

end A088434.P6459778276779683770

noncomputable section

/-- A088434: Number of ways to write n as n = u*v*w with 1 <= u < v < w.

Offset 1, canonical program `A088434.P6459778276779683770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088434 (n : ℕ) : ℤ :=
  A088434.P6459778276779683770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088482.P5121561930417053920

`(n+1)*A000005(gcd(n+2, (2-n)²))-(n-3)`
-/

namespace A088482.P5121561930417053920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (Int.gcd (n + 2 : ℤ) ((2 - (n : ℤ)) ^ 2)) - ((n : ℤ) - 3)

end

end A088482.P5121561930417053920

noncomputable section

/-- A088482: a(n) = Sum_{k=1..4} floor(p(n,k) / p(n-1,k)) where p(n,k) = n! / (n-floor(n/2^k))!.

Offset 2, canonical program `A088482.P5121561930417053920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9007 terms. -/
def A088482 (n : ℕ) : ℤ :=
  A088482.P5121561930417053920.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9007 terms. -/
def A088482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089288.P14608164159203676811

`A000010(A011545(n))`
-/

namespace A089288.P14608164159203676811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011545 n).toNat

end

end A089288.P14608164159203676811

noncomputable section

/-- A089288: Euler's totient of floor(Pi*10^n), Pi=3.14....

Offset 0, canonical program `A089288.P14608164159203676811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288 (n : ℕ) : ℤ :=
  A089288.P14608164159203676811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089632.P9401451600053536138

`eq[0, val(A000005(A007947(n+1)+1), 2)]+1`
-/

namespace A089632.P9401451600053536138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A007947 (n + 1) + 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089632.P9401451600053536138

noncomputable section

/-- A089632: 1 + product of prime factors of n is a perfect square.

Offset 1, canonical program `A089632.P9401451600053536138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A089632 (n : ℕ) : ℤ :=
  (A089632.P9401451600053536138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A089632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091454.P11422470773491775725

`lt[3*A000010(n+1), n]+1`
-/

namespace A091454.P11422470773491775725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P11422470773491775725

noncomputable section

/-- A091454: Integers k such that 3*phi(k) < k.

Offset 1, canonical program `A091454.P11422470773491775725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454 (n : ℕ) : ℤ :=
  (A091454.P11422470773491775725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. -/
def A091454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092517.P9763657957312887963

`A000005(n+1)*A000005(n+2)`
-/

namespace A092517.P9763657957312887963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (n + 2)

end

end A092517.P9763657957312887963

noncomputable section

/-- A092517: Product of tau values for consecutive integers.

Offset 1, canonical program `A092517.P9763657957312887963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092517 (n : ℕ) : ℤ :=
  A092517.P9763657957312887963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092517.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A094229.P9195071052336443656

`lt[n, A002387(A000005(n+1))]+1`
-/

namespace A094229.P9195071052336443656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094229.P9195071052336443656

noncomputable section

/-- A094229: Numbers k such that d(k) >= k-th harmonic number H(k) = Sum_{i=1..k} 1/i.

Offset 1, canonical program `A094229.P9195071052336443656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094229 (n : ℕ) : ℤ :=
  (A094229.P9195071052336443656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095824.P14613897866976482580

`eq[2, A000005(A054055(A028310(n))+n)]`
-/

namespace A095824.P14613897866976482580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054055 (A028310 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P14613897866976482580

noncomputable section

/-- A095824: Numbers k such that k + largest digit of k is prime.

Offset 1, canonical program `A095824.P14613897866976482580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 921 terms. -/
def A095824 (n : ℕ) : ℤ :=
  (A095824.P14613897866976482580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 921 terms. -/
def A095824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097604.P12947743009759751019

`floor(sqrt(2*(n+1))*A000010(n+1)-(n+1))`
-/

namespace A097604.P12947743009759751019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * (n + 1) : ℝ) * (A000010 (n + 1) : ℝ) - (n + 1 : ℝ)⌋

end

end A097604.P12947743009759751019

noncomputable section

/-- A097604: a(n) = floor( phi(n)*sqrt(2*n) ) - n.

Offset 1, canonical program `A097604.P12947743009759751019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604 (n : ℕ) : ℤ :=
  A097604.P12947743009759751019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097605.P4373069648380416805

`lt[(n*(n+2))%A000010(n+1)+1, 2]+1`
-/

namespace A097605.P4373069648380416805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * (n + 2) : ℤ) (A000010 (n + 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097605.P4373069648380416805

noncomputable section

/-- A097605: Numbers n such that phi(n) divides n^2 - 1, where phi(n) (A000010) is number of positive integers <= n and coprime to n.

Offset 1, canonical program `A097605.P4373069648380416805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605 (n : ℕ) : ℤ :=
  (A097605.P4373069648380416805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5153 terms. -/
def A097605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099377.P6047912278151945242

`A348510(n+1)+1+n`
-/

namespace A099377.P6047912278151945242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348510 (n + 1) + 1 + (n : ℤ)

end

end A099377.P6047912278151945242

noncomputable section

/-- A099377: Numerators of the harmonic means of the divisors of the positive integers.

Offset 1, canonical program `A099377.P6047912278151945242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377 (n : ℕ) : ℤ :=
  A099377.P6047912278151945242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100565.P11953186338888274406

`A110654(A015995(n+1)+A000005(n+1))`
-/

namespace A100565.P11953186338888274406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A015995 (n + 1) + A000005 (n + 1)).toNat

end

end A100565.P11953186338888274406

noncomputable section

/-- A100565: a(n) = Card{(x,y,z) : x <= y <= z, x|n, y|n, z|n, gcd(x,y)=1, gcd(x,z)=1, gcd(y,z)=1}.

Offset 1, canonical program `A100565.P11953186338888274406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100565 (n : ℕ) : ℤ :=
  A100565.P11953186338888274406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100577.P14492990794952470121

`2^(A000005(n+1)-1)`
-/

namespace A100577.P14492990794952470121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) - 1 : ℤ)

end

end A100577.P14492990794952470121

noncomputable section

/-- A100577: Number of sets of divisors of n with an odd sum.

Offset 1, canonical program `A100577.P14492990794952470121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100577.P14492990794952470121.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100577.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A102611.P8027776513147577979

`eq[2, A000005(A053743(n)+32)]`
-/

namespace A102611.P8027776513147577979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053743 n + 32).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102611.P8027776513147577979

noncomputable section

/-- A102611: Numbers k such that the number k77 is prime.

Offset 1, canonical program `A102611.P8027776513147577979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611 (n : ℕ) : ℤ :=
  (A102611.P8027776513147577979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A102611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103871.P16562096325091225650

`eq[2, A000005(A017377(10*n+6))]`
-/

namespace A103871.P16562096325091225650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 (10 * n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103871.P16562096325091225650

noncomputable section

/-- A103871: Numbers n such that 100n + 69 is prime.

Offset 1, canonical program `A103871.P16562096325091225650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871 (n : ℕ) : ℤ :=
  (A103871.P16562096325091225650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A103871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A109082.P2849542924064461301

`A358552(n+1)-1`
-/

namespace A109082.P2849542924064461301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) - 1

end

end A109082.P2849542924064461301

noncomputable section

/-- A109082: Depth of rooted tree having Matula-Goebel number n.

Offset 1, canonical program `A109082.P2849542924064461301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109082 (n : ℕ) : ℤ :=
  A109082.P2849542924064461301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`
-/

namespace A109606.P2415810041766612210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

end

end A109606.P2415810041766612210

noncomputable section

/-- A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

Offset 1, canonical program `A109606.P2415810041766612210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606 (n : ℕ) : ℤ :=
  A109606.P2415810041766612210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110088.P8337879305070338118

`A000005(n+1)^A001221(n+1)`
-/

namespace A110088.P8337879305070338118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P8337879305070338118

noncomputable section

/-- A110088: a(n) = tau(n)^omega(n), where tau = A000005 and omega = A001221.

Offset 1, canonical program `A110088.P8337879305070338118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110088.P8337879305070338118.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110088.provenance : SequenceMachineLib.Provenance := .conditional

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

