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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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

/-! ## A129195.P4035285138527206210

`2^A092391(n)`
-/

namespace A129195.P4035285138527206210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092391 n : ℤ)

end

end A129195.P4035285138527206210

noncomputable section

/-- A129195: a(n) = denominator(n!/4^n).

Offset 0, canonical program `A129195.P4035285138527206210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129195.P4035285138527206210.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A075312.P13937281751554376934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075312 (n : ℕ) : ℤ :=
  A075312.P13937281751554376934.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075312.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A071295.P3465812326302079174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071295 (n : ℕ) : ℤ :=
  A071295.P3465812326302079174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071295.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A077008.P7276496796489003301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077008 (n : ℕ) : ℤ :=
  A077008.P7276496796489003301.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077008.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A078444.P18345850543036628727`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, A067076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078444 (n : ℕ) : ℤ :=
  A078444.P18345850543036628727.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, A067076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078444.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A078835.P6736849639258305604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078835 (n : ℕ) : ℤ :=
  A078835.P6736849639258305604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078835.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079528.P452950104392790503

`A033880(n+1)+A028391(n)`
-/

namespace A079528.P452950104392790503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A028391 n

end

end A079528.P452950104392790503

noncomputable section

/-- A079528: a(n) = sigma(n) - ceiling(n + sqrt n).

Offset 1, canonical program `A079528.P452950104392790503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079528 (n : ℕ) : ℤ :=
  A079528.P452950104392790503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079528.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 3, canonical program `A081115.P12324789555972598981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081115 (n : ℕ) : ℤ :=
  A081115.P12324789555972598981.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081115.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A083555.P12251096965399093067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058263, A083554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083555.P12251096965399093067.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058263, A083554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083555.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084922.P12180075061364049737

`A084920(n+3)/6`
-/

namespace A084922.P12180075061364049737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 3) : ℚ) / 6

end

end A084922.P12180075061364049737

noncomputable section

/-- A084922: a(n) = (prime(n)-1)*(prime(n)+1)/6.

Offset 3, canonical program `A084922.P12180075061364049737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084922 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084922.P12180075061364049737.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084922.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A090455.P12087489954554024740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090455 (n : ℕ) : ℤ :=
  A090455.P12087489954554024740.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090455.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A092771.P2642806200389724919

`A092769(n+1)-1`
-/

namespace A092771.P2642806200389724919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092769 (n + 1) - 1

end

end A092771.P2642806200389724919

noncomputable section

/-- A092771: Prime(prime(n))^2-1.

Offset 1, canonical program `A092771.P2642806200389724919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092771 (n : ℕ) : ℤ :=
  A092771.P2642806200389724919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092773.P5808287520077253958

`ceil(A092769(n+1)/2)`
-/

namespace A092773.P5808287520077253958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A092769 (n + 1) : ℚ) / 2⌉

end

end A092773.P5808287520077253958

noncomputable section

/-- A092773: (Prime(prime(n))^2+1)/2.

Offset 1, canonical program `A092773.P5808287520077253958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092773 (n : ℕ) : ℤ :=
  A092773.P5808287520077253958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092773.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A095888.P10650338120548630372

`A077385(A004201(n+1))`
-/

namespace A095888.P10650338120548630372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (A004201 (n + 1)).toNat

end

end A095888.P10650338120548630372

noncomputable section

/-- A095888: Triangle read by rows: T(n,k) = n^(n-k), n>=1, 1<=k<=n.

Offset 1, canonical program `A095888.P10650338120548630372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095888 (n : ℕ) : ℤ :=
  A095888.P10650338120548630372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A095888.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A097431.P15092973135870859049

`floor(sqrt(A069484(n+1)))`
-/

namespace A097431.P15092973135870859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A069484 (n + 1))

end

end A097431.P15092973135870859049

noncomputable section

/-- A097431: Integer part of the hypotenuse of right triangles with consecutive prime legs.

Offset 1, canonical program `A097431.P15092973135870859049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097431 (n : ℕ) : ℤ :=
  A097431.P15092973135870859049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069484, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097431.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A098042.P4605575753571514886

`p?[A006450(n+1)-A001057(A073131(n+1))]`
-/

namespace A098042.P4605575753571514886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - A001057 (A073131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098042.P4605575753571514886

noncomputable section

/-- A098042: Primes of the form (prime(prime(k)) + prime(prime(k+1)))/2.

Offset 1, canonical program `A098042.P4605575753571514886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A098042 (n : ℕ) : ℤ :=
  A098042.P4605575753571514886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A098042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098043.P367051223371950583

`p?[A001281(A073131(n+1))]`
-/

namespace A098043.P367051223371950583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A073131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098043.P367051223371950583

noncomputable section

/-- A098043: Primes of the form (prime(prime(k+1)) - prime(prime(k)))/2.

Offset 1, canonical program `A098043.P367051223371950583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A098043 (n : ℕ) : ℤ :=
  A098043.P367051223371950583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A098043.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111891.P17105270251826689763

`∑[char[eq[1, A111862(n+1)]]]`
-/

namespace A111891.P17105270251826689763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111891.P17105270251826689763

noncomputable section

/-- A111891: Number of numbers m <= n such that 1 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111891.P17105270251826689763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9984 terms. -/
def A111891 (n : ℕ) : ℤ :=
  (A111891.P17105270251826689763.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9984 terms. -/
def A111891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111892.P4463741140269884913

`∑[char[eq[2, A111862(n+1)]]]`
-/

namespace A111892.P4463741140269884913
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111892.P4463741140269884913

noncomputable section

/-- A111892: Number of numbers m <= n such that 2 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111892.P4463741140269884913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A111892 (n : ℕ) : ℤ :=
  (A111892.P4463741140269884913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A111892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111893.P6816337927118764059

`∑[char[eq[3, A111862(n+1)]]]`
-/

namespace A111893.P6816337927118764059
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111893.P6816337927118764059

noncomputable section

/-- A111893: Number of numbers m <= n such that 3 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111893.P6816337927118764059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A111893 (n : ℕ) : ℤ :=
  (A111893.P6816337927118764059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. -/
def A111893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111895.P24504582110756803

`∑[char[eq[5, A111862(n+1)]]]`
-/

namespace A111895.P24504582110756803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111895.P24504582110756803

noncomputable section

/-- A111895: Number of numbers m <= n such that 5 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111895.P24504582110756803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9992 terms. -/
def A111895 (n : ℕ) : ℤ :=
  (A111895.P24504582110756803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9992 terms. -/
def A111895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111896.P11288438565352945554

`∑[char[eq[6, A111862(n+1)]]]`
-/

namespace A111896.P11288438565352945554
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111896.P11288438565352945554

noncomputable section

/-- A111896: Number of numbers m <= n such that 6 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111896.P11288438565352945554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A111896 (n : ℕ) : ℤ :=
  (A111896.P11288438565352945554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A111896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111897.P18341532371278709385

`∑[char[eq[7, A111862(n+1)]]]`
-/

namespace A111897.P18341532371278709385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111897.P18341532371278709385

noncomputable section

/-- A111897: Number of numbers m <= n such that 7 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111897.P18341532371278709385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A111897 (n : ℕ) : ℤ :=
  (A111897.P18341532371278709385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A111897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111898.P9714464059355174536

`∑[char[eq[8, A111862(n+1)]]]`
-/

namespace A111898.P9714464059355174536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111898.P9714464059355174536

noncomputable section

/-- A111898: Number of numbers m <= n such that 8 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111898.P9714464059355174536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A111898 (n : ℕ) : ℤ :=
  (A111898.P9714464059355174536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A111898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111899.P5822750478645287811

`∑[C(A111862(n+1), 9)]`
-/

namespace A111899.P5822750478645287811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111862 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111899.P5822750478645287811

noncomputable section

/-- A111899: Number of numbers m <= n such that 9 equals the second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111899.P5822750478645287811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111899 (n : ℕ) : ℤ :=
  (A111899.P5822750478645287811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111900.P2753696338682174215

`and(char[A098002(n+1)], A210448(n+1))`
-/

namespace A111900.P2753696338682174215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A210448 (n + 1))

end

end A111900.P2753696338682174215

noncomputable section

/-- A111900: Number of partitions of n into distinct squares of primes.

Offset 0, canonical program `A111900.P2753696338682174215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A111900 (n : ℕ) : ℤ :=
  A111900.P2753696338682174215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A111900.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112413.P7799178321871469342

`A000245(abs(1-A025581(n)))`
-/

namespace A112413.P7799178321871469342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - A025581 n|.toNat

end

end A112413.P7799178321871469342

noncomputable section

/-- A112413: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and starting with exactly k UD's, where U=(1,1), D=(1,-1) (0 <= k <= n).

Offset 0, canonical program `A112413.P7799178321871469342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413 (n : ℕ) : ℤ :=
  A112413.P7799178321871469342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113678.P6435561091149394357

`A078008(A025581(n))`
-/

namespace A113678.P6435561091149394357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A025581 n).toNat

end

end A113678.P6435561091149394357

noncomputable section

/-- A113678: Sequence array for A078008.

Offset 0, canonical program `A113678.P6435561091149394357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113678 (n : ℕ) : ℤ :=
  A113678.P6435561091149394357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114283.P5681186867931976057

`A025192(A025581(n))`
-/

namespace A114283.P5681186867931976057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A025581 n).toNat

end

end A114283.P5681186867931976057

noncomputable section

/-- A114283: Sequence array for binomial transform of Jacobsthal numbers A001045(n+1).

Offset 0, canonical program `A114283.P5681186867931976057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114283 (n : ℕ) : ℤ :=
  A114283.P5681186867931976057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114283.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115346.P14890110916241941948

`A000071(A002262(n)+2)`
-/

namespace A115346.P14890110916241941948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A002262 n + 2).toNat

end

end A115346.P14890110916241941948

noncomputable section

/-- A115346: Triangle read by rows: T(n,k) = Fibonacci(k+2) - 1.

Offset 0, canonical program `A115346.P14890110916241941948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115346 (n : ℕ) : ℤ :=
  A115346.P14890110916241941948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115346.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115514.P8808865076358654155

`ceil(A099375(n)/4)`
-/

namespace A115514.P8808865076358654155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 4⌉

end

end A115514.P8808865076358654155

noncomputable section

/-- A115514: Triangle read by rows: row n >= 1 lists first n positive terms of A004526 (integers repeated) in decreasing order.

Offset 1, canonical program `A115514.P8808865076358654155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115514 (n : ℕ) : ℤ :=
  A115514.P8808865076358654155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115514.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116088.P545449340874699905

`C(2*A002262(n), A025581(n))`
-/

namespace A116088.P545449340874699905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A002262 n).toNat (A025581 n).toNat

end

end A116088.P545449340874699905

noncomputable section

/-- A116088: Riordan array (1, x*(1+x)^2).

Offset 0, canonical program `A116088.P545449340874699905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116088 (n : ℕ) : ℤ :=
  (A116088.P545449340874699905.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116089.P15958432724052264868

`C(A008585(A002262(n)), A025581(n))`
-/

namespace A116089.P15958432724052264868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A116089.P15958432724052264868

noncomputable section

/-- A116089: Riordan array (1, x*(1+x)^3).

Offset 0, canonical program `A116089.P15958432724052264868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116089 (n : ℕ) : ℤ :=
  (A116089.P15958432724052264868.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116089.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116570.P13366081958881133163

`A006094(A008619(n+1))%A037166(A008619(n)+1)`
-/

namespace A116570.P13366081958881133163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A008619 (n + 1)).toNat) (A037166 (A008619 n + 1).toNat)

end

end A116570.P13366081958881133163

noncomputable section

/-- A116570: a(2*n) = prime(n+1) * prime(n+2), a(2*n-1) = prime(n+1).

Offset 0, canonical program `A116570.P13366081958881133163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570 (n : ℕ) : ℤ :=
  A116570.P13366081958881133163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117530.P4875223154151774733

`A005145(n+1)+2*A112367(n)`
-/

namespace A117530.P4875223154151774733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + 2 * A112367 n

end

end A117530.P4875223154151774733

noncomputable section

/-- A117530: Triangle read by rows: T(n,k) = k^2 - k + prime(n), 1<=k<=n.

Offset 1, canonical program `A117530.P4875223154151774733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117530 (n : ℕ) : ℤ :=
  A117530.P4875223154151774733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117568.P10505874102500913440

`A117576(A025581(n))%2`
-/

namespace A117568.P10505874102500913440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117576 (A025581 n).toNat) 2

end

end A117568.P10505874102500913440

noncomputable section

/-- A117568: Riordan array ((1-x^3)/(1+x^2),x).

Offset 0, canonical program `A117568.P10505874102500913440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117568 (n : ℕ) : ℤ :=
  A117568.P10505874102500913440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117568.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A117592.P1440909278058429630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117592 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117592.P1440909278058429630.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117592.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A117942.P14324521327660345243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117942.P14324521327660345243.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118006.P10735077424851259672

`and(1, A080846(or(1, n))+n)`
-/

namespace A118006.P10735077424851259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080846 (Nat.lor 1 n) + (n : ℤ))

end

end A118006.P10735077424851259672

noncomputable section

/-- A118006: Define a sequence of binary words by w(1) = 01 and w(n+1) = w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A118006.P10735077424851259672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006 (n : ℕ) : ℤ :=
  A118006.P10735077424851259672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118190.P5581006885533433996

`A000351((A004736(n+1)-1)*A002262(n))`
-/

namespace A118190.P5581006885533433996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ((A004736 (n + 1) - 1) * A002262 n).toNat

end

end A118190.P5581006885533433996

noncomputable section

/-- A118190: Triangle T(n,k) = 5^(k*(n-k)) for n >= k >= 0, read by rows.

Offset 0, canonical program `A118190.P5581006885533433996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A118190 (n : ℕ) : ℤ :=
  A118190.P5581006885533433996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A118190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118873.P18191058552923466056

`(A090090(n+1)+A006094(n+2))*A117301(n+1)`
-/

namespace A118873.P18191058552923466056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090090 (n + 1) + A006094 (n + 2)) * A117301 (n + 1)

end

end A118873.P18191058552923466056

noncomputable section

/-- A118873: Determinant of n-th continuous block of 4 consecutive squares of primes.

Offset 1, canonical program `A118873.P18191058552923466056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118873 (n : ℕ) : ℤ :=
  A118873.P18191058552923466056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119428.P13055513674063080029

`∑{d}[A008619(A004273(n)), A330025(#)]`
-/

namespace A119428.P13055513674063080029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330025 d

end

end A119428.P13055513674063080029

noncomputable section

/-- A119428: G.f.: A(x) = 1 + Sum_{n>=0} (-1)^n* Sum_{k=1..4} x^(5n+k)/(1-x^(5n+k)).

Offset 0, canonical program `A119428.P13055513674063080029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428 (n : ℕ) : ℤ :=
  A119428.P13055513674063080029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119502.P16886903027794226168

`A000142(A025581(n))`
-/

namespace A119502.P16886903027794226168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A025581 n).toNat

end

end A119502.P16886903027794226168

noncomputable section

/-- A119502: Triangle read by rows, T(n,k) = (n-k)!, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A119502.P16886903027794226168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A119502 (n : ℕ) : ℤ :=
  A119502.P16886903027794226168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A119502.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119701.P9680759370316718728

`(n+1)*A119697(n)`
-/

namespace A119701.P9680759370316718728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119697 n

end

end A119701.P9680759370316718728

noncomputable section

/-- A119701: a(n) = n*binomial(2*n, n)*Fibonacci(n).

Offset 0, canonical program `A119701.P9680759370316718728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A119701 (n : ℕ) : ℤ :=
  A119701.P9680759370316718728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A119701.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119959.P13944283531286712602

`A036689(n+1)+1`
-/

namespace A119959.P13944283531286712602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + 1

end

end A119959.P13944283531286712602

noncomputable section

/-- A119959: p^2-p+1 central polygonal numbers with prime indices A002061(prime(n)).

Offset 1, canonical program `A119959.P13944283531286712602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119959 (n : ℕ) : ℤ :=
  A119959.P13944283531286712602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119959.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120009.P17761584806816662286

`A005807(n)-A026012(n)`
-/

namespace A120009.P17761584806816662286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A026012 n

end

end A120009.P17761584806816662286

noncomputable section

/-- A120009: G.f.: A(x) = (x-x^2) o x/(1-x) o (1-sqrt(1-4*x))/2, a composition of functions involving the Catalan function and its inverse.

Offset 1, canonical program `A120009.P17761584806816662286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009 (n : ℕ) : ℤ :=
  A120009.P17761584806816662286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120244.P12666156708168537595

`A002262(n)+a(A003056(n)-1)+1` with `a(0)=1`
-/

namespace A120244.P12666156708168537595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002262 n + (a (A003056 n - 1).toNat + 1)

end

end A120244.P12666156708168537595

noncomputable section

/-- A120244: a(1) = 1. a(m(m+1)/2 + k) = a(m) + k, 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120244.P12666156708168537595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120244 (n : ℕ) : ℤ :=
  A120244.P12666156708168537595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120245.P7639101621087687490

`a(A003056(n)-1)+a(A002262(n))` with `a(0)=1`
-/

namespace A120245.P7639101621087687490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003056 n - 1).toNat + a (A002262 n).toNat

end

end A120245.P7639101621087687490

noncomputable section

/-- A120245: a(1) = 1. a(m(m+1)/2 + k) = a(m) + a(k), 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120245.P7639101621087687490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120245 (n : ℕ) : ℤ :=
  (A120245.P7639101621087687490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120246.P10095620787703275230

`A003056(n)+a(A002262(n))` with `a(0)=1`
-/

namespace A120246.P10095620787703275230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (A002262 n).toNat

end

end A120246.P10095620787703275230

noncomputable section

/-- A120246: a(1) = 1. a(m(m+1)/2 + k) = m + a(k), 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120246.P10095620787703275230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120246 (n : ℕ) : ℤ :=
  A120246.P10095620787703275230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120297.P9349017547000659289

`A227356(Δ[n²])`
-/

namespace A120297.P9349017547000659289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120297.P9349017547000659289

noncomputable section

/-- A120297: Sum of all matrix elements of n X n matrix M(i,j) = Fibonacci(i+j-1).

Offset 1, canonical program `A120297.P9349017547000659289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A120297 (n : ℕ) : ℤ :=
  A120297.P9349017547000659289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A120297.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121461.P2302372317676712197

`A088305(A025581(n))`
-/

namespace A121461.P2302372317676712197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (A025581 n).toNat

end

end A121461.P2302372317676712197

noncomputable section

/-- A121461: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having last ascent of length k (1 <= k <= n).

Offset 1, canonical program `A121461.P2302372317676712197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121461 (n : ℕ) : ℤ :=
  A121461.P2302372317676712197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121722.P5688937638399416928

`A002262(n)*A057944(n)+1`
-/

namespace A121722.P5688937638399416928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A057944 n + 1

end

end A121722.P5688937638399416928

noncomputable section

/-- A121722: Triangle T(n,k) = 1 + k*n*(n+1)/2, read by rows.

Offset 0, canonical program `A121722.P5688937638399416928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121722 (n : ℕ) : ℤ :=
  A121722.P5688937638399416928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121924.P18026522257178001485

`∑[A025581(n)]`
-/

namespace A121924.P18026522257178001485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P18026522257178001485

noncomputable section

/-- A121924: Number of splitting steps that one can take with a sequence of n 2's.

Offset 1, canonical program `A121924.P18026522257178001485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121924 (n : ℕ) : ℤ :=
  A121924.P18026522257178001485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121924.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122175.P7217515254701643098

`C(A112367(n)+A025581(n), A025581(n))`
-/

namespace A122175.P7217515254701643098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112367 n + A025581 n).toNat (A025581 n).toNat

end

end A122175.P7217515254701643098

noncomputable section

/-- A122175: Triangle, read by rows, where T(n,k) = C( k*(k+1)/2 + n-k, n-k) for n>=k>=0.

Offset 0, canonical program `A122175.P7217515254701643098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5497 terms. -/
def A122175 (n : ℕ) : ℤ :=
  (A122175.P7217515254701643098.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5497 terms. -/
def A122175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122178.P9068855449632396625

`C(A061579(n+1), A025581(n))`
-/

namespace A122178.P9068855449632396625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 (n + 1)).toNat (A025581 n).toNat

end

end A122178.P9068855449632396625

noncomputable section

/-- A122178: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k - 1, n-k), for n>=k>=0.

Offset 0, canonical program `A122178.P9068855449632396625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A122178 (n : ℕ) : ℤ :=
  (A122178.P9068855449632396625.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A122178.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122431.P16038384963788621526

`C(3, A025581(n))`
-/

namespace A122431.P16038384963788621526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A025581 n).toNat

end

end A122431.P16038384963788621526

noncomputable section

/-- A122431: Riordan array ((1+x)^3,x).

Offset 0, canonical program `A122431.P16038384963788621526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122431 (n : ℕ) : ℤ :=
  (A122431.P16038384963788621526.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122431.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122758.P11142805967211740618

`A003056(n)²*A122756(A002262(n)+1)`
-/

namespace A122758.P11142805967211740618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 * A122756 (A002262 n + 1).toNat

end

end A122758.P11142805967211740618

noncomputable section

/-- A122758: Triangle read by rows: T(n,m) = 2*n^2*A084221(n) (n>=0, 0 <= m <= n).

Offset 1, canonical program `A122758.P11142805967211740618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122758 (n : ℕ) : ℤ :=
  A122758.P11142805967211740618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122760.P12700755839112312451

`A008776(A002262(n))*A057212(n+1)`
-/

namespace A122760.P12700755839112312451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (A002262 n).toNat * A057212 (n + 1)

end

end A122760.P12700755839112312451

noncomputable section

/-- A122760: Triangle read by rows: t(n,m) = 2*3^m*(n mod 2).

Offset 1, canonical program `A122760.P12700755839112312451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122760 (n : ℕ) : ℤ :=
  A122760.P12700755839112312451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123163.P13801651006854553114

`C(A025581(n)², A002262(n)²)`
-/

namespace A123163.P13801651006854553114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n ^ 2).toNat (A002262 n ^ 2).toNat

end

end A123163.P13801651006854553114

noncomputable section

/-- A123163: Triangle T(n, k) = binomial((n-k)^2, k^2) read by rows.

Offset 0, canonical program `A123163.P13801651006854553114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A123163 (n : ℕ) : ℤ :=
  (A123163.P13801651006854553114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A123163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123579.P3370401837568714296

`∑[char[∑[A002262(n)]+1]]`
-/

namespace A123579.P3370401837568714296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P3370401837568714296

noncomputable section

/-- A123579: The Kruskal-Macaulay function M_3(n).

Offset 0, canonical program `A123579.P3370401837568714296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123579 (n : ℕ) : ℤ :=
  (A123579.P3370401837568714296.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123579.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123635.P11455475426760564630

`A024675(n+1)%3`
-/

namespace A123635.P11455475426760564630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024675 (n + 1)) 3

end

end A123635.P11455475426760564630

noncomputable section

/-- A123635: Residue mod 3 of average of n-th and (n+1)st odd primes.

Offset 1, canonical program `A123635.P11455475426760564630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123635 (n : ℕ) : ℤ :=
  A123635.P11455475426760564630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124788.P14755828261857917216

`C(A004526(A002262(n)), A025581(n))`
-/

namespace A124788.P14755828261857917216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A124788.P14755828261857917216

noncomputable section

/-- A124788: Triangle read by rows: expansion of (1+x*y)/(1-x^2*y^2-x^3*y^2).

Offset 0, canonical program `A124788.P14755828261857917216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124788 (n : ℕ) : ℤ :=
  (A124788.P14755828261857917216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124819.P1078954329039168482

`C(A005408(n)-A003056(n)², A025581(n))`
-/

namespace A124819.P1078954329039168482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 n - A003056 n ^ 2).toNat (A025581 n).toNat

end

end A124819.P1078954329039168482

noncomputable section

/-- A124819: Number triangle T(n,k)=C(n+2k+1,3k+1).

Offset 0, canonical program `A124819.P1078954329039168482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124819 (n : ℕ) : ℤ :=
  (A124819.P1078954329039168482.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124819.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127920.P1899935215268348754

`A127918(n+1)/3`
-/

namespace A127920.P1899935215268348754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) : ℚ) / 3

end

end A127920.P1899935215268348754

noncomputable section

/-- A127920: 1/6 of product of three numbers: n-th prime, previous and following number.

Offset 1, canonical program `A127920.P1899935215268348754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127920.P1899935215268348754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127920.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A128177.P4062566833816821859

`floor((A025581(n)/2+1)²)`
-/

namespace A128177.P4062566833816821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A025581 n : ℚ) / 2 + 1) ^ 2⌋

end

end A128177.P4062566833816821859

noncomputable section

/-- A128177: A128174 * A004736 as infinite lower triangular matrices.

Offset 1, canonical program `A128177.P4062566833816821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128177 (n : ℕ) : ℤ :=
  A128177.P4062566833816821859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128219.P490409223823792249

`A002262(n)+A023532(n)+1`
-/

namespace A128219.P490409223823792249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A023532 n + 1)

end

end A128219.P490409223823792249

noncomputable section

/-- A128219: A000012 * A127701. a(1) = 1, a(2) = 2, a(3) = 2; by rows, n-1 terms of 2, 3, 4, ... followed by "n".

Offset 1, canonical program `A128219.P490409223823792249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128219 (n : ℕ) : ℤ :=
  A128219.P490409223823792249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128219.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129069.P4766735713249215201

`A089241(n+1)+1`
-/

namespace A129069.P4766735713249215201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + 1

end

end A129069.P4766735713249215201

noncomputable section

/-- A129069: Numbers k such that (k-3)/2 is prime.

Offset 1, canonical program `A129069.P4766735713249215201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129069 (n : ℕ) : ℤ :=
  A129069.P4766735713249215201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129071.P295643258149290770

`3*A089241(n+1)+1`
-/

namespace A129071.P295643258149290770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089241 (n + 1) + 1

end

end A129071.P295643258149290770

noncomputable section

/-- A129071: Numbers k such that (k-7)/6 is prime.

Offset 1, canonical program `A129071.P295643258149290770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129071 (n : ℕ) : ℤ :=
  A129071.P295643258149290770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129143.P15988714660412797946

`A137688(n)+A002262(n)`
-/

namespace A129143.P15988714660412797946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A002262 n

end

end A129143.P15988714660412797946

noncomputable section

/-- A129143: Start with the empty sequence and append in step k the consecutive numbers 2^(k-1) to 2^(k-1)+k-1.

Offset 1, canonical program `A129143.P15988714660412797946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143 (n : ℕ) : ℤ :=
  A129143.P15988714660412797946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129366.P3653991172376187017

`∑[A000912(n)]`
-/

namespace A129366.P3653991172376187017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129366.P3653991172376187017

noncomputable section

/-- A129366: a(n) = Sum_{k=0..floor(n/2)} A000108(n-k).

Offset 0, canonical program `A129366.P3653991172376187017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A129366 (n : ℕ) : ℤ :=
  A129366.P3653991172376187017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A129366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129548.P2542562975087608923

`∑[A081284(2*A028242(n))]`
-/

namespace A129548.P2542562975087608923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129548.P2542562975087608923

noncomputable section

/-- A129548: Measures of entanglement in 3-qbits.

Offset 0, canonical program `A129548.P2542562975087608923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A129548 (n : ℕ) : ℤ :=
  A129548.P2542562975087608923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A129548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129688.P1941488576816125634

`1-A062157(A025581(n))`
-/

namespace A129688.P1941488576816125634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 (A025581 n).toNat

end

end A129688.P1941488576816125634

noncomputable section

/-- A129688: A129686 * A128174.

Offset 1, canonical program `A129688.P1941488576816125634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129688 (n : ℕ) : ℤ :=
  A129688.P1941488576816125634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129809.P16380635724625305868

`A065091(eq[2, A129750(n+1)])`
-/

namespace A129809.P16380635724625305868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129809.P16380635724625305868

noncomputable section

/-- A129809: Lesser of consecutive prime pairs whose last digits differ by 2.

Offset 1, canonical program `A129809.P16380635724625305868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809 (n : ℕ) : ℤ :=
  A129809.P16380635724625305868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130054.P881181456311237944

`∑{d}[n+1, A038712(#)*A117212((n+1)/#)]`
-/

namespace A130054.P881181456311237944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P881181456311237944

noncomputable section

/-- A130054: Inverse Moebius transform of A023900.

Offset 1, canonical program `A130054.P881181456311237944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054 (n : ℕ) : ℤ :=
  A130054.P881181456311237944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130248.P17937413160944975329

`∑[A130247(n+1)]`
-/

namespace A130248.P17937413160944975329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130248.P17937413160944975329

noncomputable section

/-- A130248: Partial sums of the Lucas Inverse A130247.

Offset 1, canonical program `A130248.P17937413160944975329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248 (n : ℕ) : ℤ :=
  A130248.P17937413160944975329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130269.P4089145140288437489

`A127739(n+1)+A112367(n)`
-/

namespace A130269.P4089145140288437489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A112367 n

end

end A130269.P4089145140288437489

noncomputable section

/-- A130269: A002260 * A051340.

Offset 1, canonical program `A130269.P4089145140288437489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269 (n : ℕ) : ℤ :=
  A130269.P4089145140288437489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130303.P17992843340813991066

`floor(A004736(n+1)+A025581(n)/a(n-1))` with `a(0)=1`
-/

namespace A130303.P17992843340813991066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A004736 (n + 1) : ℚ) + (A025581 n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A130303.P17992843340813991066

noncomputable section

/-- A130303: A130296 * A000012.

Offset 1, canonical program `A130303.P17992843340813991066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303 (n : ℕ) : ℤ :=
  A130303.P17992843340813991066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130321.P6740187654358347306

`A000079(A025581(n))`
-/

namespace A130321.P6740187654358347306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat

end

end A130321.P6740187654358347306

noncomputable section

/-- A130321: Triangle, (2^0, 2^1, 2^2, ...) in every column.

Offset 0, canonical program `A130321.P6740187654358347306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321 (n : ℕ) : ℤ :=
  A130321.P6740187654358347306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130322.P15441670076918703928

`A171647(A099375(n))`
-/

namespace A130322.P15441670076918703928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (A099375 n).toNat

end

end A130322.P15441670076918703928

noncomputable section

/-- A130322: A130321^2.

Offset 0, canonical program `A130322.P15441670076918703928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322 (n : ℕ) : ℤ :=
  A130322.P15441670076918703928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130330.P178834876588586868

`A090988(n+1)-1`
-/

namespace A130330.P178834876588586868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) - 1

end

end A130330.P178834876588586868

noncomputable section

/-- A130330: Triangle read by rows, the matrix product A130321 * A000012, both taken as infinite lower triangular matrices.

Offset 0, canonical program `A130330.P178834876588586868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130330 (n : ℕ) : ℤ :=
  A130330.P178834876588586868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130473.P15345965032547921568

`∑[A087172(n+1)]`
-/

namespace A130473.P15345965032547921568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130473.P15345965032547921568

noncomputable section

/-- A130473: Partial sums of A087172.

Offset 1, canonical program `A130473.P15345965032547921568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473 (n : ℕ) : ℤ :=
  A130473.P15345965032547921568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130855.P3617134350545637610

`A123578(A057212(n+1)+n)`
-/

namespace A130855.P3617134350545637610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A057212 (n + 1) + (n : ℤ)).toNat

end

end A130855.P3617134350545637610

noncomputable section

/-- A130855: 2n appears 2n+1 times, 2n+1 appears 2n times.

Offset 0, canonical program `A130855.P3617134350545637610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855 (n : ℕ) : ℤ :=
  A130855.P3617134350545637610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131019.P15986658586892712231

`(∑[A031166(n+1)]+1)/2+8`
-/

namespace A131019.P15986658586892712231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2 + 8

end

end A131019.P15986658586892712231

noncomputable section

/-- A131019: Semiperimeters of quadrilaterals whose sides are 4 consecutive odd primes.

Offset 1, canonical program `A131019.P15986658586892712231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131019.P15986658586892712231.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131021.P14456359531846804988

`p?[A024675(n+1)+A024675(n+3)]`
-/

namespace A131021.P14456359531846804988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131021.P14456359531846804988

noncomputable section

/-- A131021: Prime semiperimeters of quadrilaterals with sides which are four consecutive primes.

Offset 1, canonical program `A131021.P14456359531846804988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021 (n : ℕ) : ℤ :=
  A131021.P14456359531846804988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131137.P15076297547464346448

`gcd(n, A125824(n))*A125824(n)`
-/

namespace A131137.P15076297547464346448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A125824 n) : ℤ) * A125824 n

end

end A131137.P15076297547464346448

noncomputable section

/-- A131137: Denominator of (exponential) expansion of log((2*x/3-1)/(x-1)).

Offset 0, canonical program `A131137.P15076297547464346448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137 (n : ℕ) : ℤ :=
  A131137.P15076297547464346448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131210.P7610683956886271610

`eq[n+1, A280098(n+1)]+1`
-/

namespace A131210.P7610683956886271610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A131210.P7610683956886271610

noncomputable section

/-- A131210: Numbers k such that 24k - 1 is prime.

Offset 1, canonical program `A131210.P7610683956886271610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210 (n : ℕ) : ℤ :=
  (A131210.P7610683956886271610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2659 terms. -/
def A131210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131422.P7219812161266444625

`A112367(n)+A007401(n+1)`
-/

namespace A131422.P7219812161266444625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A007401 (n + 1)

end

end A131422.P7219812161266444625

noncomputable section

/-- A131422: (A000012 * A127773) + (A127773 * A000012) - A000012.

Offset 1, canonical program `A131422.P7219812161266444625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422 (n : ℕ) : ℤ :=
  A131422.P7219812161266444625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131522.P12999787802712979154

`Δ[Δ[A004739(n+2)]]`
-/

namespace A131522.P12999787802712979154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P12999787802712979154

noncomputable section

/-- A131522: Expansions of p(x,n)=(x^n - 1)*(x^(n + 1) - 1) for n >= 1, triangle read by rows.

Offset 1, canonical program `A131522.P12999787802712979154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522 (n : ℕ) : ℤ :=
  A131522.P12999787802712979154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A072677.P5065037936157036762

`A006450(n+1)+A001223(A000040(n+1))`
-/

namespace A072677.P5065037936157036762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + A001223 (A000040 (n + 1)).toNat

end

end A072677.P5065037936157036762

noncomputable section

/-- A072677: a(n) = prime(prime(n)+1) where prime(k) is the k-th prime.

Offset 1, canonical program `A072677.P5065037936157036762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A072677 (n : ℕ) : ℤ :=
  A072677.P5065037936157036762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A072677.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A074722.P16633389370037987810

`∑{d}[n+1, A007428(#)*A332844((n+1)/#)]`
-/

namespace A074722.P16633389370037987810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A074722.P16633389370037987810

noncomputable section

/-- A074722: a(n) = Sum_{d divides n} phi(n/d)*(-1)^bigomega(d).

Offset 1, canonical program `A074722.P16633389370037987810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074722 (n : ℕ) : ℤ :=
  A074722.P16633389370037987810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074722.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A074843.P12507081766603151711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074843 (n : ℕ) : ℤ :=
  A074843.P12507081766603151711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074843.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A076360.P16775053655456500281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076360 (n : ℕ) : ℤ :=
  A076360.P16775053655456500281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076360.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076627.P920160520709160437

`A000005(n+1)*A049820(n+1)`
-/

namespace A076627.P920160520709160437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A049820 (n + 1)

end

end A076627.P920160520709160437

noncomputable section

/-- A076627: a(n) = tau(n)*(n-tau(n)), where tau(n) = number of divisors of n (A000005).

Offset 1, canonical program `A076627.P920160520709160437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076627 (n : ℕ) : ℤ :=
  A076627.P920160520709160437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A076627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076835.P15410372118314724071

`24*A064987(n+1)`
-/

namespace A076835.P15410372118314724071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A064987 (n + 1)

end

end A076835.P15410372118314724071

noncomputable section

/-- A076835: Coefficients in expansion of Eisenstein series -q*E'_2.

Offset 1, canonical program `A076835.P15410372118314724071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076835 (n : ℕ) : ℤ :=
  A076835.P15410372118314724071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076835.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A078157.P9337233492814694395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078157 (n : ℕ) : ℤ :=
  A078157.P9337233492814694395.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078152, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078157.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079553.P850658963084864876

`floor(A048691(n+1)/Δ[A006218(n)])`
-/

namespace A079553.P850658963084864876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048691 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A079553.P850658963084864876

noncomputable section

/-- A079553: a(n) = floor( d(n^2) / d(n) ), where d() = A000005.

Offset 1, canonical program `A079553.P850658963084864876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079553 (n : ℕ) : ℤ :=
  A079553.P850658963084864876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079553.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A080848.P739722207543014438

`A061669(n+1)+1+n`
-/

namespace A080848.P739722207543014438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1) + 1 + (n : ℤ)

end

end A080848.P739722207543014438

noncomputable section

/-- A080848: a(n) = n*(mu(n)+2), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080848.P739722207543014438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080848 (n : ℕ) : ℤ :=
  A080848.P739722207543014438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080848.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082910.P2751225742922623237

`A000040(A001223(n+1))`
-/

namespace A082910.P2751225742922623237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001223 (n + 1)).toNat

end

end A082910.P2751225742922623237

noncomputable section

/-- A082910: a(n) = prime(prime(n+1)-prime(n)).

Offset 1, canonical program `A082910.P2751225742922623237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082910 (n : ℕ) : ℤ :=
  A082910.P2751225742922623237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082910.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A083271.P4870819776415420897

`A038040(n+1)+1`
-/

namespace A083271.P4870819776415420897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + 1

end

end A083271.P4870819776415420897

noncomputable section

/-- A083271: a(n) = n*tau(n) + 1.

Offset 1, canonical program `A083271.P4870819776415420897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083271 (n : ℕ) : ℤ :=
  A083271.P4870819776415420897.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083271.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A083551.P5233934583423530355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083551 (n : ℕ) : ℤ :=
  (A083551.P5233934583423530355.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083551.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A086156.P3117505780503088973

`A065764(n+1)-A064987(n+1)`
-/

namespace A086156.P3117505780503088973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (n + 1) - A064987 (n + 1)

end

end A086156.P3117505780503088973

noncomputable section

/-- A086156: a(n) = sigma(n^2) - n*sigma(n).

Offset 1, canonical program `A086156.P3117505780503088973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086156 (n : ℕ) : ℤ :=
  A086156.P3117505780503088973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086156.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A086165.P5862930239187378690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A070919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086165.P5862930239187378690.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A070919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086165.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A086747.P13306061048748773273

`char[A084471(n+1)]`
-/

namespace A086747.P13306061048748773273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P13306061048748773273

noncomputable section

/-- A086747: Baum-Sweet sequence: a(n) = 1 if binary representation of n contains no block of consecutive zeros of odd length; otherwise a(n) = 0.

Offset 0, canonical program `A086747.P13306061048748773273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A086747 (n : ℕ) : ℤ :=
  (A086747.P13306061048748773273.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A086747.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088680.P9618985522616182700

`A001223(2*(n+1))`
-/

namespace A088680.P9618985522616182700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1))

end

end A088680.P9618985522616182700

noncomputable section

/-- A088680: a(n) = prime(2n+1) - prime(2n).

Offset 1, canonical program `A088680.P9618985522616182700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088680 (n : ℕ) : ℤ :=
  A088680.P9618985522616182700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088680.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A088982.P4156197862445489170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088982 (n : ℕ) : ℤ :=
  A088982.P4156197862445489170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088982.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A092504.P7727598888164620901

`A000040(n+1)+A011757(n+1)`
-/

namespace A092504.P7727598888164620901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A011757 (n + 1)

end

end A092504.P7727598888164620901

noncomputable section

/-- A092504: a(n) = prime(n) + prime(n^2).

Offset 1, canonical program `A092504.P7727598888164620901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A011757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092504 (n : ℕ) : ℤ :=
  A092504.P7727598888164620901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A011757, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092504.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A094471.P10880822235094612413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094471 (n : ℕ) : ℤ :=
  A094471.P10880822235094612413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094471.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A095808.P3090164483403179767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095808 (n : ℕ) : ℤ :=
  A095808.P3090164483403179767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095808.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A098798.P14244074542585348825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098798 (n : ℕ) : ℤ :=
  A098798.P14244074542585348825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098798.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A099557.P7796845270064822578

`C(A110654(A294317(n)), A002262(n))`
-/

namespace A099557.P7796845270064822578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110654 (A294317 n).toNat).toNat (A002262 n).toNat

end

end A099557.P7796845270064822578

noncomputable section

/-- A099557: Slanted Pascal's triangle, read by rows, such that T(n,k) = binomial(n-[k/2],k) for [n*2/3]>=k>=0, where [x]=floor(x).

Offset 0, canonical program `A099557.P7796845270064822578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099557 (n : ℕ) : ℤ :=
  (A099557.P7796845270064822578.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099557.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A100374.P3644398539316585198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100374 (n : ℕ) : ℤ :=
  A100374.P3644398539316585198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100374.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A100375.P7290689656260670325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100375.P7290689656260670325.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100375.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A102552.P1921326590522321813

`Δ[-(A001223(n+2)/2)]`
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

Offset 1, canonical program `A102722.P15212480551384616353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A052488, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102722 (n : ℕ) : ℤ :=
  A102722.P15212480551384616353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, A052488, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102722.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A106633.P11456217349808284816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106633 (n : ℕ) : ℤ :=
  A106633.P11456217349808284816.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106633.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A109585.P14301731113117806331

`A001223(n+1)^(n+2)`
-/

namespace A109585.P14301731113117806331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) ^ (n + 2)

end

end A109585.P14301731113117806331

noncomputable section

/-- A109585: a(n) = ( prime(n+1) - prime(n) )^(n+1).

Offset 1, canonical program `A109585.P14301731113117806331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109585 (n : ℕ) : ℤ :=
  A109585.P14301731113117806331.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109585.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A109770.P18199790595787796081

`∑[A011757(n+1)]`
-/

namespace A109770.P18199790595787796081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109770.P18199790595787796081

noncomputable section

/-- A109770: Partial sums of A011757.

Offset 1, canonical program `A109770.P18199790595787796081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109770 (n : ℕ) : ℤ :=
  A109770.P18199790595787796081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109770.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A110854.P2471624004047318377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155067, A155750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110854 (n : ℕ) : ℤ :=
  A110854.P2471624004047318377.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155067, A155750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A110854.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A113166.P13206333978101695091

`∑{d}[n+1, #*A381936((n+1)/#)]`
-/

namespace A113166.P13206333978101695091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A381936 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113166.P13206333978101695091

noncomputable section

/-- A113166: a(n) = Sum_{d|n} A000010(n/d) * A000045(d-1).

Offset 1, canonical program `A113166.P13206333978101695091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113166 (n : ℕ) : ℤ :=
  A113166.P13206333978101695091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113166.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113446.P13280159862498089368

`∑{d}[n+1, A244611(#)*A350872((n+1)/#)]`
-/

namespace A113446.P13280159862498089368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244611 d * A350872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P13280159862498089368

noncomputable section

/-- A113446: Expansion of (phi(q)^2 - phi(q^3)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113446.P13280159862498089368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446 (n : ℕ) : ℤ :=
  A113446.P13280159862498089368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115001.P8944325379710931620

`A321879(n+4)/24`
-/

namespace A115001.P8944325379710931620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321879 (n + 4) : ℚ) / 24

end

end A115001.P8944325379710931620

noncomputable section

/-- A115001: a(n) = Sum_{k=1..n} J_2(k)/24.

Offset 4, canonical program `A115001.P8944325379710931620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115001.P8944325379710931620.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115001.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A117027.P12689404551430193321

`A117301(4*n+1)`
-/

namespace A117027.P12689404551430193321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (4 * n + 1)

end

end A117027.P12689404551430193321

noncomputable section

/-- A117027: Determinants of 2 X 2 matrices of non-overlapping blocks of 4 consecutive primes.

Offset 1, canonical program `A117027.P12689404551430193321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A117027 (n : ℕ) : ℤ :=
  A117027.P12689404551430193321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A117027.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117946.P16806305034114280741

`A102283(n)*A120880(A064429(n))`
-/

namespace A117946.P16806305034114280741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A064429 n).toNat

end

end A117946.P16806305034114280741

noncomputable section

/-- A117946: a(3n)=0, a(3n+1)/a(1)=a(3n+2)/a(2)=A059151(n).

Offset 0, canonical program `A117946.P16806305034114280741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946 (n : ℕ) : ℤ :=
  A117946.P16806305034114280741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118590.P9922597422705317347

`p?[A267635(A001223(n+1))+A065091(n+1)]`
-/

namespace A118590.P9922597422705317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A001223 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P9922597422705317347

noncomputable section

/-- A118590: Larger of two consecutive primes whose positive difference is a square.

Offset 1, canonical program `A118590.P9922597422705317347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590 (n : ℕ) : ℤ :=
  A118590.P9922597422705317347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118624.P709661768869797743

`p?[A226502(n+1)-1]`
-/

namespace A118624.P709661768869797743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P709661768869797743

noncomputable section

/-- A118624: Primes of the form prime(n+1)*prime(n+3) - prime(n)*prime(n+2) - 1, ordered by n.

Offset 1, canonical program `A118624.P709661768869797743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624 (n : ℕ) : ℤ :=
  A118624.P709661768869797743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119304.P4956205213881672858

`C(A294317(A292564(n)), A025581(n))`
-/

namespace A119304.P4956205213881672858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 (A292564 n).toNat).toNat (A025581 n).toNat

end

end A119304.P4956205213881672858

noncomputable section

/-- A119304: Triangle read by rows: T(n,k) = binomial(4n-k,n-k), 0 <= k <= n.

Offset 0, canonical program `A119304.P4956205213881672858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A119304 (n : ℕ) : ℤ :=
  (A119304.P4956205213881672858.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A119304.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119644.P8451814668260315748

`A065091(A062501(n+2)+n)`
-/

namespace A119644.P8451814668260315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A062501 (n + 2) + (n : ℤ)).toNat

end

end A119644.P8451814668260315748

noncomputable section

/-- A119644: a(n) = n-th prime from among those primes which are coprime to the n-th composite.

Offset 1, canonical program `A119644.P8451814668260315748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A119644 (n : ℕ) : ℤ :=
  A119644.P8451814668260315748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A119644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119789.P14087946612977688962

`A289207(A002262(n))+A289207(A003056(n))`
-/

namespace A119789.P14087946612977688962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A002262 n).toNat + A289207 (A003056 n).toNat

end

end A119789.P14087946612977688962

noncomputable section

/-- A119789: T(n, k) = floor(log_{goldenratio}(Fibonacci(n)*Fibonacci(k))), with T(n, k) = 0 for n < 3, T(n, 0) = n-2 for n > 2, triangle read by rows.

Offset 0, canonical program `A119789.P14087946612977688962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A119789 (n : ℕ) : ℤ :=
  A119789.P14087946612977688962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A119789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123128.P14620295915267660605

`n+1+A001223(n+1)`
-/

namespace A123128.P14620295915267660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001223 (n + 1)

end

end A123128.P14620295915267660605

noncomputable section

/-- A123128: Add n to the n-th difference between consecutive primes.

Offset 1, canonical program `A123128.P14620295915267660605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123128 (n : ℕ) : ℤ :=
  A123128.P14620295915267660605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123129.P10467809543650190892

`(n+1+A001223(n+1))^n`
-/

namespace A123129.P10467809543650190892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A001223 (n + 1)) ^ n

end

end A123129.P10467809543650190892

noncomputable section

/-- A123129: a(n) = ( n + prime(n+1) - prime(n) )^(n-1).

Offset 1, canonical program `A123129.P10467809543650190892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123129 (n : ℕ) : ℤ :=
  A123129.P10467809543650190892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123129.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A123246.P10382870534681297976

`-xor(1, ∑[-A010051(n+1)])`
-/

namespace A123246.P10382870534681297976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123246.P10382870534681297976

noncomputable section

/-- A123246: a(n) = PrimePi(n) + (-1)^(PrimePi(n) + 1) (cf. A000720).

Offset 1, canonical program `A123246.P10382870534681297976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123246 (n : ℕ) : ℤ :=
  A123246.P10382870534681297976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123711.P3106313337683565752

`filter[A013929(n+1), A215480(#)]`
-/

namespace A123711.P3106313337683565752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P3106313337683565752

noncomputable section

/-- A123711: Indices n such that A123709(n) = 8 = number of nonzero terms in row n of triangle A123706.

Offset 1, canonical program `A123711.P3106313337683565752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711 (n : ℕ) : ℤ :=
  A123711.P3106313337683565752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124587.P17225293575173405852

`A065091(lt[14, A001223(n+1)])`
-/

namespace A124587.P17225293575173405852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P17225293575173405852

noncomputable section

/-- A124587: Primes p such that q-p >= 16, where q is the next prime after p.

Offset 1, canonical program `A124587.P17225293575173405852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587 (n : ℕ) : ℤ :=
  A124587.P17225293575173405852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124590.P5839912544610622108

`A000040(lt[A001223(n+1), 8]+1)`
-/

namespace A124590.P5839912544610622108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124590.P5839912544610622108

noncomputable section

/-- A124590: Primes p such that q-p <= 6, where q is the next prime after p.

Offset 1, canonical program `A124590.P5839912544610622108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590 (n : ℕ) : ℤ :=
  A124590.P5839912544610622108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124591.P3235263655335918205

`A000040(lt[A001223(n+1), 10]+1)`
-/

namespace A124591.P3235263655335918205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124591.P3235263655335918205

noncomputable section

/-- A124591: Primes p such that q-p <= 8, where q is the next prime after p.

Offset 1, canonical program `A124591.P3235263655335918205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591 (n : ℕ) : ℤ :=
  A124591.P3235263655335918205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A125180.P1652341145907951050

`A001223(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A125180.P1652341145907951050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001223 n + 2 * a (n - 1)

end

end A125180.P1652341145907951050

noncomputable section

/-- A125180: a(n) = 2*a(n-1) + prime(n) - prime(n-1), a(1)=2, where prime(n) denotes the n-th prime.

Offset 1, canonical program `A125180.P1652341145907951050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A125180 (n : ℕ) : ℤ :=
  A125180.P1652341145907951050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A125180.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A125721.P13273067158620434452`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125721 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125721.P13273067158620434452.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125721.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A126192.P9288968837919539928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126192.P9288968837919539928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126199.P3423459806366818693

`A180617(n+1)-1`
-/

namespace A126199.P3423459806366818693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) - 1

end

end A126199.P3423459806366818693

noncomputable section

/-- A126199: a(n) = prime(n)*prime(n+1) + prime(n) + prime(n+1).

Offset 1, canonical program `A126199.P3423459806366818693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126199 (n : ℕ) : ℤ :=
  A126199.P3423459806366818693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126199.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129448.P6699059258803862870

`A002654(n+1)*A049347(n)`
-/

namespace A129448.P6699059258803862870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A049347 n

end

end A129448.P6699059258803862870

noncomputable section

/-- A129448: Expansion of q * psi(-q) * chi(q^3)^2 * psi(-q^9) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 1, canonical program `A129448.P6699059258803862870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129448 (n : ℕ) : ℤ :=
  A129448.P6699059258803862870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129449.P16811369951284374443

`(-1)^n*A033762(n)`
-/

namespace A129449.P16811369951284374443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033762 n

end

end A129449.P16811369951284374443

noncomputable section

/-- A129449: Expansion of psi(-x) * psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A129449.P16811369951284374443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449 (n : ℕ) : ℤ :=
  A129449.P16811369951284374443.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129492.P1594792937777551858

`∩[A002808(n+1), comp[A226221(n+1)]]`
-/

namespace A129492.P1594792937777551858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226221 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A129492.P1594792937777551858

noncomputable section

/-- A129492: Composite numbers k such that 2^k mod k is a power of 2.

Offset 1, canonical program `A129492.P1594792937777551858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492 (n : ℕ) : ℤ :=
  (A129492.P1594792937777551858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129726.P12068691350247961614

`a(n-1)+A001223(n)+2` with `a(0)=2`
-/

namespace A129726.P12068691350247961614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A001223 n + 2

end

end A129726.P12068691350247961614

noncomputable section

/-- A129726: a(n) = a(n-1) + prime(n) - prime(n-1) + 2; a(1) = 2.

Offset 1, canonical program `A129726.P12068691350247961614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129726 (n : ℕ) : ℤ :=
  A129726.P12068691350247961614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129856.P3920010008458318143

`p?[A001223(n+1)-1]`
-/

namespace A129856.P3920010008458318143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P3920010008458318143

noncomputable section

/-- A129856: Primes that are one less than the difference between consecutive primes.

Offset 1, canonical program `A129856.P3920010008458318143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856 (n : ℕ) : ℤ :=
  A129856.P3920010008458318143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129910.P2665300731369713795

`floor(A107309(n)/3)`
-/

namespace A129910.P2665300731369713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107309 n : ℚ) / 3⌋

end

end A129910.P2665300731369713795

noncomputable section

/-- A129910: Quotient of the decimal representation of concatenated twin primes in reverse divided by 3.

Offset 1, canonical program `A129910.P2665300731369713795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910 (n : ℕ) : ℤ :=
  A129910.P2665300731369713795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130008.P4788618563532273942

`A008578(gcd(xor(1, -n), ∑[n]))`
-/

namespace A130008.P4788618563532273942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A130008.P4788618563532273942

noncomputable section

/-- A130008: Noncomposite numbers sandwiched between 1's.

Offset 0, canonical program `A130008.P4788618563532273942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008 (n : ℕ) : ℤ :=
  A130008.P4788618563532273942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130029.P14613639189885830569

`∑{d}[n+1, #*A007444((n+1)/#)]`
-/

namespace A130029.P14613639189885830569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P14613639189885830569

noncomputable section

/-- A130029: a(n) = Sum_{d|n} phi(n/d) * prime(d).

Offset 1, canonical program `A130029.P14613639189885830569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130029 (n : ℕ) : ℤ :=
  A130029.P14613639189885830569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130258.P9767725094634549464

`∑[A130256(n)]`
-/

namespace A130258.P9767725094634549464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P9767725094634549464

noncomputable section

/-- A130258: Partial sums of the 'upper' odd Fibonacci Inverse A130256.

Offset 0, canonical program `A130258.P9767725094634549464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258 (n : ℕ) : ℤ :=
  A130258.P9767725094634549464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130302.P1457114923218138745

`C(A144257(n+1)+1, A025581(n))`
-/

namespace A130302.P1457114923218138745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1) + 1).toNat (A025581 n).toNat

end

end A130302.P1457114923218138745

noncomputable section

/-- A130302: A000012 * A130296.

Offset 1, canonical program `A130302.P1457114923218138745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302 (n : ℕ) : ℤ :=
  (A130302.P1457114923218138745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130665.P10276629478371461790

`A160410(n+1)/4`
-/

namespace A130665.P10276629478371461790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 (n + 1) : ℚ) / 4

end

end A130665.P10276629478371461790

noncomputable section

/-- A130665: a(n) = Sum_{k=0..n} 3^wt(k), where wt() = A000120().

Offset 0, canonical program `A130665.P10276629478371461790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130665.P10276629478371461790.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A079599.P6982259626820945045

`record[n*(1-A115971(n))]`
-/

namespace A079599.P6982259626820945045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A115971 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079599.P6982259626820945045

noncomputable section

/-- A079599: Numbers n for which the n-th impartial game is a second player win.

Offset 0, canonical program `A079599.P6982259626820945045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A079599 (n : ℕ) : ℤ :=
  A079599.P6982259626820945045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A079599.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A086616.P4854257795119713207

`2*A104858(n)-1`
-/

namespace A086616.P4854257795119713207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104858 n - 1

end

end A086616.P4854257795119713207

noncomputable section

/-- A086616: Partial sums of the large Schroeder numbers (A006318).

Offset 0, canonical program `A086616.P4854257795119713207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A086616 (n : ℕ) : ℤ :=
  A086616.P4854257795119713207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A086616.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A094222.P9243178486073536326

`A229109(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A094222.P9243178486073536326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A229109 (a (n - 1)).toNat

end

end A094222.P9243178486073536326

noncomputable section

/-- A094222: a(n+1) = a(n) + (number of distinct prime factors of a(n)) for n>1; a(1)=1, a(2)=2.

Offset 1, canonical program `A094222.P9243178486073536326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3994 terms. -/
def A094222 (n : ℕ) : ℤ :=
  A094222.P9243178486073536326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3994 terms. -/
def A094222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100299.P6607277383001077956

`Δ[ceil(A104858(n)/2)]`
-/

namespace A100299.P6607277383001077956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104858 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100299.P6607277383001077956

noncomputable section

/-- A100299: Number of dissections of a convex n-gon by nonintersecting diagonals into an even number of regions.

Offset 3, canonical program `A100299.P6607277383001077956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299 (n : ℕ) : ℤ :=
  A100299.P6607277383001077956.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A100299.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104641.P16051552740361381644

`eq[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104641.P16051552740361381644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104641.P16051552740361381644

noncomputable section

/-- A104641: Numbers n such that n^3 has equal number of odd and even digits.

Offset 1, canonical program `A104641.P16051552740361381644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641 (n : ℕ) : ℤ :=
  (A104641.P16051552740361381644.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A104641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104692.P14109630690310913269

`lt[A104640(n+1), A104639(n+1)]+1`
-/

namespace A104692.P14109630690310913269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104692.P14109630690310913269

noncomputable section

/-- A104692: Numbers n such that in n^3, number of odd digits is less than number of even digits.

Offset 1, canonical program `A104692.P14109630690310913269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692 (n : ℕ) : ℤ :=
  (A104692.P14109630690310913269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4292 terms. -/
def A104692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104693.P4864952721135800102

`lt[A104639(n+1), A104640(n+1)]+1`
-/

namespace A104693.P4864952721135800102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A104693.P4864952721135800102

noncomputable section

/-- A104693: Numbers n such that in n^3, number of odd digits is larger than number of even digits.

Offset 1, canonical program `A104693.P4864952721135800102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693 (n : ℕ) : ℤ :=
  (A104693.P4864952721135800102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A104693.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114896.P2332190021878675213

`A272171(n+1)*A272171(A061579(n)+1)`
-/

namespace A114896.P2332190021878675213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (n + 1) * A272171 (A061579 n + 1).toNat

end

end A114896.P2332190021878675213

noncomputable section

/-- A114896: A symmetrical triangle of weight coefficients using the Divisors Sigma function: t(n,m) = Sigma_0(n-m+1)*Sigma_0(m+1).

Offset 0, canonical program `A114896.P2332190021878675213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A114896 (n : ℕ) : ℤ :=
  A114896.P2332190021878675213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A114896.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122072.P12226478731095441089

`A000040(A038801(n+1))`
-/

namespace A122072.P12226478731095441089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038801 (n + 1)).toNat

end

end A122072.P12226478731095441089

noncomputable section

/-- A122072: Greatest prime less than 10*n.

Offset 1, canonical program `A122072.P12226478731095441089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122072 (n : ℕ) : ℤ :=
  A122072.P12226478731095441089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122072.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A125911.P3841651622429786425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A136655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125911.P3841651622429786425.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A136655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125911.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129722.P13881993047894024016

`A134512(n)-∑[A212804(n)]`
-/

namespace A129722.P13881993047894024016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129722.P13881993047894024016

noncomputable section

/-- A129722: Number of 0's in even position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129722.P13881993047894024016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129722 (n : ℕ) : ℤ :=
  A129722.P13881993047894024016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129722.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A072731.P11631103641081885778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072731 (n : ℕ) : ℤ :=
  A072731.P11631103641081885778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072731.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 4, canonical program `A073366.P891318373544082339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A073366 (n : ℕ) : ℤ :=
  A073366.P891318373544082339.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A073366.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 4, canonical program `A073368.P244892506514072260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073368 (n : ℕ) : ℤ :=
  A073368.P244892506514072260.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065855, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073368.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A073438.P13722308552465934977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073438 (n : ℕ) : ℤ :=
  A073438.P13722308552465934977.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073438.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A073840.P16683968075710145056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073840.P16683968075710145056.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073840.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A078316.P1814470591158265181

`A051903(A078310(n+1))`
-/

namespace A078316.P1814470591158265181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A078310 (n + 1)).toNat

end

end A078316.P1814470591158265181

noncomputable section

/-- A078316: Maximum exponent in the prime factorization of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078316.P1814470591158265181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078316 (n : ℕ) : ℤ :=
  A078316.P1814470591158265181.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078317.P4878042880391652802

`A000005(A078310(n+1))`
-/

namespace A078317.P4878042880391652802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078310 (n + 1)).toNat

end

end A078317.P4878042880391652802

noncomputable section

/-- A078317: Number of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078317.P4878042880391652802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078317 (n : ℕ) : ℤ :=
  A078317.P4878042880391652802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078317.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078318.P9588675743747203793

`A000203(A078310(n+1))`
-/

namespace A078318.P9588675743747203793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A078310 (n + 1)).toNat

end

end A078318.P9588675743747203793

noncomputable section

/-- A078318: Sum of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078318.P9588675743747203793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078318 (n : ℕ) : ℤ :=
  A078318.P9588675743747203793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078319.P14888292905057710081

`A008472(A078310(n+1))`
-/

namespace A078319.P14888292905057710081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A078310 (n + 1)).toNat

end

end A078319.P14888292905057710081

noncomputable section

/-- A078319: Sum of distinct prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078319.P14888292905057710081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078319 (n : ℕ) : ℤ :=
  A078319.P14888292905057710081.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078320.P3684429173825938426

`A001414(A078310(n+1))`
-/

namespace A078320.P3684429173825938426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078310 (n + 1)).toNat

end

end A078320.P3684429173825938426

noncomputable section

/-- A078320: Sum of all prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A078320.P3684429173825938426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078320 (n : ℕ) : ℤ :=
  A078320.P3684429173825938426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A078310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078320.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A079419.P9032335639255501518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A079418, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079419 (n : ℕ) : ℤ :=
  A079419.P9032335639255501518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A079418, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079419.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A086455.P13465488460408274082

`A000203(A000961(n+1))`
-/

namespace A086455.P13465488460408274082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000961 (n + 1)).toNat

end

end A086455.P13465488460408274082

noncomputable section

/-- A086455: Sum of divisors of prime powers: sigma(p^e).

Offset 1, canonical program `A086455.P13465488460408274082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086455 (n : ℕ) : ℤ :=
  A086455.P13465488460408274082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086455.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A087652.P15006884797631348990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087652.P15006884797631348990.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087652.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A088561.P14627225396330756799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A088555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088561 (n : ℕ) : ℤ :=
  A088561.P14627225396330756799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A088555, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088561.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A090442.P10441181462503134609

`2^n*A001003(n+1)`
-/

namespace A090442.P10441181462503134609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001003 (n + 1)

end

end A090442.P10441181462503134609

noncomputable section

/-- A090442: Row sums of array A090452 (s2_{3,2}, scaled (3,2)-Stirling2).

Offset 1, canonical program `A090442.P10441181462503134609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442 (n : ℕ) : ℤ :=
  A090442.P10441181462503134609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A092463.P6311751269246005259

`A000961(∑[n+1])`
-/

namespace A092463.P6311751269246005259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092463.P6311751269246005259

noncomputable section

/-- A092463: Greatest number in the n-th successive group of natural numbers containing exactly n prime powers.

Offset 1, canonical program `A092463.P6311751269246005259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A092463 (n : ℕ) : ℤ :=
  A092463.P6311751269246005259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A092463.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A112342.P7013210857343809106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112342 (n : ℕ) : ℤ :=
  A112342.P7013210857343809106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A112342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A117491.P4115833013595851500

`∑[A060199(n)]-A000720(n+1)`
-/

namespace A117491.P4115833013595851500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A117491.P4115833013595851500

noncomputable section

/-- A117491: The number of primes between n and n^3 (with n and n^3 excluded).

Offset 1, canonical program `A117491.P4115833013595851500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117491 (n : ℕ) : ℤ :=
  A117491.P4115833013595851500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117491.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A117733.P723624204475833034`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117733 (n : ℕ) : ℤ :=
  A117733.P723624204475833034.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117733.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A117736.P2900786321532737672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117736 (n : ℕ) : ℤ :=
  A117736.P2900786321532737672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119693.P16182671038255865393

`A119692(n)/2`
-/

namespace A119693.P16182671038255865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119692 n : ℚ) / 2

end

end A119693.P16182671038255865393

noncomputable section

/-- A119693: a(n) = binomial(2*n,n) * Fibonacci(n)/2.

Offset 0, canonical program `A119693.P16182671038255865393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119693.P16182671038255865393.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119693.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A120389.P8073201827714242340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120389 (n : ℕ) : ℤ :=
  A120389.P8073201827714242340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A065855, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A120389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121315.P10392602224709161572

`A000961(n+1)*A000961(n+2)`
-/

namespace A121315.P10392602224709161572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) * A000961 (n + 2)

end

end A121315.P10392602224709161572

noncomputable section

/-- A121315: Products of two consecutive prime powers.

Offset 1, canonical program `A121315.P10392602224709161572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121315 (n : ℕ) : ℤ :=
  A121315.P10392602224709161572.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121315.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`
-/

namespace A122209.P962173722163386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 ((n + 1) ^ 2)

end

end A122209.P962173722163386459

noncomputable section

/-- A122209: Sum of squares of the first n^2 primes = A024450[n^2].

Offset 1, canonical program `A122209.P962173722163386459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122209 (n : ℕ) : ℤ :=
  A122209.P962173722163386459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122209.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A127719.P13941545238741058609

`A000196(A024450(n+1))`
-/

namespace A127719.P13941545238741058609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 1)).toNat

end

end A127719.P13941545238741058609

noncomputable section

/-- A127719: Floor of square root of sum of squares of n consecutive primes.

Offset 1, canonical program `A127719.P13941545238741058609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127719 (n : ℕ) : ℤ :=
  A127719.P13941545238741058609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127720.P7407208501453972689

`A000196(A024450(n+2)-4)`
-/

namespace A127720.P7407208501453972689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 2) - 4).toNat

end

end A127720.P7407208501453972689

noncomputable section

/-- A127720: Floor of square root of sum of squares of n odd consecutive primes.

Offset 1, canonical program `A127720.P7407208501453972689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127720 (n : ℕ) : ℤ :=
  A127720.P7407208501453972689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129309.P14897869849901808427

`A048865(A002808(n+1))`
-/

namespace A129309.P14897869849901808427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A002808 (n + 1)).toNat

end

end A129309.P14897869849901808427

noncomputable section

/-- A129309: a(n) = number of primes which are < c(n) and are coprime to c(n), where c(n) is the n-th composite.

Offset 1, canonical program `A129309.P14897869849901808427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129309 (n : ℕ) : ℤ :=
  A129309.P14897869849901808427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129576.P4189880678848016889

`A096936(3*n+1)`
-/

namespace A129576.P4189880678848016889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (3 * n + 1)

end

end A129576.P4189880678848016889

noncomputable section

/-- A129576: Expansion of phi(x) * chi(x) * psi(-x^3) in powers of x where phi(), chi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A129576.P4189880678848016889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576 (n : ℕ) : ℤ :=
  A129576.P4189880678848016889.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A071325.P10142503002015730220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071325 (n : ℕ) : ℤ :=
  A071325.P10142503002015730220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071325.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A071773.P10459083202328690793

`A007947(A057521(n+1))`
-/

namespace A071773.P10459083202328690793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A057521 (n + 1)).toNat

end

end A071773.P10459083202328690793

noncomputable section

/-- A071773: a(n) = gcd(rad(n), n/rad(n)), where rad(n) = A007947(n) is the squarefree kernel of n.

Offset 1, canonical program `A071773.P10459083202328690793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071773 (n : ℕ) : ℤ :=
  A071773.P10459083202328690793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072592.P12540866148401735071

`2*A009003(n+1)`
-/

namespace A072592.P12540866148401735071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009003 (n + 1)

end

end A072592.P12540866148401735071

noncomputable section

/-- A072592: Even numbers with at least one prime factor of form 4*k+1.

Offset 1, canonical program `A072592.P12540866148401735071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072592 (n : ℕ) : ℤ :=
  A072592.P12540866148401735071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072592.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A087266.P3243297445985223574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087266 (n : ℕ) : ℤ :=
  (A087266.P3243297445985223574.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087266.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A089631.P9146961677256787666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089631 (n : ℕ) : ℤ :=
  A089631.P9146961677256787666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A092261.P11403511796116652889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092261 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092261.P11403511796116652889.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A092261.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A092520.P5683000183497898863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092520 (n : ℕ) : ℤ :=
  A092520.P5683000183497898863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092520.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A119899.P6129127652273095795

`eq[1, A353669(n+1)]+1`
-/

namespace A119899.P6129127652273095795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119899.P6129127652273095795

noncomputable section

/-- A119899: Integers i such that bigomega(i) (A001222) and tau(i) (A000005) are both even.

Offset 1, canonical program `A119899.P6129127652273095795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119899 (n : ℕ) : ℤ :=
  (A119899.P6129127652273095795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119899.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A126795.P799784804237801689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126795 (n : ℕ) : ℤ :=
  (A126795.P799784804237801689.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126795.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A073342.P12215052563229227587`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073342 (n : ℕ) : ℤ :=
  A073342.P12215052563229227587.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A097944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073342.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A073882.P10708538489612221498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073882 (n : ℕ) : ℤ :=
  A073882.P10708538489612221498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073882.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A083481.P2036924859276303019

`A007913((n+1)*(n+2))`
-/

namespace A083481.P2036924859276303019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) * (n + 2))

end

end A083481.P2036924859276303019

noncomputable section

/-- A083481: Squarefree part of the n-th oblong number.

Offset 1, canonical program `A083481.P2036924859276303019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083481 (n : ℕ) : ℤ :=
  A083481.P2036924859276303019.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083481.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A115228.P599005106752154386

`lt[A007913(2*n+1), A105570(n)]`
-/

namespace A115228.P599005106752154386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115228.P599005106752154386

noncomputable section

/-- A115228: Nonsquarefree numbers n such that 2n+1 is also nonsquarefree (A013929).

Offset 1, canonical program `A115228.P599005106752154386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228 (n : ℕ) : ℤ :=
  (A115228.P599005106752154386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117203.P1024184579012793752

`record[A007913(n+2+A007913(n+1))]`
-/

namespace A117203.P1024184579012793752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2 : ℤ) + A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P1024184579012793752

noncomputable section

/-- A117203: Odd squarefree positive integers k such that (k-1)/2 is also squarefree.

Offset 1, canonical program `A117203.P1024184579012793752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203 (n : ℕ) : ℤ :=
  A117203.P1024184579012793752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117205.P13625184972565813265

`record[A007913(A007913(n+1)+n)]`
-/

namespace A117205.P13625184972565813265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P13625184972565813265

noncomputable section

/-- A117205: Odd squarefree positive integers k such that (k+1)/2 is also squarefree.

Offset 1, canonical program `A117205.P13625184972565813265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205 (n : ℕ) : ℤ :=
  A117205.P13625184972565813265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129631.P433838894207889531

`eq[A032741(A004157(n))+n-1, A028310(n)]`
-/

namespace A129631.P433838894207889531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004157 n).toNat + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129631.P433838894207889531

noncomputable section

/-- A129631: Numbers k such that sum of digits of binomial(k+1, k-1) is a prime.

Offset 1, canonical program `A129631.P433838894207889531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631 (n : ℕ) : ℤ :=
  (A129631.P433838894207889531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631.provenance : SequenceMachineLib.Provenance := .conjectured

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

