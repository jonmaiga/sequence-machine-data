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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A308400: Expansion of 1 / Sum_{k=-oo..oo} (-x)^(k*(6*k + 1)).

The programs for A308400, there is no canonical definition to state claims against.
-/

/-! ## A308400.P13382903376277269571

`A001221(C(A023219(n+1), A025886(n)))`
-/

namespace A308400.P13382903376277269571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A023219 (n + 1)).toNat (A025886 n).toNat)

end

end A308400.P13382903376277269571

/-! ## A308400.P10238058161362591543

`A369816(n)-A178780(A144225(3*n+4))`
-/

namespace A308400.P10238058161362591543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 n - A178780 (A144225 (3 * n + 4)).toNat

end

end A308400.P10238058161362591543

/-!
# A308401: Number of bracelets (turnover necklaces) of length n that have no reflection symmetry and consist of 6 white beads and n-6 black beads.

The programs for A308401, the canonical program `A308401.P1704796771430067553` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308401 has offset 9).

The definition of A308401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308401.P1704796771430067553

`A005513(n+9)-A058187(n+3)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A308401

/-- `A005513(n+9)-A058187(n+3)` -/
def P1704796771430067553.Spec : Prop :=
  ∀ n, P1704796771430067553.a n = A308401 (n + 9)

theorem P1704796771430067553.correct : P1704796771430067553.Spec := by
  intro n
  simp only [A308401, Nat.add_sub_cancel]

end A308401

/-! ## A308401.P15517381945948277251

`A005513(n+9)-A000292(A008619(n+3))`
-/

namespace A308401.P15517381945948277251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005513 (n + 9) - A000292 (A008619 (n + 3)).toNat

end

end A308401.P15517381945948277251

namespace A308401

/-- `A005513(n+9)-A000292(A008619(n+3))` -/
def P15517381945948277251.Spec : Prop :=
  ∀ n, P15517381945948277251.a n = A308401 (n + 9)

end A308401

/-! ## A308401.P1392435557662852152

`A180472(A166136(n+8))`
-/

namespace A308401.P1392435557662852152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A166136 (n + 8)).toNat

end

end A308401.P1392435557662852152

namespace A308401

/-- `A180472(A166136(n+8))` -/
def P1392435557662852152.Spec : Prop :=
  ∀ n, P1392435557662852152.a n = A308401 (n + 9)

end A308401

/-! ## A308401.P3421243966467426608

`A180472(A046691(n+7)+10)`
-/

namespace A308401.P3421243966467426608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A046691 (n + 7) + 10).toNat

end

end A308401.P3421243966467426608

namespace A308401

/-- `A180472(A046691(n+7)+10)` -/
def P3421243966467426608.Spec : Prop :=
  ∀ n, P3421243966467426608.a n = A308401 (n + 9)

end A308401

/-! ## A308401.P17860448956101301679

`A180472(A000217(n+10)-7)`
-/

namespace A308401.P17860448956101301679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A000217 (n + 10) - 7).toNat

end

end A308401.P17860448956101301679

namespace A308401

/-- `A180472(A000217(n+10)-7)` -/
def P17860448956101301679.Spec : Prop :=
  ∀ n, P17860448956101301679.a n = A308401 (n + 9)

end A308401

/-!
# A308402: Denominators of the sequence of rational numbers Rn+ related to Bernoulli numbers.

The programs for A308402, there is no canonical definition to state claims against.
-/

/-! ## A308402.P9120700067136205294

`A040001(n)*A181131(n)`
-/

namespace A308402.P9120700067136205294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A181131 n

end

end A308402.P9120700067136205294

/-! ## A308402.P15378001781899351364

`lcm(A050932(n), A181131(n))`
-/

namespace A308402.P15378001781899351364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050932 n) (A181131 n)

end

end A308402.P15378001781899351364

/-! ## A308402.P15113405101193521188

`A091090((n+1)²)*A181131(n)`
-/

namespace A308402.P15113405101193521188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 ((n + 1) ^ 2) * A181131 n

end

end A308402.P15113405101193521188

/-! ## A308402.P9898148319938533638

`A020639(A019425(n+1))*A181131(n)`
-/

namespace A308402.P9898148319938533638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A019425 (n + 1)).toNat * A181131 n

end

end A308402.P9898148319938533638

/-!
# A308406: Lexicographically earliest sequence of distinct terms such that reading one-by-one the central digit of each term is the same as reading one-by-one the successive digits of the sequence itself.

The programs for A308406, there is no canonical definition to state claims against.
-/

/-! ## A308406.P558380871230671035

`∑[gcd(101, A123678(n+1))]`
-/

namespace A308406.P558380871230671035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 101 (A123678 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308406.P558380871230671035

/-! ## A308406.P7660346670835821834

`A106003(A043316(n+1))`
-/

namespace A308406.P7660346670835821834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106003 (A043316 (n + 1)).toNat

end

end A308406.P7660346670835821834

/-! ## A308406.P7142858316497845761

`A106003(A044913(n+1))`
-/

namespace A308406.P7142858316497845761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106003 (A044913 (n + 1)).toNat

end

end A308406.P7142858316497845761

/-! ## A308406.P11537159251846060508

`A106003(A049872(n+1))`
-/

namespace A308406.P11537159251846060508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106003 (A049872 (n + 1)).toNat

end

end A308406.P11537159251846060508

/-! ## A308406.P2639270585834036485

`A106003(A061147(n+1))`
-/

namespace A308406.P2639270585834036485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106003 (A061147 (n + 1)).toNat

end

end A308406.P2639270585834036485

/-!
# A308409: Number of bond trees with n bonds on the square lattice.

The programs for A308409, there is no canonical definition to state claims against.
-/

/-! ## A308409.P13459014746223018722

`A385120(n)/(n+1)`
-/

namespace A308409.P13459014746223018722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385120 n : ℚ) / (n + 1 : ℚ)

end

end A308409.P13459014746223018722

/-! ## A308409.P18378209161766680548

`A354767(A104547(n))`
-/

namespace A308409.P18378209161766680548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A104547 n).toNat

end

end A308409.P18378209161766680548

/-! ## A308409.P6566645134112257658

`A065033(A147922(n+1)+(4^n-2^n)/2)`
-/

namespace A308409.P6566645134112257658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A147922 (n + 1) : ℚ) + ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2)).toNat

end

end A308409.P6566645134112257658

/-!
# A308411: Number of ways to write n as 2^i*3^j + A008347(k), where i, j and k > 0 are nonnegative integers.

The programs for A308411, there is no canonical definition to state claims against.
-/

/-! ## A308411.P9686395333392242324

`A140361(A008458(n)-A106798(n))`
-/

namespace A308411.P9686395333392242324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A008458 n - A106798 n).toNat

end

end A308411.P9686395333392242324

/-!
# A308412: Indices of Gaussian primes on a square spiral.

The programs for A308412, there is no canonical definition to state claims against.
-/

/-! ## A308412.P12848682157246320882

`A345436(n+2)+1`
-/

namespace A308412.P12848682157246320882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345436 (n + 2) + 1

end

end A308412.P12848682157246320882

/-! ## A308412.P1713445788767742406

`A020725(A345436(n+2))`
-/

namespace A308412.P1713445788767742406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A345436 (n + 2)).toNat

end

end A308412.P1713445788767742406

/-! ## A308412.P2728546923165712950

`∑[A053230(A046452(n+1)+1)]+1`
-/

namespace A308412.P2728546923165712950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A046452 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308412.P2728546923165712950

/-! ## A308412.P14890595546383953878

`A233272(A010893(n)!)+A160755(Δ[n²])`
-/

namespace A308412.P14890595546383953878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (Nat.factorial (A010893 (n + 13)).toNat) + A160755 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A308412.P14890595546383953878

/-! ## A308412.P2733428621632157260

`A160755(2*n+1)+A001221(A063838(2*(n+1)))`
-/

namespace A308412.P2733428621632157260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (2 * n + 1) + A001221 (A063838 (2 * (n + 1))).toNat

end

end A308412.P2733428621632157260

/-!
# A308415: Number of irreducible Egyptian fractions of denominator n which are the sum of 3 unit fractions.

The programs for A308415, there is no canonical definition to state claims against.
-/

/-! ## A308415.P80553506702789434

`∑{d}[n+1, A008683(#)*A308221((n+1)/#)]`
-/

namespace A308415.P80553506702789434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A308221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308415.P80553506702789434

/-!
# A308416: Values of m for which 2*p + m cannot be a square when p is a prime.

The programs for A308416, there is no canonical definition to state claims against.
-/

/-! ## A308416.P4414367782652067810

`A079896(n+1)-4`
-/

namespace A308416.P4414367782652067810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1) - 4

end

end A308416.P4414367782652067810

/-! ## A308416.P12235452175204609876

`eq[1, A110243(n+4)]`
-/

namespace A308416.P12235452175204609876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110243 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308416.P12235452175204609876

/-! ## A308416.P14496808062746756672

`eq[1, gcd(2, A003165(n+4))]`
-/

namespace A308416.P14496808062746756672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003165 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308416.P14496808062746756672

/-! ## A308416.P9646752508506696246

`lt[2, n/A110243(n)]-4`
-/

namespace A308416.P9646752508506696246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A110243 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n : ℤ) - 4

end

end A308416.P9646752508506696246

/-! ## A308416.P17097090179370883780

`eq[and(2, n), A000122(n+4)]`
-/

namespace A308416.P17097090179370883780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308416.P17097090179370883780

/-! ## A308416.P11433907423877447007

`eq[and(2, n), A002448(n+4)]`
-/

namespace A308416.P11433907423877447007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308416.P11433907423877447007

/-! ## A308416.P6584335393917646308

`eq[and(2, n), A010052(n+4)]`
-/

namespace A308416.P6584335393917646308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308416.P6584335393917646308

/-! ## A308416.P7809171141708755393

`eq[and(2, n), A037213(n+4)]`
-/

namespace A308416.P7809171141708755393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308416.P7809171141708755393

/-!
# A308417: Expansion of e.g.f. exp(x*(1 + x + x^2)/(1 - x^2)^2).

The programs for A308417, there is no canonical definition to state claims against.
-/

/-! ## A308417.P10911665579915342260

`A250469(A358588(n+1)+A033917(n))`
-/

namespace A308417.P10911665579915342260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A358588 (n + 1) + A033917 n).toNat

end

end A308417.P10911665579915342260

/-!
# A308418: Expansion of e.g.f. exp(x*(1 + 3*x + 6*x^2 + 3*x^3 + x^4)/(1 - x^2)^3).

The programs for A308418, there is no canonical definition to state claims against.
-/

/-! ## A308418.P17511203129417791973

`A008615(abs(1-n)*6^n+5)`
-/

namespace A308418.P17511203129417791973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (|1 - (n : ℤ)| * (6 ^ n : ℤ) + 5).toNat

end

end A308418.P17511203129417791973

/-!
# A308419: Stopping time for Recamán-like iteration of each n: a(0) = n, a(k) = a(k-1) - k if positive and not already in the sequence, a(k) = a(k-1) + k if not already in the sequence, otherwise stop.

The programs for A308419, there is no canonical definition to state claims against.
-/

/-! ## A308419.P9419872893395268065

`A334219(n-ceil(n/98))`
-/

namespace A308419.P9419872893395268065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334219 ((n : ℤ) - ⌈(n : ℚ) / 98⌉).toNat

end

end A308419.P9419872893395268065

/-!
# A308420: Squarefree numbers d of the form s^2 + r, where r divides 4s, such that Q(sqrt(d)) has class number 1.

The programs for A308420, there is no canonical definition to state claims against.
-/

/-! ## A308420.P13490240446510769537

`∩[comp[A057538(3*(n+1))], A053329(n+1)]`
-/

namespace A308420.P13490240446510769537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A308420.P13490240446510769537

/-! ## A308420.P17996682535508017611

`∩[∑[A380782(2*n+3)], A053329(n+1)]`
-/

namespace A308420.P17996682535508017611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380782 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A308420.P17996682535508017611

/-! ## A308420.P1162328154724913971

`A053329(∑[Δ[A029730(n+1)]!])`
-/

namespace A308420.P1162328154724913971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053329 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308420.P1162328154724913971

/-! ## A308420.P3512735711962870359

`A093313(A125165(n))+A053329(n+1)`
-/

namespace A308420.P3512735711962870359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093313 (A125165 n).toNat + A053329 (n + 1)

end

end A308420.P3512735711962870359

/-!
# A308421: Sums of two distinct refactorable numbers.

The programs for A308421, there is no canonical definition to state claims against.
-/

/-! ## A308421.P1024519702698641663

`lt[1, A368821(n+1)]+1`
-/

namespace A308421.P1024519702698641663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A308421.P1024519702698641663

/-!
# A308422: a(n) = n^2 if n odd, 3*n^2/4 if n even.

The programs for A308422, the canonical program `A308422.P5686290696795046031` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308422 has offset 0).

The definition of A308422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308422.P5686290696795046031

`(7-(-1)^n)*n²/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A308422

/-- `(7-(-1)^n)*n²/8` -/
def P5686290696795046031.Spec : Prop :=
  ∀ n, P5686290696795046031.a n = (A308422 n : ℚ)

end A308422

/-! ## A308422.P5407253457207884400

`(n%2+3)*(n/2)²`
-/

namespace A308422.P5407253457207884400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 3 : ℕ) : ℚ) * ((n : ℚ) / 2) ^ 2

end

end A308422.P5407253457207884400

namespace A308422

/-- `(n%2+3)*(n/2)²` -/
def P5407253457207884400.Spec : Prop :=
  ∀ n, P5407253457207884400.a n = (A308422 n : ℚ)

end A308422

/-! ## A308422.P1720123041962430448

`3/(gcd(2, n)+2)*n²`
-/

namespace A308422.P1720123041962430448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (Nat.gcd 2 n + 2 : ℚ) * (n ^ 2 : ℚ)

end

end A308422.P1720123041962430448

namespace A308422

/-- `3/(gcd(2, n)+2)*n²` -/
def P1720123041962430448.Spec : Prop :=
  ∀ n, P1720123041962430448.a n = (A308422 n : ℚ)

end A308422

/-! ## A308422.P12389091760333554015

`∑[and(n, -2)]+ceil(lcm(2, n²)/4)`
-/

namespace A308422.P12389091760333554015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(Nat.lcm 2 (n ^ 2) : ℚ) / 4⌉

end

end A308422.P12389091760333554015

namespace A308422

/-- `∑[and(n, -2)]+ceil(lcm(2, n²)/4)` -/
def P12389091760333554015.Spec : Prop :=
  ∀ n, P12389091760333554015.a n = A308422 n

end A308422

/-! ## A308422.P10699431187372366011

`n²-A142150(n)²`
-/

namespace A308422.P10699431187372366011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A142150 n ^ 2

end

end A308422.P10699431187372366011

namespace A308422

/-- `n²-A142150(n)²` -/
def P10699431187372366011.Spec : Prop :=
  ∀ n, P10699431187372366011.a n = A308422 n

end A308422

/-! ## A308422.P16592841932153836676

`(n/2)²*A010702(n)`
-/

namespace A308422.P16592841932153836676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A010702 n : ℚ)

end

end A308422.P16592841932153836676

namespace A308422

/-- `(n/2)²*A010702(n)` -/
def P16592841932153836676.Spec : Prop :=
  ∀ n, P16592841932153836676.a n = (A308422 n : ℚ)

end A308422

/-! ## A308422.P6735645067158595274

`(n/2)²*A103947(n)`
-/

namespace A308422.P6735645067158595274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A103947 n : ℚ)

end

end A308422.P6735645067158595274

namespace A308422

/-- `(n/2)²*A103947(n)` -/
def P6735645067158595274.Spec : Prop :=
  ∀ n, P6735645067158595274.a n = (A308422 n : ℚ)

end A308422

/-! ## A308422.P3767976139935745222

`lcm(2, n²)-A168077(n)`
-/

namespace A308422.P3767976139935745222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ 2) : ℤ) - A168077 n

end

end A308422.P3767976139935745222

namespace A308422

/-- `lcm(2, n²)-A168077(n)` -/
def P3767976139935745222.Spec : Prop :=
  ∀ n, P3767976139935745222.a n = A308422 n

end A308422

/-! ## A308422.P1752951523812792466

`n²-(1-A158416(n))²`
-/

namespace A308422.P1752951523812792466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (1 - A158416 n) ^ 2

end

end A308422.P1752951523812792466

namespace A308422

/-- `n²-(1-A158416(n))²` -/
def P1752951523812792466.Spec : Prop :=
  ∀ n, P1752951523812792466.a n = A308422 n

end A308422

/-! ## A308422.P14620229126132257135

`n²-(n-A026741(n))²`
-/

namespace A308422.P14620229126132257135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((n : ℤ) - A026741 n) ^ 2

end

end A308422.P14620229126132257135

namespace A308422

/-- `n²-(n-A026741(n))²` -/
def P14620229126132257135.Spec : Prop :=
  ∀ n, P14620229126132257135.a n = A308422 n

end A308422

/-! ## A308422.P8288773169855887331

`n²+1-A033638(n*char[2*n])`
-/

namespace A308422.P8288773169855887331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - A033638 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A308422.P8288773169855887331

namespace A308422

/-- `n²+1-A033638(n*char[2*n])` -/
def P8288773169855887331.Spec : Prop :=
  ∀ n, P8288773169855887331.a n = A308422 n

end A308422

/-! ## A308422.P10232589810092121675

`A147685(n)+A007590(n)`
-/

namespace A308422.P10232589810092121675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 n + A007590 n

end

end A308422.P10232589810092121675

namespace A308422

/-- `A147685(n)+A007590(n)` -/
def P10232589810092121675.Spec : Prop :=
  ∀ n, P10232589810092121675.a n = A308422 n

end A308422

/-! ## A308422.P4127564851986779081

`A035608(n)-A354280(n)`
-/

namespace A308422.P4127564851986779081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n - A354280 n

end

end A308422.P4127564851986779081

namespace A308422

/-- `A035608(n)-A354280(n)` -/
def P4127564851986779081.Spec : Prop :=
  ∀ n, P4127564851986779081.a n = A308422 n

end A308422

/-! ## A308422.P1275079689463034742

`A026741(n)*A257143(n)`
-/

namespace A308422.P1275079689463034742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A257143 n

end

end A308422.P1275079689463034742

namespace A308422

/-- `A026741(n)*A257143(n)` -/
def P1275079689463034742.Spec : Prop :=
  ∀ n, P1275079689463034742.a n = A308422 n

end A308422

/-! ## A308422.P3176922311889783451

`A168077(n)*A176040(n)`
-/

namespace A308422.P3176922311889783451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n * A176040 n

end

end A308422.P3176922311889783451

namespace A308422

/-- `A168077(n)*A176040(n)` -/
def P3176922311889783451.Spec : Prop :=
  ∀ n, P3176922311889783451.a n = A308422 n

end A308422

/-! ## A308422.P68169674736614364

`n²-A008794(A003815(n))`
-/

namespace A308422.P68169674736614364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008794 (A003815 n).toNat

end

end A308422.P68169674736614364

namespace A308422

/-- `n²-A008794(A003815(n))` -/
def P68169674736614364.Spec : Prop :=
  ∀ n, P68169674736614364.a n = A308422 n

end A308422

/-! ## A308422.P6488974919896038335

`n²-A002620(A237420(n))`
-/

namespace A308422.P6488974919896038335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A002620 (A237420 n).toNat

end

end A308422.P6488974919896038335

namespace A308422

/-- `n²-A002620(A237420(n))` -/
def P6488974919896038335.Spec : Prop :=
  ∀ n, P6488974919896038335.a n = A308422 n

end A308422

/-! ## A308422.P10095159178938926374

`A006008(n)-A289161(n+1)`
-/

namespace A308422.P10095159178938926374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n - A289161 (n + 1)

end

end A308422.P10095159178938926374

namespace A308422

/-- `A006008(n)-A289161(n+1)` -/
def P10095159178938926374.Spec : Prop :=
  ∀ n, P10095159178938926374.a n = A308422 n

end A308422

/-! ## A308422.P2588342944871735662

`A247643(n)-A056136(n+1)`
-/

namespace A308422.P2588342944871735662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n - A056136 (n + 1)

end

end A308422.P2588342944871735662

namespace A308422

/-- `A247643(n)-A056136(n+1)` -/
def P2588342944871735662.Spec : Prop :=
  ∀ n, P2588342944871735662.a n = A308422 n

end A308422

/-! ## A308422.P1507918246988209896

`A153284(n+1)*A168077(n)`
-/

namespace A308422.P1507918246988209896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A168077 n

end

end A308422.P1507918246988209896

namespace A308422

/-- `A153284(n+1)*A168077(n)` -/
def P1507918246988209896.Spec : Prop :=
  ∀ n, P1507918246988209896.a n = A308422 n

end A308422

/-!
# A308423: 

The programs for A308423, there is no canonical definition to state claims against.
-/

/-! ## A308423.P8563063752425734238

`∏{d}[A007691(n+1), #]`
-/

namespace A308423.P8563063752425734238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A308423.P8563063752425734238

/-! ## A308423.P17798731589661270836

`∏{d}[A348031(n+1), #]`
-/

namespace A308423.P17798731589661270836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A308423.P17798731589661270836

/-! ## A308423.P4724441908183684766

`∏{d}[A348035(n+1), #]`
-/

namespace A308423.P4724441908183684766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A308423.P4724441908183684766

/-!
# A308424: Number of integer-sided triangles with perimeter n whose side lengths are nonsquarefree.

The programs for A308424, there is no canonical definition to state claims against.
-/

/-! ## A308424.P15306916504196034642

`A308425(n+1)/(n+1)`
-/

namespace A308424.P15306916504196034642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308425 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308424.P15306916504196034642

/-! ## A308424.P15494297741561322403

`(A308426(n+1)+A308429(n+1)+A308428(n+1))/(n+1)`
-/

namespace A308424.P15494297741561322403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308426 (n + 1) + (A308429 (n + 1) + A308428 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A308424.P15494297741561322403

/-! ## A308424.P15221277421415745946

`A008585(A308425(n+1))%A016789(n)`
-/

namespace A308424.P15221277421415745946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A308425 (n + 1)).toNat) (A016789 n)

end

end A308424.P15221277421415745946

/-! ## A308424.P8535940887679569288

`A028950(A308426(n+1))`
-/

namespace A308424.P8535940887679569288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A308426 (n + 1)).toNat

end

end A308424.P8535940887679569288

/-! ## A308424.P5302253203544648146

`A112569(n+1)%A335454(A308426(n+1))`
-/

namespace A308424.P5302253203544648146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112569 (n + 1)) (A335454 (A308426 (n + 1)).toNat)

end

end A308424.P5302253203544648146

/-!
# A308425: Sum of the perimeters of all integer-sided triangles with perimeter n whose side lengths are nonsquarefree.

The programs for A308425, there is no canonical definition to state claims against.
-/

/-! ## A308425.P17957603905975474607

`(n+1)*A308424(n+1)`
-/

namespace A308425.P17957603905975474607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308424 (n + 1)

end

end A308425.P17957603905975474607

/-! ## A308425.P17169368279624190455

`A308424(n+1)*A326178(n)`
-/

namespace A308425.P17169368279624190455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308424 (n + 1) * A326178 n

end

end A308425.P17169368279624190455

/-! ## A308425.P13263757736057122728

`A308424(n+1)/(n+1)^A008683(A151800(n))`
-/

namespace A308425.P13263757736057122728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308424 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A308425.P13263757736057122728

/-! ## A308425.P1835842620354917517

`A308426(n+1)+A308429(n+1)+A308428(n+1)`
-/

namespace A308425.P1835842620354917517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308426 (n + 1) + (A308429 (n + 1) + A308428 (n + 1))

end

end A308425.P1835842620354917517

/-! ## A308425.P17626618470056688680

`(n+1)*A028950(A308426(n+1))`
-/

namespace A308425.P17626618470056688680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028950 (A308426 (n + 1)).toNat

end

end A308425.P17626618470056688680

/-!
# A308426: Sum of the smallest side lengths of all integer-sided triangles with perimeter n whose sides are nonsquarefree.

The programs for A308426, there is no canonical definition to state claims against.
-/

/-! ## A308426.P12751485463082558930

`A308425(n+1)-(A308429(n+1)+A308428(n+1))`
-/

namespace A308426.P12751485463082558930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308425 (n + 1) - (A308429 (n + 1) + A308428 (n + 1))

end

end A308426.P12751485463082558930

/-!
# A308427: a(n) is the number of central factorizations needed to reach the prime factorization of n.

The programs for A308427, there is no canonical definition to state claims against.
-/

/-! ## A308427.P16729554275324284243

`A230980(A324190(n+1))%Δ[A254731(n)]`
-/

namespace A308427.P16729554275324284243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A324190 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A308427.P16729554275324284243

/-! ## A308427.P8732320344249838829

`A230980(A324190(n+1)%A254731(n+1))`
-/

namespace A308427.P8732320344249838829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A324190 (n + 1)) (A254731 (n + 1))).toNat

end

end A308427.P8732320344249838829

/-! ## A308427.P10623496242733895127

`A341120(A324190(n+1))%A196528(n+2)`
-/

namespace A308427.P10623496242733895127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341120 (A324190 (n + 1)).toNat) (A196528 (n + 2))

end

end A308427.P10623496242733895127

/-! ## A308427.P1466969375449728649

`A230980(A324190(n+1))+A000038((n+2)²)`
-/

namespace A308427.P1466969375449728649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A324190 (n + 1)).toNat + A000038 ((n + 2) ^ 2)

end

end A308427.P1466969375449728649

/-! ## A308427.P3513260978425144847

`A230980(A324190(n+1))+A028586((n+2)²)`
-/

namespace A308427.P3513260978425144847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A324190 (n + 1)).toNat + A028586 ((n + 2) ^ 2)

end

end A308427.P3513260978425144847

/-! ## A308427.P13309766060982011906

`and(A065532((n+1)²), A341120(A324190(n+1)))`
-/

namespace A308427.P13309766060982011906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065532 ((n + 1) ^ 2)) (A341120 (A324190 (n + 1)).toNat)

end

end A308427.P13309766060982011906

/-! ## A308427.P1302077766205386174

`or(A000007((n+1)²), A341120(A324190(n+1)))`
-/

namespace A308427.P1302077766205386174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 ((n + 1) ^ 2)) (A341120 (A324190 (n + 1)).toNat)

end

end A308427.P1302077766205386174

/-! ## A308427.P5803932070504741754

`A141134((n+2)²-1)*A230980(A324190(n+1))`
-/

namespace A308427.P5803932070504741754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141134 ((n + 2) ^ 2 - 1) * A230980 (A324190 (n + 1)).toNat

end

end A308427.P5803932070504741754

/-! ## A308427.P909369066216813522

`A341120(A324190(n+1))+A000038(A102432(n+1))`
-/

namespace A308427.P909369066216813522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 (A324190 (n + 1)).toNat + A000038 (A102432 (n + 1)).toNat

end

end A308427.P909369066216813522

/-! ## A308427.P17764708725853910961

`A023967(A356231(n+1))`
-/

namespace A308427.P17764708725853910961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (A356231 (n + 1)).toNat

end

end A308427.P17764708725853910961

/-!
# A308428: Sum of the largest side lengths of all integer-sided triangles with perimeter n whose sides are nonsquarefree.

The programs for A308428, there is no canonical definition to state claims against.
-/

/-! ## A308428.P12838982256845313723

`A308425(n+1)-(A308429(n+1)+A308426(n+1))`
-/

namespace A308428.P12838982256845313723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308425 (n + 1) - (A308429 (n + 1) + A308426 (n + 1))

end

end A308428.P12838982256845313723

/-!
# A308429: Take all the integer-sided triangles with perimeter n and nonsquarefree side lengths a, b and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308429, there is no canonical definition to state claims against.
-/

/-! ## A308429.P11282728796290446028

`A308425(n+1)-(A308428(n+1)+A308426(n+1))`
-/

namespace A308429.P11282728796290446028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308425 (n + 1) - (A308428 (n + 1) + A308426 (n + 1))

end

end A308429.P11282728796290446028

/-!
# A308430: Number of 0's minus number of 1's among the edge truncated binary representations of the first n prime numbers.

The programs for A308430, the canonical program `A308430.P10162572136234299228` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308430 has offset 1).

The definition of A308430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308430.P10162572136234299228

`∑[A037861(A130290(n+1))+1]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308430

/-- `∑[A037861(A130290(n+1))+1]` -/
def P10162572136234299228.Spec : Prop :=
  ∀ n, P10162572136234299228.a n = A308430 (n + 1)

theorem P10162572136234299228.correct : P10162572136234299228.Spec := by
  intro n
  simp only [A308430, Nat.add_sub_cancel]

end A308430

/-! ## A308430.P5375227881161420500

`∑[A037861(A000040(n+1)-1)]+1`
-/

namespace A308430.P5375227881161420500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308430.P5375227881161420500

namespace A308430

/-- `∑[A037861(A000040(n+1)-1)]+1` -/
def P5375227881161420500.Spec : Prop :=
  ∀ n, P5375227881161420500.a n = A308430 (n + 1)

end A308430

/-! ## A308430.P2142775129269491883

`∑[A037861(eq[1, A001222(n+1)])]+1`
-/

namespace A308430.P2142775129269491883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308430.P2142775129269491883

namespace A308430

/-- `∑[A037861(eq[1, A001222(n+1)])]+1` -/
def P2142775129269491883.Spec : Prop :=
  ∀ n, P2142775129269491883.a n = A308430 (n + 1)

end A308430

/-! ## A308430.P10864929767515724346

`∑[A037861(eq[n, A000010(n+1)])]+1`
-/

namespace A308430.P10864929767515724346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A308430.P10864929767515724346

namespace A308430

/-- `∑[A037861(eq[n, A000010(n+1)])]+1` -/
def P10864929767515724346.Spec : Prop :=
  ∀ n, P10864929767515724346.a n = A308430 (n + 1)

end A308430

/-! ## A308430.P3234074195254608761

`∑[A037861(A000010(A100484(n+1)))]`
-/

namespace A308430.P3234074195254608761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A000010 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308430.P3234074195254608761

namespace A308430

/-- `∑[A037861(A000010(A100484(n+1)))]` -/
def P3234074195254608761.Spec : Prop :=
  ∀ n, P3234074195254608761.a n = A308430 (n + 1)

end A308430

/-! ## A308430.P3314421246167865293

`∑[A037861(A005843(A130290(n+1)))]`
-/

namespace A308430.P3314421246167865293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A005843 (A130290 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308430.P3314421246167865293

namespace A308430

/-- `∑[A037861(A005843(A130290(n+1)))]` -/
def P3314421246167865293.Spec : Prop :=
  ∀ n, P3314421246167865293.a n = A308430 (n + 1)

end A308430

/-! ## A308430.P9984325212575160556

`∑[A158388(n)+A037861(A100484(n+1))]`
-/

namespace A308430.P9984325212575160556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A037861 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308430.P9984325212575160556

namespace A308430

/-- `∑[A158388(n)+A037861(A100484(n+1))]` -/
def P9984325212575160556.Spec : Prop :=
  ∀ n, P9984325212575160556.a n = A308430 (n + 1)

end A308430

/-!
# A308432: Given n cards in a stack numbered from 1 to n with 1 at the top, repeat the following process: first remove the card that is in the middle (at position (size of the stack)/2, rounding up), then move the card that is at the bottom of the stack to the top. This process is repeated until there is only one card left. a(n) is the number of the last remaining card.

The programs for A308432, there is no canonical definition to state claims against.
-/

/-! ## A308432.P1853400299073548348

`2-A334473(n+1)+n`
-/

namespace A308432.P1853400299073548348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A334473 (n + 1) + (n : ℤ)

end

end A308432.P1853400299073548348

/-! ## A308432.P10436681739753938763

`A237448(∑[n]+a(n-1))` with `a(0)=1`
-/

namespace A308432.P10436681739753938763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237448 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1)).toNat

end

end A308432.P10436681739753938763

/-! ## A308432.P5950778945764480679

`A004736(A334473(n+1)+∑[n])`
-/

namespace A308432.P5950778945764480679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A334473 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A308432.P5950778945764480679

/-! ## A308432.P14764593406726208244

`2-(A334473(A008611(3*n))-n)`
-/

namespace A308432.P14764593406726208244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A334473 (A008611 (3 * n)).toNat - (n : ℤ))

end

end A308432.P14764593406726208244

/-! ## A308432.P12637791252540753857

`((n+1)*A334473(n+1))%A020725(n+1)`
-/

namespace A308432.P12637791252540753857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A334473 (n + 1)) (A020725 (n + 1))

end

end A308432.P12637791252540753857

/-! ## A308432.P16587615400618280718

`(A000027(n+1)*A334473(n+1))%(n+2)`
-/

namespace A308432.P16587615400618280718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) * A334473 (n + 1)) (n + 2 : ℤ)

end

end A308432.P16587615400618280718

/-! ## A308432.P1959757752934786302

`A025581(A334473(n+1)+A000096(n))`
-/

namespace A308432.P1959757752934786302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A334473 (n + 1) + A000096 n).toNat

end

end A308432.P1959757752934786302

/-! ## A308432.P2114181966373841496

`A024000(A334473(n+1))+A000027(n+1)`
-/

namespace A308432.P2114181966373841496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A334473 (n + 1)).toNat + A000027 (n + 1)

end

end A308432.P2114181966373841496

/-! ## A308432.P4809345657431221488

`A024000(A334473(n+1))+(n+1)%A000040(n+1)`
-/

namespace A308432.P4809345657431221488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A334473 (n + 1)).toNat + Int.tmod (n + 1 : ℤ) (A000040 (n + 1))

end

end A308432.P4809345657431221488

/-!
# A308433: G.f.: x * (d/dx) x * Product_{k>=1} (1 + x^k)^(a(k)/k).

The programs for A308433, there is no canonical definition to state claims against.
-/

/-! ## A308433.P5139556351256179526

`(n+1)*Δ[A196118(n)]`
-/

namespace A308433.P5139556351256179526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A308433.P5139556351256179526

/-! ## A308433.P12497892722631661607

`∑[abs(Δ[n*A004111(n)])]`
-/

namespace A308433.P12497892722631661607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308433.P12497892722631661607

/-! ## A308433.P14828530929682594574

`(n+1)*A004111(n+1)`
-/

namespace A308433.P14828530929682594574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004111 (n + 1)

end

end A308433.P14828530929682594574

/-! ## A308433.P14190504504178993243

`record[A004111(A008611(n))*A008611(n)]`
-/

namespace A308433.P14190504504178993243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A008611 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308433.P14190504504178993243

/-! ## A308433.P17173242070268317415

`(n+1)*A316074(∑[n]+1)`
-/

namespace A308433.P17173242070268317415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308433.P17173242070268317415

/-! ## A308433.P11875226509151261523

`(n+1)*A214568(∑[n+1])`
-/

namespace A308433.P11875226509151261523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A214568 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308433.P11875226509151261523

/-!
# A308434: a(n) = n! + n!!.

The programs for A308434, there is no canonical definition to state claims against.
-/

/-! ## A308434.P15243617175061036917

`∏[n/a(n-1)]+n!` with `a(0)=1`
-/

namespace A308434.P15243617175061036917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial n : ℚ)

end

end A308434.P15243617175061036917

/-! ## A308434.P17330743737707188028

`A006882(n)+n!`
-/

namespace A308434.P17330743737707188028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n + (Nat.factorial n : ℤ)

end

end A308434.P17330743737707188028

/-! ## A308434.P6349657062270760734

`A275540(n)+1+n`
-/

namespace A308434.P6349657062270760734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275540 n + 1 + (n : ℤ)

end

end A308434.P6349657062270760734

/-! ## A308434.P10071920486471468844

`A230698(∑[n])+n!`
-/

namespace A308434.P10071920486471468844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f1 j) + (Nat.factorial n : ℤ)

end

end A308434.P10071920486471468844

/-! ## A308434.P15086676918855377309

`n!+A128882(n)+1`
-/

namespace A308434.P15086676918855377309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (A128882 n + 1)

end

end A308434.P15086676918855377309

/-! ## A308434.P16136399824280870116

`A006882(n)+A000142(n)`
-/

namespace A308434.P16136399824280870116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n + A000142 n

end

end A308434.P16136399824280870116

/-! ## A308434.P7990772943402355234

`A006882(n)+A110903(n)+A006882(n)`
-/

namespace A308434.P7990772943402355234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n + (A110903 n + A006882 n)

end

end A308434.P7990772943402355234

/-! ## A308434.P3961053164700207366

`A000142(n)+A000142(n)-A110903(n)`
-/

namespace A308434.P3961053164700207366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000142 n - A110903 n)

end

end A308434.P3961053164700207366

/-! ## A308434.P3236220597491562889

`A000142(n)+A293656(n+1)/A000217(n+1)`
-/

namespace A308434.P3236220597491562889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) + (A293656 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A308434.P3236220597491562889

/-! ## A308434.P14935521901443597145

`A275539(n+1)/(n+1)`
-/

namespace A308434.P14935521901443597145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275539 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308434.P14935521901443597145

/-!
# A308435: Peak- and valleyless Motzkin meanders.

The programs for A308435, there is no canonical definition to state claims against.
-/

/-! ## A308435.P1553867019330951573

`(A136029(n+2)+A136029(n))/2`
-/

namespace A308435.P1553867019330951573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136029 (n + 2) + A136029 n : ℚ) / 2

end

end A308435.P1553867019330951573

/-! ## A308435.P11745356017804870045

`(A113281(n+2)-A113281(n))/2`
-/

namespace A308435.P11745356017804870045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113281 (n + 2) - A113281 n : ℚ) / 2

end

end A308435.P11745356017804870045

/-! ## A308435.P4307845216742081225

`(∑[A191652(n+1)]+2)%A191605(n+1)`
-/

namespace A308435.P4307845216742081225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 2) (A191605 (n + 1))

end

end A308435.P4307845216742081225

/-! ## A308435.P1489679061874137241

`A014682(A136029(n+2)+A136029(n))`
-/

namespace A308435.P1489679061874137241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A136029 (n + 2) + A136029 n).toNat

end

end A308435.P1489679061874137241

/-! ## A308435.P8113739226655888879

`A004525(A136029(n+2)+A136029(n))`
-/

namespace A308435.P8113739226655888879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A136029 (n + 2) + A136029 n).toNat

end

end A308435.P8113739226655888879

/-!
# A308436: Expansion of 1/((1-2*x)*(1-4*x)*(1-8*x)*(1-16*x)*(1-32*x)).

The programs for A308436, there is no canonical definition to state claims against.
-/

/-! ## A308436.P14164345820213463229

`∑[A028258(n)]*A000079(n)`
-/

namespace A308436.P14164345820213463229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A308436.P14164345820213463229

/-! ## A308436.P15570053621511596461

`A000079(n)*A006097(n+4)`
-/

namespace A308436.P15570053621511596461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006097 (n + 4)

end

end A308436.P15570053621511596461

/-! ## A308436.P17650830423584416609

`∑[A011782(n)]*∑[A028258(n)]`
-/

namespace A308436.P17650830423584416609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A308436.P17650830423584416609

/-! ## A308436.P8768698728066073468

`∑[A028258(n)]*Δ[A000051(n)]`
-/

namespace A308436.P8768698728066073468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A308436.P8768698728066073468

/-! ## A308436.P10897261168205726996

`∑[A011782(n)]*A006097(n+4)`
-/

namespace A308436.P10897261168205726996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A006097 (n + 4)

end

end A308436.P10897261168205726996

/-! ## A308436.P5492468024524996256

`Δ[A000051(n)]*A006097(n+4)`
-/

namespace A308436.P5492468024524996256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006097 (n + 4)

end

end A308436.P5492468024524996256

/-! ## A308436.P2461275651732751638

`Δ[A000225(n)]*A006097(n+4)`
-/

namespace A308436.P2461275651732751638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006097 (n + 4)

end

end A308436.P2461275651732751638

/-! ## A308436.P14190611028122383919

`Δ[A000918(n)]*A006097(n+4)`
-/

namespace A308436.P14190611028122383919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006097 (n + 4)

end

end A308436.P14190611028122383919

/-! ## A308436.P50443923715952413

`A006097(n+4)*A011782(n+1)`
-/

namespace A308436.P50443923715952413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006097 (n + 4) * A011782 (n + 1)

end

end A308436.P50443923715952413

/-! ## A308436.P8221386025927844203

`A006097(n+4)*A016116(2*n)`
-/

namespace A308436.P8221386025927844203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006097 (n + 4) * A016116 (2 * n)

end

end A308436.P8221386025927844203

/-!
# A308437: Triangle read by rows: T(n,k) = number of ways, summed over the free n-ominoes, that an n-omino with an assigned orientation can be maximally (partially) covered by k X 1 tiles.

The programs for A308437, there is no canonical definition to state claims against.
-/

/-! ## A308437.P6339318430725737978

`A351870(A059573(n+1)+char[11])`
-/

namespace A308437.P6339318430725737978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A059573 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A308437.P6339318430725737978

/-! ## A308437.P2263202163466143614

`A351870(A059573(n+1))+A085393(n+1)`
-/

namespace A308437.P2263202163466143614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A059573 (n + 1)).toNat + A085393 (n + 1)

end

end A308437.P2263202163466143614

/-! ## A308437.P440735027728483833

`A351870(A059573(n+1))+A308424(n+1)`
-/

namespace A308437.P440735027728483833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A059573 (n + 1)).toNat + A308424 (n + 1)

end

end A308437.P440735027728483833

/-! ## A308437.P14982241533722767545

`A351870(or(A059573(n+1), A174903(n+1)))`
-/

namespace A308437.P14982241533722767545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.lor (A059573 (n + 1)) (A174903 (n + 1))).toNat

end

end A308437.P14982241533722767545

/-! ## A308437.P8343535430872767304

`A351870(or(A304819(n+1)², A059573(n+1)))`
-/

namespace A308437.P8343535430872767304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.lor (A304819 (n + 1) ^ 2) (A059573 (n + 1))).toNat

end

end A308437.P8343535430872767304

/-!
# A308439: a(n) is the smallest prime factor of 1 + the product of primes indexed by the binary digits of n.

The programs for A308439, there is no canonical definition to state claims against.
-/

/-! ## A308439.P10561502006879100100

`A020639(Δ[A288570(n)]+1)`
-/

namespace A308439.P10561502006879100100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n + 1).toNat

end

end A308439.P10561502006879100100

/-! ## A308439.P6269544932538313324

`A020639(A019565(n+1)+1)`
-/

namespace A308439.P6269544932538313324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A019565 (n + 1) + 1).toNat

end

end A308439.P6269544932538313324

/-! ## A308439.P8566302919131047815

`A020639(A339809(n+1)+2)`
-/

namespace A308439.P8566302919131047815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339809 (n + 1) + 2).toNat

end

end A308439.P8566302919131047815

/-! ## A308439.P18063965865857781489

`A020639(sqrt(A334110(n+1))+1)`
-/

namespace A308439.P18063965865857781489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A334110 (n + 1) : ℝ) + 1)).toNat

end

end A308439.P18063965865857781489

/-! ## A308439.P9621979105305411504

`A020639(xor(1, A019565(A141310(n))))`
-/

namespace A308439.P9621979105305411504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor 1 (A019565 (A141310 n).toNat)).toNat

end

end A308439.P9621979105305411504

/-! ## A308439.P10490345100797249495

`A020639(A141310(A019565(n+1)))`
-/

namespace A308439.P10490345100797249495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141310 (A019565 (n + 1)).toNat).toNat

end

end A308439.P10490345100797249495

/-!
# A308440: Matrix product of triangle of Stirling numbers of second kind A008277 and square of unsigned Lah triangle A105278.

The programs for A308440, there is no canonical definition to state claims against.
-/

/-! ## A308440.P7859384395501290655

`and(A029471(A093563(n)), A099035(n+1))`
-/

namespace A308440.P7859384395501290655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029471 (A093563 n).toNat) (A099035 (n + 1))

end

end A308440.P7859384395501290655

/-!
# A308441: a(n) = (1/n!) * Sum_{i=n..n^2} b(i) where Sum_{i=n..n^2} b(i) * x^i/i! = (Sum_{i=1..n} binomial(n-1,i-1)*x^i/i!)^n.

The programs for A308441, there is no canonical definition to state claims against.
-/

/-! ## A308441.P17696980930535949052

`A181731(2*n²+1)/n!`
-/

namespace A308441.P17696980930535949052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181731 (2 * n ^ 2 + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A308441.P17696980930535949052

/-! ## A308441.P9228465100945505794

`A246623(n)/n!`
-/

namespace A308441.P9228465100945505794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246623 n : ℚ) / (Nat.factorial n : ℚ)

end

end A308441.P9228465100945505794

/-! ## A308441.P16099053266056878187

`A246623(n)/A000142(n)`
-/

namespace A308441.P16099053266056878187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246623 n : ℚ) / (A000142 n : ℚ)

end

end A308441.P16099053266056878187

/-!
# A308442: Primes of the form (p^k+1)/2 where p is prime and k > 1.

The programs for A308442, the canonical program `A308442.P6666424184122599892` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308442 has offset 1).

The definition of A308442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308442.P6666424184122599892

`ceil(A192618(n+1)/2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A308442

/-- `ceil(A192618(n+1)/2)` -/
def P6666424184122599892.Spec : Prop :=
  ∀ n, P6666424184122599892.a n = A308442 (n + 1)

theorem P6666424184122599892.correct : P6666424184122599892.Spec := by
  intro n
  simp only [A308442, Nat.add_sub_cancel]

end A308442

/-! ## A308442.P451216274058855404

`(A192618(n+1)+A057077(n)²)/2`
-/

namespace A308442.P451216274058855404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192618 (n + 1) + A057077 n ^ 2 : ℚ) / 2

end

end A308442.P451216274058855404

namespace A308442

/-- `(A192618(n+1)+A057077(n)²)/2` -/
def P451216274058855404.Spec : Prop :=
  ∀ n, P451216274058855404.a n = (A308442 (n + 1) : ℚ)

end A308442

/-! ## A308442.P16770482824001403791

`(A192618(A005843(n)/2+1)+1)/2`
-/

namespace A308442.P16770482824001403791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192618 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2 + 1)).toNat + 1 : ℚ) / 2

end

end A308442.P16770482824001403791

namespace A308442

/-- `(A192618(A005843(n)/2+1)+1)/2` -/
def P16770482824001403791.Spec : Prop :=
  ∀ n, P16770482824001403791.a n = (A308442 (n + 1) : ℚ)

end A308442

/-! ## A308442.P16239178050904490778

`round(A192618(n+1)/2*A057427(n+1))`
-/

namespace A308442.P16239178050904490778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A192618 (n + 1) : ℚ) / 2 * (A057427 (n + 1) : ℚ))

end

end A308442.P16239178050904490778

namespace A308442

/-- `round(A192618(n+1)/2*A057427(n+1))` -/
def P16239178050904490778.Spec : Prop :=
  ∀ n, P16239178050904490778.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P6158660414355426765

`round(A192618(n+1)/2*A000034(2*n))`
-/

namespace A308442.P6158660414355426765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A192618 (n + 1) : ℚ) / 2 * (A000034 (2 * n) : ℚ))

end

end A308442.P6158660414355426765

namespace A308442

/-- `round(A192618(n+1)/2*A000034(2*n))` -/
def P6158660414355426765.Spec : Prop :=
  ∀ n, P6158660414355426765.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P6929840808906151523

`A125256(sqrt(A192618(n+1)))`
-/

namespace A308442.P6929840808906151523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (SequenceMachineLib.roundAway (Real.sqrt (A192618 (n + 1) : ℝ))).toNat

end

end A308442.P6929840808906151523

namespace A308442

/-- `A125256(sqrt(A192618(n+1)))` -/
def P6929840808906151523.Spec : Prop :=
  ∀ n, P6929840808906151523.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P10980683604518088971

`A000982(sqrt(A192618(n+1)))`
-/

namespace A308442.P10980683604518088971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.roundAway (Real.sqrt (A192618 (n + 1) : ℝ))).toNat

end

end A308442.P10980683604518088971

namespace A308442

/-- `A000982(sqrt(A192618(n+1)))` -/
def P10980683604518088971.Spec : Prop :=
  ∀ n, P10980683604518088971.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P6341807447332076469

`A014442(sqrt(A192618(n+1)))`
-/

namespace A308442.P6341807447332076469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (SequenceMachineLib.roundAway (Real.sqrt (A192618 (n + 1) : ℝ))).toNat

end

end A308442.P6341807447332076469

namespace A308442

/-- `A014442(sqrt(A192618(n+1)))` -/
def P6341807447332076469.Spec : Prop :=
  ∀ n, P6341807447332076469.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P7224958299802240146

`A104563(sqrt(A192618(n+1)))`
-/

namespace A308442.P7224958299802240146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (SequenceMachineLib.roundAway (Real.sqrt (A192618 (n + 1) : ℝ))).toNat

end

end A308442.P7224958299802240146

namespace A308442

/-- `A104563(sqrt(A192618(n+1)))` -/
def P7224958299802240146.Spec : Prop :=
  ∀ n, P7224958299802240146.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P3722270755368028659

`record[A014442(or(1, A050376(n+1)))]`
-/

namespace A308442.P3722270755368028659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (Int.lor 1 (A050376 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308442.P3722270755368028659

namespace A308442

/-- `record[A014442(or(1, A050376(n+1)))]` -/
def P3722270755368028659.Spec : Prop :=
  ∀ n, P3722270755368028659.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P11386845037844906835

`record[A014442(A034699(A016825(n)))]`
-/

namespace A308442.P11386845037844906835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A034699 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308442.P11386845037844906835

namespace A308442

/-- `record[A014442(A034699(A016825(n)))]` -/
def P11386845037844906835.Spec : Prop :=
  ∀ n, P11386845037844906835.a n = A308442 (n + 1)

end A308442

/-! ## A308442.P11422520817283334633

`A000982(record[A141258(A002731(n+1))])`
-/

namespace A308442.P11422520817283334633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (A002731 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308442.P11422520817283334633

namespace A308442

/-- `A000982(record[A141258(A002731(n+1))])` -/
def P11422520817283334633.Spec : Prop :=
  ∀ n, P11422520817283334633.a n = A308442 (n + 1)

end A308442

/-!
# A308443: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^k)^(psi(k)/k), where psi() is the Dedekind psi function (A001615).

The programs for A308443, there is no canonical definition to state claims against.
-/

/-! ## A308443.P5265474581472054469

`A035341(n)-A316659(A189565(n))`
-/

namespace A308443.P5265474581472054469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035341 n - A316659 (A189565 n).toNat

end

end A308443.P5265474581472054469

/-! ## A308443.P12448999438134314265

`A328447(A213507(n))+A038205(n+1)`
-/

namespace A308443.P12448999438134314265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A213507 n).toNat + A038205 (n + 1)

end

end A308443.P12448999438134314265

/-!
# A308444: a(0) = 1; a(n) = Sum_{k=1..n} Stirling2(n,k)*a(n-k).

The programs for A308444, there is no canonical definition to state claims against.
-/

/-! ## A308444.P10502295811544340302

`A357452(2^n-1)`
-/

namespace A308444.P10502295811544340302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357452 (2 ^ n - 1)

end

end A308444.P10502295811544340302

/-! ## A308444.P2903173113182635717

`A266196(n*a(n-1))` with `a(0)=1`
-/

namespace A308444.P2903173113182635717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266196 ((n : ℤ) * a (n - 1)).toNat

end

end A308444.P2903173113182635717

/-!
# A308445: a(0) = 1; a(n) = Sum_{k=1..n} gcd(n,k)*a(n-k).

The programs for A308445, there is no canonical definition to state claims against.
-/

/-! ## A308445.P10681761852230729204

`floor(sqrt(A332337(2*comp[3*n])))`
-/

namespace A308445.P10681761852230729204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A332337 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A308445.P10681761852230729204

/-! ## A308445.P1628799715257472294

`A332109(A240739(n))`
-/

namespace A308445.P1628799715257472294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332109 (A240739 (n + 10)).toNat

end

end A308445.P1628799715257472294

/-! ## A308445.P6772359342263716043

`A057506(A034836((n+1)!))`
-/

namespace A308445.P6772359342263716043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A034836 (Nat.factorial (n + 1))).toNat

end

end A308445.P6772359342263716043

/-!
# A308446: Expansion of Product_{k>=1} 1/(1 - x^k)^Fibonacci(2*k).

The programs for A308446, there is no canonical definition to state claims against.
-/

/-! ## A308446.P9667048427785220982

`A054391(n+1)-A000120(A213422(n))`
-/

namespace A308446.P9667048427785220982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054391 (n + 1) - A000120 (A213422 n).toNat

end

end A308446.P9667048427785220982

/-! ## A308446.P16247685644077038730

`A325101(ceil(exp(n-1)))`
-/

namespace A308446.P16247685644077038730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A308446.P16247685644077038730

/-!
# A308448: Expansion of Sum_{k>=1} mu(k)*log(1 + x^k/(1 - 2*x^k - x^(2*k)))/k.

The programs for A308448, there is no canonical definition to state claims against.
-/

/-! ## A308448.P17088614739967845526

`A332246(A183188(n))`
-/

namespace A308448.P17088614739967845526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A183188 n).toNat

end

end A308448.P17088614739967845526

/-! ## A308448.P10380505538242166432

`A332246(A111277(n+1))`
-/

namespace A308448.P10380505538242166432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A111277 (n + 1)).toNat

end

end A308448.P10380505538242166432

/-! ## A308448.P5672473554154904654

`A332246(∑[A003462(n)]+1)`
-/

namespace A308448.P5672473554154904654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A308448.P5672473554154904654

/-! ## A308448.P9942110203252088783

`A002024(A346634(∑[or(1, n)]))`
-/

namespace A308448.P9942110203252088783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A346634 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308448.P9942110203252088783

/-!
# A308449: Numbers k such that 25*10^(2*k) + 5*10^k + 1 are prime.

The programs for A308449, there is no canonical definition to state claims against.
-/

/-! ## A308449.P18318270778569977884

`A297421(n+1)-1`
-/

namespace A308449.P18318270778569977884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297421 (n + 1) - 1

end

end A308449.P18318270778569977884

/-!
# A308450: Number of integer-sided triangles with perimeter n whose smallest side length is prime.

The programs for A308450, there is no canonical definition to state claims against.
-/

/-! ## A308450.P14260692417933532754

`A368857(A241553(n))`
-/

namespace A308450.P14260692417933532754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368857 (A241553 n).toNat

end

end A308450.P14260692417933532754

/-!
# A308451: Number of integer-sided triangles with perimeter n whose largest side length is prime.

The programs for A308451, there is no canonical definition to state claims against.
-/

/-! ## A308451.P15010810654319539169

`A173920(xor(A000070(n), A112527(n+1)))`
-/

namespace A308451.P15010810654319539169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (Int.xor (A000070 n) (A112527 (n + 1))).toNat

end

end A308451.P15010810654319539169

/-!
# A308452: Number of integer-sided triangles with perimeter n and side lengths a, b and c such that a <= b <= c, and b is prime.

The programs for A308452, there is no canonical definition to state claims against.
-/

/-! ## A308452.P14292099969046110728

`A001221(or(A233543(n), A284841(n+1)))`
-/

namespace A308452.P14292099969046110728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A233543 n) (A284841 (n + 1))).toNat

end

end A308452.P14292099969046110728

/-! ## A308452.P11304282403022023505

`A001221(or(A245851(n+1), A284841(n+1)))`
-/

namespace A308452.P11304282403022023505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A245851 (n + 1)) (A284841 (n + 1))).toNat

end

end A308452.P11304282403022023505

/-! ## A308452.P5012144534520693100

`A247973(A047461(n+1))-A186513(A005408(n))`
-/

namespace A308452.P5012144534520693100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A047461 (n + 1)).toNat - A186513 (A005408 n).toNat

end

end A308452.P5012144534520693100

/-! ## A308452.P12417412308584533334

`A037801(A317306(n+2))`
-/

namespace A308452.P12417412308584533334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (A317306 (n + 2)).toNat

end

end A308452.P12417412308584533334

/-! ## A308452.P14632078404639941495

`A333766(A026814(n+4))`
-/

namespace A308452.P14632078404639941495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A026814 (n + 4)).toNat

end

end A308452.P14632078404639941495

/-!
# A308453: Number of integer-sided triangles with perimeter n whose smallest side length is squarefree.

The programs for A308453, there is no canonical definition to state claims against.
-/

/-! ## A308453.P7869371865983619233

`floor(∑{e}[A322284(n+1), #]/3)`
-/

namespace A308453.P7869371865983619233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋

end

end A308453.P7869371865983619233

/-! ## A308453.P15746818434627524020

`A002264(∑{e}[A322284(n+1), #])`
-/

namespace A308453.P15746818434627524020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A308453.P15746818434627524020

/-! ## A308453.P2749399784811797394

`A056924(A000190(A068911(n)))`
-/

namespace A308453.P2749399784811797394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A000190 (A068911 n).toNat).toNat

end

end A308453.P2749399784811797394

/-! ## A308453.P12574771179241124646

`A308450(n+1)+A178226(A000975(n))`
-/

namespace A308453.P12574771179241124646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308450 (n + 1) + A178226 (A000975 n).toNat

end

end A308453.P12574771179241124646

/-! ## A308453.P16852598150764812967

`round(A367286(A279083(n+1)+2)/11)`
-/

namespace A308453.P16852598150764812967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A367286 (A279083 (n + 1) + 2).toNat : ℚ) / 11)

end

end A308453.P16852598150764812967

/-!
# A308454: Number of integer-sided triangles with perimeter n whose largest side length is squarefree.

The programs for A308454, there is no canonical definition to state claims against.
-/

/-! ## A308454.P11132477972781058520

`A039900(n)%A243109(A187829(n+1))`
-/

namespace A308454.P11132477972781058520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039900 n) (A243109 (A187829 (n + 1)).toNat)

end

end A308454.P11132477972781058520

/-! ## A308454.P11001603729277407707

`A288598(A288591(n))%(comp[∑[n]]-n)`
-/

namespace A308454.P11001603729277407707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288598 (A288591 n).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A308454.P11001603729277407707

/-! ## A308454.P708194704670288472

`A327969(A342921(n)%A328475(n))`
-/

namespace A308454.P708194704670288472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327969 (Int.tmod (A342921 n) (A328475 n)).toNat

end

end A308454.P708194704670288472

/-! ## A308454.P16721755423936165404

`A253559(xor(6, A001580(n)))`
-/

namespace A308454.P16721755423936165404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (Int.xor 6 (A001580 n)).toNat

end

end A308454.P16721755423936165404

/-! ## A308454.P772300578893538112

`A341023(A270613(n+3)-A318582(n))`
-/

namespace A308454.P772300578893538112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 ((A270613 (n + 3) - A318582 n).toNat + 56)

end

end A308454.P772300578893538112

/-!
# A308455: Number of integer-sided triangles with perimeter n and side lengths a, b and c such that a <= b <= c, and b is squarefree.

The programs for A308455, there is no canonical definition to state claims against.
-/

/-! ## A308455.P15784786770678762726

`A185316(n)-A296079(A279510(n+1))`
-/

namespace A308455.P15784786770678762726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n - A296079 (A279510 (n + 1)).toNat

end

end A308455.P15784786770678762726

/-! ## A308455.P4417564395017404931

`A307598(A247632(2*n+3)-A067586(n))`
-/

namespace A308455.P4417564395017404931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A247632 (2 * n + 3) - A067586 n).toNat

end

end A308455.P4417564395017404931

/-! ## A308455.P9968147493237325258

`A087436(∑[2*(a(n-1)+3)])` with `a(0)=1, a(1)=1`
-/

namespace A308455.P9968147493237325258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308455.P9968147493237325258

/-! ## A308455.P11006471207880056593

`A087436(A131068(n))`
-/

namespace A308455.P11006471207880056593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A131068 n).toNat

end

end A308455.P11006471207880056593

/-! ## A308455.P13487387316699004779

`A033264(A199660(n))`
-/

namespace A308455.P13487387316699004779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A199660 n).toNat

end

end A308455.P13487387316699004779

/-!
# A308457: Expansion of e.g.f. (1/(1 - x)) * Product_{k>=2} 1/(1 - x^k)^(phi(k)/2), where phi() is the Euler totient function (A000010).

The programs for A308457, there is no canonical definition to state claims against.
-/

/-! ## A308457.P7283900247645286255

`or(n!, A219642(n^n))`
-/

namespace A308457.P7283900247645286255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial n : ℤ) (A219642 (n ^ n))

end

end A308457.P7283900247645286255

/-! ## A308457.P7483728630171516007

`A003967(A000792(n²))`
-/

namespace A308457.P7483728630171516007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A000792 (n ^ 2)).toNat

end

end A308457.P7483728630171516007

/-!
# A308460: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. log(Sum_{j>=0} k^binomial(j,2) * x^j/j!).

The programs for A308460, there is no canonical definition to state claims against.
-/

/-! ## A308460.P520367978462157392

`A004271(A351761(n)%A062572(n+1))`
-/

namespace A308460.P520367978462157392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (Int.tmod (A351761 n) (A062572 (n + 1))).toNat

end

end A308460.P520367978462157392

/-! ## A308460.P1418208357608984896

`A330147(A394901(n))`
-/

namespace A308460.P1418208357608984896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330147 (A394901 n).toNat

end

end A308460.P1418208357608984896

/-! ## A308460.P15575327444939429381

`A375126(A384987(n))`
-/

namespace A308460.P15575327444939429381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A384987 n).toNat

end

end A308460.P15575327444939429381

/-! ## A308460.P4472253123168798794

`A106452(A396995(n+1))`
-/

namespace A308460.P4472253123168798794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106452 (A396995 (n + 1)).toNat

end

end A308460.P4472253123168798794

/-! ## A308460.P12595736243815570145

`A000005(a(n-1)!)*A144064(n)` with `a(0)=1`
-/

namespace A308460.P12595736243815570145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (Nat.factorial (a (n - 1)).toNat) * A144064 n

end

end A308460.P12595736243815570145

/-!
# A308462: Expansion of e.g.f. exp(Sum_{k>=1} psi(k)*x^k/k), where psi() is the Dedekind psi function (A001615).

The programs for A308462, there is no canonical definition to state claims against.
-/

/-! ## A308462.P7329760215312512366

`A187793(A294469(n)-A048993(2*n+1))`
-/

namespace A308462.P7329760215312512366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187793 (A294469 n - A048993 (2 * n + 1)).toNat

end

end A308462.P7329760215312512366

/-!
# A308464: Squarefree numbers of the form m^2 + 4.

The programs for A308464, there is no canonical definition to state claims against.
-/

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

/-! ## A308464.P15094189244936372523

`record[A259912(2*n+1)]`
-/

namespace A308464.P15094189244936372523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259912 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P15094189244936372523

/-! ## A308464.P6360871572736421196

`record[A259912(n+1)/A000034(n)]`
-/

namespace A308464.P6360871572736421196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259912 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P6360871572736421196

/-! ## A308464.P14259912649552280062

`record[gcd(A117717(n+1), A259912(n+1))]`
-/

namespace A308464.P14259912649552280062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117717 (n + 1)) (A259912 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P14259912649552280062

/-! ## A308464.P5915722936863401131

`record[∏{p}[(n+1)²+4, #]]`
-/

namespace A308464.P5915722936863401131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P5915722936863401131

/-! ## A308464.P9060743664409820636

`∩[A003653(n+1), A078370(n)]`
-/

namespace A308464.P9060743664409820636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308464.P9060743664409820636

/-! ## A308464.P17177970266175949942

`∩[A231754(n+1), A078370(n)]`
-/

namespace A308464.P17177970266175949942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308464.P17177970266175949942

/-! ## A308464.P2206494683443189498

`∩[A231754(n+1), A087475(n)]`
-/

namespace A308464.P2206494683443189498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308464.P2206494683443189498

/-! ## A308464.P5114231827307539565

`record[A007913((n+1)²+4)]`
-/

namespace A308464.P5114231827307539565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2 + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P5114231827307539565

/-! ## A308464.P15511799089007514127

`record[A007947((n+1)²+4)]`
-/

namespace A308464.P15511799089007514127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((n + 1) ^ 2 + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308464.P15511799089007514127

/-! ## A308464.P2500953695440409762

`filter[A078370(n), A008966(#)]`
-/

namespace A308464.P2500953695440409762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A308464.P2500953695440409762

/-! ## A308464.P575238194176333121

`filter[A087475(n), A008966(#)]`
-/

namespace A308464.P575238194176333121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A308464.P575238194176333121

/-! ## A308464.P9593536822834726979

`filter[A078370(n), A359377(#)]`
-/

namespace A308464.P9593536822834726979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A308464.P9593536822834726979

/-! ## A308464.P10443409672937172480

`filter[A078370(n), A359590(#)]`
-/

namespace A308464.P10443409672937172480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A308464.P10443409672937172480

/-! ## A308464.P10664050433175736491

`filter[A078370(n), A359592(#)]`
-/

namespace A308464.P10664050433175736491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A308464.P10664050433175736491

/-! ## A308464.P4107449790494160666

`filter[A078370(n), A359834(#)]`
-/

namespace A308464.P4107449790494160666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A308464.P4107449790494160666

/-! ## A308464.P1033454734324065263

`filter[A087475(n), A359377(#)]`
-/

namespace A308464.P1033454734324065263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A308464.P1033454734324065263

/-! ## A308464.P4888761792014343054

`filter[A078370(n), A373154(#)]`
-/

namespace A308464.P4888761792014343054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A308464.P4888761792014343054

/-! ## A308464.P4577208834812419159

`filter[A087475(n), A373154(#)]`
-/

namespace A308464.P4577208834812419159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A308464.P4577208834812419159

/-! ## A308464.P13144960749515698316

`filter[A243883(2*n+1), A008966(#)]`
-/

namespace A308464.P13144960749515698316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A308464.P13144960749515698316

/-!
# A308467: The smallest positive n-digit 4th power.

The programs for A308467, the canonical program `A308467.P614339597926025515` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308467 has offset 1).

The definition of A308467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308467.P7652503042713339015

`ceil(10^(n/4))^4`
-/

namespace A308467.P7652503042713339015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ ^ 4

end

end A308467.P7652503042713339015

namespace A308467

/-- `ceil(10^(n/4))^4` -/
def P7652503042713339015.Spec : Prop :=
  ∀ n, P7652503042713339015.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P614339597926025515

`A018074(n)²²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308467

/-- `A018074(n)²²` -/
def P614339597926025515.Spec : Prop :=
  ∀ n, P614339597926025515.a n = A308467 (n + 1)

theorem P614339597926025515.correct : P614339597926025515.Spec := by
  intro n
  simp only [A308467, Nat.add_sub_cancel]

end A308467

/-! ## A308467.P14655433047545267196

`ceil(sqrt(A017934(n)))²²`
-/

namespace A308467.P14655433047545267196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A017934 n : ℝ)⌉ ^ 2) ^ 2

end

end A308467.P14655433047545267196

namespace A308467

/-- `ceil(sqrt(A017934(n)))²²` -/
def P14655433047545267196.Spec : Prop :=
  ∀ n, P14655433047545267196.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P10492331880841697595

`A130082(Δ[n²])²²`
-/

namespace A308467.P10492331880841697595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A308467.P10492331880841697595

namespace A308467

/-- `A130082(Δ[n²])²²` -/
def P10492331880841697595.Spec : Prop :=
  ∀ n, P10492331880841697595.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P17158787364713037675

`ceil(sqrt(sqrt(A011557(n))))²²`
-/

namespace A308467.P17158787364713037675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (Real.sqrt (A011557 n : ℝ))⌉ ^ 2) ^ 2

end

end A308467.P17158787364713037675

namespace A308467

/-- `ceil(sqrt(sqrt(A011557(n))))²²` -/
def P17158787364713037675.Spec : Prop :=
  ∀ n, P17158787364713037675.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P16584512442102480996

`ceil(sqrt(sqrt(A155615(n))))²²`
-/

namespace A308467.P16584512442102480996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (Real.sqrt (A155615 n : ℝ))⌉ ^ 2) ^ 2

end

end A308467.P16584512442102480996

namespace A308467

/-- `ceil(sqrt(sqrt(A155615(n))))²²` -/
def P16584512442102480996.Spec : Prop :=
  ∀ n, P16584512442102480996.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P6914430045525462140

`ceil(sqrt(A017936(n+1)))²²`
-/

namespace A308467.P6914430045525462140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A017936 (n + 1) : ℝ)⌉ ^ 2) ^ 2

end

end A308467.P6914430045525462140

namespace A308467

/-- `ceil(sqrt(A017936(n+1)))²²` -/
def P6914430045525462140.Spec : Prop :=
  ∀ n, P6914430045525462140.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P6741922195303877419

`record[A130082(n+1)^((n+1)%2)]²²`
-/

namespace A308467.P6741922195303877419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ^ 2

end

end A308467.P6741922195303877419

namespace A308467

/-- `record[A130082(n+1)^((n+1)%2)]²²` -/
def P6741922195303877419.Spec : Prop :=
  ∀ n, P6741922195303877419.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P3745892624455805004

`record[A130082(abs(A009001(n)))^4]`
-/

namespace A308467.P3745892624455805004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 |A009001 n|.toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308467.P3745892624455805004

namespace A308467

/-- `record[A130082(abs(A009001(n)))^4]` -/
def P3745892624455805004.Spec : Prop :=
  ∀ n, P3745892624455805004.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P4305437778924013230

`(A166486(n)+A018072(n))²²`
-/

namespace A308467.P4305437778924013230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A166486 n + A018072 n) ^ 2) ^ 2

end

end A308467.P4305437778924013230

namespace A308467

/-- `(A166486(n)+A018072(n))²²` -/
def P4305437778924013230.Spec : Prop :=
  ∀ n, P4305437778924013230.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P5101360931372194156

`record[A130082(A026741(n+1))²²]`
-/

namespace A308467.P5101360931372194156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130082 (A026741 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308467.P5101360931372194156

namespace A308467

/-- `record[A130082(A026741(n+1))²²]` -/
def P5101360931372194156.Spec : Prop :=
  ∀ n, P5101360931372194156.a n = A308467 (n + 1)

end A308467

/-! ## A308467.P13162931095663503974

`record[(A130082(n+1)/A000034(n))²²]`
-/

namespace A308467.P13162931095663503974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A130082 (n + 1) : ℚ) / (A000034 n : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308467.P13162931095663503974

namespace A308467

/-- `record[(A130082(n+1)/A000034(n))²²]` -/
def P13162931095663503974.Spec : Prop :=
  ∀ n, P13162931095663503974.a n = (A308467 (n + 1) : ℚ)

end A308467

/-! ## A308467.P16121155992398910383

`record[(A130082(n+1)/A009001(n))²²]`
-/

namespace A308467.P16121155992398910383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A130082 (n + 1) : ℚ) / (A009001 n : ℚ)) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308467.P16121155992398910383

namespace A308467

/-- `record[(A130082(n+1)/A009001(n))²²]` -/
def P16121155992398910383.Spec : Prop :=
  ∀ n, P16121155992398910383.a n = (A308467 (n + 1) : ℚ)

end A308467

/-!
# A308468: "Trapezoidal numbers": numbers k such that the integers from 1 to k can be arranged in a trapezoid of H lines containing respectively L, L-1, L-2, ..., L-H+1 numbers from top to bottom. The rule is that from the second line, each integer is equal to the absolute value of the difference between the two numbers above it.

The programs for A308468, there is no canonical definition to state claims against.
-/

/-! ## A308468.P18173435670307821867

`lt[A079124(n), A282892(n)]`
-/

namespace A308468.P18173435670307821867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308468.P18173435670307821867

/-! ## A308468.P12512706520235008071

`lt[A096231(A007431(2*n)), n]`
-/

namespace A308468.P12512706520235008071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (A007431 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308468.P12512706520235008071

/-! ## A308468.P610798010975585473

`lt[A007431(2*n)+1, A003056(2*n)]`
-/

namespace A308468.P610798010975585473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308468.P610798010975585473

/-! ## A308468.P3053173710714972597

`∪[2*n+5+A000051(n), A342051(n+2)]`
-/

namespace A308468.P3053173710714972597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) + A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342051 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308468.P3053173710714972597

/-! ## A308468.P897912083039201134

`lt[A085001(A007431(2*n)), A005382(n+1)]`
-/

namespace A308468.P897912083039201134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085001 (A007431 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308468.P897912083039201134

/-!
# A308469: a(1) = 1, a(2)=2, a(n) = a(n-1) + gcd(a(n-2), n-2).

The programs for A308469, the canonical program `A308469.P14779677625060742205` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308469 has offset 1).

The definition of A308469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308469.P14779677625060742205

`a(n-1)+gcd(1-n, a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A308469

/-- `a(n-1)+gcd(1-n, a(n-2))` -/
def P14779677625060742205.Spec : Prop :=
  ∀ n, (P14779677625060742205.a n : ℤ) = A308469 (n + 1)

theorem P14779677625060742205.correct : P14779677625060742205.Spec := by
  intro n
  simp only [A308469, Nat.add_sub_cancel]

end A308469

/-! ## A308469.P7362987801591136426

`lt[Δ[A347376(n+1)], A347351(3*n)]`
-/

namespace A308469.P7362987801591136426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347351 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A308469.P7362987801591136426

namespace A308469

/-- `lt[Δ[A347376(n+1)], A347351(3*n)]` -/
def P7362987801591136426.Spec : Prop :=
  ∀ n, (P7362987801591136426.a n : ℤ) = A308469 (n + 1)

end A308469

/-! ## A308469.P6136253758260515854

`∑[A354991(A354984(n+1)²)]`
-/

namespace A308469.P6136253758260515854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354991 (A354984 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308469.P6136253758260515854

namespace A308469

/-- `∑[A354991(A354984(n+1)²)]` -/
def P6136253758260515854.Spec : Prop :=
  ∀ n, P6136253758260515854.a n = A308469 (n + 1)

end A308469

/-! ## A308469.P3323366660810022370

`lt[A277198(n+2), A277216(A277173(n+1))]`
-/

namespace A308469.P3323366660810022370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277198 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277216 (A277173 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308469.P3323366660810022370

namespace A308469

/-- `lt[A277198(n+2), A277216(A277173(n+1))]` -/
def P3323366660810022370.Spec : Prop :=
  ∀ n, (P3323366660810022370.a n : ℤ) = A308469 (n + 1)

end A308469

/-!
# A308470: a(n) = (gcd(phi(n), 4*n^2 - 1) - 1)/2, where phi is A000010, Euler's totient function.

The programs for A308470, the canonical program `A308470.P9784018281340306768` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308470 has offset 1).

The definition of A308470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308470.P9784018281340306768

`A004526(gcd(A000010(n+1), A005563(2*n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308470

/-- `A004526(gcd(A000010(n+1), A005563(2*n+1)))` -/
def P9784018281340306768.Spec : Prop :=
  ∀ n, P9784018281340306768.a n = A308470 (n + 1)

theorem P9784018281340306768.correct : P9784018281340306768.Spec := by
  intro n
  simp only [A308470, Nat.add_sub_cancel]

end A308470

/-! ## A308470.P8834711131541143388

`7%A063994((2*(n+1))²)`
-/

namespace A308470.P8834711131541143388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A063994 ((2 * (n + 1)) ^ 2))

end

end A308470.P8834711131541143388

namespace A308470

/-- `7%A063994((2*(n+1))²)` -/
def P8834711131541143388.Spec : Prop :=
  ∀ n, P8834711131541143388.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P2704555122096533576

`A002865(A063994((2*(n+1))²))`
-/

namespace A308470.P2704555122096533576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A063994 ((2 * (n + 1)) ^ 2)).toNat

end

end A308470.P2704555122096533576

namespace A308470

/-- `A002865(A063994((2*(n+1))²))` -/
def P2704555122096533576.Spec : Prop :=
  ∀ n, P2704555122096533576.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P621768790725228639

`A181391(A049559((2*(n+1))²))`
-/

namespace A308470.P621768790725228639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A049559 ((2 * (n + 1)) ^ 2)).toNat

end

end A308470.P621768790725228639

namespace A308470

/-- `A181391(A049559((2*(n+1))²))` -/
def P621768790725228639.Spec : Prop :=
  ∀ n, P621768790725228639.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P9449881015777590278

`A240305(A063994((n+2+n)²))`
-/

namespace A308470.P9449881015777590278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240305 (A063994 ((n + 2 + n) ^ 2)).toNat

end

end A308470.P9449881015777590278

namespace A308470

/-- `A240305(A063994((n+2+n)²))` -/
def P9449881015777590278.Spec : Prop :=
  ∀ n, P9449881015777590278.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P3809541759155666777

`A008483(A063994((2*(n+1))²)+1)`
-/

namespace A308470.P3809541759155666777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (A063994 ((2 * (n + 1)) ^ 2) + 1).toNat

end

end A308470.P3809541759155666777

namespace A308470

/-- `A008483(A063994((2*(n+1))²)+1)` -/
def P3809541759155666777.Spec : Prop :=
  ∀ n, P3809541759155666777.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P13444691649728984841

`A142150(A063994((2*(n+1))²)-1)`
-/

namespace A308470.P13444691649728984841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A063994 ((2 * (n + 1)) ^ 2) - 1).toNat

end

end A308470.P13444691649728984841

namespace A308470

/-- `A142150(A063994((2*(n+1))²)-1)` -/
def P13444691649728984841.Spec : Prop :=
  ∀ n, P13444691649728984841.a n = A308470 (n + 1)

end A308470

/-! ## A308470.P11472981575265898029

`A324104(A049559(record[2-xor(1, -n)]²))`
-/

namespace A308470.P11472981575265898029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (A049559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2).toNat).toNat

end

end A308470.P11472981575265898029

namespace A308470

/-- `A324104(A049559(record[2-xor(1, -n)]²))` -/
def P11472981575265898029.Spec : Prop :=
  ∀ n, P11472981575265898029.a n = A308470 (n + 1)

end A308470

/-!
# A308471: Lowest outliers for A057660.

The programs for A308471, there is no canonical definition to state claims against.
-/

/-! ## A308471.P6237779102219904025

`A340816(ceil(atan(n+1))+n)`
-/

namespace A308471.P6237779102219904025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340816 (⌈Real.arctan (n + 1 : ℝ)⌉ + (n : ℤ)).toNat

end

end A308471.P6237779102219904025

/-! ## A308471.P11417921712155612915

`A340816(n+2)-floor(acot(n))`
-/

namespace A308471.P11417921712155612915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340816 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A308471.P11417921712155612915

/-! ## A308471.P15646031478020736609

`record[or(-char[1], A340816(n+1))]`
-/

namespace A308471.P15646031478020736609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (A340816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308471.P15646031478020736609

/-! ## A308471.P6789039743772172973

`A340816((n+2)^ceil(sin(n)²))`
-/

namespace A308471.P6789039743772172973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340816 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A308471.P6789039743772172973

/-! ## A308471.P11897323004860566081

`A340816(A065475(n+1))`
-/

namespace A308471.P11897323004860566081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340816 (A065475 (n + 1)).toNat

end

end A308471.P11897323004860566081

/-!
# A308473: Sum of numbers < n which have common prime factors with n.

The programs for A308473, the canonical program `A308473.P15685456513297589926` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308473 has offset 1).

The definition of A308473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308473.P15685456513297589926

`floor((A053650(n+1)-n)/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308473

/-- `floor((A053650(n+1)-n)/2)` -/
def P15685456513297589926.Spec : Prop :=
  ∀ n, P15685456513297589926.a n = A308473 (n + 1)

theorem P15685456513297589926.correct : P15685456513297589926.Spec := by
  intro n
  simp only [A308473, Nat.add_sub_cancel]

end A308473

/-! ## A308473.P12018361916390076026

`(n+1)/2*A016035(n+1)`
-/

namespace A308473.P12018361916390076026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A016035 (n + 1) : ℚ)

end

end A308473.P12018361916390076026

namespace A308473

/-- `(n+1)/2*A016035(n+1)` -/
def P12018361916390076026.Spec : Prop :=
  ∀ n, P12018361916390076026.a n = (A308473 (n + 1) : ℚ)

end A308473

/-! ## A308473.P12264168213423685372

`∑[n]-floor(A002618(n+1)/2)`
-/

namespace A308473.P12264168213423685372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(A002618 (n + 1) : ℚ) / 2⌋

end

end A308473.P12264168213423685372

namespace A308473

/-- `∑[n]-floor(A002618(n+1)/2)` -/
def P12264168213423685372.Spec : Prop :=
  ∀ n, P12264168213423685372.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P11171065291207667053

`ceil((n+1)*(n-A000010(n+1))/2)`
-/

namespace A308473.P11171065291207667053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (((n : ℤ) - A000010 (n + 1) : ℚ) / 2)⌉

end

end A308473.P11171065291207667053

namespace A308473

/-- `ceil((n+1)*(n-A000010(n+1))/2)` -/
def P11171065291207667053.Spec : Prop :=
  ∀ n, P11171065291207667053.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P5199837580474146174

`A066760(n+1)+A048050(n+1)`
-/

namespace A308473.P5199837580474146174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066760 (n + 1) + A048050 (n + 1)

end

end A308473.P5199837580474146174

namespace A308473

/-- `A066760(n+1)+A048050(n+1)` -/
def P5199837580474146174.Spec : Prop :=
  ∀ n, P5199837580474146174.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P6696975119846758805

`A053650(n+1)-A067392(n+1)`
-/

namespace A308473.P6696975119846758805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1) - A067392 (n + 1)

end

end A308473.P6696975119846758805

namespace A308473

/-- `A053650(n+1)-A067392(n+1)` -/
def P6696975119846758805.Spec : Prop :=
  ∀ n, P6696975119846758805.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P9300679417533368971

`A067392(n+1)-A087156(n+1)`
-/

namespace A308473.P9300679417533368971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) - A087156 (n + 1)

end

end A308473.P9300679417533368971

namespace A308473

/-- `A067392(n+1)-A087156(n+1)` -/
def P9300679417533368971.Spec : Prop :=
  ∀ n, P9300679417533368971.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P5458503900530594308

`A179865(n+1)-A023896(n+1)`
-/

namespace A308473.P5458503900530594308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A023896 (n + 1)

end

end A308473.P5458503900530594308

namespace A308473

/-- `A179865(n+1)-A023896(n+1)` -/
def P5458503900530594308.Spec : Prop :=
  ∀ n, P5458503900530594308.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P17644617031514073512

`A345892(n+1)-A349679(n+1)`
-/

namespace A308473.P17644617031514073512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) - A349679 (n + 1)

end

end A308473.P17644617031514073512

namespace A308473

/-- `A345892(n+1)-A349679(n+1)` -/
def P17644617031514073512.Spec : Prop :=
  ∀ n, P17644617031514073512.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P16363735777473639515

`A219428(n+1)/2*A326178(n)`
-/

namespace A308473.P16363735777473639515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) : ℚ) / 2 * (A326178 n : ℚ)

end

end A308473.P16363735777473639515

namespace A308473

/-- `A219428(n+1)/2*A326178(n)` -/
def P16363735777473639515.Spec : Prop :=
  ∀ n, P16363735777473639515.a n = (A308473 (n + 1) : ℚ)

end A308473

/-! ## A308473.P234067573202930531

`∑{d}[n+1, A053139(#)*A332049((n+1)/#)]`
-/

namespace A308473.P234067573202930531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053139 d * A332049 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308473.P234067573202930531

namespace A308473

/-- `∑{d}[n+1, A053139(#)*A332049((n+1)/#)]` -/
def P234067573202930531.Spec : Prop :=
  ∀ n, P234067573202930531.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P5728717815404438539

`A023896(n+1)+A000217(n)-A002618(n+1)`
-/

namespace A308473.P5728717815404438539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A000217 n - A002618 (n + 1))

end

end A308473.P5728717815404438539

namespace A308473

/-- `A023896(n+1)+A000217(n)-A002618(n+1)` -/
def P5728717815404438539.Spec : Prop :=
  ∀ n, P5728717815404438539.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P11752725234006649856

`∑[n]-floor(A000010((n+1)²)/2)`
-/

namespace A308473.P11752725234006649856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(A000010 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A308473.P11752725234006649856

namespace A308473

/-- `∑[n]-floor(A000010((n+1)²)/2)` -/
def P11752725234006649856.Spec : Prop :=
  ∀ n, P11752725234006649856.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P661156066444539576

`A004525((n+1)*A016035(n+1))`
-/

namespace A308473.P661156066444539576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A016035 (n + 1)).toNat

end

end A308473.P661156066444539576

namespace A308473

/-- `A004525((n+1)*A016035(n+1))` -/
def P661156066444539576.Spec : Prop :=
  ∀ n, P661156066444539576.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P3305422098290771571

`A004526((n+1)*A016035(n+1))`
-/

namespace A308473.P3305422098290771571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) * A016035 (n + 1)).toNat

end

end A308473.P3305422098290771571

namespace A308473

/-- `A004526((n+1)*A016035(n+1))` -/
def P3305422098290771571.Spec : Prop :=
  ∀ n, P3305422098290771571.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P417648964012694556

`A025480((n+1)*A016035(n+1))`
-/

namespace A308473.P417648964012694556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n + 1 : ℤ) * A016035 (n + 1)).toNat

end

end A308473.P417648964012694556

namespace A308473

/-- `A025480((n+1)*A016035(n+1))` -/
def P417648964012694556.Spec : Prop :=
  ∀ n, P417648964012694556.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P2529467997648101496

`A025480(A016035((n+1)²)-n)`
-/

namespace A308473.P2529467997648101496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A016035 ((n + 1) ^ 2) - (n : ℤ)).toNat

end

end A308473.P2529467997648101496

namespace A308473

/-- `A025480(A016035((n+1)²)-n)` -/
def P2529467997648101496.Spec : Prop :=
  ∀ n, P2529467997648101496.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P18177641194051339259

`∑[n]-A025480(A002618(n+1))`
-/

namespace A308473.P18177641194051339259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A025480 (A002618 (n + 1)).toNat

end

end A308473.P18177641194051339259

namespace A308473

/-- `∑[n]-A025480(A002618(n+1))` -/
def P18177641194051339259.Spec : Prop :=
  ∀ n, P18177641194051339259.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P9793130759748339746

`∑[n]-A025480(A000010((n+1)²))`
-/

namespace A308473.P9793130759748339746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A025480 (A000010 ((n + 1) ^ 2)).toNat

end

end A308473.P9793130759748339746

namespace A308473

/-- `∑[n]-A025480(A000010((n+1)²))` -/
def P9793130759748339746.Spec : Prop :=
  ∀ n, P9793130759748339746.a n = A308473 (n + 1)

end A308473

/-! ## A308473.P3227558565926343242

`A051953((n+1)²)-A067392(n+1)`
-/

namespace A308473.P3227558565926343242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n + 1) ^ 2) - A067392 (n + 1)

end

end A308473.P3227558565926343242

namespace A308473

/-- `A051953((n+1)²)-A067392(n+1)` -/
def P3227558565926343242.Spec : Prop :=
  ∀ n, P3227558565926343242.a n = A308473 (n + 1)

end A308473

/-!
# A308474: a(n) = Sum_{k=1..n^2, gcd(n,k) = 1} k.

The programs for A308474, the canonical program `A308474.P503022113025262596` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308474 has offset 1).

The definition of A308474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308474.P503022113025262596

`ceil(A189393(n+1)/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308474

/-- `ceil(A189393(n+1)/2)` -/
def P503022113025262596.Spec : Prop :=
  ∀ n, P503022113025262596.a n = A308474 (n + 1)

theorem P503022113025262596.correct : P503022113025262596.Spec := by
  intro n
  simp only [A308474, Nat.add_sub_cancel]

end A308474

/-! ## A308474.P10089884629216228077

`(n+1)²*A023896(n+1)`
-/

namespace A308474.P10089884629216228077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A023896 (n + 1)

end

end A308474.P10089884629216228077

namespace A308474

/-- `(n+1)²*A023896(n+1)` -/
def P10089884629216228077.Spec : Prop :=
  ∀ n, P10089884629216228077.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P14200565307635158797

`(n+1)²*round(A002618(n+1)/2)`
-/

namespace A308474.P14200565307635158797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / 2)

end

end A308474.P14200565307635158797

namespace A308474

/-- `(n+1)²*round(A002618(n+1)/2)` -/
def P14200565307635158797.Spec : Prop :=
  ∀ n, P14200565307635158797.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P15002934794962324865

`A238533(n+1)/A103517(n)`
-/

namespace A308474.P15002934794962324865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A308474.P15002934794962324865

namespace A308474

/-- `A238533(n+1)/A103517(n)` -/
def P15002934794962324865.Spec : Prop :=
  ∀ n, P15002934794962324865.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P276232104023974711

`A000010(n+1)/2*A184628(n+1)`
-/

namespace A308474.P276232104023974711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2 * (A184628 (n + 1) : ℚ)

end

end A308474.P276232104023974711

namespace A308474

/-- `A000010(n+1)/2*A184628(n+1)` -/
def P276232104023974711.Spec : Prop :=
  ∀ n, P276232104023974711.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P10839905593132389757

`A023896(n+1)/A000010(n+1)*A053191(n+1)`
-/

namespace A308474.P10839905593132389757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A053191 (n + 1) : ℚ)

end

end A308474.P10839905593132389757

namespace A308474

/-- `A023896(n+1)/A000010(n+1)*A053191(n+1)` -/
def P10839905593132389757.Spec : Prop :=
  ∀ n, P10839905593132389757.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P10370625708648054260

`ceil((n+1)²/2*A000010((n+1)²))`
-/

namespace A308474.P10370625708648054260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2 * (A000010 ((n + 1) ^ 2) : ℚ)⌉

end

end A308474.P10370625708648054260

namespace A308474

/-- `ceil((n+1)²/2*A000010((n+1)²))` -/
def P10370625708648054260.Spec : Prop :=
  ∀ n, P10370625708648054260.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P3456672108920851545

`A000010((n+1)²)/A020639(A004277(n))*(n+1)²`
-/

namespace A308474.P3456672108920851545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) : ℚ) / (A020639 (A004277 n).toNat : ℚ) * ((n + 1) ^ 2 : ℚ)

end

end A308474.P3456672108920851545

namespace A308474

/-- `A000010((n+1)²)/A020639(A004277(n))*(n+1)²` -/
def P3456672108920851545.Spec : Prop :=
  ∀ n, P3456672108920851545.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P10311003438424233493

`A000010((n+1)²)/A020639(A062570(n+1))*(n+1)²`
-/

namespace A308474.P10311003438424233493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) : ℚ) / (A020639 (A062570 (n + 1)).toNat : ℚ) * ((n + 1) ^ 2 : ℚ)

end

end A308474.P10311003438424233493

namespace A308474

/-- `A000010((n+1)²)/A020639(A062570(n+1))*(n+1)²` -/
def P10311003438424233493.Spec : Prop :=
  ∀ n, P10311003438424233493.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P2148073803126303721

`(n+1)²*A326139(A000010((n+1)²))`
-/

namespace A308474.P2148073803126303721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A326139 (A000010 ((n + 1) ^ 2)).toNat

end

end A308474.P2148073803126303721

namespace A308474

/-- `(n+1)²*A326139(A000010((n+1)²))` -/
def P2148073803126303721.Spec : Prop :=
  ∀ n, P2148073803126303721.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P8784799617873167292

`(n+1)²*A388286((n+1)²)`
-/

namespace A308474.P8784799617873167292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A388286 ((n + 1) ^ 2)

end

end A308474.P8784799617873167292

namespace A308474

/-- `(n+1)²*A388286((n+1)²)` -/
def P8784799617873167292.Spec : Prop :=
  ∀ n, P8784799617873167292.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P7544852235423712563

`A109607((n+1)²)+1`
-/

namespace A308474.P7544852235423712563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 ((n + 1) ^ 2) + 1

end

end A308474.P7544852235423712563

namespace A308474

/-- `A109607((n+1)²)+1` -/
def P7544852235423712563.Spec : Prop :=
  ∀ n, P7544852235423712563.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P15372210879245834173

`A023896((n+1)²)`
-/

namespace A308474.P15372210879245834173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 ((n + 1) ^ 2)

end

end A308474.P15372210879245834173

namespace A308474

/-- `A023896((n+1)²)` -/
def P15372210879245834173.Spec : Prop :=
  ∀ n, P15372210879245834173.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P5271014514278424969

`ceil(A002618((n+1)²)/2)`
-/

namespace A308474.P5271014514278424969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002618 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A308474.P5271014514278424969

namespace A308474

/-- `ceil(A002618((n+1)²)/2)` -/
def P5271014514278424969.Spec : Prop :=
  ∀ n, P5271014514278424969.a n = A308474 (n + 1)

end A308474

/-! ## A308474.P411852904571975678

`A002618((n+1)²)/A000032(C(2, n+2))`
-/

namespace A308474.P411852904571975678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 ((n + 1) ^ 2) : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A308474.P411852904571975678

namespace A308474

/-- `A002618((n+1)²)/A000032(C(2, n+2))` -/
def P411852904571975678.Spec : Prop :=
  ∀ n, P411852904571975678.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P13357341660271915123

`A002618((n+1)²)/A020639(A000010(n+2))`
-/

namespace A308474.P13357341660271915123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 ((n + 1) ^ 2) : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A308474.P13357341660271915123

namespace A308474

/-- `A002618((n+1)²)/A020639(A000010(n+2))` -/
def P13357341660271915123.Spec : Prop :=
  ∀ n, P13357341660271915123.a n = (A308474 (n + 1) : ℚ)

end A308474

/-! ## A308474.P13203851430869574007

`A002618((n+1)²)/A020639(record[A006530(n+2)-1])`
-/

namespace A308474.P13203851430869574007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 ((n + 1) ^ 2) : ℚ) / (A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A308474.P13203851430869574007

namespace A308474

/-- `A002618((n+1)²)/A020639(record[A006530(n+2)-1])` -/
def P13203851430869574007.Spec : Prop :=
  ∀ n, P13203851430869574007.a n = (A308474 (n + 1) : ℚ)

end A308474

/-!
# A308475: a(1) = 1; a(n) = Sum_{k=1..n-1, gcd(n,k) = 1} binomial(n,k)*a(k).

The programs for A308475, there is no canonical definition to state claims against.
-/

/-! ## A308475.P9563570852476661674

`A165412(∑[a(n-1)+6])` with `a(0)=1, a(1)=1`
-/

namespace A308475.P9563570852476661674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308475.P9563570852476661674

/-!
# A308476: a(1) = 1; a(n) = Sum_{k=1..n-1, gcd(n,k) = 1} Stirling2(n,k)*a(k).

The programs for A308476, there is no canonical definition to state claims against.
-/

/-! ## A308476.P17236346238110711858

`A343168(2^n+n²)`
-/

namespace A308476.P17236346238110711858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343168 (2 ^ n + n ^ 2)

end

end A308476.P17236346238110711858

/-!
# A308477: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{j=1..n, gcd(n,j) = 1} j^k.

The programs for A308477, there is no canonical definition to state claims against.
-/

/-! ## A308477.P12686551813944742308

`A000005(A096921(n)^A004248(n))`
-/

namespace A308477.P12686551813944742308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A096921 n : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A308477.P12686551813944742308

/-! ## A308477.P5966507199316139460

`A000005(A125311(n)^A004248(n))`
-/

namespace A308477.P5966507199316139460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A125311 n : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A308477.P5966507199316139460

/-! ## A308477.P7628798253134997423

`A000005(A127568(n)^A004248(n))`
-/

namespace A308477.P7628798253134997423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A127568 n : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A308477.P7628798253134997423

/-! ## A308477.P10269723638287791547

`A000005(A127568(n)^A088455(n))`
-/

namespace A308477.P10269723638287791547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A127568 n : ℚ) ^ (A088455 n : ℤ))).toNat

end

end A308477.P10269723638287791547

/-!
# A308478: a(n) = sum of the dimensions of the rational spans of all connected chord diagrams with n chords and any number m of link components, modulo all instances of the 4T-relation.

The programs for A308478, there is no canonical definition to state claims against.
-/

/-! ## A308478.P16747875414943777738

`A189577(n*a(n-1))+3` with `a(0)=2`
-/

namespace A308478.P16747875414943777738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A189577 ((n : ℤ) * a (n - 1)).toNat + 3

end

end A308478.P16747875414943777738

/-!
# A308479: Least k such that k*n and (k+1)*n fail to have a common nonzero digit, or 0 if this property never occurs.

The programs for A308479, there is no canonical definition to state claims against.
-/

/-! ## A308479.P15597118843211986977

`gcd(A190121(3*(n+1)), A318185(A047996(2*(n+1))))`
-/

namespace A308479.P15597118843211986977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190121 (3 * (n + 1))) (A318185 (A047996 (2 * (n + 1))).toNat)

end

end A308479.P15597118843211986977

/-! ## A308479.P9677112600572449358

`A290759(A329501(2*(n+1))+A073424(n))`
-/

namespace A308479.P9677112600572449358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (A329501 (2 * (n + 1)) + A073424 n).toNat

end

end A308479.P9677112600572449358

/-! ## A308479.P16133720436808078538

`A290759(A329501(2*(n+1))%A004086(n+2))`
-/

namespace A308479.P16133720436808078538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290759 (Int.tmod (A329501 (2 * (n + 1))) (A004086 (n + 2))).toNat

end

end A308479.P16133720436808078538

/-! ## A308479.P16533559493275590365

`A180447(gcd(A096940(n), A380559(2*(n+2))))`
-/

namespace A308479.P16533559493275590365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (Int.gcd (A096940 n) (A380559 (2 * (n + 2))))

end

end A308479.P16533559493275590365

/-! ## A308479.P3276856149380294765

`A339047(A074909(n)+A051601(n))`
-/

namespace A308479.P3276856149380294765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339047 (A074909 n + A051601 n).toNat

end

end A308479.P3276856149380294765

/-!
# A308480: a(n) = A000225(n) if n is prime, a(n) = A020639(n) otherwise.

The programs for A308480, there is no canonical definition to state claims against.
-/

/-! ## A308480.P2037120260486564838

`A307078(A000217(n)+A020639(n+2)+n)`
-/

namespace A308480.P2037120260486564838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307078 (A000217 n + (A020639 (n + 2) + (n : ℤ))).toNat

end

end A308480.P2037120260486564838

/-! ## A308480.P12118227440890172791

`A039635(A171496(n))`
-/

namespace A308480.P12118227440890172791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A171496 n).toNat

end

end A308480.P12118227440890172791

/-!
# A308481: a(n) = Sum_{k=1..n, gcd(n,k) = 1} k^n.

The programs for A308481, there is no canonical definition to state claims against.
-/

/-! ## A308481.P6872542475684587208

`A308477(2*(n+1)²)`
-/

namespace A308481.P6872542475684587208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (2 * (n + 1) ^ 2)

end

end A308481.P6872542475684587208

/-!
# A308484: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. log(1 + Sum_{j>=1} j^k * x^j/j!).

The programs for A308484, there is no canonical definition to state claims against.
-/

/-! ## A308484.P12346014114787564025

`A000079(A045847(n)^A269955(n))-A335570(n)`
-/

namespace A308484.P12346014114787564025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A045847 n : ℚ) ^ (A269955 n : ℤ))).toNat - A335570 n

end

end A308484.P12346014114787564025

/-! ## A308484.P14751811778076493726

`A123163(n)-A319797(A209330(n))`
-/

namespace A308484.P14751811778076493726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123163 n - A319797 (A209330 n).toNat

end

end A308484.P14751811778076493726

/-! ## A308484.P16830713816747062527

`or(A055807(n), A178798(A080165(n+1)))`
-/

namespace A308484.P16830713816747062527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055807 n) (A178798 (A080165 (n + 1)).toNat)

end

end A308484.P16830713816747062527

/-! ## A308484.P13451477239567820351

`or(A080159(n), A178798(A080165(n+1)))`
-/

namespace A308484.P13451477239567820351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080159 n) (A178798 (A080165 (n + 1)).toNat)

end

end A308484.P13451477239567820351

/-!
# A308485: a(n) is the sum of the integer logs of all integers strictly between prime(n) and prime(n+1).

The programs for A308485, the canonical program `A308485.P1992995854308444612` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308485 has offset 1).

The definition of A308485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308485.P1992995854308444612

`Δ[A025281(A000040(n+1))]-A000040(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A308485

/-- `Δ[A025281(A000040(n+1))]-A000040(n+2)` -/
def P1992995854308444612.Spec : Prop :=
  ∀ n, P1992995854308444612.a n = A308485 (n + 1)

theorem P1992995854308444612.correct : P1992995854308444612.Spec := by
  intro n
  simp only [A308485, Nat.add_sub_cancel]

end A308485

/-! ## A308485.P16860826437811989536

`Δ[A025281(A006093(n+1))]-(A006093(n+1)+1)`
-/

namespace A308485.P16860826437811989536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A006093 (n + 1) + 1)

end

end A308485.P16860826437811989536

namespace A308485

/-- `Δ[A025281(A006093(n+1))]-(A006093(n+1)+1)` -/
def P16860826437811989536.Spec : Prop :=
  ∀ n, P16860826437811989536.a n = A308485 (n + 1)

end A308485

/-!
# A308492: Expansion of Sum_{i>=1} mu(i) * x^i * Product_{j>=1} (1 - x^(i*j))^24.

The programs for A308492, there is no canonical definition to state claims against.
-/

/-! ## A308492.P7970108002913657437

`∑{d}[n+1, A000594(#)*A008683((n+1)/#)]`
-/

namespace A308492.P7970108002913657437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000594 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308492.P7970108002913657437

/-! ## A308492.P11395303003441176216

`∑{d}[n+1, A007427(#)*A034777((n+1)/#)]`
-/

namespace A308492.P11395303003441176216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308492.P11395303003441176216

/-!
# A308493: Numbers k such that k in base 10 contains the same digits as k in some other base.

The programs for A308493, there is no canonical definition to state claims against.
-/

/-! ## A308493.P8665101910030176365

`lt[A266416(A000010(2*(n+2))), 16]`
-/

namespace A308493.P8665101910030176365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A000010 (2 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308493.P8665101910030176365

/-! ## A308493.P13574021937952710338

`lt[A276796(n), A056239(A187224(n+3))]`
-/

namespace A308493.P13574021937952710338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A187224 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308493.P13574021937952710338

/-!
# A308494: Refactorable numbers k such that the number of divisors of k-1 also divides k.

The programs for A308494, there is no canonical definition to state claims against.
-/

/-! ## A308494.P10877684988498111525

`∩[A252463(A003961(2*(n+2))), A033950(n+1)]`
-/

namespace A308494.P10877684988498111525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A003961 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308494.P10877684988498111525

/-! ## A308494.P7615377284228320434

`∩[A252460(A083221(2*(n+2))), A033950(n+1)]`
-/

namespace A308494.P7615377284228320434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252460 (A083221 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308494.P7615377284228320434

/-! ## A308494.P13972568643671418384

`filter[A349079(n+3), A336040(#)]`
-/

namespace A308494.P13972568643671418384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349079 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A308494.P13972568643671418384

/-! ## A308494.P9355397537513053515

`A033950(n+4)-A019590(A265063(n))`
-/

namespace A308494.P9355397537513053515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 4) - A019590 (A265063 n).toNat

end

end A308494.P9355397537513053515

/-! ## A308494.P9105723395258875323

`A121373(A269784(n+1))+A033950(n+4)`
-/

namespace A308494.P9105723395258875323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A269784 (n + 1)).toNat + A033950 (n + 4)

end

end A308494.P9105723395258875323

/-!
# A308495: a(n) is the position of the first occurrence of prime(n) in A027748.

The programs for A308495, there is no canonical definition to state claims against.
-/

/-! ## A308495.P12393635910061250744

`A342173(n+1)+2`
-/

namespace A308495.P12393635910061250744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342173 (n + 1) + 2

end

end A308495.P12393635910061250744

/-! ## A308495.P1536952289088867514

`A082186(A000040(n+1))`
-/

namespace A308495.P1536952289088867514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (A000040 (n + 1)).toNat

end

end A308495.P1536952289088867514

/-! ## A308495.P9471599301955442417

`A082186(A008578(n+2))`
-/

namespace A308495.P9471599301955442417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (A008578 (n + 2)).toNat

end

end A308495.P9471599301955442417

/-! ## A308495.P9857196780527022759

`A082186(A182986(n+2))`
-/

namespace A308495.P9857196780527022759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (A182986 (n + 2)).toNat

end

end A308495.P9857196780527022759

/-! ## A308495.P4391132386939218688

`A082186(record[A006530(n+2)])`
-/

namespace A308495.P4391132386939218688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308495.P4391132386939218688

/-! ## A308495.P3094221017369368452

`A082186(record[A014963(n+2)])`
-/

namespace A308495.P3094221017369368452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308495.P3094221017369368452

/-! ## A308495.P11814773500103609121

`A082186(record[A020639(n+2)])`
-/

namespace A308495.P11814773500103609121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308495.P11814773500103609121

/-! ## A308495.P14275946064626362772

`A013939(A006093(n+1))+2`
-/

namespace A308495.P14275946064626362772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A006093 (n + 1)).toNat + 2

end

end A308495.P14275946064626362772

/-! ## A308495.P12150294249837111641

`A013939(sqrt(A001248(n+1)))+1`
-/

namespace A308495.P12150294249837111641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 1

end

end A308495.P12150294249837111641

/-! ## A308495.P488036399381297377

`A013939(∑[A054541(n+1)])+1`
-/

namespace A308495.P488036399381297377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A308495.P488036399381297377

/-! ## A308495.P15614971153198676318

`A013939(record[A000010(n+1)])+2`
-/

namespace A308495.P15614971153198676318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A308495.P15614971153198676318

/-! ## A308495.P11698032484603732153

`A013939(p?[A000040(n+1)])+1`
-/

namespace A308495.P11698032484603732153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A308495.P11698032484603732153

/-! ## A308495.P8457176263502789427

`A013939(record[A006530(n+2)])+1`
-/

namespace A308495.P8457176263502789427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A308495.P8457176263502789427

/-! ## A308495.P16994933321681455867

`A013939(record[A020639(n+2)])+1`
-/

namespace A308495.P16994933321681455867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A308495.P16994933321681455867

/-! ## A308495.P15823314813938571590

`A013939(A040976(n+1)+1)+2`
-/

namespace A308495.P15823314813938571590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A040976 (n + 1) + 1).toNat + 2

end

end A308495.P15823314813938571590

/-! ## A308495.P10186408498488704606

`A013939(eq[1, A001222(n+1)])+2`
-/

namespace A308495.P10186408498488704606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A308495.P10186408498488704606

/-! ## A308495.P15296709440369930794

`A013939(eq[1, A010051(n+1)])+2`
-/

namespace A308495.P15296709440369930794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A308495.P15296709440369930794

/-! ## A308495.P9798270808929517848

`A013939(eq[n, A000010(n+1)])+2`
-/

namespace A308495.P9798270808929517848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A308495.P9798270808929517848

/-! ## A308495.P8020286241884997245

`A013939(lt[A001222(n+2), 2]+2)+1`
-/

namespace A308495.P8020286241884997245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) + 1

end

end A308495.P8020286241884997245

/-! ## A308495.P6592193181953399508

`eq[1, A283866(n+1)]+1`
-/

namespace A308495.P6592193181953399508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308495.P6592193181953399508

/-!
# A308496: Numbers with digits 1,2,4,7 when written in base 8.

The programs for A308496, the canonical program `A308496.P3784628210705084375` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308496 has offset 1).

The definition of A308496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308496.P12460470220477577194

`eq[1, A192006(A309959(n))]`
-/

namespace A308496.P12460470220477577194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A309959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308496.P12460470220477577194

namespace A308496

/-- `eq[1, A192006(A309959(n))]` -/
def P12460470220477577194.Spec : Prop :=
  ∀ n, (P12460470220477577194.a n : ℤ) = A308496 (n + 1)

end A308496

/-! ## A308496.P3784628210705084375

`A000027(eq[1, gcd(15, A309959(n))])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308496

/-- `A000027(eq[1, gcd(15, A309959(n))])` -/
def P3784628210705084375.Spec : Prop :=
  ∀ n, P3784628210705084375.a n = A308496 (n + 1)

theorem P3784628210705084375.correct : P3784628210705084375.Spec := by
  intro n
  simp only [A308496, Nat.add_sub_cancel]

end A308496

/-! ## A308496.P14666809538515790704

`record[(n+1)/A192006(A309959(n+1))]`
-/

namespace A308496.P14666809538515790704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A192006 (A309959 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308496.P14666809538515790704

namespace A308496

/-- `record[(n+1)/A192006(A309959(n+1))]` -/
def P14666809538515790704.Spec : Prop :=
  ∀ n, P14666809538515790704.a n = (A308496 (n + 1) : ℚ)

end A308496

/-! ## A308496.P17546554930727938713

`lt[(1-A192006(A309959(n))^7)²*A048675(n+1), n]`
-/

namespace A308496.P17546554930727938713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A192006 (A309959 n).toNat ^ 7) ^ 2 * A048675 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308496.P17546554930727938713

namespace A308496

/-- `lt[(1-A192006(A309959(n))^7)²*A048675(n+1), n]` -/
def P17546554930727938713.Spec : Prop :=
  ∀ n, (P17546554930727938713.a n : ℤ) = A308496 (n + 1)

end A308496

/-! ## A308496.P15202088387417279786

`lt[(1-A192006(A309959(n))^7)², A141206(n+1)]`
-/

namespace A308496.P15202088387417279786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A192006 (A309959 n).toNat ^ 7) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308496.P15202088387417279786

namespace A308496

/-- `lt[(1-A192006(A309959(n))^7)², A141206(n+1)]` -/
def P15202088387417279786.Spec : Prop :=
  ∀ n, (P15202088387417279786.a n : ℤ) = A308496 (n + 1)

end A308496

/-!
# A308497: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. log(1 + Sum_{j>=1} binomial(j+k-1,k) * x^j/j).

The programs for A308497, there is no canonical definition to state claims against.
-/

/-! ## A308497.P16100105020799414879

`A008616(A018314(n+1))^(1-A010054(n))-A070105(A036561(n))`
-/

namespace A308497.P16100105020799414879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008616 (A018314 (n + 1)).toNat : ℚ) ^ (1 - A010054 n : ℤ) - (A070105 (A036561 n).toNat : ℚ)

end

end A308497.P16100105020799414879

/-!
# A308498: Triangle read by rows where T(n,k), n>=1, 1<=k<=n is the number of (0,1)-matrices of size n with the first row and column sum = k and remaining sums = 1.

The programs for A308498, there is no canonical definition to state claims against.
-/

/-! ## A308498.P16438338545970163148

`gcd(Δ[A021009(n)], A127648(n))`
-/

namespace A308498.P16438338545970163148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A127648 n)

end

end A308498.P16438338545970163148

/-! ## A308498.P7247452253669236559

`gcd(Δ[-A021009(n)], A130123(n))`
-/

namespace A308498.P7247452253669236559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A021009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A130123 n)

end

end A308498.P7247452253669236559

/-! ## A308498.P2894463593407365438

`A321537(A001787(n))+A214152(n+1)`
-/

namespace A308498.P2894463593407365438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A001787 n).toNat + A214152 (n + 1)

end

end A308498.P2894463593407365438

/-! ## A308498.P10156670898718037108

`A284117(A120588(n))+A214152(n+1)`
-/

namespace A308498.P10156670898718037108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (A120588 n).toNat + A214152 (n + 1)

end

end A308498.P10156670898718037108

/-! ## A308498.P4264657428950545612

`A214152(n+1)+A033759(A000101(n+1))`
-/

namespace A308498.P4264657428950545612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (n + 1) + A033759 (A000101 (n + 1)).toNat

end

end A308498.P4264657428950545612

/-!
# A308499: Expansion of e.g.f. log(1 + Sum_{k>=1} (k+1)*(k+2)/6 * x^k).

The programs for A308499, there is no canonical definition to state claims against.
-/

/-! ## A308499.P12847500143097673221

`A308497(∑[n+3])`
-/

namespace A308499.P12847500143097673221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308499.P12847500143097673221

/-! ## A308499.P15803762609215906684

`or(char[1], A308497(A027379(n+1)))`
-/

namespace A308499.P15803762609215906684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308497 (A027379 (n + 1)).toNat)

end

end A308499.P15803762609215906684

/-! ## A308499.P10580888154939195181

`A057427(n)*A308497(Δ[A006503(n)])`
-/

namespace A308499.P10580888154939195181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A308497 (f1 (n + 1) - f1 n).toNat

end

end A308499.P10580888154939195181

/-! ## A308499.P9427844135881940550

`A033999(n)²*A308497(A027379(n+1))`
-/

namespace A308499.P9427844135881940550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A308497 (A027379 (n + 1)).toNat

end

end A308499.P9427844135881940550

/-! ## A308499.P6396423800845663396

`A001221(A028815(n+1)-1)*A308497(A027379(n+1))`
-/

namespace A308499.P6396423800845663396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028815 (n + 1) - 1).toNat * A308497 (A027379 (n + 1)).toNat

end

end A308499.P6396423800845663396

