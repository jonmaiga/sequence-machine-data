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
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A307000: Number of unitary rings with additive group (Z/nZ)^2. Equivalently, number of unitary commutative rings with additive group (Z/nZ)^2.

The programs for A307000, the canonical program `A307000.P4616291830837639980` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307000 has offset 1).

The definition of A307000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307000.P4989732645461598442

`∑{d}[n+1, A048691(#)*A154281((n+1)/#)]`
-/

namespace A307000.P4989732645461598442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A154281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P4989732645461598442

namespace A307000

/-- `∑{d}[n+1, A048691(#)*A154281((n+1)/#)]` -/
def P4989732645461598442.Spec : Prop :=
  ∀ n, P4989732645461598442.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P11734015915140205670

`∑{d}[n+1, A069735(#)*A359592((n+1)/#)]`
-/

namespace A307000.P11734015915140205670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A359592 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P11734015915140205670

namespace A307000

/-- `∑{d}[n+1, A069735(#)*A359592((n+1)/#)]` -/
def P11734015915140205670.Spec : Prop :=
  ∀ n, P11734015915140205670.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P4616291830837639980

`∑{d}[n+1, A252505(#)*A353628((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A307000

/-- `∑{d}[n+1, A252505(#)*A353628((n+1)/#)]` -/
def P4616291830837639980.Spec : Prop :=
  ∀ n, P4616291830837639980.a n = A307000 (n + 1)

theorem P4616291830837639980.correct : P4616291830837639980.Spec := by
  intro n
  simp only [A307000, Nat.add_sub_cancel]

end A307000

/-! ## A307000.P12618228419746305105

`∑{d}[n+1, A034444(#)*A177704((n+1)/#-1)]`
-/

namespace A307000.P12618228419746305105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A177704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A307000.P12618228419746305105

namespace A307000

/-- `∑{d}[n+1, A034444(#)*A177704((n+1)/#-1)]` -/
def P12618228419746305105.Spec : Prop :=
  ∀ n, P12618228419746305105.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P767757703425776519

`∑{d}[A007947(n+1), A239614((n+1)/#)]`
-/

namespace A307000.P767757703425776519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A239614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P767757703425776519

namespace A307000

/-- `∑{d}[A007947(n+1), A239614((n+1)/#)]` -/
def P767757703425776519.Spec : Prop :=
  ∀ n, P767757703425776519.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P1535306357468433622

`∑{d}[n+1, A008966(#)*A239614((n+1)/#)]`
-/

namespace A307000.P1535306357468433622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A239614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P1535306357468433622

namespace A307000

/-- `∑{d}[n+1, A008966(#)*A239614((n+1)/#)]` -/
def P1535306357468433622.Spec : Prop :=
  ∀ n, P1535306357468433622.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P15777086715688305515

`∑{d}[A053166(A053166(n+1)), A239614((n+1)/#)]`
-/

namespace A307000.P15777086715688305515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A239614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307000.P15777086715688305515

namespace A307000

/-- `∑{d}[A053166(A053166(n+1)), A239614((n+1)/#)]` -/
def P15777086715688305515.Spec : Prop :=
  ∀ n, P15777086715688305515.a n = A307000 (n + 1)

end A307000

/-! ## A307000.P61616347696922946

`∑{d}[(n+1)², gcd(2, A106609(#))]`
-/

namespace A307000.P61616347696922946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd 2 (A106609 d)

end

end A307000.P61616347696922946

namespace A307000

/-- `∑{d}[(n+1)², gcd(2, A106609(#))]` -/
def P61616347696922946.Spec : Prop :=
  ∀ n, (P61616347696922946.a n : ℤ) = A307000 (n + 1)

end A307000

/-!
# A307001: Odd numbers > 1 not of the form (3n*k - n - k + 1)/2 where n and k are odd numbers > 1.

The programs for A307001, there is no canonical definition to state claims against.
-/

/-! ## A307001.P11667086907550286013

`∩[2*n+1, A307002(n+1)]`
-/

namespace A307001.P11667086907550286013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307001.P11667086907550286013

/-! ## A307001.P5376195033727262302

`record[(2*n+3)/A261029(3*n+4)]`
-/

namespace A307001.P5376195033727262302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℚ) / (A261029 (3 * n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307001.P5376195033727262302

/-! ## A307001.P6634245693941578549

`A004396(A348156(n+1))`
-/

namespace A307001.P6634245693941578549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A348156 (n + 1)).toNat

end

end A307001.P6634245693941578549

/-! ## A307001.P11858513067711540852

`A144396(eq[2, A359212(n+1)])`
-/

namespace A307001.P11858513067711540852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307001.P11858513067711540852

/-! ## A307001.P7911272950490951125

`filter[A307002(n+1), A000035(#)]`
-/

namespace A307001.P7911272950490951125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A307001.P7911272950490951125

/-! ## A307001.P5228301140695173659

`filter[A307002(n+1), A093719(#)]`
-/

namespace A307001.P5228301140695173659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A307001.P5228301140695173659

/-! ## A307001.P17247627120036652528

`filter[A307002(n+1), A260390(#)]`
-/

namespace A307001.P17247627120036652528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A307001.P17247627120036652528

/-! ## A307001.P5367792934739588699

`filter[A307002(n+1), A266070(#)]`
-/

namespace A307001.P5367792934739588699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A307001.P5367792934739588699

/-! ## A307001.P9297342357044150

`filter[A307002(n+1), A373157(#)]`
-/

namespace A307001.P9297342357044150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A307001.P9297342357044150

/-! ## A307001.P11936292429442876793

`filter[A307002(n+2), A266719(#)]`
-/

namespace A307001.P11936292429442876793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A307001.P11936292429442876793

/-!
# A307003: Numbers x such that phi(x) = Sum_{i=1..k} phi(x/p_i), where p_i are the k prime factors of x.

The programs for A307003, there is no canonical definition to state claims against.
-/

/-! ## A307003.P11314823960870438799

`A000010(A162524(n+1)+A095180(n+1))`
-/

namespace A307003.P11314823960870438799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A162524 (n + 1) + A095180 (n + 1)).toNat

end

end A307003.P11314823960870438799

/-! ## A307003.P4037789213151145108

`∑[A069010(A157940(2*(n+1))²)]*A250122(n)`
-/

namespace A307003.P4037789213151145108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A157940 (2 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A250122 n

end

end A307003.P4037789213151145108

/-!
# A307004: Numbers k such that phi^e(k) > phi^e(m) for all m < k, where phi^e(k) = A072911(k) is the number of divisors d of k such that d and k are exponentially coprime.

The programs for A307004, there is no canonical definition to state claims against.
-/

/-! ## A307004.P16412569406540775082

`A011264(A187941(n)²)`
-/

namespace A307004.P16412569406540775082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A187941 n ^ 2).toNat

end

end A307004.P16412569406540775082

/-! ## A307004.P10424153527359150224

`A064549(A187941(n)²)`
-/

namespace A307004.P10424153527359150224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A187941 n ^ 2).toNat

end

end A307004.P10424153527359150224

/-! ## A307004.P14238295316421340554

`A011264(A187941(n)^2)`
-/

namespace A307004.P14238295316421340554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A187941 n ^ 2).toNat

end

end A307004.P14238295316421340554

/-!
# A307005: Expansion of e.g.f. (2*exp(x)-2*x-x^2)/(2-2*x-x^2).

The programs for A307005, there is no canonical definition to state claims against.
-/

/-! ## A307005.P14064218145243054915

`n*(a(n-1)+(n-1)*a(n-2)/2)+1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A307005.P14064218145243054915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) * (a (n - 2) / 2)) + 1

end

end A307005.P14064218145243054915

/-! ## A307005.P15858196638434080323

`A338215(A354273(n+1)+A000262(n)+1)`
-/

namespace A307005.P15858196638434080323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338215 (A354273 (n + 1) + (A000262 n + 1)).toNat

end

end A307005.P15858196638434080323

/-!
# A307006: Expansion of e.g.f. (2*exp(x)-1-2*x-x^2)/(1-x-x^2).

The programs for A307006, there is no canonical definition to state claims against.
-/

/-! ## A307006.P10305097682740654370

`n*(a(n-1)+(n-1)*a(n-2))+2` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A307006.P10305097682740654370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) + 2

end

end A307006.P10305097682740654370

/-! ## A307006.P14837298474404842213

`2*A110313(n)-A005921(n)`
-/

namespace A307006.P14837298474404842213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110313 n - A005921 n

end

end A307006.P14837298474404842213

/-! ## A307006.P11183012690079496039

`A080746(n*a(n-1))` with `a(0)=1`
-/

namespace A307006.P11183012690079496039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080746 ((n : ℤ) * a (n - 1)).toNat

end

end A307006.P11183012690079496039

/-!
# A307008: Numbers that are both prime-indexed primes and lucky-indexed lucky numbers.

The programs for A307008, there is no canonical definition to state claims against.
-/

/-! ## A307008.P12696059201986313237

`∩[A000959(A000959(n+1)), A006450(n+1)]`
-/

namespace A307008.P12696059201986313237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P12696059201986313237

/-! ## A307008.P4471070674310732872

`∩[A006450(n+1), A032639(n+1)]`
-/

namespace A307008.P4471070674310732872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P4471070674310732872

/-! ## A307008.P17014386416407087122

`∩[A032639(n+1), A175247(n+1)]`
-/

namespace A307008.P17014386416407087122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P17014386416407087122

/-! ## A307008.P7708313351497011403

`∩[A032639(n+1), A302592(n+2)]`
-/

namespace A307008.P7708313351497011403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P7708313351497011403

/-! ## A307008.P7568209883991579153

`∩[A032639(n+1), A262021(n+1)+1+n]`
-/

namespace A307008.P7568209883991579153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P7568209883991579153

/-! ## A307008.P17403077577985707398

`∩[A032639(n+1), A073131(n)+a(n-1)]` with `a(0)=3`
-/

namespace A307008.P17403077577985707398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A073131 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P17403077577985707398

/-! ## A307008.P5257518405892841589

`∩[A000959(A000959(n+2)), A302592(n+1)]`
-/

namespace A307008.P5257518405892841589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P5257518405892841589

/-! ## A307008.P12554616490134636720

`∩[A000959(A000959(n+2)), A262021(n+1)+1+n]`
-/

namespace A307008.P12554616490134636720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000959 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307008.P12554616490134636720

/-!
# A307009: Numbers that are both lucky-indexed primes and prime-indexed lucky numbers.

The programs for A307009, there is no canonical definition to state claims against.
-/

/-! ## A307009.P12671324634079553790

`∩[A032605(n+1), A032606(n+1)]`
-/

namespace A307009.P12671324634079553790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307009.P12671324634079553790

/-! ## A307009.P11479960682002397931

`∩[A032605(n+1), A000959(A000040(n+1))]`
-/

namespace A307009.P11479960682002397931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A000040 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307009.P11479960682002397931

/-! ## A307009.P2032211084889253606

`∩[A000959(A008578(n+1)), A032605(n+1)]`
-/

namespace A307009.P2032211084889253606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307009.P2032211084889253606

/-! ## A307009.P5364097350634432089

`∩[A000959(A006093(n+1)+1), A032605(n+1)]`
-/

namespace A307009.P5364097350634432089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A006093 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307009.P5364097350634432089

/-! ## A307009.P5289212097032084793

`∩[A032606(n+1), A128886(n+1)+A032606(n+1)]`
-/

namespace A307009.P5289212097032084793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128886 (n + 1) + A032606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307009.P5289212097032084793

/-!
# A307010: Numbers that are prime-indexed primes, lucky-indexed lucky numbers, lucky-indexed primes and prime-indexed lucky numbers.

The programs for A307010, there is no canonical definition to state claims against.
-/

/-! ## A307010.P12444988206139507152

`∩[A307008(n+1), A307009(n+1)]`
-/

namespace A307010.P12444988206139507152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307010.P12444988206139507152

/-!
# A307011: First coordinate in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. Second and third coordinates are given in A307012 and A345978.

The programs for A307011, the canonical program `A307011.P16481018969621470149` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307011 has offset 0).

The definition of A307011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307011.P16481018969621470149

`A307012(A184010(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A307011

/-- `A307012(A184010(n+1))` -/
def P16481018969621470149.Spec : Prop :=
  ∀ n, P16481018969621470149.a n = A307011 n

theorem P16481018969621470149.correct : P16481018969621470149.Spec := by
  intro n
  simp only [A307011]

end A307011

/-! ## A307011.P6627467725583876661

`A307013(n)-A307012(n)`
-/

namespace A307011.P6627467725583876661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n - A307012 n

end

end A307011.P6627467725583876661

namespace A307011

/-- `A307013(n)-A307012(n)` -/
def P6627467725583876661.Spec : Prop :=
  ∀ n, P6627467725583876661.a n = A307011 n

end A307011

/-! ## A307011.P6534559140976935996

`A328818(n)-A307013(n)`
-/

namespace A307011.P6534559140976935996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328818 n - A307013 n

end

end A307011.P6534559140976935996

namespace A307011

/-- `A328818(n)-A307013(n)` -/
def P6534559140976935996.Spec : Prop :=
  ∀ n, P6534559140976935996.a n = A307011 n

end A307011

/-! ## A307011.P6668964417270995454

`A307012(A227568(n)+1+n)`
-/

namespace A307011.P6668964417270995454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A227568 n + 1 + (n : ℤ)).toNat

end

end A307011.P6668964417270995454

namespace A307011

/-- `A307012(A227568(n)+1+n)` -/
def P6668964417270995454.Spec : Prop :=
  ∀ n, P6668964417270995454.a n = A307011 n

end A307011

/-! ## A307011.P2173360495049369234

`(A328818(n)-A307012(n))/2`
-/

namespace A307011.P2173360495049369234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328818 n - A307012 n : ℚ) / 2

end

end A307011.P2173360495049369234

namespace A307011

/-- `(A328818(n)-A307012(n))/2` -/
def P2173360495049369234.Spec : Prop :=
  ∀ n, P2173360495049369234.a n = (A307011 n : ℚ)

end A307011

/-! ## A307011.P10903925591378262005

`A307013(∑[char[A000567(n+1)]]+n)`
-/

namespace A307011.P10903925591378262005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A307011.P10903925591378262005

namespace A307011

/-- `A307013(∑[char[A000567(n+1)]]+n)` -/
def P10903925591378262005.Spec : Prop :=
  ∀ n, P10903925591378262005.a n = A307011 n

end A307011

/-! ## A307011.P4764653030796910481

`A345978(n)+A328818(n)`
-/

namespace A307011.P4764653030796910481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345978 n + A328818 n

end

end A307011.P4764653030796910481

namespace A307011

/-- `A345978(n)+A328818(n)` -/
def P4764653030796910481.Spec : Prop :=
  ∀ n, P4764653030796910481.a n = A307011 n

end A307011

/-! ## A307011.P7309647758671128123

`A307012(A000567(n)-(A345978(n)+A307012(n)))`
-/

namespace A307011.P7309647758671128123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A000567 n - (A345978 n + A307012 n)).toNat

end

end A307011.P7309647758671128123

namespace A307011

/-- `A307012(A000567(n)-(A345978(n)+A307012(n)))` -/
def P7309647758671128123.Spec : Prop :=
  ∀ n, P7309647758671128123.a n = A307011 n

end A307011

/-! ## A307011.P18332223257515619017

`A307012(A000567(n)-A307012(n)-A345978(n))`
-/

namespace A307011.P18332223257515619017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A000567 n - A307012 n - A345978 n).toNat

end

end A307011.P18332223257515619017

namespace A307011

/-- `A307012(A000567(n)-A307012(n)-A345978(n))` -/
def P18332223257515619017.Spec : Prop :=
  ∀ n, P18332223257515619017.a n = A307011 n

end A307011

/-!
# A307012: Second coordinate in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. First and third coordinates are given in A307011 and A345978.

The programs for A307012, the canonical program `A307012.P6050295120128097672` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307012 has offset 0).

The definition of A307012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307012.P68923965166210711

`A307013(n)-A307011(n)`
-/

namespace A307012.P68923965166210711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n - A307011 n

end

end A307012.P68923965166210711

namespace A307012

/-- `A307013(n)-A307011(n)` -/
def P68923965166210711.Spec : Prop :=
  ∀ n, P68923965166210711.a n = A307012 n

end A307012

/-! ## A307012.P6050295120128097672

`∑[-A128834(A036496(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A307012

/-- `∑[-A128834(A036496(n))]` -/
def P6050295120128097672.Spec : Prop :=
  ∀ n, P6050295120128097672.a n = A307012 n

theorem P6050295120128097672.correct : P6050295120128097672.Spec := by
  intro n
  simp only [A307012]

end A307012

/-! ## A307012.P4779251648137858936

`∑[A010892(A036496(n)+2)]`
-/

namespace A307012.P4779251648137858936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A036496 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307012.P4779251648137858936

namespace A307012

/-- `∑[A010892(A036496(n)+2)]` -/
def P4779251648137858936.Spec : Prop :=
  ∀ n, P4779251648137858936.a n = A307012 n

end A307012

/-! ## A307012.P17509834857627155486

`∑[A128834(A036496(n)+3)]`
-/

namespace A307012.P17509834857627155486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A036496 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307012.P17509834857627155486

namespace A307012

/-- `∑[A128834(A036496(n)+3)]` -/
def P17509834857627155486.Spec : Prop :=
  ∀ n, P17509834857627155486.a n = A307012 n

end A307012

/-! ## A307012.P18000684451989223788

`2*A307013(n)-A328818(n)`
-/

namespace A307012.P18000684451989223788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307013 n - A328818 n

end

end A307012.P18000684451989223788

namespace A307012

/-- `2*A307013(n)-A328818(n)` -/
def P18000684451989223788.Spec : Prop :=
  ∀ n, P18000684451989223788.a n = A307012 n

end A307012

/-! ## A307012.P424091062415390385

`A328818(n)-2*A307011(n)`
-/

namespace A307012.P424091062415390385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328818 n - 2 * A307011 n

end

end A307012.P424091062415390385

namespace A307012

/-- `A328818(n)-2*A307011(n)` -/
def P424091062415390385.Spec : Prop :=
  ∀ n, P424091062415390385.a n = A307012 n

end A307012

/-! ## A307012.P15810612070621185753

`-(A345978(n)+A307011(n))`
-/

namespace A307012.P15810612070621185753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A345978 n + A307011 n)

end

end A307012.P15810612070621185753

namespace A307012

/-- `-(A345978(n)+A307011(n))` -/
def P15810612070621185753.Spec : Prop :=
  ∀ n, P15810612070621185753.a n = A307012 n

end A307012

/-! ## A307012.P15250285506031142287

`A307011(56-(A345978(n)+A307011(n)))`
-/

namespace A307012.P15250285506031142287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (56 - (A345978 n + A307011 n)).toNat

end

end A307012.P15250285506031142287

namespace A307012

/-- `A307011(56-(A345978(n)+A307011(n)))` -/
def P15250285506031142287.Spec : Prop :=
  ∀ n, P15250285506031142287.a n = A307012 n

end A307012

/-! ## A307012.P7336143724493881049

`A307011(56-A307011(n)-A345978(n))`
-/

namespace A307012.P7336143724493881049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307011 (56 - A307011 n - A345978 n).toNat

end

end A307012.P7336143724493881049

namespace A307012

/-- `A307011(56-A307011(n)-A345978(n))` -/
def P7336143724493881049.Spec : Prop :=
  ∀ n, P7336143724493881049.a n = A307012 n

end A307012

/-! ## A307012.P9953130771109983674

`A307013(n)-(A345978(n)+A328818(n))`
-/

namespace A307012.P9953130771109983674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 n - (A345978 n + A328818 n)

end

end A307012.P9953130771109983674

namespace A307012

/-- `A307013(n)-(A345978(n)+A328818(n))` -/
def P9953130771109983674.Spec : Prop :=
  ∀ n, P9953130771109983674.a n = A307012 n

end A307012

/-!
# A307013: Third coordinate (asymmetric variant) in a redundant hexagonal coordinate system of the points of a counterclockwise spiral on an hexagonal grid. First and second coordinates are given in A307011 and A307012.

The programs for A307013, the canonical program `A307013.P16025431409212704238` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307013 has offset 0).

The definition of A307013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307011, A307012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307013.P16025431409212704238

`A307011(n)+A307012(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A307013

/-- `A307011(n)+A307012(n)` -/
def P16025431409212704238.Spec : Prop :=
  ∀ n, P16025431409212704238.a n = A307013 n

theorem P16025431409212704238.correct : P16025431409212704238.Spec := by
  intro n
  simp only [A307013]

end A307013

/-! ## A307013.P11793597391495091557

`A307012(comp[Δ[n^3]])`
-/

namespace A307013.P11793597391495091557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A307013.P11793597391495091557

namespace A307013

/-- `A307012(comp[Δ[n^3]])` -/
def P11793597391495091557.Spec : Prop :=
  ∀ n, P11793597391495091557.a n = A307013 n

end A307013

/-! ## A307013.P9649402373893104605

`A328818(n)-A307011(n)`
-/

namespace A307013.P9649402373893104605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328818 n - A307011 n

end

end A307013.P9649402373893104605

namespace A307013

/-- `A328818(n)-A307011(n)` -/
def P9649402373893104605.Spec : Prop :=
  ∀ n, P9649402373893104605.a n = A307013 n

end A307013

/-! ## A307013.P518295087367894029

`1-∑[A010892(A036496(n))]`
-/

namespace A307013.P518295087367894029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A036496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307013.P518295087367894029

namespace A307013

/-- `1-∑[A010892(A036496(n))]` -/
def P518295087367894029.Spec : Prop :=
  ∀ n, P518295087367894029.a n = A307013 n

end A307013

/-! ## A307013.P9743238306355458812

`(A328818(n)+A307012(n))/2`
-/

namespace A307013.P9743238306355458812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328818 n + A307012 n : ℚ) / 2

end

end A307013.P9743238306355458812

namespace A307013

/-- `(A328818(n)+A307012(n))/2` -/
def P9743238306355458812.Spec : Prop :=
  ∀ n, P9743238306355458812.a n = (A307013 n : ℚ)

end A307013

/-! ## A307013.P4593057983037298921

`A307012(A184010(n+1))+A307012(n)`
-/

namespace A307013.P4593057983037298921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A184010 (n + 1)).toNat + A307012 n

end

end A307013.P4593057983037298921

namespace A307013

/-- `A307012(A184010(n+1))+A307012(n)` -/
def P4593057983037298921.Spec : Prop :=
  ∀ n, P4593057983037298921.a n = A307013 n

end A307013

/-! ## A307013.P15674290996267333306

`∑[A128834(A293137(A008585(n)))]`
-/

namespace A307013.P15674290996267333306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A293137 (A008585 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307013.P15674290996267333306

namespace A307013

/-- `∑[A128834(A293137(A008585(n)))]` -/
def P15674290996267333306.Spec : Prop :=
  ∀ n, P15674290996267333306.a n = A307013 n

end A307013

/-! ## A307013.P8042717246981263666

`-A345978(n)`
-/

namespace A307013.P8042717246981263666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A345978 n

end

end A307013.P8042717246981263666

namespace A307013

/-- `-A345978(n)` -/
def P8042717246981263666.Spec : Prop :=
  ∀ n, P8042717246981263666.a n = A307013 n

end A307013

/-! ## A307013.P15349817165297103823

`A264668(n)-A345978(n)`
-/

namespace A307013.P15349817165297103823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A345978 n

end

end A307013.P15349817165297103823

namespace A307013

/-- `A264668(n)-A345978(n)` -/
def P15349817165297103823.Spec : Prop :=
  ∀ n, P15349817165297103823.a n = A307013 n

end A307013

/-! ## A307013.P4951639369851291979

`A057428(n)*A345978(n)`
-/

namespace A307013.P4951639369851291979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A345978 n

end

end A307013.P4951639369851291979

namespace A307013

/-- `A057428(n)*A345978(n)` -/
def P4951639369851291979.Spec : Prop :=
  ∀ n, P4951639369851291979.a n = A307013 n

end A307013

/-!
# A307014: List coordinates (x,y) of the points in an hexagonal grid, sorted first by radial coordinate r and in case of ties, by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives the first coordinate in a barycentric coordinate system.

The programs for A307014, there is no canonical definition to state claims against.
-/

/-! ## A307014.P11408313424416888374

`A307017(n)-A307016(n)`
-/

namespace A307014.P11408313424416888374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n - A307016 n

end

end A307014.P11408313424416888374

/-! ## A307014.P18181695497284453013

`A307017(n)+A307013(A307016(n)+A033428(n))`
-/

namespace A307014.P18181695497284453013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n + A307013 (A307016 n + A033428 n).toNat

end

end A307014.P18181695497284453013

/-! ## A307014.P10803754156870409680

`A343633(A343659(2*n+5)-A343638(3*n+2))`
-/

namespace A307014.P10803754156870409680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343633 (A343659 (2 * n + 5) - A343638 (3 * n + 2)).toNat

end

end A307014.P10803754156870409680

/-! ## A307014.P17734426206290809604

`A163539(A081464(n+1))-A163539(n)`
-/

namespace A307014.P17734426206290809604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A081464 (n + 1)).toNat - A163539 n

end

end A307014.P17734426206290809604

/-! ## A307014.P8934576274394562573

`A350950(A122111(n+4))-A350950(n+3)`
-/

namespace A307014.P8934576274394562573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A122111 (n + 4)).toNat - A350950 (n + 3)

end

end A307014.P8934576274394562573

/-!
# A307015: Smallest number with same number of divisors as 3*a(n-1).

The programs for A307015, there is no canonical definition to state claims against.
-/

/-! ## A307015.P14453426396745154989

`A061799(A000005(3*a(n-1)))` with `a(0)=1`
-/

namespace A307015.P14453426396745154989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061799 (A000005 (3 * a (n - 1)).toNat).toNat

end

end A307015.P14453426396745154989

/-! ## A307015.P14161236369005338882

`A139770(3*a(n-1))` with `a(0)=1`
-/

namespace A307015.P14161236369005338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139770 (3 * a (n - 1)).toNat

end

end A307015.P14161236369005338882

/-! ## A307015.P16853862107935423614

`A140635(3*a(n-1))` with `a(0)=1`
-/

namespace A307015.P16853862107935423614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140635 (3 * a (n - 1)).toNat

end

end A307015.P16853862107935423614

/-! ## A307015.P18120009461571873276

`A139770(A008486(a(n-1)))` with `a(0)=1`
-/

namespace A307015.P18120009461571873276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139770 (A008486 (a (n - 1)).toNat).toNat

end

end A307015.P18120009461571873276

/-! ## A307015.P3532277635163584016

`A139770(A008585(a(n-1)))` with `a(0)=1`
-/

namespace A307015.P3532277635163584016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139770 (A008585 (a (n - 1)).toNat).toNat

end

end A307015.P3532277635163584016

/-!
# A307016: List coordinates (x,y) of the points in an hexagonal grid, sorted first by radial coordinate r and in case of ties, by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives the second coordinate in a barycentric coordinate system.

The programs for A307016, there is no canonical definition to state claims against.
-/

/-! ## A307016.P17275775934617831683

`A307017(n)-A307014(n)`
-/

namespace A307016.P17275775934617831683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n - A307014 n

end

end A307016.P17275775934617831683

/-! ## A307016.P7205127091095876976

`A307017(n)+A008683(A001914(n+1))*A307014(n)`
-/

namespace A307016.P7205127091095876976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n + A008683 (A001914 (n + 1)).toNat * A307014 n

end

end A307016.P7205127091095876976

/-! ## A307016.P11649947216006407345

`A307017(n)+A008683(A068486(n+1))*A307014(n)`
-/

namespace A307016.P11649947216006407345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n + A008683 (A068486 (n + 1)).toNat * A307014 n

end

end A307016.P11649947216006407345

/-! ## A307016.P7834376189421845322

`A307017(n)+A307013(A307014(n)+A033428(n))`
-/

namespace A307016.P7834376189421845322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307017 n + A307013 (A307014 n + A033428 n).toNat

end

end A307016.P7834376189421845322

/-! ## A307016.P15003089442823423668

`A321936(n)-A307014(A187829(n+1))`
-/

namespace A307016.P15003089442823423668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n - A307014 (A187829 (n + 1)).toNat

end

end A307016.P15003089442823423668

/-!
# A307017: List coordinates (x,y) of the points in an hexagonal grid, sorted first by radial coordinate r and in case of ties, by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives the third coordinate in a barycentric coordinate system.

The programs for A307017, there is no canonical definition to state claims against.
-/

/-! ## A307017.P12456769456491312169

`A307016(n)+A307014(n)`
-/

namespace A307017.P12456769456491312169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307016 n + A307014 n

end

end A307017.P12456769456491312169

/-! ## A307017.P6775399011239568712

`A307014(n)-A057428(n)*A307016(n)`
-/

namespace A307017.P6775399011239568712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307014 n - A057428 n * A307016 n

end

end A307017.P6775399011239568712

/-! ## A307017.P4736191068424980524

`A307014(n)-(A307013(A033428(n))-A307016(n))`
-/

namespace A307017.P4736191068424980524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307014 n - (A307013 (A033428 n).toNat - A307016 n)

end

end A307017.P4736191068424980524

/-! ## A307017.P17637993709047799211

`A307014(n)-(A307011(A049450(n))-A307016(n))`
-/

namespace A307017.P17637993709047799211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307014 n - (A307011 (A049450 n).toNat - A307016 n)

end

end A307017.P17637993709047799211

/-! ## A307017.P13074169039443507012

`A307014(n)-A307013(A028896(n)-A307016(n))`
-/

namespace A307017.P13074169039443507012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307014 n - A307013 (A028896 n - A307016 n).toNat

end

end A307017.P13074169039443507012

/-! ## A307017.P16550688846113266242

`A307014(n)-A307011(A045944(n)-A307016(n))`
-/

namespace A307017.P16550688846113266242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307014 n - A307011 (A045944 n - A307016 n).toNat

end

end A307017.P16550688846113266242

/-!
# A307018: Total number of parts of size 3 in the partitions of n into parts of size 2 and 3.

The programs for A307018, the canonical program `A307018.P3641728372556631881` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307018 has offset 0).

The definition of A307018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A307018.P3641728372556631881

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=2, a(7)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A307018

/-- `a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` -/
def P3641728372556631881.Spec : Prop :=
  ∀ n, P3641728372556631881.a n = A307018 n

theorem P3641728372556631881.correct : P3641728372556631881.Spec := by
  intro n
  simp only [A307018]

end A307018

/-! ## A307018.P15695099967503619634

`A002620(A008611(n))`
-/

namespace A307018.P15695099967503619634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 n).toNat

end

end A307018.P15695099967503619634

namespace A307018

/-- `A002620(A008611(n))` -/
def P15695099967503619634.Spec : Prop :=
  ∀ n, P15695099967503619634.a n = A307018 n

end A307018

/-! ## A307018.P3808165615534503043

`floor(((n+1)/2-ceil(n/3))²)`
-/

namespace A307018.P3808165615534503043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / 2 - (⌈(n : ℚ) / 3⌉ : ℚ)) ^ 2⌋

end

end A307018.P3808165615534503043

namespace A307018

/-- `floor(((n+1)/2-ceil(n/3))²)` -/
def P3808165615534503043.Spec : Prop :=
  ∀ n, P3808165615534503043.a n = A307018 n

end A307018

/-! ## A307018.P12383250772637990054

`a(n-2)+∑[∑[n]]%n` with `a(0)=0, a(1)=0`
-/

namespace A307018.P12383250772637990054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j) % n

end

end A307018.P12383250772637990054

namespace A307018

/-- `a(n-2)+∑[∑[n]]%n` -/
def P12383250772637990054.Spec : Prop :=
  ∀ n, (P12383250772637990054.a n : ℤ) = A307018 n

end A307018

/-! ## A307018.P7929913324720027206

`∑[floor(n*gcd(2, n%3)/3)-floor(n/2)]`
-/

namespace A307018.P7929913324720027206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.gcd 2 (n % 3) : ℚ) / 3)⌋ - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307018.P7929913324720027206

namespace A307018

/-- `∑[floor(n*gcd(2, n%3)/3)-floor(n/2)]` -/
def P7929913324720027206.Spec : Prop :=
  ∀ n, P7929913324720027206.a n = A307018 n

end A307018

/-! ## A307018.P13354761339331615282

`A002620(∑[(-1)^(n%3)])`
-/

namespace A307018.P13354761339331615282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307018.P13354761339331615282

namespace A307018

/-- `A002620(∑[(-1)^(n%3)])` -/
def P13354761339331615282.Spec : Prop :=
  ∀ n, P13354761339331615282.a n = A307018 n

end A307018

/-! ## A307018.P2517251586924582961

`A002620(∑[gcd(3, ∑[n])-2])`
-/

namespace A307018.P2517251586924582961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307018.P2517251586924582961

namespace A307018

/-- `A002620(∑[gcd(3, ∑[n])-2])` -/
def P2517251586924582961.Spec : Prop :=
  ∀ n, P2517251586924582961.a n = A307018 n

end A307018

/-! ## A307018.P12236623789351558136

`A175676(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A307018.P12236623789351558136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A175676 n + a (n - 2)

end

end A307018.P12236623789351558136

namespace A307018

/-- `A175676(n)+a(n-2)` -/
def P12236623789351558136.Spec : Prop :=
  ∀ n, P12236623789351558136.a n = A307018 n

end A307018

/-! ## A307018.P5972152828582360651

`A086159(n)-A117910(n)`
-/

namespace A307018.P5972152828582360651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 n - A117910 n

end

end A307018.P5972152828582360651

namespace A307018

/-- `A086159(n)-A117910(n)` -/
def P5972152828582360651.Spec : Prop :=
  ∀ n, P5972152828582360651.a n = A307018 n

end A307018

/-! ## A307018.P17361923035231668280

`A008217(2*A008611(n)+1)`
-/

namespace A307018.P17361923035231668280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (2 * A008611 n + 1).toNat

end

end A307018.P17361923035231668280

namespace A307018

/-- `A008217(2*A008611(n)+1)` -/
def P17361923035231668280.Spec : Prop :=
  ∀ n, P17361923035231668280.a n = A307018 n

end A307018

/-! ## A307018.P17377965854602566807

`(n-A090168(n))*A103221(n)`
-/

namespace A307018.P17377965854602566807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A090168 n) * A103221 n

end

end A307018.P17377965854602566807

namespace A307018

/-- `(n-A090168(n))*A103221(n)` -/
def P17377965854602566807.Spec : Prop :=
  ∀ n, P17377965854602566807.a n = A307018 n

end A307018

/-! ## A307018.P6421744073699436898

`A004526(A008611(n))*A103221(n)`
-/

namespace A307018.P6421744073699436898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 n).toNat * A103221 n

end

end A307018.P6421744073699436898

namespace A307018

/-- `A004526(A008611(n))*A103221(n)` -/
def P6421744073699436898.Spec : Prop :=
  ∀ n, P6421744073699436898.a n = A307018 n

end A307018

/-! ## A307018.P7745618378660555055

`A008217(A008611(n)+A008611(n)+1)`
-/

namespace A307018.P7745618378660555055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A008611 n + (A008611 n + 1)).toNat

end

end A307018.P7745618378660555055

namespace A307018

/-- `A008217(A008611(n)+A008611(n)+1)` -/
def P7745618378660555055.Spec : Prop :=
  ∀ n, P7745618378660555055.a n = A307018 n

end A307018

/-! ## A307018.P2113412974832138894

`A024206(A008611(n)+1)-A008611(n)`
-/

namespace A307018.P2113412974832138894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A008611 n + 1).toNat - A008611 n

end

end A307018.P2113412974832138894

namespace A307018

/-- `A024206(A008611(n)+1)-A008611(n)` -/
def P2113412974832138894.Spec : Prop :=
  ∀ n, P2113412974832138894.a n = A307018 n

end A307018

/-! ## A307018.P2156658776117914301

`A002620(A147534(n+1)-A004396(n))`
-/

namespace A307018.P2156658776117914301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A147534 (n + 1) - A004396 n).toNat

end

end A307018.P2156658776117914301

namespace A307018

/-- `A002620(A147534(n+1)-A004396(n))` -/
def P2156658776117914301.Spec : Prop :=
  ∀ n, P2156658776117914301.a n = A307018 n

end A307018

/-! ## A307018.P9847606465540671349

`A002620(A006369(A147534(n+1))-n)`
-/

namespace A307018.P9847606465540671349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A006369 (A147534 (n + 1)).toNat - (n : ℤ)).toNat

end

end A307018.P9847606465540671349

namespace A307018

/-- `A002620(A006369(A147534(n+1))-n)` -/
def P9847606465540671349.Spec : Prop :=
  ∀ n, P9847606465540671349.a n = A307018 n

end A307018

/-! ## A307018.P15423432149606781910

`A008615(A289207(n)+1)*A103221(n)`
-/

namespace A307018.P15423432149606781910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A289207 n + 1).toNat * A103221 n

end

end A307018.P15423432149606781910

namespace A307018

/-- `A008615(A289207(n)+1)*A103221(n)` -/
def P15423432149606781910.Spec : Prop :=
  ∀ n, P15423432149606781910.a n = A307018 n

end A307018

/-! ## A307018.P6162382776407294229

`(A103221(n)-A059841(n))*A103221(n)`
-/

namespace A307018.P6162382776407294229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103221 n - A059841 n) * A103221 n

end

end A307018.P6162382776407294229

namespace A307018

/-- `(A103221(n)-A059841(n))*A103221(n)` -/
def P6162382776407294229.Spec : Prop :=
  ∀ n, P6162382776407294229.a n = A307018 n

end A307018

/-! ## A307018.P11241016637910514954

`A008620(n+1)*A008620(n)-A001399(n)`
-/

namespace A307018.P11241016637910514954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) * A008620 n - A001399 n

end

end A307018.P11241016637910514954

namespace A307018

/-- `A008620(n+1)*A008620(n)-A001399(n)` -/
def P11241016637910514954.Spec : Prop :=
  ∀ n, P11241016637910514954.a n = A307018 n

end A307018

/-! ## A307018.P8152988743908657447

`(A002264(n+1)-A008615(n))*A103221(n)`
-/

namespace A307018.P8152988743908657447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (n + 1) - A008615 n) * A103221 n

end

end A307018.P8152988743908657447

namespace A307018

/-- `(A002264(n+1)-A008615(n))*A103221(n)` -/
def P8152988743908657447.Spec : Prop :=
  ∀ n, P8152988743908657447.a n = A307018 n

end A307018

/-!
# A307023: Lexicographically earliest sequence starting with a(1) = 1 and a(2) = 2 such that two consecutive terms of opposite parity are followed by their sum; else (same parity), by the smallest term not yet in the sequence.

The programs for A307023, there is no canonical definition to state claims against.
-/

/-! ## A307023.P11644699777353710596

`A307024(n+1)-A185284(A303431(n+1))`
-/

namespace A307023.P11644699777353710596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307024 (n + 1) - A185284 (A303431 (n + 1)).toNat

end

end A307023.P11644699777353710596

/-! ## A307023.P12511425883960996753

`∑{e}[2^(n+1), A307024(#)]`
-/

namespace A307023.P12511425883960996753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A307024 (Nat.factorization (f1 n) p)

end

end A307023.P12511425883960996753

/-! ## A307023.P9366593106423120962

`A307024(n+1)%Δ[A173296(n)]`
-/

namespace A307023.P9366593106423120962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307024 (n + 1)) (f1 (n + 1) - f1 n)

end

end A307023.P9366593106423120962

/-! ## A307023.P14852572918146043201

`gcd(A342734(n+1)!, A307024(n+1))`
-/

namespace A307023.P14852572918146043201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A342734 (n + 1)).toNat : ℤ) (A307024 (n + 1))

end

end A307023.P14852572918146043201

/-! ## A307023.P4309722011194912125

`A185284(2*n+1)!*A307024(n+1)`
-/

namespace A307023.P4309722011194912125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A185284 (2 * n + 1)).toNat : ℤ) * A307024 (n + 1)

end

end A307023.P4309722011194912125

/-!
# A307024: Lexicographically earliest sequence of different terms starting with a(1) = 1 and a(2) = 2 such that two consecutive terms of opposite parity are followed by their sum; else (same parity), by the smallest term not yet in the sequence.

The programs for A307024, there is no canonical definition to state claims against.
-/

/-! ## A307024.P10106405069149003184

`A307023(n+1)+A185284(A303431(n+1))`
-/

namespace A307024.P10106405069149003184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307023 (n + 1) + A185284 (A303431 (n + 1)).toNat

end

end A307024.P10106405069149003184

/-!
# A307025: Number of (undirected) paths in the m X n knight graph (triangle read by rows with m = 1..n and n = 1..).

The programs for A307025, there is no canonical definition to state claims against.
-/

/-! ## A307025.P8549962857648110632

`A333755(A235791(2*n+3)+A000217(n+3))`
-/

namespace A307025.P8549962857648110632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A235791 (2 * n + 3) + A000217 (n + 3)).toNat

end

end A307025.P8549962857648110632

/-!
# A307026: Number of (undirected) paths in the m X n king graph (triangle read by rows with m = 1..n and n = 1..).

The programs for A307026, there is no canonical definition to state claims against.
-/

/-! ## A307026.P5138555899704183548

`A306917(n+1)%A139645(n+1)`
-/

namespace A307026.P5138555899704183548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306917 (n + 1)) (A139645 (n + 1))

end

end A307026.P5138555899704183548

/-!
# A307027: Number of (undirected) paths in the complete bipartite graph K_{m,n} (triangle read by rows with m = 1..n and n = 1..).

The programs for A307027, there is no canonical definition to state claims against.
-/

/-! ## A307027.P1408630023124545999

`A360850(A245300(n)+1)`
-/

namespace A307027.P1408630023124545999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A245300 n + 1).toNat

end

end A307027.P1408630023124545999

/-! ## A307027.P7582220491881958223

`gcd(A055998(A001147(n)), A289368(n))`
-/

namespace A307027.P7582220491881958223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055998 (A001147 n).toNat) (A289368 n)

end

end A307027.P7582220491881958223

/-!
# A307028: Longest path length in the stacked book graph S_{n+1} square P_n.

The programs for A307028, the canonical program `A307028.P13242048845588202224` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307028 has offset 1).

The definition of A307028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307028.P13242048845588202224

`∑[a(n-2)+2]` with `a(0)=1, a(1)=4, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A307028

/-- `∑[a(n-2)+2]` -/
def P13242048845588202224.Spec : Prop :=
  ∀ n, (P13242048845588202224.a n : ℤ) = A307028 (n + 1)

theorem P13242048845588202224.correct : P13242048845588202224.Spec := by
  intro n
  simp only [A307028, Nat.add_sub_cancel]

end A307028

/-! ## A307028.P2129471160182033756

`∑[∑[and(2, a(n-2))]]` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A307028.P2129471160182033756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f2 =>
  Nat.land 2 (f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307028.P2129471160182033756

namespace A307028

/-- `∑[∑[and(2, a(n-2))]]` -/
def P2129471160182033756.Spec : Prop :=
  ∀ n, (P2129471160182033756.a n : ℤ) = A307028 (n + 1)

end A307028

/-! ## A307028.P4563008742184293344

`or(1, a(n-1))+3+n` with `a(0)=1`
-/

namespace A307028.P4563008742184293344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1)) + 3 + n

end

end A307028.P4563008742184293344

namespace A307028

/-- `or(1, a(n-1))+3+n` -/
def P4563008742184293344.Spec : Prop :=
  ∀ n, (P4563008742184293344.a n : ℤ) = A307028 (n + 1)

end A307028

/-! ## A307028.P13776809340722837330

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A307028.P13776809340722837330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307028.P13776809340722837330

namespace A307028

/-- `∑[∑[2-a(n-1)]]` -/
def P13776809340722837330.Spec : Prop :=
  ∀ n, P13776809340722837330.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P12088340979055016925

`2*(floor(a(n-1)/2)+2)+n` with `a(0)=1`
-/

namespace A307028.P12088340979055016925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (⌊(a (n - 1) : ℚ) / 2⌋ + 2) + (n : ℤ)

end

end A307028.P12088340979055016925

namespace A307028

/-- `2*(floor(a(n-1)/2)+2)+n` -/
def P12088340979055016925.Spec : Prop :=
  ∀ n, P12088340979055016925.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P3776410265084217589

`n-2*(floor((1-a(n-1))/2)-2)` with `a(0)=1`
-/

namespace A307028.P3776410265084217589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 2 * (⌊(1 - a (n - 1) : ℚ) / 2⌋ - 2)

end

end A307028.P3776410265084217589

namespace A307028

/-- `n-2*(floor((1-a(n-1))/2)-2)` -/
def P3776410265084217589.Spec : Prop :=
  ∀ n, P3776410265084217589.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P6507241420007035546

`gcd(2, a(n-1))+2+a(n-1)+n` with `a(0)=1`
-/

namespace A307028.P6507241420007035546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (a (n - 1)) + 2 + (a (n - 1) + n)

end

end A307028.P6507241420007035546

namespace A307028

/-- `gcd(2, a(n-1))+2+a(n-1)+n` -/
def P6507241420007035546.Spec : Prop :=
  ∀ n, (P6507241420007035546.a n : ℤ) = A307028 (n + 1)

end A307028

/-! ## A307028.P15622482919061279094

`4-a(n-1)%2+a(n-1)+n` with `a(0)=1`
-/

namespace A307028.P15622482919061279094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - Int.tmod (a (n - 1)) 2 + (a (n - 1) + (n : ℤ))

end

end A307028.P15622482919061279094

namespace A307028

/-- `4-a(n-1)%2+a(n-1)+n` -/
def P15622482919061279094.Spec : Prop :=
  ∀ n, P15622482919061279094.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P1243015665611908659

`4-(floor(a(n-1))%2-a(n-1)-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A307028.P1243015665611908659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (Int.tmod (a (n - 1)) 2 - a (n - 1) - (n : ℤ))

end

end A307028.P1243015665611908659

namespace A307028

/-- `4-(floor(a(n-1))%2-a(n-1)-n)` -/
def P1243015665611908659.Spec : Prop :=
  ∀ n, P1243015665611908659.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P6096523482810929582

`floor(2*n+(n+1)/(n+2)*∑[n+2])`
-/

namespace A307028.P6096523482810929582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) + (n + 1 : ℚ) / (n + 2 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A307028.P6096523482810929582

namespace A307028

/-- `floor(2*n+(n+1)/(n+2)*∑[n+2])` -/
def P6096523482810929582.Spec : Prop :=
  ∀ n, P6096523482810929582.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P12172181540121433524

`A265284(n)+n`
-/

namespace A307028.P12172181540121433524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n + (n : ℤ)

end

end A307028.P12172181540121433524

namespace A307028

/-- `A265284(n)+n` -/
def P12172181540121433524.Spec : Prop :=
  ∀ n, P12172181540121433524.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P16702479825864768481

`∑[A265283(n)]+n`
-/

namespace A307028.P16702479825864768481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A307028.P16702479825864768481

namespace A307028

/-- `∑[A265283(n)]+n` -/
def P16702479825864768481.Spec : Prop :=
  ∀ n, P16702479825864768481.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P8450401180560209617

`A080476(n+1)+3*n`
-/

namespace A307028.P8450401180560209617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + (3 * n : ℤ)

end

end A307028.P8450401180560209617

namespace A307028

/-- `A080476(n+1)+3*n` -/
def P8450401180560209617.Spec : Prop :=
  ∀ n, P8450401180560209617.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P9789160607979290080

`A008574(n)+A000982(n)`
-/

namespace A307028.P9789160607979290080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000982 n

end

end A307028.P9789160607979290080

namespace A307028

/-- `A008574(n)+A000982(n)` -/
def P9789160607979290080.Spec : Prop :=
  ∀ n, P9789160607979290080.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P5573105201413081597

`A027379(n)+A007494(n)`
-/

namespace A307028.P5573105201413081597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n + A007494 n

end

end A307028.P5573105201413081597

namespace A307028

/-- `A027379(n)+A007494(n)` -/
def P5573105201413081597.Spec : Prop :=
  ∀ n, P5573105201413081597.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P13118603764919078063

`A065033(n)+A055999(n)`
-/

namespace A307028.P13118603764919078063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A055999 n

end

end A307028.P13118603764919078063

namespace A307028

/-- `A065033(n)+A055999(n)` -/
def P13118603764919078063.Spec : Prop :=
  ∀ n, P13118603764919078063.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P2950093632849577059

`A116940(n)+A004277(n)`
-/

namespace A307028.P2950093632849577059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n + A004277 n

end

end A307028.P2950093632849577059

namespace A307028

/-- `A116940(n)+A004277(n)` -/
def P2950093632849577059.Spec : Prop :=
  ∀ n, P2950093632849577059.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P14691884825918752519

`A130824(n)+A105343(n)`
-/

namespace A307028.P14691884825918752519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A105343 n

end

end A307028.P14691884825918752519

namespace A307028

/-- `A130824(n)+A105343(n)` -/
def P14691884825918752519.Spec : Prop :=
  ∀ n, P14691884825918752519.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P1428982336851556101

`A155212(n)-A266977(n)`
-/

namespace A307028.P1428982336851556101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - A266977 n

end

end A307028.P1428982336851556101

namespace A307028

/-- `A155212(n)-A266977(n)` -/
def P1428982336851556101.Spec : Prop :=
  ∀ n, P1428982336851556101.a n = A307028 (n + 1)

end A307028

/-! ## A307028.P11337624466623497399

`A074148(n+1)+A004273(n)`
-/

namespace A307028.P11337624466623497399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) + A004273 n

end

end A307028.P11337624466623497399

namespace A307028

/-- `A074148(n+1)+A004273(n)` -/
def P11337624466623497399.Spec : Prop :=
  ∀ n, P11337624466623497399.a n = A307028 (n + 1)

end A307028

/-!
# A307030: Number of permutations of [n] with overlapping adjacent runs.

The programs for A307030, there is no canonical definition to state claims against.
-/

/-! ## A307030.P8596246724514457272

`A004396(A000774(n)-A097591(n+1))`
-/

namespace A307030.P8596246724514457272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000774 n - A097591 (n + 1)).toNat

end

end A307030.P8596246724514457272

/-! ## A307030.P1572878950957236119

`A004396(and(A000774(n), A001478(n+1)))`
-/

namespace A307030.P1572878950957236119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.land (A000774 n) (A001478 (n + 1))).toNat

end

end A307030.P1572878950957236119

/-! ## A307030.P15759359269834528505

`A004396(and(A000774(n)+n, A000774(n)))`
-/

namespace A307030.P15759359269834528505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.land (A000774 n + (n : ℤ)) (A000774 n)).toNat

end

end A307030.P15759359269834528505

/-!
# A307031: n to the power n double factorial, n^(n!!).

The programs for A307031, there is no canonical definition to state claims against.
-/

/-! ## A307031.P15529869656827462544

`(n+1)^∏[(n+1)/a(n-1)]` with `a(0)=1`
-/

namespace A307031.P15529869656827462544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((∏ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)

end

end A307031.P15529869656827462544

/-! ## A307031.P5840123558896598123

`(n+1)^A248809(∑[n])`
-/

namespace A307031.P5840123558896598123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A248809 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A307031.P5840123558896598123

/-! ## A307031.P14745578028539815403

`(n+1)^A006882(n+1)`
-/

namespace A307031.P14745578028539815403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A006882 (n + 1) : ℤ)

end

end A307031.P14745578028539815403

/-!
# A307032: Permutation of the positive integers formed by moving each number the sum of its prime factors to the right.

The programs for A307032, there is no canonical definition to state claims against.
-/

/-! ## A307032.P6824720694320581238

`∏{e}[2^(n+1), A332073(#)]`
-/

namespace A307032.P6824720694320581238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A332073 (Nat.factorization (f1 n) p)

end

end A307032.P6824720694320581238

/-! ## A307032.P11233289859757569506

`A332073(A077342(n+1))`
-/

namespace A307032.P11233289859757569506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A077342 (n + 1)).toNat

end

end A307032.P11233289859757569506

/-! ## A307032.P5938215957759992493

`A332073(A242474(n+1))`
-/

namespace A307032.P5938215957759992493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A242474 (n + 1)).toNat

end

end A307032.P5938215957759992493

/-! ## A307032.P4570302930255170703

`A332073(A351374(n+1))`
-/

namespace A307032.P4570302930255170703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A351374 (n + 1)).toNat

end

end A307032.P4570302930255170703

/-!
# A307033: Even numbers neither in A000010 nor in A001615.

The programs for A307033, there is no canonical definition to state claims against.
-/

/-! ## A307033.P9031467183603534712

`filter[A307055(n+1), A355451(#)]`
-/

namespace A307033.P9031467183603534712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A307033.P9031467183603534712

/-! ## A307033.P9896081140834612423

`∩[A005277(n+1), A307055(n+1)]`
-/

namespace A307033.P9896081140834612423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307033.P9896081140834612423

/-! ## A307033.P15756101374691225866

`∩[2*A079695(n+1), A307055(n+1)]`
-/

namespace A307033.P15756101374691225866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307033.P15756101374691225866

/-! ## A307033.P9849624933894371646

`∩[A007617(n+1), A307055(n+1)]`
-/

namespace A307033.P9849624933894371646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307033.P9849624933894371646

/-! ## A307033.P5516245104693690974

`∩[A005277(n+1), lt[A332042(n+1), (n%2)^n]+1]`
-/

namespace A307033.P5516245104693690974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A307033.P5516245104693690974

/-!
# A307034: a(n) is the smallest integer k of the form k = x*(x + a(n-1)), such that A324920(k) = n, for some positive integer x, with a(0) = 0.

The programs for A307034, there is no canonical definition to state claims against.
-/

/-! ## A307034.P5360077864990872627

`A139693(a(n-1))` with `a(0)=0`
-/

namespace A307034.P5360077864990872627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139693 (a (n - 1)).toNat

end

end A307034.P5360077864990872627

/-! ## A307034.P13541113699678744737

`A324921(n)+A096527(A260613(n))`
-/

namespace A307034.P13541113699678744737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324921 n + A096527 (A260613 n).toNat

end

end A307034.P13541113699678744737

/-! ## A307034.P15705204920731477743

`or(A218786(A002944(n+1)), A324921(n))`
-/

namespace A307034.P15705204920731477743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218786 (A002944 (n + 1)).toNat) (A324921 n)

end

end A307034.P15705204920731477743

/-! ## A307034.P14802969298162044139

`or(A051344(A184041(n+1)), A324921(n))`
-/

namespace A307034.P14802969298162044139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051344 (A184041 (n + 1)).toNat) (A324921 n)

end

end A307034.P14802969298162044139

/-! ## A307034.P17923630364936649012

`or(A004198(A132875(n)), A324921(n))`
-/

namespace A307034.P17923630364936649012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A132875 n).toNat) (A324921 n)

end

end A307034.P17923630364936649012

/-!
# A307035: a(n) is the unique integer k such that A108951(k) = n!.

The programs for A307035, the canonical program `A307035.P101635637566545284` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307035 has offset 0).

The definition of A307035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319626, A319627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A307035.P101635637566545284

`a(n-1)*A319626(n)/A319627(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A307035

/-- `a(n-1)*A319626(n)/A319627(n)` -/
def P101635637566545284.Spec : Prop :=
  ∀ n, P101635637566545284.a n = (A307035 n : ℚ)

end A307035

/-! ## A307035.P17696629813108541698

`A122111(A325508(n))`
-/

namespace A307035.P17696629813108541698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A325508 n).toNat

end

end A307035.P17696629813108541698

namespace A307035

/-- `A122111(A325508(n))` -/
def P17696629813108541698.Spec : Prop :=
  ∀ n, P17696629813108541698.a n = A307035 n

end A307035

/-! ## A307035.P7869428927497278565

`A329900(A000142(n))`
-/

namespace A307035.P7869428927497278565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A000142 n).toNat

end

end A307035.P7869428927497278565

namespace A307035

/-- `A329900(A000142(n))` -/
def P7869428927497278565.Spec : Prop :=
  ∀ n, P7869428927497278565.a n = A307035 n

end A307035

/-! ## A307035.P10962360100175894224

`∏[A004277(n)/A064989(A008458(n))]`
-/

namespace A307035.P10962360100175894224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A064989 (A008458 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A307035.P10962360100175894224

namespace A307035

/-- `∏[A004277(n)/A064989(A008458(n))]` -/
def P10962360100175894224.Spec : Prop :=
  ∀ n, P10962360100175894224.a n = (A307035 n : ℚ)

end A307035

/-! ## A307035.P9158258957352100116

`∏[A028310(n)/A064989(A028310(n))]`
-/

namespace A307035.P9158258957352100116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A064989 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A307035.P9158258957352100116

namespace A307035

/-- `∏[A028310(n)/A064989(A028310(n))]` -/
def P9158258957352100116.Spec : Prop :=
  ∀ n, P9158258957352100116.a n = (A307035 n : ℚ)

end A307035

/-! ## A307035.P5988600127010918187

`∏[(A000007(n)+n)/A064989(A000007(n)+n)]`
-/

namespace A307035.P5988600127010918187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ) : ℚ) / (A064989 (A000007 n + (n : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A307035.P5988600127010918187

namespace A307035

/-- `∏[(A000007(n)+n)/A064989(A000007(n)+n)]` -/
def P5988600127010918187.Spec : Prop :=
  ∀ n, P5988600127010918187.a n = (A307035 n : ℚ)

end A307035

/-! ## A307035.P12878789120652697432

`n*a(n-1)/A064989(n)` with `a(0)=1`
-/

namespace A307035.P12878789120652697432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (A064989 n : ℚ)

end

end A307035.P12878789120652697432

namespace A307035

/-- `n*a(n-1)/A064989(n)` -/
def P12878789120652697432.Spec : Prop :=
  ∀ n, P12878789120652697432.a n = (A307035 n : ℚ)

end A307035

/-! ## A307035.P6675406259419418022

`n*a(n-1)/abs(A290099(n))` with `a(0)=1`
-/

namespace A307035.P6675406259419418022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * a (n - 1) / (|A290099 n| : ℚ)

end

end A307035.P6675406259419418022

namespace A307035

/-- `n*a(n-1)/abs(A290099(n))` -/
def P6675406259419418022.Spec : Prop :=
  ∀ n, P6675406259419418022.a n = (A307035 n : ℚ)

end A307035

/-!
# A307037: The unitary analog of the alternating sum-of-divisors function (A206369).

The programs for A307037, the canonical program `A307037.P8535599594476544073` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307037 has offset 1).

The definition of A307037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A307037.P8535599594476544073

`∑{d}[n+1, A074722(#)*A295295((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A307037

/-- `∑{d}[n+1, A074722(#)*A295295((n+1)/#)]` -/
def P8535599594476544073.Spec : Prop :=
  ∀ n, P8535599594476544073.a n = A307037 (n + 1)

theorem P8535599594476544073.correct : P8535599594476544073.Spec := by
  intro n
  simp only [A307037, Nat.add_sub_cancel]

end A307037

/-! ## A307037.P2871586328560407326

`A047994(A350389(n+1))*A358347(n+1)`
-/

namespace A307037.P2871586328560407326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A350389 (n + 1)).toNat * A358347 (n + 1)

end

end A307037.P2871586328560407326

namespace A307037

/-- `A047994(A350389(n+1))*A358347(n+1)` -/
def P2871586328560407326.Spec : Prop :=
  ∀ n, P2871586328560407326.a n = A307037 (n + 1)

end A307037

/-! ## A307037.P13757897820413528747

`A034676(A071974(n+1))*A047994(A350389(n+1))`
-/

namespace A307037.P13757897820413528747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A071974 (n + 1)).toNat * A047994 (A350389 (n + 1)).toNat

end

end A307037.P13757897820413528747

namespace A307037

/-- `A034676(A071974(n+1))*A047994(A350389(n+1))` -/
def P13757897820413528747.Spec : Prop :=
  ∀ n, P13757897820413528747.a n = A307037 (n + 1)

end A307037

/-! ## A307037.P15295192125612954716

`A034448(A350388(n+1))*A047994(A350389(n+1))`
-/

namespace A307037.P15295192125612954716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A350388 (n + 1)).toNat * A047994 (A350389 (n + 1)).toNat

end

end A307037.P15295192125612954716

namespace A307037

/-- `A034448(A350388(n+1))*A047994(A350389(n+1))` -/
def P15295192125612954716.Spec : Prop :=
  ∀ n, P15295192125612954716.a n = A307037 (n + 1)

end A307037

/-! ## A307037.P9354557474867875380

`A034448(n+1)/A358346(n+1)*A047994(A350389(n+1))`
-/

namespace A307037.P9354557474867875380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A358346 (n + 1) : ℚ) * (A047994 (A350389 (n + 1)).toNat : ℚ)

end

end A307037.P9354557474867875380

namespace A307037

/-- `A034448(n+1)/A358346(n+1)*A047994(A350389(n+1))` -/
def P9354557474867875380.Spec : Prop :=
  ∀ n, P9354557474867875380.a n = (A307037 (n + 1) : ℚ)

end A307037

/-! ## A307037.P4068243981814893425

`(A345451(n+1)+1)/A358346(n+1)*A047994(A350389(n+1))`
-/

namespace A307037.P4068243981814893425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1 : ℚ) / (A358346 (n + 1) : ℚ) * (A047994 (A350389 (n + 1)).toNat : ℚ)

end

end A307037.P4068243981814893425

namespace A307037

/-- `(A345451(n+1)+1)/A358346(n+1)*A047994(A350389(n+1))` -/
def P4068243981814893425.Spec : Prop :=
  ∀ n, P4068243981814893425.a n = (A307037 (n + 1) : ℚ)

end A307037

/-! ## A307037.P8056606049238579816

`A206369((n+1)²/∏{p}[n+1, #])/A206369((n+1)/∏{p}[n+1, #])`
-/

namespace A307037.P8056606049238579816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) / (A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A307037.P8056606049238579816

namespace A307037

/-- `A206369((n+1)²/∏{p}[n+1, #])/A206369((n+1)/∏{p}[n+1, #])` -/
def P8056606049238579816.Spec : Prop :=
  ∀ n, P8056606049238579816.a n = (A307037 (n + 1) : ℚ)

end A307037

/-!
# A307039: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-1))/((1-x)^k+x^k).

The programs for A307039, there is no canonical definition to state claims against.
-/

/-! ## A307039.P4544924709130244377

`A258065(A284938(n+1)^A293960(n))`
-/

namespace A307039.P4544924709130244377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258065 (SequenceMachineLib.roundAway ((A284938 (n + 1) : ℚ) ^ (A293960 n : ℤ))).toNat

end

end A307039.P4544924709130244377

/-! ## A307039.P7435291421268864477

`A258065(A284938(n+1)%A090857(n))`
-/

namespace A307039.P7435291421268864477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258065 (Int.tmod (A284938 (n + 1)) (A090857 n)).toNat

end

end A307039.P7435291421268864477

/-! ## A307039.P3998077168216729213

`1-A004273(A284938(n+1)^A293960(n))`
-/

namespace A307039.P3998077168216729213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004273 (SequenceMachineLib.roundAway ((A284938 (n + 1) : ℚ) ^ (A293960 n : ℤ))).toNat

end

end A307039.P3998077168216729213

/-! ## A307039.P17664430087283167258

`A258065(A284938(n+1)^A306846(n+2))`
-/

namespace A307039.P17664430087283167258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258065 (SequenceMachineLib.roundAway ((A284938 (n + 1) : ℚ) ^ (A306846 (n + 2) : ℤ))).toNat

end

end A307039.P17664430087283167258

/-!
# A307040: a(n) = Sum_{k=0..floor(n/6)} (-1)^k*binomial(n,6*k).

The programs for A307040, there is no canonical definition to state claims against.
-/

/-! ## A307040.P5674356028892257787

`A307039((n+4)²-∑[n+1])`
-/

namespace A307040.P5674356028892257787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307040.P5674356028892257787

/-! ## A307040.P1860979978273232865

`A307039(A055999(n+3))+A000007(n+1)`
-/

namespace A307040.P1860979978273232865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A055999 (n + 3)).toNat + A000007 (n + 1)

end

end A307040.P1860979978273232865

/-! ## A307040.P9217263143073027520

`A307039(A055999(n+3))%(A058499(n)+1)`
-/

namespace A307040.P9217263143073027520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307039 (A055999 (n + 3)).toNat) (A058499 n + 1)

end

end A307040.P9217263143073027520

/-! ## A307040.P11695812782641821353

`A307039(A055999(n+3))+2%A033999(n)`
-/

namespace A307040.P11695812782641821353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A055999 (n + 3)).toNat + Int.tmod 2 (A033999 n)

end

end A307040.P11695812782641821353

/-! ## A307040.P4129375095580653106

`A307039(A055999(n+3))+A014045(xor(n, n+1))`
-/

namespace A307040.P4129375095580653106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A055999 (n + 3)).toNat + A014045 (Nat.xor n (n + 1))

end

end A307040.P4129375095580653106

/-! ## A307040.P15627902662798913197

`A019426(A307055(n+1))*A307039(A055999(n+3))`
-/

namespace A307040.P15627902662798913197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A307055 (n + 1)).toNat * A307039 (A055999 (n + 3)).toNat

end

end A307040.P15627902662798913197

/-! ## A307040.P8018263454738453901

`A019426(A339273(n+1))*A307039(A055999(n+3))`
-/

namespace A307040.P8018263454738453901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A339273 (n + 1)).toNat * A307039 (A055999 (n + 3)).toNat

end

end A307040.P8018263454738453901

/-!
# A307041: a(n) = Sum_{k=0..floor(n/7)} (-1)^k*binomial(n,7*k).

The programs for A307041, there is no canonical definition to state claims against.
-/

/-! ## A307041.P10683697977484080801

`A307039(eq[8, A129713(n)])`
-/

namespace A307041.P10683697977484080801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307041.P10683697977484080801

/-! ## A307041.P9154838952578493525

`A307039(eq[7, A004736(n+1)])`
-/

namespace A307041.P9154838952578493525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307041.P9154838952578493525

/-! ## A307041.P11828135974644270376

`A307039(A000217(n+5)+6+n+n)`
-/

namespace A307041.P11828135974644270376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A000217 (n + 5) + 6 + (n : ℤ) + (n : ℤ)).toNat

end

end A307041.P11828135974644270376

/-! ## A307041.P12630924335580704272

`A307039(A002378(n+4)+2-∑[n+1])`
-/

namespace A307041.P12630924335580704272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A002378 (n + 4) + 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A307041.P12630924335580704272

/-! ## A307041.P8260944350372614322

`A307039(eq[A088838(3*n+5)+2, A025581(n)])`
-/

namespace A307041.P8260944350372614322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088838 (3 * n + 5) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A307041.P8260944350372614322

/-!
# A307042: Partial sums of the exponential divisors sum function: Sum_{k=1..n} esigma(k), where esigma is A051377.

The programs for A307042, there is no canonical definition to state claims against.
-/

/-! ## A307042.P12079284620384765867

`∑[A051377(n+1)]`
-/

namespace A307042.P12079284620384765867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307042.P12079284620384765867

/-! ## A307042.P13293524258750589041

`∑[A126164(n+1)+1+n]`
-/

namespace A307042.P13293524258750589041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307042.P13293524258750589041

/-! ## A307042.P343383923033497907

`∑[A000203(n+1)-A160135(n+1)]+1`
-/

namespace A307042.P343383923033497907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A160135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A307042.P343383923033497907

/-! ## A307042.P8578530710361048703

`a(n-1)+A051377(n+1)%A064549(n+1)` with `a(0)=1`
-/

namespace A307042.P8578530710361048703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A051377 (n + 1)) (A064549 (n + 1))

end

end A307042.P8578530710361048703

/-! ## A307042.P13067889632371702103

`∑[A007947(n+1)*A241405(A003557(n+1))]`
-/

namespace A307042.P13067889632371702103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A241405 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307042.P13067889632371702103

/-! ## A307042.P14418715464497811627

`a(n-1)+A051377(n+1)%A000716(n)` with `a(0)=1`
-/

namespace A307042.P14418715464497811627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A051377 (n + 1)) (A000716 n)

end

end A307042.P14418715464497811627

/-!
# A307043: Numbers n such that A307042(n) = Sum_{k=1..n} esigma(k) is divisible by n, where esigma(k) is sum of exponential divisors of k (A051377).

The programs for A307043, there is no canonical definition to state claims against.
-/

/-! ## A307043.P1626208374857042914

`record[gcd(A004151(n+1), A307042(n+1))]`
-/

namespace A307043.P1626208374857042914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004151 (n + 1)) (A307042 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307043.P1626208374857042914

/-!
# A307044: a(n) = Sum_{k=0..floor(n/8)} (-1)^k*binomial(n,8*k).

The programs for A307044, there is no canonical definition to state claims against.
-/

/-! ## A307044.P4300169633838225662

`A307039(eq[7, A025581(n)])`
-/

namespace A307044.P4300169633838225662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307044.P4300169633838225662

/-! ## A307044.P17095134539163939419

`A307039(A052905(n+5)-3)`
-/

namespace A307044.P17095134539163939419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A052905 (n + 5) - 3).toNat

end

end A307044.P17095134539163939419

/-! ## A307044.P13766257630207442953

`A307039(A046691(n+6)-4)`
-/

namespace A307044.P13766257630207442953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A046691 (n + 6) - 4).toNat

end

end A307044.P13766257630207442953

/-! ## A307044.P13768924925953245371

`A307039(A000217(n+8)-8)`
-/

namespace A307044.P13768924925953245371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A000217 (n + 8) - 8).toNat

end

end A307044.P13768924925953245371

/-! ## A307044.P7516905118122381836

`A307039(A000124(n+8)-9)`
-/

namespace A307044.P7516905118122381836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A000124 (n + 8) - 9).toNat

end

end A307044.P7516905118122381836

/-!
# A307045: a(n) = Sum_{k=0..floor(n/9)} (-1)^k*binomial(n,9*k).

The programs for A307045, there is no canonical definition to state claims against.
-/

/-! ## A307045.P1487119701351647088

`A307039(A052905(n+5)+n+5)`
-/

namespace A307045.P1487119701351647088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A307045.P1487119701351647088

/-! ## A307045.P11925438645278031494

`1-C(n, A067471(n+4))`
-/

namespace A307045.P11925438645278031494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A067471 (n + 4)).toNat : ℤ)

end

end A307045.P11925438645278031494

/-! ## A307045.P17108652541671969794

`2-A302042(2*A306860(n))`
-/

namespace A307045.P17108652541671969794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A302042 (2 * A306860 n).toNat

end

end A307045.P17108652541671969794

/-! ## A307045.P8559575011896611534

`A000161(A075462(n+1))-C(n, 9)`
-/

namespace A307045.P8559575011896611534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A075462 (n + 1)).toNat - (Nat.choose n 9 : ℤ)

end

end A307045.P8559575011896611534

/-! ## A307045.P2792231102337761543

`A290695(A142886(2*n))-C(n, 9)`
-/

namespace A307045.P2792231102337761543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290695 (A142886 (2 * n)).toNat - (Nat.choose n 9 : ℤ)

end

end A307045.P2792231102337761543

/-!
# A307046: Numbers k such that k^2 reversed is a prime and k^2 + (k^2 reversed) is a semiprime.

The programs for A307046, there is no canonical definition to state claims against.
-/

/-! ## A307046.P1688586873672023432

`A052349(n+1)+A000218(A099336(n+1))`
-/

namespace A307046.P1688586873672023432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (n + 1) + A000218 (A099336 (n + 1)).toNat

end

end A307046.P1688586873672023432

/-!
# A307047: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. 1/((1+x)^k-x^k).

The programs for A307047, there is no canonical definition to state claims against.
-/

/-! ## A307047.P150444428371574034

`A137683(A061579(n)^A213027(n))`
-/

namespace A307047.P150444428371574034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137683 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A213027 n : ℤ))).toNat

end

end A307047.P150444428371574034

/-! ## A307047.P11689274589635302502

`(-A001222(13^A317023(n)))^A002262(n)`
-/

namespace A307047.P11689274589635302502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A317023 n : ℤ))).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A307047.P11689274589635302502

/-! ## A307047.P16476794249935787183

`(-A001222(13^A317023(n)))^A053616(n)`
-/

namespace A307047.P16476794249935787183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A001222 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A317023 n : ℤ))).toNat : ℚ) ^ (A053616 n : ℤ)

end

end A307047.P16476794249935787183

/-! ## A307047.P13485549660549042648

`(-A001221(C(16*n+13, A290428(n))))^A002262(n)`
-/

namespace A307047.P13485549660549042648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A001221 (Nat.choose (16 * n + 13) (A290428 n).toNat) : ℚ) ^ (A002262 n : ℤ)

end

end A307047.P13485549660549042648

/-!
# A307050: Expansion of theta_3(theta_3(x) - 1), where theta_3() is the Jacobi theta function.

The programs for A307050, there is no canonical definition to state claims against.
-/

/-! ## A307050.P56675836444353362

`and(A076875(n)², A299277(n))`
-/

namespace A307050.P56675836444353362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076875 n ^ 2) (A299277 n)

end

end A307050.P56675836444353362

/-! ## A307050.P8154166694870505334

`A080918(n*A116406(n+4))`
-/

namespace A307050.P8154166694870505334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 ((n : ℤ) * A116406 (n + 4)).toNat

end

end A307050.P8154166694870505334

/-! ## A307050.P9969157491989770039

`and(A076875(n)², A084814(n+1))`
-/

namespace A307050.P9969157491989770039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076875 n ^ 2) (A084814 (n + 1))

end

end A307050.P9969157491989770039

/-! ## A307050.P14760099981521125210

`and(A061283(n+1), A299269(A061283(n+1)))`
-/

namespace A307050.P14760099981521125210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061283 (n + 1)) (A299269 (A061283 (n + 1)).toNat)

end

end A307050.P14760099981521125210

/-!
# A307051: Lesser of amicable numbers pair m < n such that A307037(m) = n and A307037(n) = m.

The programs for A307051, there is no canonical definition to state claims against.
-/

/-! ## A307051.P14204049119885712457

`A307037(A307052(n+1))`
-/

namespace A307051.P14204049119885712457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (A307052 (n + 1)).toNat

end

end A307051.P14204049119885712457

/-! ## A307051.P16495585177603850753

`A361810(4^(n+1))`
-/

namespace A307051.P16495585177603850753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361810 (4 ^ (n + 1))

end

end A307051.P16495585177603850753

/-!
# A307052: Larger of amicable numbers pair m < n such that A307037(m) = n and A307037(n) = m.

The programs for A307052, there is no canonical definition to state claims against.
-/

/-! ## A307052.P755159116414517683

`A307037(A307051(n+1))`
-/

namespace A307052.P755159116414517683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (A307051 (n + 1)).toNat

end

end A307052.P755159116414517683

/-! ## A307052.P17526461157116406926

`A292271(A038183(n+1))`
-/

namespace A307052.P17526461157116406926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292271 (A038183 (n + 1)).toNat

end

end A307052.P17526461157116406926

/-!
# A307055: Even k such that psi(m) = k has no solution, where psi is the Dedekind psi function A001615.

The programs for A307055, there is no canonical definition to state claims against.
-/

/-! ## A307055.P9113290906160292585

`lt[A332042(n+1), n%2]+1`
-/

namespace A307055.P9113290906160292585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A307055.P9113290906160292585

/-! ## A307055.P11029561387307745572

`lt[A332042(round(sqrt(n²+1))), (-1)^n]`
-/

namespace A307055.P11029561387307745572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A307055.P11029561387307745572

/-! ## A307055.P1407742273136722316

`record[gcd(2*(n+1), A332042(2*(n+1)))]`
-/

namespace A307055.P1407742273136722316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A332042 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307055.P1407742273136722316

/-! ## A307055.P3830216934903420818

`eq[A010675(n), A332042(A028310(n))]`
-/

namespace A307055.P3830216934903420818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307055.P3830216934903420818

/-! ## A307055.P6203079275352153618

`eq[A073097(n), A332042(A233583(n+1))]`
-/

namespace A307055.P6203079275352153618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307055.P6203079275352153618

/-! ## A307055.P11724290766754644284

`eq[A332042(A233583(n+1)), A346773(n+1)]`
-/

namespace A307055.P11724290766754644284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307055.P11724290766754644284

/-! ## A307055.P5887111176799542383

`eq[A082519(n+2), A332042(A233583(n+1))]`
-/

namespace A307055.P5887111176799542383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082519 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307055.P5887111176799542383

/-!
# A307056: Row n = digits of A025487(n) in primorial base.

The programs for A307056, there is no canonical definition to state claims against.
-/

/-! ## A307056.P8327406238827645671

`A108964(∑[A001511(A038754(n))])`
-/

namespace A307056.P8327406238827645671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A038754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307056.P8327406238827645671

/-! ## A307056.P3100538731507081633

`A108964(∑[A108964(A038754(n))])`
-/

namespace A307056.P3100538731507081633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A038754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307056.P3100538731507081633

/-! ## A307056.P4907225831258907232

`A108964(∑[A000034(A078478(n+3))])`
-/

namespace A307056.P4907225831258907232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A078478 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307056.P4907225831258907232

/-! ## A307056.P12692870065166638727

`A035185(A283981(A002808(n+1)*A085951(2*(n+1))))`
-/

namespace A307056.P12692870065166638727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A283981 (A002808 (n + 1) * A085951 (2 * (n + 1))).toNat).toNat

end

end A307056.P12692870065166638727

/-! ## A307056.P15293573911014024668

`A108964(∑[A000034(A007088(n))])`
-/

namespace A307056.P15293573911014024668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A007088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A307056.P15293573911014024668

/-!
# A307057: Expansion of 1/(2 - Product_{k>=2} 1/(1 - x^k)).

The programs for A307057, there is no canonical definition to state claims against.
-/

/-! ## A307057.P8964668758917145086

`A261915(A057648(n))`
-/

namespace A307057.P8964668758917145086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (A057648 n).toNat

end

end A307057.P8964668758917145086

/-! ## A307057.P12612339469253431420

`Δ[A002024(∑[A089427(n)])]`
-/

namespace A307057.P12612339469253431420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307057.P12612339469253431420

/-! ## A307057.P18403577992796410169

`Δ[A259361(record[A058127(n+1)])]`
-/

namespace A307057.P18403577992796410169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A307057.P18403577992796410169

/-! ## A307057.P3879345415074911552

`A051882(A051841(n+1)+1)-2`
-/

namespace A307057.P3879345415074911552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051882 (A051841 (n + 1) + 1).toNat - 2

end

end A307057.P3879345415074911552

/-! ## A307057.P15744091562509803809

`A320797(n)+A086016(A014513(n))`
-/

namespace A307057.P15744091562509803809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320797 n + A086016 (A014513 n).toNat

end

end A307057.P15744091562509803809

/-!
# A307058: Expansion of 1/(2 - Product_{k>=1} (1 + x^(2*k-1))).

The programs for A307058, there is no canonical definition to state claims against.
-/

/-! ## A307058.P4278469445560031824

`abs(A307060(n))`
-/

namespace A307058.P4278469445560031824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307060 n|

end

end A307058.P4278469445560031824

/-! ## A307058.P5641358928450567193

`lcm((-1)^n, A307060(round(acot(n)+n)))`
-/

namespace A307058.P5641358928450567193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A307060 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A307058.P5641358928450567193

/-! ## A307058.P3388477553359687710

`A033999(n)*A307060(n)`
-/

namespace A307058.P3388477553359687710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A307060 n

end

end A307058.P3388477553359687710

/-! ## A307058.P10833250604498607684

`gcd(A000038(n), A307060(n))`
-/

namespace A307058.P10833250604498607684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A307060 n)

end

end A307058.P10833250604498607684

/-! ## A307058.P10579669443394807372

`lcm(A020985(n), A307060(n))`
-/

namespace A307058.P10579669443394807372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A307060 n)

end

end A307058.P10579669443394807372

/-!
# A307060: Expansion of 1/(2 - Product_{k>=1} 1/(1 + x^k)).

The programs for A307060, there is no canonical definition to state claims against.
-/

/-! ## A307060.P14889245005710555447

`(-1)^n*A307058(n)`
-/

namespace A307060.P14889245005710555447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A307058 n

end

end A307060.P14889245005710555447

/-! ## A307060.P1451443844896632928

`A307058(char[1]+n)/(-1)^n`
-/

namespace A307060.P1451443844896632928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307058 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A307060.P1451443844896632928

/-! ## A307060.P8981632143029441801

`floor(A307058(n)/A033999(n))`
-/

namespace A307060.P8981632143029441801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307058 n : ℚ) / (A033999 n : ℚ)⌋

end

end A307060.P8981632143029441801

/-! ## A307060.P14854514041437263293

`A307058(n)*A033999(3*n+2)`
-/

namespace A307060.P14854514041437263293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307058 n * A033999 (3 * n + 2)

end

end A307060.P14854514041437263293

/-! ## A307060.P5674448575836005619

`floor(A307058(n)/A131531(3*(n+1)))`
-/

namespace A307060.P5674448575836005619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307058 n : ℚ) / (A131531 (3 * (n + 1)) : ℚ)⌋

end

end A307060.P5674448575836005619

/-!
# A307061: Even-time state complexity profile of Leech lattice constructed as a laminated Eisenstein lattice.

The programs for A307061, there is no canonical definition to state claims against.
-/

/-! ## A307061.P9714867378073472863

`A028922(2*n)`
-/

namespace A307061.P9714867378073472863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028922 (2 * n)

end

end A307061.P9714867378073472863

/-! ## A307061.P16776028850694656823

`A028922(A005843(n))+char[20]`
-/

namespace A307061.P16776028850694656823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028922 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A307061.P16776028850694656823

/-! ## A307061.P14840467262673243028

`lcm(A028922(A005843(n)), A265848(n))`
-/

namespace A307061.P14840467262673243028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028922 (A005843 n).toNat) (A265848 n)

end

end A307061.P14840467262673243028

/-! ## A307061.P9048923989833843787

`A028922(A005843(n))^A007318(∑[n])`
-/

namespace A307061.P9048923989833843787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028922 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A307061.P9048923989833843787

/-! ## A307061.P7600130384090374502

`A028922(A005843(n))%A002975(n+1)`
-/

namespace A307061.P7600130384090374502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028922 (A005843 n).toNat) (A002975 (n + 1))

end

end A307061.P7600130384090374502

/-!
# A307062: Expansion of 1/(2 - Product_{k>=1} (1 + x^k)^k).

The programs for A307062, there is no canonical definition to state claims against.
-/

/-! ## A307062.P1206806303178351754

`A194640(A139782(n))`
-/

namespace A307062.P1206806303178351754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A139782 n).toNat

end

end A307062.P1206806303178351754

/-! ## A307062.P1227589320424179822

`A036541(A107330(n+1))`
-/

namespace A307062.P1227589320424179822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036541 (A107330 (n + 1)).toNat

end

end A307062.P1227589320424179822

/-! ## A307062.P14011287568156299952

`A226190(A123908(2*n))`
-/

namespace A307062.P14011287568156299952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A123908 (2 * n)).toNat

end

end A307062.P14011287568156299952

/-!
# A307063: Expansion of 1/(2 - Product_{k>=1} (1 + k*x^k)).

The programs for A307063, there is no canonical definition to state claims against.
-/

/-! ## A307063.P15322886579983013176

`A062108(A189661(n+1)+A015448(n))`
-/

namespace A307063.P15322886579983013176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A189661 (n + 1) + A015448 n).toNat

end

end A307063.P15322886579983013176

/-! ## A307063.P4382516353455659842

`A062108(A231188(n+1)+A015448(n))`
-/

namespace A307063.P4382516353455659842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A231188 (n + 1) + A015448 n).toNat

end

end A307063.P4382516353455659842

/-! ## A307063.P626838666551248451

`A062108(or(A015448(n), A032742(n+1)))`
-/

namespace A307063.P626838666551248451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lor (A015448 n) (A032742 (n + 1))).toNat

end

end A307063.P626838666551248451

/-! ## A307063.P15631562834953440009

`A062108(or(A015448(n), A329385(n+1)))`
-/

namespace A307063.P15631562834953440009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lor (A015448 n) (A329385 (n + 1))).toNat

end

end A307063.P15631562834953440009

/-!
# A307066: a(n) = exp(-1) * Sum_{k>=0} (n*k + 1)^n/k!.

The programs for A307066, there is no canonical definition to state claims against.
-/

/-! ## A307066.P7310640073911560125

`A005838(A249929(n)+A002450(n))`
-/

namespace A307066.P7310640073911560125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005838 (A249929 n + A002450 n).toNat

end

end A307066.P7310640073911560125

/-!
# A307067: Expansion of 1/(2 - Product_{k>=2} (1 + x^k)).

The programs for A307067, there is no canonical definition to state claims against.
-/

/-! ## A307067.P7597160363530761718

`A194967(A232091(a(n-1)+a(n-2))+1)-1` with `a(0)=1, a(1)=0`
-/

namespace A307067.P7597160363530761718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A194967 (A232091 (a (n - 1) + a (n - 2)).toNat + 1).toNat - 1

end

end A307067.P7597160363530761718

/-! ## A307067.P1576332383088404184

`A273190(A148175(n+1))`
-/

namespace A307067.P1576332383088404184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A148175 (n + 1)).toNat

end

end A307067.P1576332383088404184

/-! ## A307067.P10861497064926169070

`A273190(A148176(n+1))`
-/

namespace A307067.P10861497064926169070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A148176 (n + 1)).toNat

end

end A307067.P10861497064926169070

/-! ## A307067.P11780352581630434058

`A373811(A000607(n)*A339292(n+1))`
-/

namespace A307067.P11780352581630434058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A000607 n * A339292 (n + 1)).toNat

end

end A307067.P11780352581630434058

/-!
# A307068: Expansion of 1/(1 - Sum_{k>=1} k!*x^(k*(k+1)/2) / Product_{j=1..k} (1 - x^j)).

The programs for A307068, there is no canonical definition to state claims against.
-/

/-! ## A307068.P16630358638248955533

`A087817(A056275(n+1))`
-/

namespace A307068.P16630358638248955533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A056275 (n + 1)).toNat

end

end A307068.P16630358638248955533

/-! ## A307068.P13312494971939340250

`A243283(A246566(n)+A149596(n))`
-/

namespace A307068.P13312494971939340250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A246566 n + A149596 n).toNat

end

end A307068.P13312494971939340250

/-!
# A307070: a(n) is the number of decimal places before the decimal expansion of 1/n terminates, or the period of the recurring portion of 1/n if it is recurring.

The programs for A307070, there is no canonical definition to state claims against.
-/

/-! ## A307070.P8913037400726949753

`A051626(n+1)+A121341(n+1)%A054710(n+1)`
-/

namespace A307070.P8913037400726949753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1) + Int.tmod (A121341 (n + 1)) (A054710 (n + 1))

end

end A307070.P8913037400726949753

/-! ## A307070.P3191874013681059763

`gcd(A007732(n+1)*A051628(n+1), A051626(n+1))`
-/

namespace A307070.P3191874013681059763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007732 (n + 1) * A051628 (n + 1)) (A051626 (n + 1))

end

end A307070.P3191874013681059763

/-! ## A307070.P4892793299048185406

`gcd(A121341(n+1)*A176921(n+1), A051626(2*(n+1)))`
-/

namespace A307070.P4892793299048185406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121341 (n + 1) * A176921 (n + 1)) (A051626 (2 * (n + 1)))

end

end A307070.P4892793299048185406

/-! ## A307070.P10777869505365354573

`A054710(A078268(n+1))%record[A166974(n)]`
-/

namespace A307070.P10777869505365354573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054710 (A078268 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A307070.P10777869505365354573

/-!
# A307071: Number of simple graphs on n nodes with crossing number 1.

The programs for A307071, there is no canonical definition to state claims against.
-/

/-! ## A307071.P17819526486185539108

`A039094(A115587(n+1))*A333867(n+1)`
-/

namespace A307071.P17819526486185539108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039094 (A115587 (n + 1)).toNat * A333867 (n + 1)

end

end A307071.P17819526486185539108

/-! ## A307071.P5295899105102656235

`∑[A129154(2*C(n, 4)+1)]`
-/

namespace A307071.P5295899105102656235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129154 (2 * Nat.choose n 4 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307071.P5295899105102656235

/-! ## A307071.P3754881047078646293

`(3-n)²*∑[A198318(n²)]`
-/

namespace A307071.P3754881047078646293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307071.P3754881047078646293

/-!
# A307072: Number of simple connected graphs on n nodes with crossing number 1.

The programs for A307072, there is no canonical definition to state claims against.
-/

/-! ## A307072.P14259709644318360422

`floor(A268215(n)/90)`
-/

namespace A307072.P14259709644318360422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268215 n : ℚ) / 90⌋

end

end A307072.P14259709644318360422

/-! ## A307072.P3666115489767207394

`floor(n/4)*A360333(2^n)`
-/

namespace A307072.P3666115489767207394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * A360333 (2 ^ n)

end

end A307072.P3666115489767207394

/-! ## A307072.P11761467643523380263

`A038141(lt[xor(n, floor(n/2)), n])`
-/

namespace A307072.P11761467643523380263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038141 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A307072.P11761467643523380263

/-!
# A307073: Expansion of 1/(1 - Sum_{k>=1} mu(k)^2*x^k/(1 - x^k)^2).

The programs for A307073, there is no canonical definition to state claims against.
-/

/-! ## A307073.P1442339739870010599

`A157271(A132353(n)+A008346(n))`
-/

namespace A307073.P1442339739870010599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A132353 n + A008346 n).toNat

end

end A307073.P1442339739870010599

/-! ## A307073.P2443805785071563055

`A350906(n)+A056239(A366677(n))`
-/

namespace A307073.P2443805785071563055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350906 n + A056239 (A366677 n).toNat

end

end A307073.P2443805785071563055

/-! ## A307073.P11496343075685090770

`A100196(A000669(n+1)*A367398(2*n))`
-/

namespace A307073.P11496343075685090770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000669 (n + 1) * A367398 (2 * n)).toNat

end

end A307073.P11496343075685090770

/-!
# A307074: a(n) is the smallest k such that A307092(k) = n.

The programs for A307074, there is no canonical definition to state claims against.
-/

/-! ## A307074.P15417257363663173419

`∑[A118168(A057574(n))%32]`
-/

namespace A307074.P15417257363663173419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118168 (A057574 n).toNat) 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307074.P15417257363663173419

/-! ## A307074.P15549581068908002542

`or(record[A098550(n+1)], A308349(n+1))`
-/

namespace A307074.P15549581068908002542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A308349 (n + 1))

end

end A307074.P15549581068908002542

/-! ## A307074.P226305304401278660

`A003986(A024892(n+1)+A006190(n))`
-/

namespace A307074.P226305304401278660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A024892 (n + 1) + A006190 n).toNat

end

end A307074.P226305304401278660

/-! ## A307074.P7862535342735760929

`A003986(or(A000043(n+1), A006190(n)))`
-/

namespace A307074.P7862535342735760929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Int.lor (A000043 (n + 1)) (A006190 n)).toNat

end

end A307074.P7862535342735760929

/-!
# A307075: Expansion of 1/(1 - Sum_{k>=1} mu(k)*x^k*(1 + x^k)/(1 - x^k)^3).

The programs for A307075, there is no canonical definition to state claims against.
-/

/-! ## A307075.P6057456164553903949

`A073188(A354504(n))`
-/

namespace A307075.P6057456164553903949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A354504 n).toNat

end

end A307075.P6057456164553903949

/-! ## A307075.P17225979884536876157

`A157271(A294843(n))`
-/

namespace A307075.P17225979884536876157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A294843 n).toNat

end

end A307075.P17225979884536876157

/-!
# A307078: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-2))/((1-x)^k-x^k).

The programs for A307078, there is no canonical definition to state claims against.
-/

/-! ## A307078.P15370512971954482016

`A331789(n+2)-A094518(A325108(n))`
-/

namespace A307078.P15370512971954482016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331789 (n + 2) - A094518 (A325108 n).toNat

end

end A307078.P15370512971954482016

/-! ## A307078.P2056896167154041025

`A217839(n+1)%A220991(n+1)-A180562(n)`
-/

namespace A307078.P2056896167154041025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217839 (n + 1)) (A220991 (n + 1)) - A180562 n

end

end A307078.P2056896167154041025

/-! ## A307078.P11127421596427646400

`A212737(∑[A137795(n+1)!])`
-/

namespace A307078.P11127421596427646400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A137795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307078.P11127421596427646400

/-! ## A307078.P5107377598662306836

`A351347(A279828(n))+A306534(n)`
-/

namespace A307078.P5107377598662306836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351347 (A279828 n).toNat + A306534 n

end

end A307078.P5107377598662306836

/-! ## A307078.P9560646447078585740

`and(A331789(n+2), A351868(A126646(n)))`
-/

namespace A307078.P9560646447078585740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A331789 (n + 2)) (A351868 (A126646 n).toNat)

end

end A307078.P9560646447078585740

/-!
# A307079: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. ((1-x)^(k-2))/((1-x)^k+x^k).

The programs for A307079, there is no canonical definition to state claims against.
-/

/-! ## A307079.P4036728561440903920

`and(3, A342078(A233308(n)))`
-/

namespace A307079.P4036728561440903920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A342078 (A233308 n).toNat)

end

end A307079.P4036728561440903920

/-! ## A307079.P607455577518827911

`A281976(A271194(n+1))%5`
-/

namespace A307079.P607455577518827911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281976 (A271194 (n + 1)).toNat) 5

end

end A307079.P607455577518827911

/-! ## A307079.P1308617115790080590

`and(p?[A293960(n)], A003983(n+1))`
-/

namespace A307079.P1308617115790080590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A003983 (n + 1))

end

end A307079.P1308617115790080590

/-! ## A307079.P6205967056563118135

`A003983(n+1)%xor(5, A031436(n))`
-/

namespace A307079.P6205967056563118135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (n + 1)) (Int.xor 5 (A031436 n))

end

end A307079.P6205967056563118135

/-! ## A307079.P2126377482540824814

`A003983(n+1)*A285373((char[∑[n]-2]+1)^n)`
-/

namespace A307079.P2126377482540824814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A285373 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) ^ n)

end

end A307079.P2126377482540824814

/-!
# A307080: a(n) = exp(1) * Sum_{k>=0} (-1)^k*(n*k + 1)^n/k!.

The programs for A307080, there is no canonical definition to state claims against.
-/

/-! ## A307080.P6938905952900072830

`A249245(a(n-1)²+1)+6` with `a(0)=1, a(1)=0, a(2)=-3`
-/

namespace A307080.P6938905952900072830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -3] fun n a =>
  A249245 (a (n - 1) ^ 2 + 1).toNat + 6

end

end A307080.P6938905952900072830

/-!
# A307082: Expansion of 1/(1 - x/(1 - x/(1 - 2*x/(1 - 3*x/(1 - 5*x/(1 - 8*x/(1 - ... - Fibonacci(k)*x/(1 - ...)))))))), a continued fraction.

The programs for A307082, there is no canonical definition to state claims against.
-/

/-! ## A307082.P6905775345045005349

`A230197(3*n+4)+A065090(n^(abs(1-n)-1))`
-/

namespace A307082.P6905775345045005349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230197 (3 * n + 4) + A065090 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ))).toNat

end

end A307082.P6905775345045005349

/-! ## A307082.P4340249109528648403

`and(A178089(n), A222246(A178089(n)))`
-/

namespace A307082.P4340249109528648403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178089 n) (A222246 (A178089 n).toNat)

end

end A307082.P4340249109528648403

/-! ## A307082.P14864845297606245891

`A004275(A181080(n))-n*A267417(n)`
-/

namespace A307082.P14864845297606245891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A181080 n).toNat - (n : ℤ) * A267417 n

end

end A307082.P14864845297606245891

/-!
# A307085: Number of non-isomorphic directed graphs reachable by n agents using the LNS protocol.

The programs for A307085, there is no canonical definition to state claims against.
-/

/-! ## A307085.P9160079589622093361

`A053984(n)+A004027(A118892(n))`
-/

namespace A307085.P9160079589622093361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053984 n + A004027 (A118892 n).toNat

end

end A307085.P9160079589622093361

/-!
# A307086: Decimal expansion of 4*(5 - sqrt(5)*log(phi))/25, where phi is the golden ratio (A001622).

The programs for A307086, there is no canonical definition to state claims against.
-/

/-! ## A307086.P17890873232821385706

`9-A086465(n)`
-/

namespace A307086.P17890873232821385706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A086465 n

end

end A307086.P17890873232821385706

/-!
# A307088: The position function the fractalization of which yields A307081.

The programs for A307088, there is no canonical definition to state claims against.
-/

/-! ## A307088.P1602371038394453698

`A169674(A187829(n+1))+A137849(n+1)`
-/

namespace A307088.P1602371038394453698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169674 (A187829 (n + 1)).toNat + A137849 (n + 1)

end

end A307088.P1602371038394453698

/-! ## A307088.P12111182548113786782

`A330749(A187829(n+1))+A006022(n+1)`
-/

namespace A307088.P12111182548113786782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (A187829 (n + 1)).toNat + A006022 (n + 1)

end

end A307088.P12111182548113786782

/-! ## A307088.P2527505698465665700

`A257071(A348661(n+1))+A024994(n+1)`
-/

namespace A307088.P2527505698465665700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257071 (A348661 (n + 1)).toNat + A024994 (n + 1)

end

end A307088.P2527505698465665700

/-! ## A307088.P618917002075837563

`A384655(n+1)+A095691(A063834(n))`
-/

namespace A307088.P618917002075837563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384655 (n + 1) + A095691 (A063834 n).toNat

end

end A307088.P618917002075837563

/-! ## A307088.P5435232142216110984

`A353331(A119034(n+4))+A046523(n+1)`
-/

namespace A307088.P5435232142216110984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (A119034 (n + 4)).toNat + A046523 (n + 1)

end

end A307088.P5435232142216110984

/-!
# A307089: Expansion of (1 - x)^4/((1 - x)^6 + x^6).

The programs for A307089, the canonical program `A307089.P3757127354110517006` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A307089 has offset 0).

The definition of A307089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))` (program `A307089.P3757127354110517006`, by `A307089.P3757127354110517006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A307089.P3757127354110517006

`ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A307089

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))` -/
def P3757127354110517006.Spec : Prop :=
  ∀ n, P3757127354110517006.a n = A307089 n

theorem P3757127354110517006.correct : P3757127354110517006.Spec := by
  intro n
  simp only [A307089]

end A307089

/-! ## A307089.P16611404946300891823

`∑[A307040(n)]`
-/

namespace A307089.P16611404946300891823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307089.P16611404946300891823

namespace A307089

/-- `∑[A307040(n)]` -/
def P16611404946300891823.Spec : Prop :=
  ∀ n, P16611404946300891823.a n = A307089 n

end A307089

/-! ## A307089.P12266171644986517916

`A307040(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A307089.P12266171644986517916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307040 (n % n ^ 2) + a (n - 1)

end

end A307089.P12266171644986517916

namespace A307089

/-- `A307040(n%n²)+a(n-1)` -/
def P12266171644986517916.Spec : Prop :=
  ∀ n, P12266171644986517916.a n = A307089 n

end A307089

/-! ## A307089.P17468934966909279499

`A100137(n)-A373358(n)`
-/

namespace A307089.P17468934966909279499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100137 n - A373358 n

end

end A307089.P17468934966909279499

namespace A307089

/-- `A100137(n)-A373358(n)` -/
def P17468934966909279499.Spec : Prop :=
  ∀ n, P17468934966909279499.a n = A307089 n

end A307089

/-! ## A307089.P15464950603326872098

`∑[A307039((n+4)²-∑[n+1])]`
-/

namespace A307089.P15464950603326872098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307039 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307089.P15464950603326872098

namespace A307089

/-- `∑[A307039((n+4)²-∑[n+1])]` -/
def P15464950603326872098.Spec : Prop :=
  ∀ n, P15464950603326872098.a n = A307089 n

end A307089

/-! ## A307089.P12206854163864679496

`A307079(A055999(n+3))`
-/

namespace A307089.P12206854163864679496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307079 (A055999 (n + 3)).toNat

end

end A307089.P12206854163864679496

namespace A307089

/-- `A307079(A055999(n+3))` -/
def P12206854163864679496.Spec : Prop :=
  ∀ n, P12206854163864679496.a n = A307089 n

end A307089

/-! ## A307089.P7502724625475455238

`A307079(eq[5, A025581(n)])`
-/

namespace A307089.P7502724625475455238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307089.P7502724625475455238

namespace A307089

/-- `A307079(eq[5, A025581(n)])` -/
def P7502724625475455238.Spec : Prop :=
  ∀ n, P7502724625475455238.a n = A307089 n

end A307089

/-! ## A307089.P9502010739684925970

`A307079(eq[6, A004736(n+1)])`
-/

namespace A307089.P9502010739684925970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A307089.P9502010739684925970

namespace A307089

/-- `A307079(eq[6, A004736(n+1)])` -/
def P9502010739684925970.Spec : Prop :=
  ∀ n, P9502010739684925970.a n = A307089 n

end A307089

/-! ## A307089.P17486705628336791150

`A307079(A167499(n+3)+2*n)`
-/

namespace A307089.P17486705628336791150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307079 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A307089.P17486705628336791150

namespace A307089

/-- `A307079(A167499(n+3)+2*n)` -/
def P17486705628336791150.Spec : Prop :=
  ∀ n, P17486705628336791150.a n = A307089 n

end A307089

/-!
# A307090: Number triangle T(n,k) = Sum_{j=0..n-k} (-1)^j * binomial(k,2*j) * binomial(n-k,2*j).

The programs for A307090, there is no canonical definition to state claims against.
-/

/-! ## A307090.P17919929668590920919

`∏{p}[A016116(n), #-A119326(n)]`
-/

namespace A307090.P17919929668590920919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A119326 n)

end

end A307090.P17919929668590920919

/-! ## A307090.P6370599676089359563

`A000034(A031936(n+1))-A119326(n)`
-/

namespace A307090.P6370599676089359563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A031936 (n + 1)).toNat - A119326 n

end

end A307090.P6370599676089359563

/-! ## A307090.P16165816828935580101

`A000005(A068853(n+1))-A119326(n)`
-/

namespace A307090.P16165816828935580101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068853 (n + 1)).toNat - A119326 n

end

end A307090.P16165816828935580101

/-! ## A307090.P13176289272431635598

`A020639(A077257(n+1))-A119326(n)`
-/

namespace A307090.P13176289272431635598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077257 (n + 1)).toNat - A119326 n

end

end A307090.P13176289272431635598

/-! ## A307090.P8655654329684191256

`A094284(A160573(2*(n+2)))-A119326(n)`
-/

namespace A307090.P8655654329684191256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094284 (A160573 (2 * (n + 2))).toNat - A119326 n

end

end A307090.P8655654329684191256

/-!
# A307091: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * binomial(n,2*k)^2.

The programs for A307091, there is no canonical definition to state claims against.
-/

/-! ## A307091.P354532697407810409

`A307090(∑[4*n])`
-/

namespace A307091.P354532697407810409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A307091.P354532697407810409

/-! ## A307091.P5523542211212703217

`(n%2)!*A307090(A046092(n))`
-/

namespace A307091.P5523542211212703217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A307090 (A046092 n).toNat

end

end A307091.P5523542211212703217

/-! ## A307091.P15863170900745196741

`A178334(n)!*A307090(A046092(n))`
-/

namespace A307091.P15863170900745196741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178334 n).toNat : ℤ) * A307090 (A046092 n).toNat

end

end A307091.P15863170900745196741

/-! ## A307091.P8213085751386326586

`A060576(n+2)*A307090(A046092(n))`
-/

namespace A307091.P8213085751386326586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 2) * A307090 (A046092 n).toNat

end

end A307091.P8213085751386326586

/-! ## A307091.P6738906969286886672

`A019426(2*(n+1))*A307090(A046092(n))`
-/

namespace A307091.P6738906969286886672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * (n + 1)) * A307090 (A046092 n).toNat

end

end A307091.P6738906969286886672

/-! ## A307091.P12886406180002304614

`A115660(A115639(n))*A307090(A046092(n))`
-/

namespace A307091.P12886406180002304614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (A115639 n).toNat * A307090 (A046092 n).toNat

end

end A307091.P12886406180002304614

/-! ## A307091.P13771118278214397878

`A001221(A038883(n+1))*A307090(A046092(n))`
-/

namespace A307091.P13771118278214397878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038883 (n + 1)).toNat * A307090 (A046092 n).toNat

end

end A307091.P13771118278214397878

/-! ## A307091.P16771056527126790538

`A001221(A107178(n+1))*A307090(A046092(n))`
-/

namespace A307091.P16771056527126790538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A107178 (n + 1)).toNat * A307090 (A046092 n).toNat

end

end A307091.P16771056527126790538

/-! ## A307091.P1302814412664257588

`A307090(A046092(n))/A019426(2*A007318(n))`
-/

namespace A307091.P1302814412664257588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307090 (A046092 n).toNat : ℚ) / (A019426 (2 * A007318 n).toNat : ℚ)

end

end A307091.P1302814412664257588

/-! ## A307091.P4914775527157372854

`A307090(A046092(n))%(A047855(n)+A047852(n))`
-/

namespace A307091.P4914775527157372854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307090 (A046092 n).toNat) (A047855 n + A047852 n)

end

end A307091.P4914775527157372854

/-!
# A307092: a(n) is the minimum number of iterations of the form x -> x + x^j (where j is a nonnegative integer and need not be identical in each iteration) required to reach n starting from 1.

The programs for A307092, there is no canonical definition to state claims against.
-/

/-! ## A307092.P15570845722694946693

`A064547(A074323(n)*A335075(n+1))`
-/

namespace A307092.P15570845722694946693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A074323 n * A335075 (n + 1)).toNat

end

end A307092.P15570845722694946693

/-! ## A307092.P1557676800096534611

`A064547(lcm(A074323(n), A335075(n+1)))`
-/

namespace A307092.P1557676800096534611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.lcm (A074323 n) (A335075 (n + 1)))

end

end A307092.P1557676800096534611

/-! ## A307092.P12623591758661972168

`A001222(A093370(n+3))%(n+1)`
-/

namespace A307092.P12623591758661972168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A093370 (n + 3)).toNat) (n + 1 : ℤ)

end

end A307092.P12623591758661972168

/-! ## A307092.P2401130521293148263

`A001222(A093370(n+3))*char[A007318(n)]`
-/

namespace A307092.P2401130521293148263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A093370 (n + 3)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A307092.P2401130521293148263

/-! ## A307092.P7439010548810554264

`A001222(A093370(n+3))-val(A000040(n+1), 2)`
-/

namespace A307092.P7439010548810554264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A093370 (n + 3)).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A307092.P7439010548810554264

/-!
# A307093: a(n) = Sum_{k=0..n} (-1)^k * binomial(n,k^2).

The programs for A307093, there is no canonical definition to state claims against.
-/

/-! ## A307093.P7786829303166279434

`∑[ceil(A307520(n)/2)]`
-/

namespace A307093.P7786829303166279434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307520 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307093.P7786829303166279434

/-! ## A307093.P13919911581168140132

`∑[A307520(n)/A036453(n+1)]`
-/

namespace A307093.P13919911581168140132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307520 n : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307093.P13919911581168140132

/-! ## A307093.P1817746295425587293

`∑[A307520(n)/A020639(A003972(n+1))]`
-/

namespace A307093.P1817746295425587293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307520 n : ℚ) / (A020639 (A003972 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307093.P1817746295425587293

/-! ## A307093.P12518842740673277184

`∑[A307520(n)/A020639(A000123(n))]`
-/

namespace A307093.P12518842740673277184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307520 n : ℚ) / (A020639 (A000123 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307093.P12518842740673277184

/-!
# A307094: a(n) = Sum_{k=0..n} (-1)^k * binomial(n^2,k^2).

The programs for A307094, there is no canonical definition to state claims against.
-/

/-! ## A307094.P12975463177724574535

`A307093(n²)`
-/

namespace A307094.P12975463177724574535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307093 (n ^ 2)

end

end A307094.P12975463177724574535

/-! ## A307094.P8441899149552114932

`or(A000007(n), A307093(A000290(n)))`
-/

namespace A307094.P8441899149552114932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A307093 (A000290 n).toNat)

end

end A307094.P8441899149552114932

/-! ## A307094.P12047994483803265779

`and(A153881(n+1), A307093(A000290(n)))`
-/

namespace A307094.P12047994483803265779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A307093 (A000290 n).toNat)

end

end A307094.P12047994483803265779

/-! ## A307094.P9901703532938729925

`A307093(A000290(n))/A307090(A091453(n))`
-/

namespace A307094.P9901703532938729925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307093 (A000290 n).toNat : ℚ) / (A307090 (A091453 n).toNat : ℚ)

end

end A307094.P9901703532938729925

/-! ## A307094.P1860743902788509464

`A307093(A000290(n))/A307090(A303378(n+1))`
-/

namespace A307094.P1860743902788509464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307093 (A000290 n).toNat : ℚ) / (A307090 (A303378 (n + 1)).toNat : ℚ)

end

end A307094.P1860743902788509464

/-!
# A307095: Let K_n = prefix of length n of Kolakoski sequence A000002; a(n) is the length of the longest palindromic suffix of K_n.

The programs for A307095, there is no canonical definition to state claims against.
-/

/-! ## A307095.P15668770535659407667

`A261585(n+1)²+A217435(A174161(n+1)+1)-1`
-/

namespace A307095.P15668770535659407667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (n + 1) ^ 2 + (A217435 (A174161 (n + 1) + 1).toNat - 1)

end

end A307095.P15668770535659407667

/-! ## A307095.P8688516363726132006

`A071907(A061901(n))+A217435(A174161(n+1)+1)-1`
-/

namespace A307095.P8688516363726132006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071907 (A061901 n).toNat + (A217435 (A174161 (n + 1) + 1).toNat - 1)

end

end A307095.P8688516363726132006

/-! ## A307095.P3402475686838904876

`A061901(A343847(n))+A217435(A174161(n+1)+1)-1`
-/

namespace A307095.P3402475686838904876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (A343847 n).toNat + (A217435 (A174161 (n + 1) + 1).toNat - 1)

end

end A307095.P3402475686838904876

/-! ## A307095.P18301192572179401267

`A061901(A327241(n+1))+A217435(A174161(n+1)+1)-1`
-/

namespace A307095.P18301192572179401267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 (A327241 (n + 1)).toNat + (A217435 (A174161 (n + 1) + 1).toNat - 1)

end

end A307095.P18301192572179401267

/-! ## A307095.P257895138283508747

`A331600(A168234(n+1))+A217435(A174161(n+1)+1)-1`
-/

namespace A307095.P257895138283508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331600 (A168234 (n + 1)).toNat + (A217435 (A174161 (n + 1) + 1).toNat - 1)

end

end A307095.P257895138283508747

/-!
# A307096: Positive integers m such that for any positive integer k the last k bits of the binary expansion of m is not a multiple of 3.

The programs for A307096, there is no canonical definition to state claims against.
-/

/-! ## A307096.P14623913245871556942

`4*A060142(n)+1`
-/

namespace A307096.P14623913245871556942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060142 n + 1

end

end A307096.P14623913245871556942

/-! ## A307096.P15979962105713967175

`2*A219608(n+1)-1`
-/

namespace A307096.P15979962105713967175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219608 (n + 1) - 1

end

end A307096.P15979962105713967175

/-! ## A307096.P13043244650854612054

`A219608(n+1)+A060142(n)+A060142(n)`
-/

namespace A307096.P13043244650854612054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1) + (A060142 n + A060142 n)

end

end A307096.P13043244650854612054

/-! ## A307096.P4863326124603080377

`A219608(A026355(n+1))-2`
-/

namespace A307096.P4863326124603080377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (A026355 (n + 1)).toNat - 2

end

end A307096.P4863326124603080377

/-! ## A307096.P10871770193160728975

`A060142(A004957(n))+1`
-/

namespace A307096.P10871770193160728975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A004957 n).toNat + 1

end

end A307096.P10871770193160728975

/-! ## A307096.P14650650549383799417

`or(1, A060142(A026352(n)))`
-/

namespace A307096.P14650650549383799417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060142 (A026352 n).toNat)

end

end A307096.P14650650549383799417

/-! ## A307096.P7585468887473142883

`A060142(A026356(n+1))-2`
-/

namespace A307096.P7585468887473142883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026356 (n + 1)).toNat - 2

end

end A307096.P7585468887473142883

/-! ## A307096.P14523423326177374870

`A060142(A026352(n)+1)-2`
-/

namespace A307096.P14523423326177374870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026352 n + 1).toNat - 2

end

end A307096.P14523423326177374870

/-! ## A307096.P7153017049504039038

`A060142(A004956(n)+n)+1`
-/

namespace A307096.P7153017049504039038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A004956 n + (n : ℤ)).toNat + 1

end

end A307096.P7153017049504039038

/-! ## A307096.P16786107516810099497

`record[A000265(A060142(n)+1)]`
-/

namespace A307096.P16786107516810099497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A060142 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307096.P16786107516810099497

/-! ## A307096.P10008339932867338352

`4*eq[0, A343030(n)]+1`
-/

namespace A307096.P10008339932867338352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307096.P10008339932867338352

/-! ## A307096.P11362527104216255813

`A016813(A060142(n))`
-/

namespace A307096.P11362527104216255813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A060142 n).toNat

end

end A307096.P11362527104216255813

/-! ## A307096.P8672766797830972761

`A328012(A060142(n)+2)-2`
-/

namespace A307096.P8672766797830972761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (A060142 n + 2).toNat - 2

end

end A307096.P8672766797830972761

/-! ## A307096.P2468503920950030780

`4*eq[1, A086747(2*n+1)]+1`
-/

namespace A307096.P2468503920950030780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A307096.P2468503920950030780

/-! ## A307096.P15122507402812615380

`A004273(A219608(n+1))`
-/

namespace A307096.P15122507402812615380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A219608 (n + 1)).toNat

end

end A307096.P15122507402812615380

/-! ## A307096.P3966911168001120215

`A005408(2*A060142(n))`
-/

namespace A307096.P3966911168001120215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A060142 n).toNat

end

end A307096.P3966911168001120215

/-! ## A307096.P2090141183299093993

`∩[A060142(n)+1, A060747(n)]`
-/

namespace A307096.P2090141183299093993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A307096.P2090141183299093993

/-! ## A307096.P8460254001681571446

`A060747(A060747(A060142(n)+1))`
-/

namespace A307096.P8460254001681571446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A060747 (A060142 n + 1).toNat).toNat

end

end A307096.P8460254001681571446

/-! ## A307096.P7298175196783744522

`A060747(∩[A060142(n), A060747(n)])`
-/

namespace A307096.P7298175196783744522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A307096.P7298175196783744522

/-! ## A307096.P3793112561826172975

`A004273(A060142(n)+A060142(n)+1)`
-/

namespace A307096.P3793112561826172975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A060142 n + (A060142 n + 1)).toNat

end

end A307096.P3793112561826172975

/-!
# A307098: The primitive abundant numbers k (A071395) arranged by the decreasing values of their abundancy index sigma(k)/k.

The programs for A307098, there is no canonical definition to state claims against.
-/

/-! ## A307098.P12799858925869911565

`filter[A396318(n+1), A341619(#)]`
-/

namespace A307098.P12799858925869911565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)

end

end A307098.P12799858925869911565

