import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C018
import Seq.B000.C028
import Seq.B001.C000
import Seq.B001.C001
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`
-/

namespace A394110.P1967582314872625174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006013 n + A001764 n

end

end A394110.P1967582314872625174

noncomputable section

/-- A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394110.P1967582314872625174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110 (n : ℕ) : ℤ :=
  A394110.P1967582314872625174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`
-/

namespace A394111.P11665560195545579973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + 2 * A001764 n

end

end A394111.P11665560195545579973

noncomputable section

/-- A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394111.P11665560195545579973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111 (n : ℕ) : ℤ :=
  A394111.P11665560195545579973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394790.P4967719223950179716

`A000203(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394790.P4967719223950179716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001511 (n + 1)

end

end A394790.P4967719223950179716

noncomputable section

/-- A394790: Product of the sum of divisors of n with the exponent of the highest power of 2 dividing 2n: a(n) = A000203(n)*A001511(n).

Offset 1, canonical program `A394790.P4967719223950179716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394790 (n : ℕ) : ℤ :=
  A394790.P4967719223950179716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`
-/

namespace A396769.P5317963927150121089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) + (n : ℤ)

end

end A396769.P5317963927150121089

noncomputable section

/-- A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A396769.P5317963927150121089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769 (n : ℕ) : ℤ :=
  A396769.P5317963927150121089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`
-/

namespace A392341.P17720603421166545301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (n + 1) - A000196 (n + 1)

end

end A392341.P17720603421166545301

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P17720603421166545301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P17720603421166545301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392841.P10420342193856586966

`val(A165404(n+1), 2)`
-/

namespace A392841.P10420342193856586966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165404 (n + 1)).toNat 2

end

end A392841.P10420342193856586966

noncomputable section

/-- A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

Offset 1, canonical program `A392841.P10420342193856586966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841 (n : ℕ) : ℤ :=
  (A392841.P10420342193856586966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393608.P4231341936800649805

`A104887(n+1)%(A002260(n+1)+1)`
-/

namespace A393608.P4231341936800649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (A002260 (n + 1) + 1)

end

end A393608.P4231341936800649805

noncomputable section

/-- A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

Offset 2, canonical program `A393608.P4231341936800649805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608 (n : ℕ) : ℤ :=
  A393608.P4231341936800649805.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394783.P5687938633812973995

`A076112(n+1)*A233543(n)`
-/

namespace A394783.P5687938633812973995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A233543 n

end

end A394783.P5687938633812973995

noncomputable section

/-- A394783: Triangle read by rows: T(n,k) = n^(k-1)*(k - 1)! with 1 <= k <= n.

Offset 1, canonical program `A394783.P5687938633812973995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A394783 (n : ℕ) : ℤ :=
  A394783.P5687938633812973995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A394783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395101.P16581405830071828920

`A016777(n)%A182770(n+1)`
-/

namespace A395101.P16581405830071828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A182770 (n + 1))

end

end A395101.P16581405830071828920

noncomputable section

/-- A395101: Indices k such that A080764(k) = 1.

Offset 1, canonical program `A395101.P16581405830071828920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101 (n : ℕ) : ℤ :=
  A395101.P16581405830071828920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395253.P18042258813510098844

`Δ[A395251(n+1)]`
-/

namespace A395253.P18042258813510098844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P18042258813510098844

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P18042258813510098844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P18042258813510098844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`
-/

namespace A395542.P7948443198613962418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395542.P7948443198613962418

noncomputable section

/-- A395542: Numbers whose number of nonzero digits is identical in base 2 and 5.

Offset 1, canonical program `A395542.P7948443198613962418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542 (n : ℕ) : ℤ :=
  (A395542.P7948443198613962418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`
-/

namespace A395675.P10573458847951959363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 (n + 1) : ℚ) / 2

end

end A395675.P10573458847951959363

noncomputable section

/-- A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A395675.P10573458847951959363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395675.P10573458847951959363.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398163.P15994787908437553073

`∩[A337050(n+1)-1, A337050(n+1)]`
-/

namespace A398163.P15994787908437553073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398163.P15994787908437553073

noncomputable section

/-- A398163: Numbers k such that neither k nor k+1 has an exponent that equals 2 in their prime factorization.

Offset 1, canonical program `A398163.P15994787908437553073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7285 terms. -/
def A398163 (n : ℕ) : ℤ :=
  (A398163.P15994787908437553073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7285 terms. -/
def A398163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398446.P9828870896575089077

`A394529(n)+A051960(n)`
-/

namespace A398446.P9828870896575089077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 n + A051960 n

end

end A398446.P9828870896575089077

noncomputable section

/-- A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

Offset 3, canonical program `A398446.P9828870896575089077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A398446 (n : ℕ) : ℤ :=
  A398446.P9828870896575089077.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A398446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`
-/

namespace A392359.P2113602717843569055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A087267 (n + 1) : ℚ)

end

end A392359.P2113602717843569055

noncomputable section

/-- A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

Offset 1, canonical program `A392359.P2113602717843569055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392359.P2113602717843569055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392598.P12361947951948516843

`A268357(n+1)*A392597(n+1)`
-/

namespace A392598.P12361947951948516843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268357 (n + 1) * A392597 (n + 1)

end

end A392598.P12361947951948516843

noncomputable section

/-- A392598: The largest 11-smooth divisor of n.

Offset 1, canonical program `A392598.P12361947951948516843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598 (n : ℕ) : ℤ :=
  A392598.P12361947951948516843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`
-/

namespace A392630.P18032150745144184290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060236 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A392630.P18032150745144184290

noncomputable section

/-- A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392630.P18032150745144184290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630 (n : ℕ) : ℤ :=
  A392630.P18032150745144184290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395817.P11063103629399214891

`A135210(n+1)+1`
-/

namespace A395817.P11063103629399214891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1) + 1

end

end A395817.P11063103629399214891

noncomputable section

/-- A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

Offset 1, canonical program `A395817.P11063103629399214891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817 (n : ℕ) : ℤ :=
  A395817.P11063103629399214891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`
-/

namespace A396571.P6988239857056960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + A071904 (n + 2) : ℚ) / 2

end

end A396571.P6988239857056960462

noncomputable section

/-- A396571: Averages of adjacent odd composite numbers.

Offset 1, canonical program `A396571.P6988239857056960462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396571.P6988239857056960462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397238.P14966536247982268415

`A046692(A057521(n+1))`
-/

namespace A397238.P14966536247982268415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A057521 (n + 1)).toNat

end

end A397238.P14966536247982268415

noncomputable section

/-- A397238: Dirichlet g.f.: Product_{p prime} (1 + 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397238.P14966536247982268415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238 (n : ℕ) : ℤ :=
  A397238.P14966536247982268415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`
-/

namespace A397754.P18151342160138794166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397754.P18151342160138794166

noncomputable section

/-- A397754: Numbers that don't contain digit 0 but have a divisor that does.

Offset 1, canonical program `A397754.P18151342160138794166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754 (n : ℕ) : ℤ :=
  (A397754.P18151342160138794166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398169.P3202459588062377713

`filter[A367695(n+1), A212793(#)]`
-/

namespace A398169.P3202459588062377713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A398169.P3202459588062377713

noncomputable section

/-- A398169: Squarefree numbers k such that k+1 is an exponentially odd number.

Offset 1, canonical program `A398169.P3202459588062377713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169 (n : ℕ) : ℤ :=
  A398169.P3202459588062377713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394687.P4586993483897580665

`∑[A100073(n+1)]`
-/

namespace A394687.P4586993483897580665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394687.P4586993483897580665

noncomputable section

/-- A394687: Number of ordered pairs of positive integers (a,b) with a < b such that b^2 - a^2 <= n.

Offset 1, canonical program `A394687.P4586993483897580665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394687 (n : ℕ) : ℤ :=
  A394687.P4586993483897580665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394747.P2470656169310210325

`∩[A087680(n+1), A392199(n+1)]`
-/

namespace A394747.P2470656169310210325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394747.P2470656169310210325

noncomputable section

/-- A394747: Numbers k such that k-4 and k+4 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A394747.P2470656169310210325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747 (n : ℕ) : ℤ :=
  (A394747.P2470656169310210325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A394747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395435.P9852731748166270111

`A000203(n+1)-A034448(n+1)+A034444(n+1)`
-/

namespace A395435.P9852731748166270111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1) + A034444 (n + 1)

end

end A395435.P9852731748166270111

noncomputable section

/-- A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

Offset 1, canonical program `A395435.P9852731748166270111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P9852731748166270111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392236.P3767480464349034148

`eq[A145037(n), A393336(n)]`
-/

namespace A392236.P3767480464349034148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392236.P3767480464349034148

noncomputable section

/-- A392236: Positions of zeros in A309983.

Offset 1, canonical program `A392236.P3767480464349034148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236 (n : ℕ) : ℤ :=
  (A392236.P3767480464349034148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393976.P11083541113519582612

`A127473(n+1)+A000010(n+1)+1`
-/

namespace A393976.P11083541113519582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A000010 (n + 1) + 1

end

end A393976.P11083541113519582612

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P11083541113519582612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P11083541113519582612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394481.P3743534600693645198

`A034448(n+1)+A000005(n+1)-A034444(n+1)`
-/

namespace A394481.P3743534600693645198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A000005 (n + 1) - A034444 (n + 1)

end

end A394481.P3743534600693645198

noncomputable section

/-- A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

Offset 1, canonical program `A394481.P3743534600693645198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P3743534600693645198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395301.P11832353311031738574

`A033273(n+1)+A345266(n+1)`
-/

namespace A395301.P11832353311031738574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + A345266 (n + 1)

end

end A395301.P11832353311031738574

noncomputable section

/-- A395301: a(n) = tau(n) - omega(n) + Sum_{p|n, p prime} gcd(p,n/p).

Offset 1, canonical program `A395301.P11832353311031738574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301 (n : ℕ) : ℤ :=
  A395301.P11832353311031738574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033273, A345266, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395990.P6546272165125092159

`A000005(n+1)+A076752(n+1)-A046951(n+1)`
-/

namespace A395990.P6546272165125092159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A076752 (n + 1) - A046951 (n + 1)

end

end A395990.P6546272165125092159

noncomputable section

/-- A395990: a(n) = Sum_{d|n} d^(tau(n/d) mod 2).

Offset 1, canonical program `A395990.P6546272165125092159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A046951, A076752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395990 (n : ℕ) : ℤ :=
  A395990.P6546272165125092159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A046951, A076752, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395990.provenance : SequenceMachineLib.Provenance := .conditional

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

