import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A337200: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A337194(i)) = A278222(A337194(j)), for all i, j >= 1.

The programs for A337200, there is no canonical definition to state claims against.
-/

/-! ## A337200.P6696574656073752975

`A325184(2^A337201(n+1))`
-/

namespace A337200.P6696574656073752975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A337201 (n + 1) : ℤ))).toNat

end

end A337200.P6696574656073752975

/-! ## A337200.P12580692834677646400

`A334948(4^A337201(n+1))`
-/

namespace A337200.P12580692834677646400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A337201 (n + 1) : ℤ))).toNat

end

end A337200.P12580692834677646400

/-! ## A337200.P8733397046426242316

`gcd(A116571(n), A337201(n+1))`
-/

namespace A337200.P8733397046426242316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116571 n) (A337201 (n + 1))

end

end A337200.P8733397046426242316

/-! ## A337200.P366768574319791447

`A337201(n+1)%∏[A016969(n)]`
-/

namespace A337200.P366768574319791447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337201 (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A337200.P366768574319791447

/-! ## A337200.P14394482059163040912

`and(A029724(n+1), A337201(n+1))`
-/

namespace A337200.P14394482059163040912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029724 (n + 1)) (A337201 (n + 1))

end

end A337200.P14394482059163040912

/-!
# A337203: Sum of the divisors of the primorial inflation of n.

The programs for A337203, the canonical program `A337203.P7577995632533790091` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337203 has offset 1).

The definition of A337203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337203.P7577995632533790091

`A000203(A108951(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A337203

/-- `A000203(A108951(n+1))` -/
def P7577995632533790091.Spec : Prop :=
  ∀ n, P7577995632533790091.a n = A337203 (n + 1)

theorem P7577995632533790091.correct : P7577995632533790091.Spec := by
  intro n
  simp only [A337203, Nat.add_sub_cancel]

end A337203

/-! ## A337203.P8999392055733660210

`A000203(2^∑{e}[n+1, #])*A337204(n+1)`
-/

namespace A337203.P8999392055733660210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A337204 (n + 1)

end

end A337203.P8999392055733660210

namespace A337203

/-- `A000203(2^∑{e}[n+1, #])*A337204(n+1)` -/
def P8999392055733660210.Spec : Prop :=
  ∀ n, P8999392055733660210.a n = A337203 (n + 1)

end A337203

/-! ## A337203.P1175753057383600897

`A000203(A061142(n+1))*A337204(n+1)`
-/

namespace A337203.P1175753057383600897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A061142 (n + 1)).toNat * A337204 (n + 1)

end

end A337203.P1175753057383600897

namespace A337203

/-- `A000203(A061142(n+1))*A337204(n+1)` -/
def P1175753057383600897.Spec : Prop :=
  ∀ n, P1175753057383600897.a n = A337203 (n + 1)

end A337203

/-! ## A337203.P17300091663870751498

`(A061142(2*(n+1))-1)*A337204(2*(n+1))`
-/

namespace A337203.P17300091663870751498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061142 (2 * (n + 1)) - 1) * A337204 (2 * (n + 1))

end

end A337203.P17300091663870751498

namespace A337203

/-- `(A061142(2*(n+1))-1)*A337204(2*(n+1))` -/
def P17300091663870751498.Spec : Prop :=
  ∀ n, P17300091663870751498.a n = A337203 (n + 1)

end A337203

/-! ## A337203.P6095260666609954752

`A323173(A006530(A122111(n+1)))*A337204(n+1)`
-/

namespace A337203.P6095260666609954752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323173 (A006530 (A122111 (n + 1)).toNat).toNat * A337204 (n + 1)

end

end A337203.P6095260666609954752

namespace A337203

/-- `A323173(A006530(A122111(n+1)))*A337204(n+1)` -/
def P6095260666609954752.Spec : Prop :=
  ∀ n, P6095260666609954752.a n = A337203 (n + 1)

end A337203

/-!
# A337204: Sum of the odd divisors of the primorial inflation of n.

The programs for A337204, the canonical program `A337204.P12446267727106483087` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337204 has offset 1).

The definition of A337204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, A108951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337204.P12446267727106483087

`A000593(A108951(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A337204

/-- `A000593(A108951(n+1))` -/
def P12446267727106483087.Spec : Prop :=
  ∀ n, P12446267727106483087.a n = A337204 (n + 1)

theorem P12446267727106483087.correct : P12446267727106483087.Spec := by
  intro n
  simp only [A337204, Nat.add_sub_cancel]

end A337204

/-! ## A337204.P16901701963827869635

`A337203(n+1)/A337203(2^∑{e}[n+1, #])`
-/

namespace A337204.P16901701963827869635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337203 (n + 1) : ℚ) / (A337203 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℚ)

end

end A337204.P16901701963827869635

namespace A337204

/-- `A337203(n+1)/A337203(2^∑{e}[n+1, #])` -/
def P16901701963827869635.Spec : Prop :=
  ∀ n, P16901701963827869635.a n = (A337204 (n + 1) : ℚ)

end A337204

/-! ## A337204.P1428210968276089137

`A337203(n+1)/A000203(A061142(n+1))`
-/

namespace A337204.P1428210968276089137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337203 (n + 1) : ℚ) / (A000203 (A061142 (n + 1)).toNat : ℚ)

end

end A337204.P1428210968276089137

namespace A337204

/-- `A337203(n+1)/A000203(A061142(n+1))` -/
def P1428210968276089137.Spec : Prop :=
  ∀ n, P1428210968276089137.a n = (A337204 (n + 1) : ℚ)

end A337204

/-! ## A337204.P11029795197601051689

`A337203(n+1)/A000225(A001222(n+1)+1)`
-/

namespace A337204.P11029795197601051689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337203 (n + 1) : ℚ) / (A000225 (A001222 (n + 1) + 1).toNat : ℚ)

end

end A337204.P11029795197601051689

namespace A337204

/-- `A337203(n+1)/A000225(A001222(n+1)+1)` -/
def P11029795197601051689.Spec : Prop :=
  ∀ n, P11029795197601051689.a n = (A337204 (n + 1) : ℚ)

end A337204

/-! ## A337204.P14362207631887613605

`gcd(A337203(2*(n+1)), A337203(n+1))`
-/

namespace A337204.P14362207631887613605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337203 (2 * (n + 1))) (A337203 (n + 1))

end

end A337204.P14362207631887613605

namespace A337204

/-- `gcd(A337203(2*(n+1)), A337203(n+1))` -/
def P14362207631887613605.Spec : Prop :=
  ∀ n, (P14362207631887613605.a n : ℤ) = A337204 (n + 1)

end A337204

/-! ## A337204.P9451418270621558360

`A337203(n+1)/A323173(A006530(A122111(n+1)))`
-/

namespace A337204.P9451418270621558360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337203 (n + 1) : ℚ) / (A323173 (A006530 (A122111 (n + 1)).toNat).toNat : ℚ)

end

end A337204.P9451418270621558360

namespace A337204

/-- `A337203(n+1)/A323173(A006530(A122111(n+1)))` -/
def P9451418270621558360.Spec : Prop :=
  ∀ n, P9451418270621558360.a n = (A337204 (n + 1) : ℚ)

end A337204

/-!
# A337205: Square array A(n,k) read by falling antidiagonals, where row n gives the sum of the divisors of the {primorial inflation of k, from which all primes <= A000040(n) have been discarded}.

The programs for A337205, there is no canonical definition to state claims against.
-/

/-! ## A337205.P12072643747928963509

`∑{d}[A083258(A337470(n)), #]`
-/

namespace A337205.P12072643747928963509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (A337470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A337205.P12072643747928963509

/-! ## A337205.P5698304628727043937

`gcd(A275801(A008279(n)), A337472(n))`
-/

namespace A337205.P5698304628727043937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275801 (A008279 n).toNat) (A337472 n)

end

end A337205.P5698304628727043937

/-!
# A337206: Cardinality of maximal level sets of Gini index on integer partitions.

The programs for A337206, there is no canonical definition to state claims against.
-/

/-! ## A337206.P15046651664739927801

`A048766(or(n+2, A013985(n)))`
-/

namespace A337206.P15046651664739927801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (n + 2 : ℤ) (A013985 n)).toNat

end

end A337206.P15046651664739927801

/-! ## A337206.P17623432056475080166

`A048766(or(A013985(n), A028392(n)))`
-/

namespace A337206.P17623432056475080166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A013985 n) (A028392 n)).toNat

end

end A337206.P17623432056475080166

/-! ## A337206.P12661821977356389792

`A048766(or(A013985(n), A028391(2*n)))`
-/

namespace A337206.P12661821977356389792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A013985 n) (A028391 (2 * n))).toNat

end

end A337206.P12661821977356389792

/-! ## A337206.P6378738940608340500

`A048766(∑[A154958(A000045(n))])`
-/

namespace A337206.P6378738940608340500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A337206.P6378738940608340500

/-!
# A337207: a(n) is the minimal number of legal positions in Go played on connected graphs with n nodes.

The programs for A337207, there is no canonical definition to state claims against.
-/

/-! ## A337207.P9099847518243796081

`∑[∑[A002024(C(3*n, n+1)+1)]]`
-/

namespace A337207.P9099847518243796081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (3 * n) (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337207.P9099847518243796081

/-! ## A337207.P1858193103180570107

`∑[A175658(A001096(n))]`
-/

namespace A337207.P1858193103180570107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 (A001096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337207.P1858193103180570107

/-!
# A337209: Triangle read by rows T(n,k), (n >= 1, k > = 1), in which row n has length A000070(n-1) and every column gives A000203, the sum of divisors function.

The programs for A337209, there is no canonical definition to state claims against.
-/

/-! ## A337209.P13561018914079874318

`A000203(A176206(n+1))`
-/

namespace A337209.P13561018914079874318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A176206 (n + 1)).toNat

end

end A337209.P13561018914079874318

/-! ## A337209.P7125589866757929924

`A069290(A176206(n+1)²)`
-/

namespace A337209.P7125589866757929924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A176206 (n + 1) ^ 2).toNat

end

end A337209.P7125589866757929924

/-! ## A337209.P13607845857156781157

`A326065(2*A176206(n+1))`
-/

namespace A337209.P13607845857156781157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * A176206 (n + 1)).toNat

end

end A337209.P13607845857156781157

/-! ## A337209.P17959448070271001332

`A066839(A054723(n+1)*A176206(n+1))`
-/

namespace A337209.P17959448070271001332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A054723 (n + 1) * A176206 (n + 1)).toNat

end

end A337209.P17959448070271001332

/-! ## A337209.P8291063228845440989

`A240698(A340530(n+1))`
-/

namespace A337209.P8291063228845440989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (A340530 (n + 1)).toNat

end

end A337209.P8291063228845440989

/-! ## A337209.P7590172500022173161

`∑{d}[A127321(A340530(n+1)²), #]`
-/

namespace A337209.P7590172500022173161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A340530 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A337209.P7590172500022173161

/-! ## A337209.P14122635497880612743

`∑{d}[A000720(A340530(n+1)+1), #]`
-/

namespace A337209.P14122635497880612743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340530 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A337209.P14122635497880612743

/-! ## A337209.P2905356817640079256

`∑{d}[A026405(A340530(n+1)+2), #]`
-/

namespace A337209.P2905356817640079256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A340530 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A337209.P2905356817640079256

/-! ## A337209.P10862184878218405882

`A000203(ceil(sqrt(A340531(n+1))))`
-/

namespace A337209.P10862184878218405882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈Real.sqrt (A340531 (n + 1) : ℝ)⌉.toNat

end

end A337209.P10862184878218405882

/-!
# A337211: Numbers k such that b(k) < b(j) for all j < k where b(k) = Min_{sqrt(n) - Sum_{i} sqrt(c_i) > 0 with c_i being unique integers}.

The programs for A337211, there is no canonical definition to state claims against.
-/

/-! ## A337211.P6682253320249802580

`record[A333987(n+1)-Δ[A185044(n)]]`
-/

namespace A337211.P6682253320249802580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333987 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337211.P6682253320249802580

/-!
# A337212: Modulo 3 Pisano period of 'n-bonacci' series.

The programs for A337212, there is no canonical definition to state claims against.
-/

/-! ## A337212.P15285289843227174139

`ceil(A210456(n+1)/3)`
-/

namespace A337212.P15285289843227174139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210456 (n + 1) : ℚ) / 3⌉

end

end A337212.P15285289843227174139

/-! ## A337212.P10526223152589247068

`A210456(n+1)/A122553(n)`
-/

namespace A337212.P10526223152589247068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210456 (n + 1) : ℚ) / (A122553 n : ℚ)

end

end A337212.P10526223152589247068

/-! ## A337212.P13578157941192659520

`A210456(n+1)/dr(A032308(n))`
-/

namespace A337212.P13578157941192659520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210456 (n + 1) : ℚ) / (SequenceMachineLib.digitalRoot (A032308 n) : ℚ)

end

end A337212.P13578157941192659520

/-! ## A337212.P7381060015225064933

`A210456(n+1)/A020639(A048883(n))`
-/

namespace A337212.P7381060015225064933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210456 (n + 1) : ℚ) / (A020639 (A048883 n).toNat : ℚ)

end

end A337212.P7381060015225064933

/-! ## A337212.P10559906618370834953

`A210456(n+1)/A131295(A235249(n+1))`
-/

namespace A337212.P10559906618370834953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210456 (n + 1) : ℚ) / (A131295 (A235249 (n + 1)).toNat : ℚ)

end

end A337212.P10559906618370834953

/-!
# A337215: a(n) gives the square of the base the nonrectangular triangle with positive sides (sqrt(x(n)_j), sqrt(y(n)_j), sqrt(a(n))), 1 <= x(n)_j <= y(n)_j <= a(n), with positive integers x(n)_j, y(n)_j and areas A(n)_j, for j = 1, 2, ..., A336889(n), such that the quartets (x(n)_j, y(n)_j, a(n), A(n)_j) are primitive.

The programs for A337215, there is no canonical definition to state claims against.
-/

/-! ## A337215.P10434604495369413125

`lt[(2*A245474(n))², n]`
-/

namespace A337215.P10434604495369413125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A245474 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337215.P10434604495369413125

/-! ## A337215.P16003544778863223988

`lt[A016742(A245474(n)), n]`
-/

namespace A337215.P16003544778863223988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A245474 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337215.P16003544778863223988

/-! ## A337215.P352663493277231115

`lt[A245474(n)², A110655(n)]`
-/

namespace A337215.P352663493277231115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337215.P352663493277231115

/-! ## A337215.P15615647935914057090

`lt[A245474(n), log(A065033(n))]`
-/

namespace A337215.P15615647935914057090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A065033 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A337215.P15615647935914057090

/-! ## A337215.P14245085939193728164

`lt[A245474(n), A245636(n+1)]`
-/

namespace A337215.P14245085939193728164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337215.P14245085939193728164

/-!
# A337217: One half of the even numbers of A094739.

The programs for A337217, there is no canonical definition to state claims against.
-/

/-! ## A337217.P16485570746590435480

`eq[n%2, A275656(2*n+1)]`
-/

namespace A337217.P16485570746590435480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275656 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337217.P16485570746590435480

/-! ## A337217.P7687164877280461300

`eq[(-1)^n, A273134(n+1)]+1`
-/

namespace A337217.P7687164877280461300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A337217.P7687164877280461300

/-! ## A337217.P9376582303646604759

`eq[1-a(n-1), A156384(n)]` with `a(0)=-1`
-/

namespace A337217.P9376582303646604759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337217.P9376582303646604759

/-! ## A337217.P18210710476707648559

`eq[-(-1)^n, A275471(2*n+1)]`
-/

namespace A337217.P18210710476707648559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275471 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337217.P18210710476707648559

/-! ## A337217.P9699548995828361568

`record[root(2*n+1, A273134(2*n+1))]`
-/

namespace A337217.P9699548995828361568
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ (1 / (A273134 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337217.P9699548995828361568

/-!
# A337218: The positive integers uniquely represented by the ternary form x^2 + 2*y^2 + 2*z^2, with integers x <= 0, and 0 <= y <= z.

The programs for A337218, there is no canonical definition to state claims against.
-/

/-! ## A337218.P18353873718428600123

`eq[A000164(n), A008612(A004013(n))]`
-/

namespace A337218.P18353873718428600123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A004013 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337218.P18353873718428600123

/-! ## A337218.P7425063056450427162

`eq[A000164(n), A182034(A246631(n))]`
-/

namespace A337218.P7425063056450427162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (A246631 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337218.P7425063056450427162

/-!
# A337220: a(n) = (2^A195610(n) + 1)/A014657(n), for n >= 1.

The programs for A337220, there is no canonical definition to state claims against.
-/

/-! ## A337220.P7045755501062814463

`(2^A195610(n+1)+1)/A014657(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337220.P7045755501062814463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A195610 (n + 1) : ℤ) + 1) / (A014657 (n + 1) : ℚ)

end

end A337220.P7045755501062814463

/-! ## A337220.P13079792663025268774

`A143069(A014657(n+1))+A000007(n)`
-/

namespace A337220.P13079792663025268774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (A014657 (n + 1)).toNat + A000007 n

end

end A337220.P13079792663025268774

/-! ## A337220.P17200644561052216344

`A143069(A014657(n+1))+A088157(n)`
-/

namespace A337220.P17200644561052216344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (A014657 (n + 1)).toNat + A088157 n

end

end A337220.P17200644561052216344

/-! ## A337220.P12018140274462235539

`A054977(n)*A143069(A014657(n+1))`
-/

namespace A337220.P12018140274462235539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A143069 (A014657 (n + 1)).toNat

end

end A337220.P12018140274462235539

/-! ## A337220.P13813540125046980766

`A000051(A195610(n+1))/A014657(n+1)`
-/

namespace A337220.P13813540125046980766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 (A195610 (n + 1)).toNat : ℚ) / (A014657 (n + 1) : ℚ)

end

end A337220.P13813540125046980766

/-!
# A337221: Starts of record-length sequences of primes under iteration of the map x goes to (3*x+1)/2.

The programs for A337221, there is no canonical definition to state claims against.
-/

/-! ## A337221.P8123926048252035626

`p?[floor((n+1)/5+2*a(n-1))]` with `a(0)=2, a(1)=0`
-/

namespace A337221.P8123926048252035626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  ⌊(n + 1 : ℚ) / 5 + (2 * f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A337221.P8123926048252035626

/-!
# A337222: a(n) is the least number that can be obtained by replacing some square XX in the binary expansion of n by X.

The programs for A337222, there is no canonical definition to state claims against.
-/

/-! ## A337222.P5177858992300878980

`A361399(n*A331572(A331572(n)))`
-/

namespace A337222.P5177858992300878980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361399 ((n : ℤ) * A331572 (A331572 n).toNat).toNat

end

end A337222.P5177858992300878980

/-! ## A337222.P11834381630585270645

`A361399(n)^A331572(A331572(n))`
-/

namespace A337222.P11834381630585270645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361399 n : ℚ) ^ (A331572 (A331572 n).toNat : ℤ)

end

end A337222.P11834381630585270645

/-!
# A337224: a(n) is the least number that can be obtained by replacing some repetitive part X^k in the binary expansion of n by X.

The programs for A337224, there is no canonical definition to state claims against.
-/

/-! ## A337224.P2648902043918121448

`A337222(A337223(n)%A320731(n))`
-/

namespace A337224.P2648902043918121448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337222 (Int.tmod (A337223 n) (A320731 n)).toNat

end

end A337224.P2648902043918121448

/-! ## A337224.P18006811568903616846

`A008835(A056941(n))*A337222(A337223(n))`
-/

namespace A337224.P18006811568903616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A056941 n).toNat * A337222 (A337223 n).toNat

end

end A337224.P18006811568903616846

/-! ## A337224.P10301723866952644383

`A337222(A337223(n))%A179869(n)`
-/

namespace A337224.P10301723866952644383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337222 (A337223 n).toNat) (A179869 n)

end

end A337224.P10301723866952644383

/-! ## A337224.P9885794950281716695

`A337222(A337223(n))/A008835(A056941(n+4))`
-/

namespace A337224.P9885794950281716695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337222 (A337223 n).toNat : ℚ) / (A008835 (A056941 (n + 4)).toNat : ℚ)

end

end A337224.P9885794950281716695

/-! ## A337224.P14440011839516935980

`A337198(A056450(n))*A337222(A337223(n))`
-/

namespace A337224.P14440011839516935980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337198 (A056450 n).toNat * A337222 (A337223 n).toNat

end

end A337224.P14440011839516935980

/-!
# A337225: a(n) is the number of distinct integers k that can be obtained by starting from the binary expansion of n and repeatedly replacing some square XX by X.

The programs for A337225, there is no canonical definition to state claims against.
-/

/-! ## A337225.P819152283417968970

`A322794(A110654(A047994(n+1))²)`
-/

namespace A337225.P819152283417968970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A110654 (A047994 (n + 1)).toNat ^ 2).toNat

end

end A337225.P819152283417968970

/-! ## A337225.P995347845524539517

`A284579(n)+A156660(A137904(3*n))`
-/

namespace A337225.P995347845524539517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n + A156660 (A137904 (3 * n)).toNat

end

end A337225.P995347845524539517

/-! ## A337225.P7875337421557669452

`A167489(n)+A025455(A001045(n))`
-/

namespace A337225.P7875337421557669452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 n + A025455 (A001045 n).toNat

end

end A337225.P7875337421557669452

/-! ## A337225.P2657972164045680306

`A284579(n)+A025455(A001045(n))`
-/

namespace A337225.P2657972164045680306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n + A025455 (A001045 n).toNat

end

end A337225.P2657972164045680306

/-! ## A337225.P1370717933366223981

`A214411(A000009(3*(n+1)))+A167489(n)`
-/

namespace A337225.P1370717933366223981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A000009 (3 * (n + 1))).toNat + A167489 n

end

end A337225.P1370717933366223981

/-!
# A337226: Lexicographically earliest sequence of positive integers with the property that, for all k > 0, there is at most one j such that a(j) = a(j+k).

The programs for A337226, there is no canonical definition to state claims against.
-/

/-! ## A337226.P17521678928128377257

`A250028(lt[A143644(n), A326619(n+2)])`
-/

namespace A337226.P17521678928128377257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326619 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250028 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A337226.P17521678928128377257

/-! ## A337226.P12240058001507446483

`∏{e}[3^n, A131987(#)]`
-/

namespace A337226.P12240058001507446483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131987 (Nat.factorization (f1 n) p)

end

end A337226.P12240058001507446483

/-! ## A337226.P9580529146453870051

`∏{e}[record[A032532(A003958(n+1))], #]`
-/

namespace A337226.P9580529146453870051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A003958 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A337226.P9580529146453870051

/-! ## A337226.P7300142770795394764

`A131987(C(A113592(n+1), comp[2^n])+n)`
-/

namespace A337226.P7300142770795394764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131987 (Nat.choose (A113592 (n + 1)).toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + n)

end

end A337226.P7300142770795394764

/-!
# A337227: a(n) = difference between the starting positions of the first two occurrences of n in the Champernowne string (starting at 0) 01234567891011121314151617181920... (cf. A033307).

The programs for A337227, there is no canonical definition to state claims against.
-/

/-! ## A337227.P1963465684065946759

`A342162(lcm(n, and(n, Δ[-n²])))`
-/

namespace A337227.P1963465684065946759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 (Int.lcm (n : ℤ) (Int.land (n : ℤ) (f1 (n + 1) - f1 n)))

end

end A337227.P1963465684065946759

/-! ## A337227.P3410909727900633377

`A342162(A055649(n))`
-/

namespace A337227.P3410909727900633377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 (A055649 n).toNat

end

end A337227.P3410909727900633377

/-! ## A337227.P556204474826042910

`A342162(A061378(n))`
-/

namespace A337227.P556204474826042910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 (A061378 n).toNat

end

end A337227.P556204474826042910

/-! ## A337227.P740134157245847111

`A342162(A062399(n))`
-/

namespace A337227.P740134157245847111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 (A062399 n).toNat

end

end A337227.P740134157245847111

/-! ## A337227.P9701034508926741232

`A342162(A120126(n))`
-/

namespace A337227.P9701034508926741232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 (A120126 n).toNat

end

end A337227.P9701034508926741232

/-!
# A337228: Number of ordered pairs of divisors of n, (d1,d2), such that d2 is prime and d1 <= d2.

The programs for A337228, there is no canonical definition to state claims against.
-/

/-! ## A337228.P5662897862586159802

`A337322(n+1)+A001221(n+1)`
-/

namespace A337228.P5662897862586159802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A001221 (n + 1)

end

end A337228.P5662897862586159802

/-! ## A337228.P665906869557325224

`A337322(n+1)+log2(A034444(n+1))`
-/

namespace A337228.P665906869557325224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337322 (n + 1) : ℝ) + Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A337228.P665906869557325224

/-! ## A337228.P7311934794618874889

`A337322(n+1)+∑{p}[n+1, A001222(#)]`
-/

namespace A337228.P7311934794618874889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A337228.P7311934794618874889

/-! ## A337228.P10104044211819904554

`A337322(n+1)+A001222(∏{p}[n+1, #])`
-/

namespace A337228.P10104044211819904554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A337228.P10104044211819904554

/-! ## A337228.P1441113519636059842

`A337322(n+1)+∑{p}[n+1, abs(A008683(#))]`
-/

namespace A337228.P1441113519636059842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), |A008683 p|

end

end A337228.P1441113519636059842

/-! ## A337228.P16487936402600133045

`A337322(n+1)+∑{p}[n+1, log2(A000005(#))]`
-/

namespace A337228.P16487936402600133045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337322 (n + 1) : ℝ) + ∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (A000005 p : ℝ)

end

end A337228.P16487936402600133045

/-! ## A337228.P12225109388579360816

`A337322(n+1)+log2(A000005(∏{p}[n+1, #]))`
-/

namespace A337228.P12225109388579360816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A337322 (n + 1) : ℝ) + Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A337228.P12225109388579360816

/-! ## A337228.P6434937191416477649

`A337322(n+1)+A001222(∏{e}[n+1, A000040(#)])`
-/

namespace A337228.P6434937191416477649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (n + 1) + A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A337228.P6434937191416477649

/-!
# A337230: Numbers that are a divisor of the product of the digits of its divisors.

The programs for A337230, there is no canonical definition to state claims against.
-/

/-! ## A337230.P3693822496154472946

`A342950(A348553(n))%A095170(n+11)`
-/

namespace A337230.P3693822496154472946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342950 (A348553 n).toNat) (A095170 (n + 11))

end

end A337230.P3693822496154472946

/-! ## A337230.P7054640546286663854

`A342950(A348553(n))+A000007(A099927(n))`
-/

namespace A337230.P7054640546286663854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (A348553 n).toNat + A000007 (A099927 n).toNat

end

end A337230.P7054640546286663854

/-! ## A337230.P8186450703223307657

`A342950(A348553(n))%A007899(A007899(n))`
-/

namespace A337230.P8186450703223307657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342950 (A348553 n).toNat) (A007899 (A007899 n).toNat)

end

end A337230.P8186450703223307657

/-! ## A337230.P5316501795676544908

`A342950(A348553(n))+A000038(A005421(n+1))`
-/

namespace A337230.P5316501795676544908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (A348553 n).toNat + A000038 (A005421 (n + 1)).toNat

end

end A337230.P5316501795676544908

/-! ## A337230.P7001026364232657315

`A342950(A348553(n))+A010051(A087678(n+1)²)`
-/

namespace A337230.P7001026364232657315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (A348553 n).toNat + A010051 (A087678 (n + 1) ^ 2).toNat

end

end A337230.P7001026364232657315

/-!
# A337231: Odd composite integers m such that F(m)^2 == 1 (mod m), where F(m) is the m-th Fibonacci number.

The programs for A337231, there is no canonical definition to state claims against.
-/

/-! ## A337231.P6620641540671656055

`∩[A086504(n+1), A335672(n+1)]`
-/

namespace A337231.P6620641540671656055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337231.P6620641540671656055

/-! ## A337231.P6377313427708239157

`∩[A335672(n+1), A338007(n+1)]`
-/

namespace A337231.P6377313427708239157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337231.P6377313427708239157

/-! ## A337231.P14380069263349378312

`filter[A335672(n+1), A011558(#)]`
-/

namespace A337231.P14380069263349378312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A337231.P14380069263349378312

/-! ## A337231.P11310357365767042605

`∩[A335672(n+1), A337236(n+1)]`
-/

namespace A337231.P11310357365767042605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337231.P11310357365767042605

/-!
# A337232: Even composite integers m such that F(m)^2 == 1 (mod m), where F(m) is the m-th Fibonacci number.

The programs for A337232, there is no canonical definition to state claims against.
-/

/-! ## A337232.P8775502052574476751

`A364919(2^(n+1)+1)`
-/

namespace A337232.P8775502052574476751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364919 (2 ^ (n + 1) + 1)

end

end A337232.P8775502052574476751

/-! ## A337232.P11718236493243058907

`2*A005940(A077552(n)+1)`
-/

namespace A337232.P11718236493243058907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005940 (A077552 n + 1).toNat

end

end A337232.P11718236493243058907

/-! ## A337232.P11727899378250557939

`A055163(n+1)-A000122(A034386(n))`
-/

namespace A337232.P11727899378250557939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1) - A000122 (A034386 n).toNat

end

end A337232.P11727899378250557939

/-! ## A337232.P5606413477528825514

`A055163(n+1)-A000038(A049610(n))`
-/

namespace A337232.P5606413477528825514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055163 (n + 1) - A000038 (A049610 n).toNat

end

end A337232.P5606413477528825514

/-! ## A337232.P2267464796937868734

`A119431(n+1)-A000122(A034386(n))`
-/

namespace A337232.P2267464796937868734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119431 (n + 1) - A000122 (A034386 n).toNat

end

end A337232.P2267464796937868734

/-!
# A337233: Composite integers m such that P(m)^2 == 1 (mod m), where P(m) is the m-th Pell number A000129(m). Also, odd composite integers m such that U(m)^2 == 1 (mod m) and V(m) == 6 (mod m), where U(m)=A001109(m) and V(m)=A003499(m) are the m-th generalized Lucas and Pell-Lucas numbers of parameters a=6 and b=1, respectively.

The programs for A337233, there is no canonical definition to state claims against.
-/

/-! ## A337233.P15960383600631306673

`record[A000265(A330207(n+2))]`
-/

namespace A337233.P15960383600631306673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A330207 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337233.P15960383600631306673

/-! ## A337233.P17875757965700631231

`filter[A330207(n+1), A035263(#)]`
-/

namespace A337233.P17875757965700631231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A337233.P17875757965700631231

/-! ## A337233.P5674164453596794493

`filter[A330207(n+1), A093719(#)]`
-/

namespace A337233.P5674164453596794493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A337233.P5674164453596794493

/-! ## A337233.P12155756281619284533

`filter[A330207(n+1), A152822(#)]`
-/

namespace A337233.P12155756281619284533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A337233.P12155756281619284533

/-! ## A337233.P3953587605651225237

`∩[A330207(n+1), A338010(n+1)]`
-/

namespace A337233.P3953587605651225237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337233.P3953587605651225237

/-! ## A337233.P15278010198687158208

`∩[A014076(n+1), A330207(n+1)]`
-/

namespace A337233.P15278010198687158208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337233.P15278010198687158208

/-! ## A337233.P16668421762887076904

`filter[A330207(n+1), A000035(#)]`
-/

namespace A337233.P16668421762887076904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A337233.P16668421762887076904

/-! ## A337233.P5144323635000953927

`filter[A330207(n+1), A104106(#)]`
-/

namespace A337233.P5144323635000953927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A337233.P5144323635000953927

/-! ## A337233.P6793713319586263839

`filter[A330207(n+1), A141260(#)]`
-/

namespace A337233.P6793713319586263839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A337233.P6793713319586263839

/-! ## A337233.P8615777773669909064

`filter[A330207(n+1), A259044(#)]`
-/

namespace A337233.P8615777773669909064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A337233.P8615777773669909064

/-!
# A337235: Even composite integers m such that A006190(m)^2 == 1 (mod m).

The programs for A337235, there is no canonical definition to state claims against.
-/

/-! ## A337235.P6688382325009723646

`∑[A311155(∏[A022558(n)])]`
-/

namespace A337235.P6688382325009723646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337235.P6688382325009723646

/-!
# A337236: Composite integers m such that A001076(m)^2 == 1 (mod m).

The programs for A337236, there is no canonical definition to state claims against.
-/

/-! ## A337236.P16527091817571736539

`A264798(A139714(n+4)+A030511(n+3))`
-/

namespace A337236.P16527091817571736539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264798 (A139714 (n + 4) + A030511 (n + 3)).toNat

end

end A337236.P16527091817571736539

/-!
# A337238: Number k such that k and k+1 are both digitally balanced numbers in base 2 (A031443).

The programs for A337238, there is no canonical definition to state claims against.
-/

/-! ## A337238.P9688516595133783884

`4*A031443(n+1)+1`
-/

namespace A337238.P9688516595133783884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A031443 (n + 1) + 1

end

end A337238.P9688516595133783884

/-! ## A337238.P12999482250215156695

`∑[4*A145057(n+1)]+1`
-/

namespace A337238.P12999482250215156695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A337238.P12999482250215156695

/-! ## A337238.P12705522548130248803

`A066879(2*n+1)+A066879(2*(n+1))`
-/

namespace A337238.P12705522548130248803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066879 (2 * n + 1) + A066879 (2 * (n + 1))

end

end A337238.P12705522548130248803

/-! ## A337238.P10466924461660989933

`A031443(eq[1, A145057(n+1)])`
-/

namespace A337238.P10466924461660989933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337238.P10466924461660989933

/-! ## A337238.P3783843566063706910

`A031443(lt[A145057(n+1), 2])`
-/

namespace A337238.P3783843566063706910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A337238.P3783843566063706910

/-! ## A337238.P3624214228471745188

`A031443(eq[1, A031443(n+1)%4]+1)`
-/

namespace A337238.P3624214228471745188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031443 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337238.P3624214228471745188

/-! ## A337238.P2893184650181643349

`∩[A031443(n+2)-1, A031443(n+2)]`
-/

namespace A337238.P2893184650181643349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337238.P2893184650181643349

/-! ## A337238.P10669474794695451666

`4*eq[0, A037861(n)]+1`
-/

namespace A337238.P10669474794695451666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337238.P10669474794695451666

/-! ## A337238.P11830418162546690466

`A004766(A031443(n+1))`
-/

namespace A337238.P11830418162546690466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A031443 (n + 1)).toNat

end

end A337238.P11830418162546690466

/-! ## A337238.P9023276915495806259

`∩[A031443(n+1), A016813(n)]`
-/

namespace A337238.P9023276915495806259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337238.P9023276915495806259

/-! ## A337238.P16131036720782269181

`∩[A031443(n+1), A222945(n)]`
-/

namespace A337238.P16131036720782269181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337238.P16131036720782269181

/-! ## A337238.P14175667986850402932

`4*eq[A000120(n), A023416(n)]+1`
-/

namespace A337238.P14175667986850402932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A337238.P14175667986850402932

/-! ## A337238.P14824950313581691999

`A008586(eq[A000120(n), A023416(n)])+1`
-/

namespace A337238.P14824950313581691999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A337238.P14824950313581691999

/-! ## A337238.P16747810852133797214

`eq[A022067(n), A145037(n)]`
-/

namespace A337238.P16747810852133797214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337238.P16747810852133797214

/-! ## A337238.P11022491219666224006

`4*eq[A324467(n)/3, A023416(n)]+1`
-/

namespace A337238.P11022491219666224006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A337238.P11022491219666224006

/-! ## A337238.P10241587755974974859

`A097062(A191292(n+1))`
-/

namespace A337238.P10241587755974974859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A191292 (n + 1)).toNat

end

end A337238.P10241587755974974859

/-! ## A337238.P4041142152061467514

`eq[A008425(n), A145037(n)]`
-/

namespace A337238.P4041142152061467514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337238.P4041142152061467514

/-! ## A337238.P4446833374450481975

`eq[A099246(n), A267314(n)]`
-/

namespace A337238.P4446833374450481975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337238.P4446833374450481975

/-! ## A337238.P4715616425643086634

`eq[A130054(n+1), A145037(n)]`
-/

namespace A337238.P4715616425643086634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337238.P4715616425643086634

/-! ## A337238.P10531799598601735048

`eq[A143520(n+1), A145037(n)]`
-/

namespace A337238.P10531799598601735048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337238.P10531799598601735048

/-!
# A337239: Numbers having at least one 7 in their representation in base 8.

The programs for A337239, the canonical program `A337239.P2083424819450980395` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337239 has offset 1).

The definition of A337239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337239.P2083424819450980395

`comp[A037474(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A337239

/-- `comp[A037474(n)]` -/
def P2083424819450980395.Spec : Prop :=
  ∀ n, (P2083424819450980395.a n : ℤ) = A337239 (n + 1)

theorem P2083424819450980395.correct : P2083424819450980395.Spec := by
  intro n
  simp only [A337239, Nat.add_sub_cancel]

end A337239

/-! ## A337239.P13595532716761697802

`eq[7, A190597(n)]`
-/

namespace A337239.P13595532716761697802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337239.P13595532716761697802

namespace A337239

/-- `eq[7, A190597(n)]` -/
def P13595532716761697802.Spec : Prop :=
  ∀ n, (P13595532716761697802.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P7136370570683569930

`eq[7, and(7, A319656(n))]`
-/

namespace A337239.P7136370570683569930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A319656 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337239.P7136370570683569930

namespace A337239

/-- `eq[7, and(7, A319656(n))]` -/
def P7136370570683569930.Spec : Prop :=
  ∀ n, (P7136370570683569930.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P10847071647256274336

`eq[8, A270033(n+1)]+1`
-/

namespace A337239.P10847071647256274336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337239.P10847071647256274336

namespace A337239

/-- `eq[8, A270033(n+1)]+1` -/
def P10847071647256274336.Spec : Prop :=
  ∀ n, (P10847071647256274336.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P13699056516055012975

`lt[5, A006530(A338881(n))]`
-/

namespace A337239.P13699056516055012975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337239.P13699056516055012975

namespace A337239

/-- `lt[5, A006530(A338881(n))]` -/
def P13699056516055012975.Spec : Prop :=
  ∀ n, (P13699056516055012975.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P1657405093429171411

`lt[A319656(A319656(n)+1), A319656(n)]`
-/

namespace A337239.P1657405093429171411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (A319656 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337239.P1657405093429171411

namespace A337239

/-- `lt[A319656(A319656(n)+1), A319656(n)]` -/
def P1657405093429171411.Spec : Prop :=
  ∀ n, (P1657405093429171411.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P5087895091272945279

`A068505(A283610(n+1))`
-/

namespace A337239.P5087895091272945279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A283610 (n + 1)).toNat

end

end A337239.P5087895091272945279

namespace A337239

/-- `A068505(A283610(n+1))` -/
def P5087895091272945279.Spec : Prop :=
  ∀ n, P5087895091272945279.a n = A337239 (n + 1)

end A337239

/-! ## A337239.P2420284767577571126

`lt[6, A054055(A007094(n))]`
-/

namespace A337239.P2420284767577571126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337239.P2420284767577571126

namespace A337239

/-- `lt[6, A054055(A007094(n))]` -/
def P2420284767577571126.Spec : Prop :=
  ∀ n, (P2420284767577571126.a n : ℤ) = A337239 (n + 1)

end A337239

/-! ## A337239.P16146478375871195187

`A028903(A283610(n+1)+1)-1`
-/

namespace A337239.P16146478375871195187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A283610 (n + 1) + 1).toNat - 1

end

end A337239.P16146478375871195187

namespace A337239

/-- `A028903(A283610(n+1)+1)-1` -/
def P16146478375871195187.Spec : Prop :=
  ∀ n, P16146478375871195187.a n = A337239 (n + 1)

end A337239

/-!
# A337240: a(n) is the smallest multiple of n whose decimal representation contains at least two digits which are the same.

The programs for A337240, there is no canonical definition to state claims against.
-/

/-! ## A337240.P3476443516595408912

`(n+1)*A337241(n+1)`
-/

namespace A337240.P3476443516595408912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337241 (n + 1)

end

end A337240.P3476443516595408912

/-! ## A337240.P6536450370660947538

`-(xor(n, -1)*A337241(A028242(2*n)))`
-/

namespace A337240.P6536450370660947538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A337241 (A028242 (2 * n)).toNat)

end

end A337240.P6536450370660947538

/-! ## A337240.P1050069305893198733

`A000005(2^n)*A045538(n+1)`
-/

namespace A337240.P1050069305893198733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) * A045538 (n + 1)

end

end A337240.P1050069305893198733

/-! ## A337240.P12313100967994767622

`(A001222(A000079(n))+1)*A045538(n+1)`
-/

namespace A337240.P12313100967994767622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A000079 n).toNat + 1) * A045538 (n + 1)

end

end A337240.P12313100967994767622

/-! ## A337240.P13666786318050371259

`(n+1)*A045538(A187829(n+1))`
-/

namespace A337240.P13666786318050371259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045538 (A187829 (n + 1)).toNat

end

end A337240.P13666786318050371259

/-!
# A337241: a(n) is the least k such that the decimal representation of k*n contains at least two digits which are the same.

The programs for A337241, there is no canonical definition to state claims against.
-/

/-! ## A337241.P12944686434712231381

`A337240(n+1)/(n+1)`
-/

namespace A337241.P12944686434712231381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337240 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A337241.P12944686434712231381

/-!
# A337242: a(n) is the greatest number m not yet in the sequence such that the binary expansions of m and of n have the same run lengths (up to order but with multiplicity).

The programs for A337242, there is no canonical definition to state claims against.
-/

/-! ## A337242.P6224829920212697341

`A185284(A216219(n))+A166404(n)`
-/

namespace A337242.P6224829920212697341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A216219 n).toNat + A166404 n

end

end A337242.P6224829920212697341

/-! ## A337242.P17191307071360748625

`A166404(n)%A166404(A297569(n))`
-/

namespace A337242.P17191307071360748625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166404 n) (A166404 (A297569 n).toNat)

end

end A337242.P17191307071360748625

/-! ## A337242.P14538874486548269621

`A166404(n)+A000035(A005897(n+2))`
-/

namespace A337242.P14538874486548269621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 n + A000035 (A005897 (n + 2)).toNat

end

end A337242.P14538874486548269621

/-! ## A337242.P4085896112028296882

`A166404(n)*A368183(A367917(n+1))`
-/

namespace A337242.P4085896112028296882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 n * A368183 (A367917 (n + 1)).toNat

end

end A337242.P4085896112028296882

/-! ## A337242.P4410840496505978912

`A166404(n)+A000007(A222371(n+1)+1)`
-/

namespace A337242.P4410840496505978912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 n + A000007 (A222371 (n + 1) + 1).toNat

end

end A337242.P4410840496505978912

/-!
# A337243: Compositions, sorted by increasing sum, increasing length, and increasing colexicographical order.

The programs for A337243, there is no canonical definition to state claims against.
-/

/-! ## A337243.P11567069762721707357

`A124734(n+1)+A296774(n+1)-A337259(n+1)`
-/

namespace A337243.P11567069762721707357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1) + (A296774 (n + 1) - A337259 (n + 1))

end

end A337243.P11567069762721707357

/-! ## A337243.P3193182812236099296

`A296774(A103754(n+2)+n)`
-/

namespace A337243.P3193182812236099296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (A103754 (n + 2) + (n : ℤ)).toNat

end

end A337243.P3193182812236099296

/-! ## A337243.P13278139516564036042

`A296774(n+1+A034432(n+1))`
-/

namespace A337243.P13278139516564036042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 ((n + 1 : ℤ) + A034432 (n + 1)).toNat

end

end A337243.P13278139516564036042

/-! ## A337243.P13646164224862201977

`A296774(n+1)-A185284(A138117(n+1))`
-/

namespace A337243.P13646164224862201977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (n + 1) - A185284 (A138117 (n + 1)).toNat

end

end A337243.P13646164224862201977

/-! ## A337243.P10466760319312916928

`A296774(n+1)-A121373(A016754(n+2))`
-/

namespace A337243.P10466760319312916928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296774 (n + 1) - A121373 (A016754 (n + 2)).toNat

end

end A337243.P10466760319312916928

/-!
# A337244: Perimeters of integer-sided triangles such that the harmonic mean of all the side lengths and the harmonic mean of each pair of side lengths is an integer.

The programs for A337244, there is no canonical definition to state claims against.
-/

/-! ## A337244.P66160624144582530

`∪[7*10*(n+1), 3*(n+1)]`
-/

namespace A337244.P66160624144582530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (10 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A337244.P66160624144582530

/-! ## A337244.P9709166926404483148

`∩[A176409(n+1), A229307(n+1)]`
-/

namespace A337244.P9709166926404483148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337244.P9709166926404483148

/-! ## A337244.P5246403017701139434

`∩[A229307(n+1), A382875(n+1)]`
-/

namespace A337244.P5246403017701139434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337244.P5246403017701139434

/-! ## A337244.P10270176995089945756

`lt[A390402(2*n+5), A072670(n)]+1`
-/

namespace A337244.P10270176995089945756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390402 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337244.P10270176995089945756

/-! ## A337244.P14106313149526070721

`lt[A250120(3*n+1), A049988(19*n)]`
-/

namespace A337244.P14106313149526070721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (19 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337244.P14106313149526070721

/-! ## A337244.P3259806091564584820

`lt[A342918(2*(n+2)), A001615(n+1)]+1`
-/

namespace A337244.P3259806091564584820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A337244.P3259806091564584820

/-! ## A337244.P12103334352612044141

`lt[A000010(A004277(n)), A071991(n+1)]`
-/

namespace A337244.P12103334352612044141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337244.P12103334352612044141

/-! ## A337244.P1059366899019392236

`lt[A310272(2*n), A000203(A008574(n))]`
-/

namespace A337244.P1059366899019392236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310272 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337244.P1059366899019392236

/-! ## A337244.P10446036726160134006

`lt[A000010(A310270(3*n)), A310289(n)]`
-/

namespace A337244.P10446036726160134006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A310270 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337244.P10446036726160134006

/-! ## A337244.P3151794448774291145

`lt[A000010(A310270(3*n)), A310297(n)]`
-/

namespace A337244.P3151794448774291145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A310270 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337244.P3151794448774291145

/-!
# A337246: Sum of the first coordinates of all pairs of prime divisors of n, (p,q), such that p <= q.

The programs for A337246, the canonical program `A337246.P15113473904346363457` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337246 has offset 1).

The definition of A337246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337246.P15113473904346363457

`A318283(A328878(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A337246

/-- `A318283(A328878(n+1))` -/
def P15113473904346363457.Spec : Prop :=
  ∀ n, P15113473904346363457.a n = A337246 (n + 1)

theorem P15113473904346363457.correct : P15113473904346363457.Spec := by
  intro n
  simp only [A337246, Nat.add_sub_cancel]

end A337246

/-! ## A337246.P2296037841018826714

`A318283(∏{p}[n+1, A000040(#)])`
-/

namespace A337246.P2296037841018826714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (∏ p ∈ Nat.primeFactors (f1 n), A000040 p).toNat

end

end A337246.P2296037841018826714

namespace A337246

/-- `A318283(∏{p}[n+1, A000040(#)])` -/
def P2296037841018826714.Spec : Prop :=
  ∀ n, P2296037841018826714.a n = A337246 (n + 1)

end A337246

/-! ## A337246.P9119286259702489214

`A008472(A051119(n+1))+A008472(A061537(n+1))`
-/

namespace A337246.P9119286259702489214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A051119 (n + 1)).toNat + A008472 (A061537 (n + 1)).toNat

end

end A337246.P9119286259702489214

namespace A337246

/-- `A008472(A051119(n+1))+A008472(A061537(n+1))` -/
def P9119286259702489214.Spec : Prop :=
  ∀ n, P9119286259702489214.a n = A337246 (n + 1)

end A337246

/-! ## A337246.P13185009286396446001

`A374250((n+1)/∏{p}[n+1, #^val(n+1, #²)]*A345942(n+1))`
-/

namespace A337246.P13185009286396446001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) * (A345942 (n + 1) : ℚ))).toNat

end

end A337246.P13185009286396446001

namespace A337246

/-- `A374250((n+1)/∏{p}[n+1, #^val(n+1, #²)]*A345942(n+1))` -/
def P13185009286396446001.Spec : Prop :=
  ∀ n, P13185009286396446001.a n = A337246 (n + 1)

end A337246

/-! ## A337246.P5257265726770287741

`A374250(A342768(n+1))`
-/

namespace A337246.P5257265726770287741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374250 (A342768 (n + 1)).toNat

end

end A337246.P5257265726770287741

namespace A337246

/-- `A374250(A342768(n+1))` -/
def P5257265726770287741.Spec : Prop :=
  ∀ n, P5257265726770287741.a n = A337246 (n + 1)

end A337246

/-!
# A337248: Numbers k for which sec(k) > k.

The programs for A337248, there is no canonical definition to state claims against.
-/

/-! ## A337248.P15150400929431434218

`A346033(A049409(n+2)-2)`
-/

namespace A337248.P15150400929431434218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346033 (A049409 (n + 2) - 2).toNat

end

end A337248.P15150400929431434218

/-!
# A337249: Numbers k for which csc(k) > k.

The programs for A337249, there is no canonical definition to state claims against.
-/

/-! ## A337249.P9028594510696450764

`A337371(floor(2/acot(n))*A003108(n))`
-/

namespace A337249.P9028594510696450764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337371 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A003108 n).toNat

end

end A337249.P9028594510696450764

/-! ## A337249.P2231232467962327476

`A337371(floor(2/acot(n))*A306859(n))`
-/

namespace A337249.P2231232467962327476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337371 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A306859 n).toNat

end

end A337249.P2231232467962327476

/-! ## A337249.P17406716240114551150

`A337371(floor(2/acot(n))^A003108(n))`
-/

namespace A337249.P17406716240114551150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337371 (SequenceMachineLib.roundAway ((⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) ^ (A003108 n : ℤ))).toNat

end

end A337249.P17406716240114551150

/-!
# A337250: Numbers having at least one 3 in their representation in base 4.

The programs for A337250, the canonical program `A337250.P13413340909850311773` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337250 has offset 1).

The definition of A337250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337250.P5366714300795866972

`comp[4*a(floor(n/3))+n-3*floor(n/3)]` with `a(0)=0`
-/

namespace A337250.P5366714300795866972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 * f1 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337250.P5366714300795866972

namespace A337250

/-- `comp[4*a(floor(n/3))+n-3*floor(n/3)]` -/
def P5366714300795866972.Spec : Prop :=
  ∀ n, (P5366714300795866972.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P17352452056896706595

`comp[A023717(n)]`
-/

namespace A337250.P17352452056896706595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337250.P17352452056896706595

namespace A337250

/-- `comp[A023717(n)]` -/
def P17352452056896706595.Spec : Prop :=
  ∀ n, (P17352452056896706595.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P5091140711438144570

`lt[0, A292373(n)]`
-/

namespace A337250.P5091140711438144570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337250.P5091140711438144570

namespace A337250

/-- `lt[0, A292373(n)]` -/
def P5091140711438144570.Spec : Prop :=
  ∀ n, (P5091140711438144570.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P13413340909850311773

`lt[0, and(n, A057300(n))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337250

/-- `lt[0, and(n, A057300(n))]` -/
def P13413340909850311773.Spec : Prop :=
  ∀ n, (P13413340909850311773.a n : ℤ) = A337250 (n + 1)

theorem P13413340909850311773.correct : P13413340909850311773.Spec := by
  intro n
  simp only [A337250, Nat.add_sub_cancel]

end A337250

/-! ## A337250.P6283158214982828542

`eq[1, A043545(2*A292373(n))]`
-/

namespace A337250.P6283158214982828542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (2 * A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337250.P6283158214982828542

namespace A337250

/-- `eq[1, A043545(2*A292373(n))]` -/
def P6283158214982828542.Spec : Prop :=
  ∀ n, (P6283158214982828542.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P5310146023729722100

`eq[3, A190593(n)]`
-/

namespace A337250.P5310146023729722100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337250.P5310146023729722100

namespace A337250

/-- `eq[3, A190593(n)]` -/
def P5310146023729722100.Spec : Prop :=
  ∀ n, (P5310146023729722100.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P14076141327218077417

`eq[4, A270029(n+1)]+1`
-/

namespace A337250.P14076141327218077417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337250.P14076141327218077417

namespace A337250

/-- `eq[4, A270029(n+1)]+1` -/
def P14076141327218077417.Spec : Prop :=
  ∀ n, (P14076141327218077417.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P788215990445290622

`lt[A160385(n), A000120(n)]`
-/

namespace A337250.P788215990445290622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P788215990445290622

namespace A337250

/-- `lt[A160385(n), A000120(n)]` -/
def P788215990445290622.Spec : Prop :=
  ∀ n, (P788215990445290622.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P1390388184807375968

`lt[A000120(A309952(n)), A000120(n)]`
-/

namespace A337250.P1390388184807375968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P1390388184807375968

namespace A337250

/-- `lt[A000120(A309952(n)), A000120(n)]` -/
def P1390388184807375968.Spec : Prop :=
  ∀ n, (P1390388184807375968.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P1649480805220297365

`eq[3, A319652(n)%4]`
-/

namespace A337250.P1649480805220297365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319652 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337250.P1649480805220297365

namespace A337250

/-- `eq[3, A319652(n)%4]` -/
def P1649480805220297365.Spec : Prop :=
  ∀ n, (P1649480805220297365.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P15250965551466712347

`lt[and(n, A163241(n)), n]`
-/

namespace A337250.P15250965551466712347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A163241 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A337250.P15250965551466712347

namespace A337250

/-- `lt[and(n, A163241(n)), n]` -/
def P15250965551466712347.Spec : Prop :=
  ∀ n, (P15250965551466712347.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P5804836520882467329

`lt[sin(acot(n)+1), A160383(n)]`
-/

namespace A337250.P5804836520882467329
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (SequenceMachineLib.acot (n : ℝ) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A337250.P5804836520882467329

namespace A337250

/-- `lt[sin(acot(n)+1), A160383(n)]` -/
def P5804836520882467329.Spec : Prop :=
  ∀ n, (P5804836520882467329.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P2223543481712813065

`lt[A292371(n), A059905(n)]`
-/

namespace A337250.P2223543481712813065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P2223543481712813065

namespace A337250

/-- `lt[A292371(n), A059905(n)]` -/
def P2223543481712813065.Spec : Prop :=
  ∀ n, (P2223543481712813065.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P6583117753397118374

`lt[A292372(n), A059906(n)]`
-/

namespace A337250.P6583117753397118374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P6583117753397118374

namespace A337250

/-- `lt[A292372(n), A059906(n)]` -/
def P6583117753397118374.Spec : Prop :=
  ∀ n, (P6583117753397118374.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P10823908824906483748

`lt[A209229(n), A160383(n)]`
-/

namespace A337250.P10823908824906483748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P10823908824906483748

namespace A337250

/-- `lt[A209229(n), A160383(n)]` -/
def P10823908824906483748.Spec : Prop :=
  ∀ n, (P10823908824906483748.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P3227230470369054524

`eq[1, A006530(A338854(n))-2]`
-/

namespace A337250.P3227230470369054524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338854 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337250.P3227230470369054524

namespace A337250

/-- `eq[1, A006530(A338854(n))-2]` -/
def P3227230470369054524.Spec : Prop :=
  ∀ n, (P3227230470369054524.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P12654279888382222780

`lt[A059906(n), n*A160383(n)]`
-/

namespace A337250.P12654279888382222780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P12654279888382222780

namespace A337250

/-- `lt[A059906(n), n*A160383(n)]` -/
def P12654279888382222780.Spec : Prop :=
  ∀ n, (P12654279888382222780.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P14623337484203186557

`lt[A099245(n), n*A160383(n)]`
-/

namespace A337250.P14623337484203186557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337250.P14623337484203186557

namespace A337250

/-- `lt[A099245(n), n*A160383(n)]` -/
def P14623337484203186557.Spec : Prop :=
  ∀ n, (P14623337484203186557.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P9904317177097928615

`comp[and(n, A048647(n))]`
-/

namespace A337250.P9904317177097928615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048647 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337250.P9904317177097928615

namespace A337250

/-- `comp[and(n, A048647(n))]` -/
def P9904317177097928615.Spec : Prop :=
  ∀ n, (P9904317177097928615.a n : ℤ) = A337250 (n + 1)

end A337250

/-! ## A337250.P4613748078763055667

`comp[A380110(n)]`
-/

namespace A337250.P4613748078763055667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337250.P4613748078763055667

namespace A337250

/-- `comp[A380110(n)]` -/
def P4613748078763055667.Spec : Prop :=
  ∀ n, (P4613748078763055667.a n : ℤ) = A337250 (n + 1)

end A337250

/-!
# A337252: Digits of 2^n can be rearranged with no leading zeros to form t^2, for t not a power of 2.

The programs for A337252, there is no canonical definition to state claims against.
-/

/-! ## A337252.P4417968163308458629

`lt[A266389(n)², A266439(n)]`
-/

namespace A337252.P4417968163308458629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266389 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337252.P4417968163308458629

/-!
# A337253: a(2n) = b(a(n)^2), a(2n+1) = b(a(n) + a(n - 1)) where b(k) = abs(k)*(-1)^k; a(0) = 0, a(1) = 1.

The programs for A337253, there is no canonical definition to state claims against.
-/

/-! ## A337253.P5501875866413814951

`A212627(n+1)-A134451(A376677(2*n+3))`
-/

namespace A337253.P5501875866413814951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (n + 1) - A134451 (A376677 (2 * n + 3)).toNat

end

end A337253.P5501875866413814951

/-! ## A337253.P13947288722356381520

`A025903(abs(1-n))-A274923(n+1)^A044556(n+1)`
-/

namespace A337253.P13947288722356381520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025903 |1 - (n : ℤ)|.toNat : ℚ) - (A274923 (n + 1) : ℚ) ^ (A044556 (n + 1) : ℤ)

end

end A337253.P13947288722356381520

/-!
# A337254: Squares visited by a rook moving on a spirally numbered board always to the lowest available unvisited square with a move length of the current square (in decimal) + 1.

The programs for A337254, there is no canonical definition to state claims against.
-/

/-! ## A337254.P15741346808565838272

`A316884(A316884(n+1)%A113274(n+1))`
-/

namespace A337254.P15741346808565838272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (Int.tmod (A316884 (n + 1)) (A113274 (n + 1))).toNat

end

end A337254.P15741346808565838272

/-! ## A337254.P9229251084743327356

`A316967(A316967(n))+A134451(A003215(n))`
-/

namespace A337254.P9229251084743327356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316967 (A316967 n).toNat + A134451 (A003215 n).toNat

end

end A337254.P9229251084743327356

/-! ## A337254.P13654210450466739746

`A324117(A088934(n))+A316967(A316967(n))`
-/

namespace A337254.P13654210450466739746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A088934 n).toNat + A316967 (A316967 n).toNat

end

end A337254.P13654210450466739746

/-! ## A337254.P16371576518950772775

`A316884(A316884(n+1))+A000007(A134666(n))`
-/

namespace A337254.P16371576518950772775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316884 (A316884 (n + 1)).toNat + A000007 (A134666 n).toNat

end

end A337254.P16371576518950772775

/-! ## A337254.P7434312836718854815

`A316884(A316884(n+1))%A154266(A007089(n))`
-/

namespace A337254.P7434312836718854815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316884 (A316884 (n + 1)).toNat) (A154266 (A007089 n).toNat)

end

end A337254.P7434312836718854815

/-!
# A337255: Irregular triangle read by rows where T(n,k) is the number of strict length-k chains of divisors starting with n.

The programs for A337255, there is no canonical definition to state claims against.
-/

/-! ## A337255.P17733255873169603054

`A334996(n+1)+A334996(n+2)+A000007(n)`
-/

namespace A337255.P17733255873169603054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (n + 1) + (A334996 (n + 2) + A000007 n)

end

end A337255.P17733255873169603054

/-! ## A337255.P12166622092348656841

`A334996(A000038(n)+1+n)+A334996(n+2)`
-/

namespace A337255.P12166622092348656841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (A000038 n + 1 + (n : ℤ)).toNat + A334996 (n + 2)

end

end A337255.P12166622092348656841

/-! ## A337255.P1947182589623682042

`A334996(n+2)+abs(A124433(n+1))`
-/

namespace A337255.P1947182589623682042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (n + 2) + |A124433 (n + 1)|

end

end A337255.P1947182589623682042

/-! ## A337255.P14512806784507068756

`abs(Δ[A124433(n+1)])`
-/

namespace A337255.P14512806784507068756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A337255.P14512806784507068756

/-! ## A337255.P13517971785324902914

`A000188(Δ[A124433(n+1)]²)`
-/

namespace A337255.P13517971785324902914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A337255.P13517971785324902914

/-! ## A337255.P16650172725614619440

`A000194(Δ[A124433(n+1)]²)`
-/

namespace A337255.P16650172725614619440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A337255.P16650172725614619440

/-! ## A337255.P8243579911023756744

`A000196(Δ[A124433(n+1)]²)`
-/

namespace A337255.P8243579911023756744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A337255.P8243579911023756744

/-! ## A337255.P18312978864214187257

`A033676(Δ[A124433(n+1)]²)`
-/

namespace A337255.P18312978864214187257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A337255.P18312978864214187257

/-! ## A337255.P3216674357852599283

`A101157(Δ[A124433(n+1)]²)`
-/

namespace A337255.P3216674357852599283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A337255.P3216674357852599283

/-! ## A337255.P2744757071725473125

`gcd(Δ[A124433(n+1)], A000038(n))`
-/

namespace A337255.P2744757071725473125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A337255.P2744757071725473125

/-! ## A337255.P12246361208379175267

`∑{d}[Δ[A124433(n+1)], A000010(#)]`
-/

namespace A337255.P12246361208379175267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A337255.P12246361208379175267

/-! ## A337255.P13842726599642654328

`∏{d}[Δ[A124433(n+1)], A014963(#)]`
-/

namespace A337255.P13842726599642654328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A337255.P13842726599642654328

/-! ## A337255.P12772705399554251666

`abs(A124433(n+1)-A124433(n+2))`
-/

namespace A337255.P12772705399554251666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124433 (n + 1) - A124433 (n + 2)|

end

end A337255.P12772705399554251666

/-! ## A337255.P8751428737196068431

`lcm(Δ[A124433(n+1)], A008836(n+1))`
-/

namespace A337255.P8751428737196068431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A008836 (n + 1))

end

end A337255.P8751428737196068431

/-!
# A337256: Number of strict chains of divisors of n.

The programs for A337256, there is no canonical definition to state claims against.
-/

/-! ## A337256.P18208666972278389495

`A253249(n+1)+1`
-/

namespace A337256.P18208666972278389495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (n + 1) + 1

end

end A337256.P18208666972278389495

/-! ## A337256.P3583402247487969650

`2*A067824(n+1)`
-/

namespace A337256.P3583402247487969650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067824 (n + 1)

end

end A337256.P3583402247487969650

/-! ## A337256.P7547337658793560379

`2*∑{d}[n+1, A002033(#-1)]`
-/

namespace A337256.P7547337658793560379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1))

end

end A337256.P7547337658793560379

/-! ## A337256.P6212947473873615141

`A002033(n)*A040002(n)`
-/

namespace A337256.P6212947473873615141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A040002 n

end

end A337256.P6212947473873615141

/-! ## A337256.P13234488102630504599

`A040002(n)*A074206(n+1)`
-/

namespace A337256.P13234488102630504599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A074206 (n + 1)

end

end A337256.P13234488102630504599

/-! ## A337256.P2690778047456159489

`(4-A000038(n))*A002033(n)`
-/

namespace A337256.P2690778047456159489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A000038 n) * A002033 n

end

end A337256.P2690778047456159489

/-! ## A337256.P13225424689800289049

`∑{d}[n+1, A062011(#)*A174725((n+1)/#)]`
-/

namespace A337256.P13225424689800289049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062011 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337256.P13225424689800289049

/-! ## A337256.P10235100775005524272

`∑{d}[n+1, A062004(#)*A191161((n+1)/#)]`
-/

namespace A337256.P10235100775005524272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062004 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337256.P10235100775005524272

/-! ## A337256.P11884008123959174452

`∑{d}[n+1, A074400(#)*A323910((n+1)/#)]`
-/

namespace A337256.P11884008123959174452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074400 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337256.P11884008123959174452

/-! ## A337256.P17693604635092269867

`∑{d}[n+1, A345182(#)*A366839((n+1)/#)]`
-/

namespace A337256.P17693604635092269867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345182 d * A366839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337256.P17693604635092269867

/-! ## A337256.P6243591937382547853

`A067824(round(sqrt((n+1)²+1)))+A067824(n+1)`
-/

namespace A337256.P6243591937382547853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 2 + 1 : ℝ))).toNat + A067824 (n + 1)

end

end A337256.P6243591937382547853

/-! ## A337256.P9741560874690745368

`2*A000005(A027746(n+1))*A002033(n)`
-/

namespace A337256.P9741560874690745368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (A027746 (n + 1)).toNat * A002033 n)

end

end A337256.P9741560874690745368

/-! ## A337256.P14469355311639790293

`2*A071187(A071187(n+1))*A002033(n)`
-/

namespace A337256.P14469355311639790293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071187 (A071187 (n + 1)).toNat * A002033 n

end

end A337256.P14469355311639790293

/-! ## A337256.P16226532806148012356

`2*A020639(A000010(n+2))*A002033(n)`
-/

namespace A337256.P16226532806148012356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020639 (A000010 (n + 2)).toNat * A002033 n)

end

end A337256.P16226532806148012356

/-! ## A337256.P6445527651103651823

`A000005(lcm(2, A000040(n+1)))*A002033(n)`
-/

namespace A337256.P6445527651103651823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 2 (A000040 (n + 1))) * A002033 n

end

end A337256.P6445527651103651823

/-! ## A337256.P11252893938740544648

`A002033(n)*A010121(4*n)`
-/

namespace A337256.P11252893938740544648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A010121 (4 * n)

end

end A337256.P11252893938740544648

/-! ## A337256.P9934439423924575152

`A040465(2*n)/11*A074206(n+1)`
-/

namespace A337256.P9934439423924575152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040465 (2 * n) : ℚ) / 11 * (A074206 (n + 1) : ℚ)

end

end A337256.P9934439423924575152

/-! ## A337256.P17470614188194337219

`A004277(A067824(n+1))`
-/

namespace A337256.P17470614188194337219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067824 (n + 1)).toNat

end

end A337256.P17470614188194337219

/-!
# A337257: Number of even divisors of n!.

The programs for A337257, the canonical program `A337257.P14876870470645707118` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337257 has offset 0).

The definition of A337257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337257.P14876870470645707118

`A027423(n)-A336940(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337257

/-- `A027423(n)-A336940(n)` -/
def P14876870470645707118.Spec : Prop :=
  ∀ n, P14876870470645707118.a n = A337257 n

theorem P14876870470645707118.correct : P14876870470645707118.Spec := by
  intro n
  simp only [A337257]

end A337257

/-! ## A337257.P16743709827066246442

`A011371(n)*A336940(n)`
-/

namespace A337257.P16743709827066246442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n * A336940 n

end

end A337257.P16743709827066246442

namespace A337257

/-- `A011371(n)*A336940(n)` -/
def P16743709827066246442.Spec : Prop :=
  ∀ n, P16743709827066246442.a n = A337257 n

end A337257

/-! ## A337257.P4948603998447776768

`A153823(n)+1-A336940(n)`
-/

namespace A337257.P4948603998447776768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + (1 - A336940 n)

end

end A337257.P4948603998447776768

namespace A337257

/-- `A153823(n)+1-A336940(n)` -/
def P4948603998447776768.Spec : Prop :=
  ∀ n, P4948603998447776768.a n = A337257 n

end A337257

/-! ## A337257.P2715064734737152118

`(A005187(n)-n)*A336940(n)`
-/

namespace A337257.P2715064734737152118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 n - (n : ℤ)) * A336940 n

end

end A337257.P2715064734737152118

namespace A337257

/-- `(A005187(n)-n)*A336940(n)` -/
def P2715064734737152118.Spec : Prop :=
  ∀ n, P2715064734737152118.a n = A337257 n

end A337257

/-! ## A337257.P16949042217385925826

`A005187(A004526(n))*A336940(n)`
-/

namespace A337257.P16949042217385925826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A004526 n).toNat * A336940 n

end

end A337257.P16949042217385925826

namespace A337257

/-- `A005187(A004526(n))*A336940(n)` -/
def P16949042217385925826.Spec : Prop :=
  ∀ n, P16949042217385925826.a n = A337257 n

end A337257

/-! ## A337257.P12388978225217103359

`(A153823(n)*A336940(n))%A027423(n)`
-/

namespace A337257.P12388978225217103359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n * A336940 n) (A027423 n)

end

end A337257.P12388978225217103359

namespace A337257

/-- `(A153823(n)*A336940(n))%A027423(n)` -/
def P12388978225217103359.Spec : Prop :=
  ∀ n, P12388978225217103359.a n = A337257 n

end A337257

/-! ## A337257.P3382783694205073

`log2(A060818(n))*A336940(n)`
-/

namespace A337257.P3382783694205073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060818 n : ℝ) * (A336940 n : ℝ)

end

end A337257.P3382783694205073

namespace A337257

/-- `log2(A060818(n))*A336940(n)` -/
def P3382783694205073.Spec : Prop :=
  ∀ n, P3382783694205073.a n = (A337257 n : ℝ)

end A337257

/-!
# A337258: Primes p such that p and the prime next to p are both digitally balanced numbers in base 2 (A031443).

The programs for A337258, there is no canonical definition to state claims against.
-/

/-! ## A337258.P16001455445218884566

`∩[A066196(n+1), A339080(n+1)]`
-/

namespace A337258.P16001455445218884566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337258.P16001455445218884566

/-! ## A337258.P7531537320902765996

`∩[A031443(n+1), A339080(n+1)]`
-/

namespace A337258.P7531537320902765996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337258.P7531537320902765996

/-! ## A337258.P10820811428742619149

`∩[A066196(n+1), A008578(A177796(n+1))]`
-/

namespace A337258.P10820811428742619149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A177796 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337258.P10820811428742619149

/-! ## A337258.P13991945303449769677

`A008578(∩[A177796(n+1)+1, A177796(n+1)])`
-/

namespace A337258.P13991945303449769677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177796 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177796 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A337258.P13991945303449769677

/-!
# A337259: Compositions, sorted by increasing sum, increasing length and decreasing colexicographical order.

The programs for A337259, there is no canonical definition to state claims against.
-/

/-! ## A337259.P8598560420253431362

`A124734(n+1)+A296774(n+1)-A337243(n+1)`
-/

namespace A337259.P8598560420253431362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1) + (A296774 (n + 1) - A337243 (n + 1))

end

end A337259.P8598560420253431362

/-! ## A337259.P3484979889303337080

`A043284(A064298(n+1))*A124734(n+1)`
-/

namespace A337259.P3484979889303337080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (A064298 (n + 1)).toNat * A124734 (n + 1)

end

end A337259.P3484979889303337080

/-!
# A337260: Compositions, sorted by increasing sum, decreasing length and increasing colexicographical order.

The programs for A337260, there is no canonical definition to state claims against.
-/

/-! ## A337260.P3180585336429497488

`A296772(n+1)+A296773(n+1)-A108244(n+1)`
-/

namespace A337260.P3180585336429497488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (n + 1) + (A296773 (n + 1) - A108244 (n + 1))

end

end A337260.P3180585336429497488

/-! ## A337260.P7310880450656742658

`A296772(∪[A296751(3*n+5), A296765(n+1)])`
-/

namespace A337260.P7310880450656742658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296751 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A337260.P7310880450656742658

/-! ## A337260.P17923852763903472723

`A296772(∪[A000290(n+1), A296765(n+1)])`
-/

namespace A337260.P17923852763903472723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A337260.P17923852763903472723

/-! ## A337260.P15964820265015917841

`A296772(∪[A296765(n+1), A296795(n)])`
-/

namespace A337260.P15964820265015917841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296795 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A337260.P15964820265015917841

/-! ## A337260.P1179187679039926584

`A296772(∪[A296756(2*n+4), A296765(n+1)])`
-/

namespace A337260.P1179187679039926584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296756 (2 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A337260.P1179187679039926584

/-! ## A337260.P16580041075531228558

`A296772(A296765(n+1))`
-/

namespace A337260.P16580041075531228558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (A296765 (n + 1)).toNat

end

end A337260.P16580041075531228558

/-! ## A337260.P15239043946960259543

`A296772(A262079(n+1)+n)`
-/

namespace A337260.P15239043946960259543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (A262079 (n + 1) + (n : ℤ)).toNat

end

end A337260.P15239043946960259543

/-! ## A337260.P5887222858236578583

`gcd(A296772(n+1), A305930(A152714(n)))`
-/

namespace A337260.P5887222858236578583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296772 (n + 1)) (A305930 (A152714 n).toNat)

end

end A337260.P5887222858236578583

/-!
# A337262: A328078(2*n+1).

The programs for A337262, there is no canonical definition to state claims against.
-/

/-! ## A337262.P452513656409860857

`A328078(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337262.P452513656409860857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (2 * n + 1)

end

end A337262.P452513656409860857

/-! ## A337262.P7508786263219925500

`record[A328078(xor(1, n))]`
-/

namespace A337262.P7508786263219925500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337262.P7508786263219925500

/-! ## A337262.P18295708301636754736

`record[A328078(n^(n%2))]`
-/

namespace A337262.P18295708301636754736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337262.P18295708301636754736

/-! ## A337262.P18117438167501901336

`or(char[1], A328078(or(1, 2*n)))`
-/

namespace A337262.P18117438167501901336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A328078 (Nat.lor 1 (2 * n)))

end

end A337262.P18117438167501901336

/-! ## A337262.P165363071058315183

`record[A328078(n+1)/(-1)^n]`
-/

namespace A337262.P165363071058315183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328078 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337262.P165363071058315183

/-!
# A337263: Array read by antidiagonals: v(m,n) (m>=0, n>=0) = 1 if there is an edge upward from grid point (m,n) in the Even Conant lattice.

The programs for A337263, there is no canonical definition to state claims against.
-/

/-! ## A337263.P2401433762039103369

`floor(atan(A337265(n)))`
-/

namespace A337263.P2401433762039103369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A337265 n : ℝ)⌋

end

end A337263.P2401433762039103369

/-! ## A337263.P1222065302575767213

`floor(A337265(char[1]+n)/2)`
-/

namespace A337263.P1222065302575767213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337265 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2⌋

end

end A337263.P1222065302575767213

/-! ## A337263.P9665622335150657657

`ceil((A337265(char[2]+n)-1)/4)`
-/

namespace A337263.P9665622335150657657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337265 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1 : ℚ) / 4⌉

end

end A337263.P9665622335150657657

/-! ## A337263.P5881335894137043646

`(A337265(n)-A337264(n))/2`
-/

namespace A337263.P5881335894137043646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337265 n - A337264 n : ℚ) / 2

end

end A337263.P5881335894137043646

/-! ## A337263.P4116334397153936370

`A032741(xor(n, xor(n, A337265(n))))`
-/

namespace A337263.P4116334397153936370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A337265 n))).toNat

end

end A337263.P4116334397153936370

/-! ## A337263.P16819462223678127526

`A051651(n+1)%A337265(n)!`
-/

namespace A337263.P16819462223678127526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051651 (n + 1)) (Nat.factorial (A337265 n).toNat : ℤ)

end

end A337263.P16819462223678127526

/-! ## A337263.P15453889649415592845

`A240868(A337265(n)-C(n, n²))`
-/

namespace A337263.P15453889649415592845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240868 (A337265 n - (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A337263.P15453889649415592845

/-! ## A337263.P2598287312412904843

`A266509(A337265(n)+xor(1, C(2, n)))`
-/

namespace A337263.P2598287312412904843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266509 (A337265 n + (Nat.xor 1 (Nat.choose 2 n) : ℤ)).toNat

end

end A337263.P2598287312412904843

/-! ## A337263.P16363250087319794997

`A256549(C(gcd(n, n+1), A337265(n)))`
-/

namespace A337263.P16363250087319794997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256549 (Nat.choose (Nat.gcd n (n + 1)) (A337265 n).toNat)

end

end A337263.P16363250087319794997

/-! ## A337263.P5714657335712843457

`A258664(xor(n, xor(n, A337265(n)))+1)`
-/

namespace A337263.P5714657335712843457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258664 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A337265 n)) + 1).toNat

end

end A337263.P5714657335712843457

/-!
# A337264: Array read by antidiagonals: h(m,n) (m>=0, n>=0) = 1 if there is an edge to the right from grid point (m,n) in the Even Conant lattice.

The programs for A337264, there is no canonical definition to state claims against.
-/

/-! ## A337264.P8632495456936651383

`A337265(n)%2`
-/

namespace A337264.P8632495456936651383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337265 n) 2

end

end A337264.P8632495456936651383

/-! ## A337264.P10755091651167182439

`and(1, A337265(char[1]+n))`
-/

namespace A337264.P10755091651167182439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A337265 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A337264.P10755091651167182439

/-! ## A337264.P2943755320234527991

`and(A337265(n), A352008(n))`
-/

namespace A337264.P2943755320234527991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A352008 n)

end

end A337264.P2943755320234527991

/-! ## A337264.P18427060991849110463

`and(A337265(n), A352011(n))`
-/

namespace A337264.P18427060991849110463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A352011 n)

end

end A337264.P18427060991849110463

/-! ## A337264.P1419346361479649819

`and(A337265(n), A352779(n))`
-/

namespace A337264.P1419346361479649819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A352779 n)

end

end A337264.P1419346361479649819

/-! ## A337264.P3172079429015121637

`and(A337265(n), A361657(n))`
-/

namespace A337264.P3172079429015121637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A361657 n)

end

end A337264.P3172079429015121637

/-! ## A337264.P15808061524581451534

`and(A337265(n), A361658(n))`
-/

namespace A337264.P15808061524581451534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A361658 n)

end

end A337264.P15808061524581451534

/-! ## A337264.P3847261483182257159

`and(A337265(n), A361699(n))`
-/

namespace A337264.P3847261483182257159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A361699 n)

end

end A337264.P3847261483182257159

/-! ## A337264.P12570839978811502364

`and(A337265(n), A382677(n))`
-/

namespace A337264.P12570839978811502364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337265 n) (A382677 n)

end

end A337264.P12570839978811502364

/-!
# A337265: Array read by antidiagonals: T(m,n) (m>=0, n>=0) = 3 if there is both an edge upward from grid point (m,n) in the Even Conant lattice and an edge to the right; = 2 if there is only an edge upward; = 1 if there is only an edge to the right; = 0 if neither of those edges are present.

The programs for A337265, there is no canonical definition to state claims against.
-/

/-! ## A337265.P5454187547116358919

`A337264(n)+2*A337263(n)`
-/

namespace A337265.P5454187547116358919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337264 n + 2 * A337263 n

end

end A337265.P5454187547116358919

/-! ## A337265.P1962699727031004887

`A036585(gcd(A022171(n), A293752(2*(n+1))))`
-/

namespace A337265.P1962699727031004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036585 (Int.gcd (A022171 n) (A293752 (2 * (n + 1))))

end

end A337265.P1962699727031004887

/-! ## A337265.P11840882716841466728

`A079948(gcd(A046522(n+1), A168523(n)))`
-/

namespace A337265.P11840882716841466728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (Int.gcd (A046522 (n + 1)) (A168523 n))

end

end A337265.P11840882716841466728

/-!
# A337266: Array read by antidiagonals: T(m,n) (m>=0, n>=0) = number of paths to origin (0,0) from grid point (m,n) in the Even Conant lattice.

The programs for A337266, there is no canonical definition to state claims against.
-/

/-! ## A337266.P9035019048884221714

`gcd(A008459(n), A033273(A108694(n)))`
-/

namespace A337266.P9035019048884221714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008459 n) (A033273 (A108694 n).toNat)

end

end A337266.P9035019048884221714

/-!
# A337267: A335703(2n).

The programs for A337267, there is no canonical definition to state claims against.
-/

/-! ## A337267.P3840860205645082109

`A335703(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337267.P3840860205645082109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (2 * n)

end

end A337267.P3840860205645082109

/-! ## A337267.P14195980280964311325

`record[A335703(and(n, n-1))]`
-/

namespace A337267.P14195980280964311325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337267.P14195980280964311325

/-! ## A337267.P18073581121310732261

`record[A335703(n%or(1, n))]`
-/

namespace A337267.P18073581121310732261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337267.P18073581121310732261

/-! ## A337267.P13681617532195800456

`record[A335703(n)/(-1)^n]`
-/

namespace A337267.P13681617532195800456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335703 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337267.P13681617532195800456

/-! ## A337267.P12482146204103118801

`record[A335703(gcd(n+1, ∑[n+1])-1)]`
-/

namespace A337267.P12482146204103118801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337267.P12482146204103118801

/-!
# A337268: a(n) = A335703(2n+1).

The programs for A337268, there is no canonical definition to state claims against.
-/

/-! ## A337268.P7726006521872815534

`A335703(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337268.P7726006521872815534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (2 * n + 1)

end

end A337268.P7726006521872815534

/-! ## A337268.P17585512423275497117

`record[A335703(xor(1, n))]`
-/

namespace A337268.P17585512423275497117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337268.P17585512423275497117

/-! ## A337268.P6548991674366114423

`record[A335703(n^(n%2))]`
-/

namespace A337268.P6548991674366114423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337268.P6548991674366114423

/-! ## A337268.P12202568456898601205

`record[A335703(lcm(2, n+2)/2)]`
-/

namespace A337268.P12202568456898601205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337268.P12202568456898601205

/-! ## A337268.P3406251059687037144

`record[A335703(gcd(n+1, ∑[n+1]))]`
-/

namespace A337268.P3406251059687037144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337268.P3406251059687037144

/-!
# A337269: A335703(4n).

The programs for A337269, there is no canonical definition to state claims against.
-/

/-! ## A337269.P15171060104126113470

`A335703(4*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337269.P15171060104126113470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335703 (4 * n)

end

end A337269.P15171060104126113470

/-! ## A337269.P1203858313154290181

`A337267(2*n)`
-/

namespace A337269.P1203858313154290181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337267 (2 * n)

end

end A337269.P1203858313154290181

/-! ## A337269.P5807380742512558282

`∏{e}[4^n, A337267(#)]`
-/

namespace A337269.P5807380742512558282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A337267 (Nat.factorization (f1 n) p)

end

end A337269.P5807380742512558282

/-! ## A337269.P11819383245429800248

`record[A337267(n)/(-1)^n]`
-/

namespace A337269.P11819383245429800248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337267 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A337269.P11819383245429800248

/-! ## A337269.P8481883107189846441

`and(-1, A337267(∑{digits}[n, #]+n))`
-/

namespace A337269.P8481883107189846441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A337267 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n))

end

end A337269.P8481883107189846441

/-!
# A337270: Number of regions formed at generation n when the Conant "warp and woof" construction is applied to the base and left side of an equilateral triangle.

The programs for A337270, there is no canonical definition to state claims against.
-/

/-! ## A337270.P17276227735247982518

`A331995(A236340(n))`
-/

namespace A337270.P17276227735247982518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A236340 n).toNat

end

end A337270.P17276227735247982518

/-! ## A337270.P1619888584842073748

`A357875(A249309(n+1))`
-/

namespace A337270.P1619888584842073748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A249309 (n + 1)).toNat

end

end A337270.P1619888584842073748

/-! ## A337270.P17396290374519942976

`A356944(A250253(n+1))`
-/

namespace A337270.P17396290374519942976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A250253 (n + 1)).toNat

end

end A337270.P17396290374519942976

/-! ## A337270.P14258170454189462834

`A117568(A206622(n))+A061257(n)`
-/

namespace A337270.P14258170454189462834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A206622 n).toNat + A061257 n

end

end A337270.P14258170454189462834

/-! ## A337270.P10856624865485745841

`A354579(3*n+1)+A335513(A091696(n+1))`
-/

namespace A337270.P10856624865485745841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (3 * n + 1) + A335513 (A091696 (n + 1)).toNat

end

end A337270.P10856624865485745841

/-!
# A337273: Number of distinct positive integer pairs, (s,t), such that s < t < n where neither s nor t divides n.

The programs for A337273, the canonical program `A337273.P1128480905751359668` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337273 has offset 1).

The definition of A337273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337273.P1128480905751359668

`C(n+1-A000005(n+1), 2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337273

/-- `C(n+1-A000005(n+1), 2)` -/
def P1128480905751359668.Spec : Prop :=
  ∀ n, (P1128480905751359668.a n : ℤ) = A337273 (n + 1)

theorem P1128480905751359668.correct : P1128480905751359668.Spec := by
  intro n
  simp only [A337273, Nat.add_sub_cancel]

end A337273

/-! ## A337273.P6086740464112351019

`C(∑{d}[n+1, C(#, n)-1], 2)`
-/

namespace A337273.P6086740464112351019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d n : ℤ) - 1)).toNat 2

end

end A337273.P6086740464112351019

namespace A337273

/-- `C(∑{d}[n+1, C(#, n)-1], 2)` -/
def P6086740464112351019.Spec : Prop :=
  ∀ n, (P6086740464112351019.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P4083776431940375601

`C(1-∏{e}[n+1, #+1]+n, 2)`
-/

namespace A337273.P4083776431940375601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat 2

end

end A337273.P4083776431940375601

namespace A337273

/-- `C(1-∏{e}[n+1, #+1]+n, 2)` -/
def P4083776431940375601.Spec : Prop :=
  ∀ n, (P4083776431940375601.a n : ℤ) = A337273 (n + 1)

theorem P4083776431940375601.correct : P4083776431940375601.Spec := by
  intro n
  simp only [A337273, Nat.add_sub_cancel, A337273.P4083776431940375601.f1, A337273.P4083776431940375601.a, A337273.P1128480905751359668.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A337273

/-! ## A337273.P13679511699276088956

`C(∑{d}[n+1, or(#, -1)]+n+1, 2)`
-/

namespace A337273.P13679511699276088956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1) + (n + 1 : ℤ)).toNat 2

end

end A337273.P13679511699276088956

namespace A337273

/-- `C(∑{d}[n+1, or(#, -1)]+n+1, 2)` -/
def P13679511699276088956.Spec : Prop :=
  ∀ n, (P13679511699276088956.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P10996161409487315727

`C((n*∏{e}[n+1, #+1])%(n+1), 2)`
-/

namespace A337273.P10996161409487315727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) % (n + 1)) 2

end

end A337273.P10996161409487315727

namespace A337273

/-- `C((n*∏{e}[n+1, #+1])%(n+1), 2)` -/
def P10996161409487315727.Spec : Prop :=
  ∀ n, (P10996161409487315727.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P3189054838859614964

`C(n+1-2^∑{e}[n+1, log2(#+1)], 2)`
-/

namespace A337273.P3189054838859614964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℝ) - (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)))).toNat 2

end

end A337273.P3189054838859614964

namespace A337273

/-- `C(n+1-2^∑{e}[n+1, log2(#+1)], 2)` -/
def P3189054838859614964.Spec : Prop :=
  ∀ n, (P3189054838859614964.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P18160846572596004340

`C(n+1-∏{p}[n+1, val(n+1, #)+1], 2)`
-/

namespace A337273.P18160846572596004340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1) : ℕ) : ℤ)).toNat 2

end

end A337273.P18160846572596004340

namespace A337273

/-- `C(n+1-∏{p}[n+1, val(n+1, #)+1], 2)` -/
def P18160846572596004340.Spec : Prop :=
  ∀ n, (P18160846572596004340.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P9581366105221720515

`C((∑{d}[n+1, #]+1+n)%∑{d}[n+1, #+1], 2)`
-/

namespace A337273.P9581366105221720515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ d ∈ Nat.divisors (f1 n), d + 1 + n) % (∑ d ∈ Nat.divisors (f2 n), (d + 1))) 2

end

end A337273.P9581366105221720515

namespace A337273

/-- `C((∑{d}[n+1, #]+1+n)%∑{d}[n+1, #+1], 2)` -/
def P9581366105221720515.Spec : Prop :=
  ∀ n, (P9581366105221720515.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P6686328445318760046

`C(A049820(n+1), 2)`
-/

namespace A337273.P6686328445318760046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049820 (n + 1)).toNat 2

end

end A337273.P6686328445318760046

namespace A337273

/-- `C(A049820(n+1), 2)` -/
def P6686328445318760046.Spec : Prop :=
  ∀ n, (P6686328445318760046.a n : ℤ) = A337273 (n + 1)

end A337273

/-! ## A337273.P1699874730958258482

`C(A062968(n+1)-1, 2)`
-/

namespace A337273.P1699874730958258482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062968 (n + 1) - 1).toNat 2

end

end A337273.P1699874730958258482

namespace A337273

/-- `C(A062968(n+1)-1, 2)` -/
def P1699874730958258482.Spec : Prop :=
  ∀ n, (P1699874730958258482.a n : ℤ) = A337273 (n + 1)

theorem P1699874730958258482.correct : P1699874730958258482.Spec := by
  intro n
  simp only [A337273, Nat.add_sub_cancel, A337273.P1699874730958258482.a, A337273.P1128480905751359668.a, A000005, A000005.P16091521709108585461.a, A062968, A062968.P12745258028289340812.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A337273

/-! ## A337273.P16471464218494586830

`C(A059292(n+1)-2, 2)`
-/

namespace A337273.P16471464218494586830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059292 (n + 1) - 2).toNat 2

end

end A337273.P16471464218494586830

namespace A337273

/-- `C(A059292(n+1)-2, 2)` -/
def P16471464218494586830.Spec : Prop :=
  ∀ n, (P16471464218494586830.a n : ℤ) = A337273 (n + 1)

theorem P16471464218494586830.correct : P16471464218494586830.Spec := by
  intro n
  simp only [A337273, Nat.add_sub_cancel, A337273.P16471464218494586830.a, A337273.P1128480905751359668.a, A000005, A000005.P16091521709108585461.a, A059292, A059292.P13391037705740320393.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A337273

/-! ## A337273.P1615194399959926310

`A161680(A049820(n+1))`
-/

namespace A337273.P1615194399959926310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A049820 (n + 1)).toNat

end

end A337273.P1615194399959926310

namespace A337273

/-- `A161680(A049820(n+1))` -/
def P1615194399959926310.Spec : Prop :=
  ∀ n, P1615194399959926310.a n = A337273 (n + 1)

end A337273

/-! ## A337273.P7190155594497326367

`A161680(A062968(n+1)-1)`
-/

namespace A337273.P7190155594497326367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A062968 (n + 1) - 1).toNat

end

end A337273.P7190155594497326367

namespace A337273

/-- `A161680(A062968(n+1)-1)` -/
def P7190155594497326367.Spec : Prop :=
  ∀ n, P7190155594497326367.a n = A337273 (n + 1)

theorem P7190155594497326367.correct : P7190155594497326367.Spec := by
  intro n
  simp only [A337273, Nat.add_sub_cancel, A337273.P7190155594497326367.a, A337273.P1128480905751359668.a, A000005, A000005.P16091521709108585461.a, A062968, A062968.P12745258028289340812.a, A161680, A161680.P17206074215489759881.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A337273

/-! ## A337273.P12933661162766646440

`A161680(n+1-A000005(n+1))`
-/

namespace A337273.P12933661162766646440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n + 1 : ℤ) - A000005 (n + 1)).toNat

end

end A337273.P12933661162766646440

namespace A337273

/-- `A161680(n+1-A000005(n+1))` -/
def P12933661162766646440.Spec : Prop :=
  ∀ n, P12933661162766646440.a n = A337273 (n + 1)

end A337273

/-! ## A337273.P3299477175594372097

`A335567(n+1)-A049820(n+1)`
-/

namespace A337273.P3299477175594372097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335567 (n + 1) - A049820 (n + 1)

end

end A337273.P3299477175594372097

namespace A337273

/-- `A335567(n+1)-A049820(n+1)` -/
def P3299477175594372097.Spec : Prop :=
  ∀ n, P3299477175594372097.a n = A337273 (n + 1)

end A337273

/-! ## A337273.P13545252338128280586

`A056943(A335567(n+1))`
-/

namespace A337273.P13545252338128280586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A335567 (n + 1)).toNat

end

end A337273.P13545252338128280586

namespace A337273

/-- `A056943(A335567(n+1))` -/
def P13545252338128280586.Spec : Prop :=
  ∀ n, P13545252338128280586.a n = A337273 (n + 1)

end A337273

/-! ## A337273.P8828266899754585945

`A004526(A049820(n+1)²-A049820(n+1))`
-/

namespace A337273.P8828266899754585945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049820 (n + 1) ^ 2 - A049820 (n + 1)).toNat

end

end A337273.P8828266899754585945

namespace A337273

/-- `A004526(A049820(n+1)²-A049820(n+1))` -/
def P8828266899754585945.Spec : Prop :=
  ∀ n, P8828266899754585945.a n = A337273 (n + 1)

end A337273

/-! ## A337273.P12844830482412762134

`A110654(A049820(n+1)²-A049820(n+1))`
-/

namespace A337273.P12844830482412762134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A049820 (n + 1) ^ 2 - A049820 (n + 1)).toNat

end

end A337273.P12844830482412762134

namespace A337273

/-- `A110654(A049820(n+1)²-A049820(n+1))` -/
def P12844830482412762134.Spec : Prop :=
  ∀ n, P12844830482412762134.a n = A337273 (n + 1)

end A337273

/-!
# A337274: Number of distinct graceful labelings of trees with n vertices.

The programs for A337274, there is no canonical definition to state claims against.
-/

/-! ## A337274.P5277661690883832848

`ceil(A033472(n+1)/2)`
-/

namespace A337274.P5277661690883832848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033472 (n + 1) : ℚ) / 2⌉

end

end A337274.P5277661690883832848

/-! ## A337274.P17543973196786897107

`A033472(n+1)/A036453(A008619(n))`
-/

namespace A337274.P17543973196786897107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033472 (n + 1) : ℚ) / (A036453 (A008619 n).toNat : ℚ)

end

end A337274.P17543973196786897107

/-! ## A337274.P14815301858387604498

`A033472(n+1)/A020639(A245517(n+4))`
-/

namespace A337274.P14815301858387604498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033472 (n + 1) : ℚ) / (A020639 (A245517 (n + 4)).toNat : ℚ)

end

end A337274.P14815301858387604498

/-!
# A337275: Index of appearance of 2*prime(n) in A336957, or -1 if 2*prime(n) never appears.

The programs for A337275, there is no canonical definition to state claims against.
-/

/-! ## A337275.P3358564777258440800

`A337066(A100484(n+1))`
-/

namespace A337275.P3358564777258440800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A100484 (n + 1)).toNat

end

end A337275.P3358564777258440800

/-! ## A337275.P2988543504981722796

`A337066(A001747(n+2))`
-/

namespace A337275.P2988543504981722796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A001747 (n + 2)).toNat

end

end A337275.P2988543504981722796

/-! ## A337275.P16580902960174377

`A337066(A076274(n+2)+1)`
-/

namespace A337275.P16580902960174377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A076274 (n + 2) + 1).toNat

end

end A337275.P16580902960174377

/-! ## A337275.P8428202629895803711

`A337066(2*A000040(n+1))`
-/

namespace A337275.P8428202629895803711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (2 * A000040 (n + 1)).toNat

end

end A337275.P8428202629895803711

/-! ## A337275.P664708035570011049

`A337066(A000040(n+1)+A000040(n+1))`
-/

namespace A337275.P664708035570011049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A337275.P664708035570011049

/-!
# A337276: Index of appearance of 2*n in A336957, or -1 if 2*n never appears.

The programs for A337276, there is no canonical definition to state claims against.
-/

/-! ## A337276.P11990666326721615416

`A337066(2*(n+1))`
-/

namespace A337276.P11990666326721615416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (2 * (n + 1))

end

end A337276.P11990666326721615416

/-! ## A337276.P18094700929204280101

`or(2, A337066(Δ[A002378(n)]))`
-/

namespace A337276.P18094700929204280101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A337066 (f1 (n + 1) - f1 n).toNat)

end

end A337276.P18094700929204280101

/-! ## A337276.P1788809325025266100

`or(2, A337066(Δ[A014206(n)]))`
-/

namespace A337276.P1788809325025266100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A337066 (f1 (n + 1) - f1 n).toNat)

end

end A337276.P1788809325025266100

/-! ## A337276.P11429374278433727518

`or(2, A337066(Δ[A027689(n)]))`
-/

namespace A337276.P11429374278433727518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A337066 (f1 (n + 1) - f1 n).toNat)

end

end A337276.P11429374278433727518

/-! ## A337276.P15559676446771451197

`or(2, A337066(record[A133265(n)]))`
-/

namespace A337276.P15559676446771451197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A337066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A337276.P15559676446771451197

/-! ## A337276.P7730913976403291554

`A337066(Δ[A002378(n)])%A001535(n)`
-/

namespace A337276.P7730913976403291554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337066 (f1 (n + 1) - f1 n).toNat) (A001535 n)

end

end A337276.P7730913976403291554

/-! ## A337276.P283688229608955941

`A337066(record[A133265(n)])%A017018(n)`
-/

namespace A337276.P283688229608955941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A017018 n)

end

end A337276.P283688229608955941

/-! ## A337276.P3493258066538566956

`A337066(Δ[A014206(n)])%A000032(n+2)`
-/

namespace A337276.P3493258066538566956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337066 (f1 (n + 1) - f1 n).toNat) (A000032 (n + 2))

end

end A337276.P3493258066538566956

/-!
# A337277: Stern's triangle read by rows.

The programs for A337277, the canonical program `A337277.P696928167752070774` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337277 has offset 0).

The definition of A337277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337277.P696928167752070774

`A020951(A062289(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A337277

/-- `A020951(A062289(n+1))` -/
def P696928167752070774.Spec : Prop :=
  ∀ n, P696928167752070774.a n = A337277 n

theorem P696928167752070774.correct : P696928167752070774.Spec := by
  intro n
  simp only [A337277]

end A337277

/-! ## A337277.P14950832621340323636

`A020951(eq[0, A036987(n)])`
-/

namespace A337277.P14950832621340323636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P14950832621340323636

namespace A337277

/-- `A020951(eq[0, A036987(n)])` -/
def P14950832621340323636.Spec : Prop :=
  ∀ n, P14950832621340323636.a n = A337277 n

end A337277

/-! ## A337277.P14469913710494116031

`A020951(eq[1, A043545(n)])`
-/

namespace A337277.P14469913710494116031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P14469913710494116031

namespace A337277

/-- `A020951(eq[1, A043545(n)])` -/
def P14469913710494116031.Spec : Prop :=
  ∀ n, P14469913710494116031.a n = A337277 n

end A337277

/-! ## A337277.P7038321332961806992

`A020951(lt[0, n*A020951(n)])`
-/

namespace A337277.P7038321332961806992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337277.P7038321332961806992

namespace A337277

/-- `A020951(lt[0, n*A020951(n)])` -/
def P7038321332961806992.Spec : Prop :=
  ∀ n, P7038321332961806992.a n = A337277 n

end A337277

/-! ## A337277.P17440958116459193364

`A020951(lt[2, A020952(n)])`
-/

namespace A337277.P17440958116459193364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A337277.P17440958116459193364

namespace A337277

/-- `A020951(lt[2, A020952(n)])` -/
def P17440958116459193364.Spec : Prop :=
  ∀ n, P17440958116459193364.a n = A337277 n

end A337277

/-! ## A337277.P10393782278107478767

`A020951(eq[0, A259346(n+1)])`
-/

namespace A337277.P10393782278107478767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P10393782278107478767

namespace A337277

/-- `A020951(eq[0, A259346(n+1)])` -/
def P10393782278107478767.Spec : Prop :=
  ∀ n, P10393782278107478767.a n = A337277 n

end A337277

/-! ## A337277.P5238526971368970450

`A020951(eq[n+1, A153152(n)])`
-/

namespace A337277.P5238526971368970450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P5238526971368970450

namespace A337277

/-- `A020951(eq[n+1, A153152(n)])` -/
def P5238526971368970450.Spec : Prop :=
  ∀ n, P5238526971368970450.a n = A337277 n

end A337277

/-! ## A337277.P3755118590111134862

`A020951(eq[1, A153152(n)-n])`
-/

namespace A337277.P3755118590111134862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P3755118590111134862

namespace A337277

/-- `A020951(eq[1, A153152(n)-n])` -/
def P3755118590111134862.Spec : Prop :=
  ∀ n, P3755118590111134862.a n = A337277 n

end A337277

/-! ## A337277.P8949139077359795919

`A020951(eq[1, A100994(2*(n+1))])`
-/

namespace A337277.P8949139077359795919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P8949139077359795919

namespace A337277

/-- `A020951(eq[1, A100994(2*(n+1))])` -/
def P8949139077359795919.Spec : Prop :=
  ∀ n, P8949139077359795919.a n = A337277 n

end A337277

/-! ## A337277.P4426936996063799314

`A020951(eq[A100994(n+1)², A000035(n)])`
-/

namespace A337277.P4426936996063799314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A337277.P4426936996063799314

namespace A337277

/-- `A020951(eq[A100994(n+1)², A000035(n)])` -/
def P4426936996063799314.Spec : Prop :=
  ∀ n, P4426936996063799314.a n = A337277 n

end A337277

/-! ## A337277.P3054574033823984998

`A020951(eq[2, A100994(n+1)+A000035(n)])`
-/

namespace A337277.P3054574033823984998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A337277.P3054574033823984998

namespace A337277

/-- `A020951(eq[2, A100994(n+1)+A000035(n)])` -/
def P3054574033823984998.Spec : Prop :=
  ∀ n, P3054574033823984998.a n = A337277 n

end A337277

/-!
# A337278: Array read by antidiagonals: T(m,n) (m>=1, n>=1) is number of fundamentally different graceful labelings of the complete bipartite graph K_{m,n}.

The programs for A337278, there is no canonical definition to state claims against.
-/

/-! ## A337278.P6029618447098852096

`A277818(A146990(n))`
-/

namespace A337278.P6029618447098852096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277818 (A146990 n).toNat

end

end A337278.P6029618447098852096

/-! ## A337278.P2253930414077760722

`A215935(A227442(n+1))+1`
-/

namespace A337278.P2253930414077760722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215935 (A227442 (n + 1)).toNat + 1

end

end A337278.P2253930414077760722

/-! ## A337278.P6789794710726108301

`gcd(A133646(n), A255961(A022167(n)))`
-/

namespace A337278.P6789794710726108301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133646 n) (A255961 (A022167 n).toNat)

end

end A337278.P6789794710726108301

/-! ## A337278.P7043900835250283610

`A126863(A157113(n))`
-/

namespace A337278.P7043900835250283610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126863 (A157113 n).toNat

end

end A337278.P7043900835250283610

/-! ## A337278.P15142239013855126300

`A318357(A303888(n+1))`
-/

namespace A337278.P15142239013855126300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A303888 (n + 1)).toNat

end

end A337278.P15142239013855126300

/-!
# A337279: Array read by antidiagonals: T(m,n) (m>=1, n>=1) is number of alpha-labelings of the complete bipartite graph K_{m,n}.

The programs for A337279, there is no canonical definition to state claims against.
-/

/-! ## A337279.P504305439892897584

`A076423(A360208(n))`
-/

namespace A337279.P504305439892897584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076423 (A360208 n).toNat

end

end A337279.P504305439892897584

/-! ## A337279.P3766064580854714461

`A349258(A045912(n)+1)`
-/

namespace A337279.P3766064580854714461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A045912 n + 1).toNat

end

end A337279.P3766064580854714461

/-! ## A337279.P17990951703129087696

`A062723(A081581(n))%5`
-/

namespace A337279.P17990951703129087696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062723 (A081581 n).toNat) 5

end

end A337279.P17990951703129087696

/-! ## A337279.P11070845725723250578

`A098281(A271910(n+1)+1)`
-/

namespace A337279.P11070845725723250578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098281 (A271910 (n + 1) + 1).toNat

end

end A337279.P11070845725723250578

/-! ## A337279.P8165757668361713319

`A276337(A045912(n))`
-/

namespace A337279.P8165757668361713319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A045912 n).toNat

end

end A337279.P8165757668361713319

/-!
# A337281: a(n) = n*T(n), where T(n) = A000073(n) = n-th tribonacci number.

The programs for A337281, the canonical program `A337281.P18128628616148545556` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337281 has offset 0).

The definition of A337281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337281.P18128628616148545556

`2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=8, a(5)=20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A337281

/-- `2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` -/
def P18128628616148545556.Spec : Prop :=
  ∀ n, P18128628616148545556.a n = A337281 n

theorem P18128628616148545556.correct : P18128628616148545556.Spec := by
  intro n
  simp only [A337281]

end A337281

/-! ## A337281.P15868952830918051052

`n*Δ[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A337281.P15868952830918051052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A337281.P15868952830918051052

namespace A337281

/-- `n*Δ[2*a(n-1)-a(n-4)]` -/
def P15868952830918051052.Spec : Prop :=
  ∀ n, P15868952830918051052.a n = A337281 n

end A337281

/-! ## A337281.P11319252746519444018

`n*A000073(n)`
-/

namespace A337281.P11319252746519444018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000073 n

end

end A337281.P11319252746519444018

namespace A337281

/-- `n*A000073(n)` -/
def P11319252746519444018.Spec : Prop :=
  ∀ n, P11319252746519444018.a n = A337281 n

end A337281

/-! ## A337281.P16855748539994254364

`n*Δ[A192804(n)]`
-/

namespace A337281.P16855748539994254364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A337281.P16855748539994254364

namespace A337281

/-- `n*Δ[A192804(n)]` -/
def P16855748539994254364.Spec : Prop :=
  ∀ n, P16855748539994254364.a n = A337281 n

end A337281

/-! ## A337281.P11975400916836249621

`n/2*A354784(n)`
-/

namespace A337281.P11975400916836249621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A354784 n : ℚ)

end

end A337281.P11975400916836249621

namespace A337281

/-- `n/2*A354784(n)` -/
def P11975400916836249621.Spec : Prop :=
  ∀ n, P11975400916836249621.a n = (A337281 n : ℚ)

end A337281

/-! ## A337281.P1624007654851205246

`n*Δ[Δ[A325473(n)]]`
-/

namespace A337281.P1624007654851205246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A337281.P1624007654851205246

namespace A337281

/-- `n*Δ[Δ[A325473(n)]]` -/
def P1624007654851205246.Spec : Prop :=
  ∀ n, P1624007654851205246.a n = A337281 n

end A337281

/-! ## A337281.P8078817256536876673

`n/2*Δ[A000213(n)]`
-/

namespace A337281.P8078817256536876673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A337281.P8078817256536876673

namespace A337281

/-- `n/2*Δ[A000213(n)]` -/
def P8078817256536876673.Spec : Prop :=
  ∀ n, P8078817256536876673.a n = (A337281 n : ℚ)

end A337281

/-! ## A337281.P16432540186837126738

`n*Δ[A248098(n+1)/3]`
-/

namespace A337281.P16432540186837126738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248098 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (f1 (n + 1) - f1 n)

end

end A337281.P16432540186837126738

namespace A337281

/-- `n*Δ[A248098(n+1)/3]` -/
def P16432540186837126738.Spec : Prop :=
  ∀ n, P16432540186837126738.a n = (A337281 n : ℚ)

end A337281

/-! ## A337281.P3994962145278984594

`n*A114952(A014601(n))`
-/

namespace A337281.P3994962145278984594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114952 (A014601 n).toNat

end

end A337281.P3994962145278984594

namespace A337281

/-- `n*A114952(A014601(n))` -/
def P3994962145278984594.Spec : Prop :=
  ∀ n, P3994962145278984594.a n = A337281 n

end A337281

/-! ## A337281.P16989029817159626257

`n*(A000213(n)-A081172(n))`
-/

namespace A337281.P16989029817159626257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000213 n - A081172 n)

end

end A337281.P16989029817159626257

namespace A337281

/-- `n*(A000213(n)-A081172(n))` -/
def P16989029817159626257.Spec : Prop :=
  ∀ n, P16989029817159626257.a n = A337281 n

end A337281

/-! ## A337281.P17921043092876681393

`n*(A112476(n)-A033999(n))`
-/

namespace A337281.P17921043092876681393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A112476 n - A033999 n)

end

end A337281.P17921043092876681393

namespace A337281

/-- `n*(A112476(n)-A033999(n))` -/
def P17921043092876681393.Spec : Prop :=
  ∀ n, P17921043092876681393.a n = A337281 n

end A337281

/-! ## A337281.P2680153966895238572

`n*(A338192(n)-A000045(n))`
-/

namespace A337281.P2680153966895238572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A338192 n - A000045 n)

end

end A337281.P2680153966895238572

namespace A337281

/-- `n*(A338192(n)-A000045(n))` -/
def P2680153966895238572.Spec : Prop :=
  ∀ n, P2680153966895238572.a n = A337281 n

end A337281

/-! ## A337281.P15046308823492340056

`n*(A214899(n)-A141036(n))`
-/

namespace A337281.P15046308823492340056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A214899 n - A141036 n)

end

end A337281.P15046308823492340056

namespace A337281

/-- `n*(A214899(n)-A141036(n))` -/
def P15046308823492340056.Spec : Prop :=
  ∀ n, P15046308823492340056.a n = A337281 n

end A337281

/-! ## A337281.P8825437818352679329

`n*(A214727(n)-A275778(n))`
-/

namespace A337281.P8825437818352679329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A214727 n - A275778 n)

end

end A337281.P8825437818352679329

namespace A337281

/-- `n*(A214727(n)-A275778(n))` -/
def P8825437818352679329.Spec : Prop :=
  ∀ n, P8825437818352679329.a n = A337281 n

end A337281

/-! ## A337281.P12787403613502555928

`n*(A275778(n)-A276658(n))`
-/

namespace A337281.P12787403613502555928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A275778 n - A276658 n)

end

end A337281.P12787403613502555928

namespace A337281

/-- `n*(A275778(n)-A276658(n))` -/
def P12787403613502555928.Spec : Prop :=
  ∀ n, P12787403613502555928.a n = A337281 n

end A337281

/-! ## A337281.P6454119498642698811

`n*(∑[A001590(n)]-A001590(n))`
-/

namespace A337281.P6454119498642698811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A001590 n)

end

end A337281.P6454119498642698811

namespace A337281

/-- `n*(∑[A001590(n)]-A001590(n))` -/
def P6454119498642698811.Spec : Prop :=
  ∀ n, P6454119498642698811.a n = A337281 n

end A337281

/-! ## A337281.P13742484610609152708

`n*(A007486(n+1)-A214825(n))`
-/

namespace A337281.P13742484610609152708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007486 (n + 1) - A214825 n)

end

end A337281.P13742484610609152708

namespace A337281

/-- `n*(A007486(n+1)-A214825(n))` -/
def P13742484610609152708.Spec : Prop :=
  ∀ n, P13742484610609152708.a n = A337281 n

end A337281

/-! ## A337281.P10661805975485816165

`n*(A192804(n+1)-A192804(n))`
-/

namespace A337281.P10661805975485816165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A192804 (n + 1) - A192804 n)

end

end A337281.P10661805975485816165

namespace A337281

/-- `n*(A192804(n+1)-A192804(n))` -/
def P10661805975485816165.Spec : Prop :=
  ∀ n, P10661805975485816165.a n = A337281 n

end A337281

/-! ## A337281.P1242810510743474364

`n*(A081172(n+1)-A001590(n+1))`
-/

namespace A337281.P1242810510743474364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A081172 (n + 1) - A001590 (n + 1))

end

end A337281.P1242810510743474364

namespace A337281

/-- `n*(A081172(n+1)-A001590(n+1))` -/
def P1242810510743474364.Spec : Prop :=
  ∀ n, P1242810510743474364.a n = A337281 n

end A337281

/-! ## A337281.P10994254828313700378

`n*(A141036(n+1)-A000213(n+1))`
-/

namespace A337281.P10994254828313700378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A141036 (n + 1) - A000213 (n + 1))

end

end A337281.P10994254828313700378

namespace A337281

/-- `n*(A141036(n+1)-A000213(n+1))` -/
def P10994254828313700378.Spec : Prop :=
  ∀ n, P10994254828313700378.a n = A337281 n

end A337281

/-!
# A337282: Partial sums of A337281.

The programs for A337282, the canonical program `A337282.P5900707175496343606` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337282 has offset 0).

The definition of A337282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337282.P5900707175496343606

`∑[A337281(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337282

/-- `∑[A337281(n)]` -/
def P5900707175496343606.Spec : Prop :=
  ∀ n, P5900707175496343606.a n = A337282 n

theorem P5900707175496343606.correct : P5900707175496343606.Spec := by
  intro n
  simp only [A337282]

end A337282

/-! ## A337282.P1628975105511895791

`∑[n*A000073(n)]`
-/

namespace A337282.P1628975105511895791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P1628975105511895791

namespace A337282

/-- `∑[n*A000073(n)]` -/
def P1628975105511895791.Spec : Prop :=
  ∀ n, P1628975105511895791.a n = A337282 n

end A337282

/-! ## A337282.P12336088376816625176

`∑[n*Δ[A192804(n)]]`
-/

namespace A337282.P12336088376816625176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P12336088376816625176

namespace A337282

/-- `∑[n*Δ[A192804(n)]]` -/
def P12336088376816625176.Spec : Prop :=
  ∀ n, P12336088376816625176.a n = A337282 n

end A337282

/-! ## A337282.P10120337314207895649

`∑[n/2*A354784(n)]`
-/

namespace A337282.P10120337314207895649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A354784 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P10120337314207895649

namespace A337282

/-- `∑[n/2*A354784(n)]` -/
def P10120337314207895649.Spec : Prop :=
  ∀ n, P10120337314207895649.a n = (A337282 n : ℚ)

end A337282

/-! ## A337282.P12606796138255251687

`∑[n/2*Δ[A000213(n)]]`
-/

namespace A337282.P12606796138255251687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P12606796138255251687

namespace A337282

/-- `∑[n/2*Δ[A000213(n)]]` -/
def P12606796138255251687.Spec : Prop :=
  ∀ n, P12606796138255251687.a n = (A337282 n : ℚ)

end A337282

/-! ## A337282.P10288000873997600332

`∑[n*Δ[A248098(n+1)/3]]`
-/

namespace A337282.P10288000873997600332
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248098 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P10288000873997600332

namespace A337282

/-- `∑[n*Δ[A248098(n+1)/3]]` -/
def P10288000873997600332.Spec : Prop :=
  ∀ n, P10288000873997600332.a n = (A337282 n : ℚ)

end A337282

/-! ## A337282.P14143255441306500544

`∑[n*A114952(A014601(n))]`
-/

namespace A337282.P14143255441306500544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114952 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P14143255441306500544

namespace A337282

/-- `∑[n*A114952(A014601(n))]` -/
def P14143255441306500544.Spec : Prop :=
  ∀ n, P14143255441306500544.a n = A337282 n

end A337282

/-! ## A337282.P1872565325836460451

`∑[n*(A000213(n)-A081172(n))]`
-/

namespace A337282.P1872565325836460451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000213 n - A081172 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P1872565325836460451

namespace A337282

/-- `∑[n*(A000213(n)-A081172(n))]` -/
def P1872565325836460451.Spec : Prop :=
  ∀ n, P1872565325836460451.a n = A337282 n

end A337282

/-! ## A337282.P8743504272762595500

`∑[n*(A112476(n)-A033999(n))]`
-/

namespace A337282.P8743504272762595500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A112476 n - A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P8743504272762595500

namespace A337282

/-- `∑[n*(A112476(n)-A033999(n))]` -/
def P8743504272762595500.Spec : Prop :=
  ∀ n, P8743504272762595500.a n = A337282 n

end A337282

/-! ## A337282.P6094016992170741606

`∑[n*(A338192(n)-A000045(n))]`
-/

namespace A337282.P6094016992170741606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A338192 n - A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P6094016992170741606

namespace A337282

/-- `∑[n*(A338192(n)-A000045(n))]` -/
def P6094016992170741606.Spec : Prop :=
  ∀ n, P6094016992170741606.a n = A337282 n

end A337282

/-! ## A337282.P1549180354864648792

`∑[n*(∑[A001590(n)]-A001590(n))]`
-/

namespace A337282.P1549180354864648792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - A001590 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P1549180354864648792

namespace A337282

/-- `∑[n*(∑[A001590(n)]-A001590(n))]` -/
def P1549180354864648792.Spec : Prop :=
  ∀ n, P1549180354864648792.a n = A337282 n

end A337282

/-! ## A337282.P6230281018340139102

`∑[n*(A192804(n+1)-A192804(n))]`
-/

namespace A337282.P6230281018340139102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A192804 (n + 1) - A192804 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P6230281018340139102

namespace A337282

/-- `∑[n*(A192804(n+1)-A192804(n))]` -/
def P6230281018340139102.Spec : Prop :=
  ∀ n, P6230281018340139102.a n = A337282 n

end A337282

/-! ## A337282.P6980994802585842309

`∑[n*sqrt(A085697(n))]`
-/

namespace A337282.P6980994802585842309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A085697 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P6980994802585842309

namespace A337282

/-- `∑[n*sqrt(A085697(n))]` -/
def P6980994802585842309.Spec : Prop :=
  ∀ n, P6980994802585842309.a n = (A337282 n : ℝ)

end A337282

/-!
# A337283: a(n) = Sum_{i=0..n} i*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

The programs for A337283, the canonical program `A337283.P12415011583511904637` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337283 has offset 0).

The definition of A337283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337283.P12415011583511904637

`∑[n*A085697(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337283

/-- `∑[n*A085697(n)]` -/
def P12415011583511904637.Spec : Prop :=
  ∀ n, P12415011583511904637.a n = A337283 n

theorem P12415011583511904637.correct : P12415011583511904637.Spec := by
  intro n
  simp only [A337283]

end A337283

/-! ## A337283.P5676875865985105273

`∑[n*A000073(n)²]`
-/

namespace A337283.P5676875865985105273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000073 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P5676875865985105273

namespace A337283

/-- `∑[n*A000073(n)²]` -/
def P5676875865985105273.Spec : Prop :=
  ∀ n, P5676875865985105273.a n = A337283 n

end A337283

/-! ## A337283.P16496452995483087276

`∑[n*Δ[A192804(n)]²]`
-/

namespace A337283.P16496452995483087276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P16496452995483087276

namespace A337283

/-- `∑[n*Δ[A192804(n)]²]` -/
def P16496452995483087276.Spec : Prop :=
  ∀ n, P16496452995483087276.a n = A337283 n

end A337283

/-! ## A337283.P16398950259847081894

`∑[n*A114952(A014601(n))²]`
-/

namespace A337283.P16398950259847081894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114952 (A014601 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P16398950259847081894

namespace A337283

/-- `∑[n*A114952(A014601(n))²]` -/
def P16398950259847081894.Spec : Prop :=
  ∀ n, P16398950259847081894.a n = A337283 n

end A337283

/-! ## A337283.P12696509885274910721

`(n+1)*A107239(n)-∑[A107239(n)]`
-/

namespace A337283.P12696509885274910721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107239 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P12696509885274910721

namespace A337283

/-- `(n+1)*A107239(n)-∑[A107239(n)]` -/
def P12696509885274910721.Spec : Prop :=
  ∀ n, P12696509885274910721.a n = A337283 n

end A337283

/-! ## A337283.P11820578099996430734

`A337284(A028310(n))+A107239(n)`
-/

namespace A337283.P11820578099996430734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337284 (A028310 n).toNat + A107239 n

end

end A337283.P11820578099996430734

namespace A337283

/-- `A337284(A028310(n))+A107239(n)` -/
def P11820578099996430734.Spec : Prop :=
  ∀ n, P11820578099996430734.a n = A337283 n

end A337283

/-! ## A337283.P13607127203354093147

`∑[A000073(n)*A254667(n)*A000073(n)]`
-/

namespace A337283.P13607127203354093147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A254667 n * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P13607127203354093147

namespace A337283

/-- `∑[A000073(n)*A254667(n)*A000073(n)]` -/
def P13607127203354093147.Spec : Prop :=
  ∀ n, P13607127203354093147.a n = A337283 n

end A337283

/-!
# A337284: a(n) = Sum_{i=1..n} (i-1)*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

The programs for A337284, the canonical program `A337284.P3408227130784434676` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337284 has offset 1).

The definition of A337284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337284.P3408227130784434676

`A337283(n+1)-A107239(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337284

/-- `A337283(n+1)-A107239(n+1)` -/
def P3408227130784434676.Spec : Prop :=
  ∀ n, P3408227130784434676.a n = A337284 (n + 1)

theorem P3408227130784434676.correct : P3408227130784434676.Spec := by
  intro n
  simp only [A337284, Nat.add_sub_cancel]

end A337284

/-! ## A337284.P18225355480766506381

`∑[n*Δ[A107239(n)]]`
-/

namespace A337284.P18225355480766506381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P18225355480766506381

namespace A337284

/-- `∑[n*Δ[A107239(n)]]` -/
def P18225355480766506381.Spec : Prop :=
  ∀ n, P18225355480766506381.a n = A337284 (n + 1)

end A337284

/-! ## A337284.P16267735296070515786

`∑[n*A085697(n+1)]`
-/

namespace A337284.P16267735296070515786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P16267735296070515786

namespace A337284

/-- `∑[n*A085697(n+1)]` -/
def P16267735296070515786.Spec : Prop :=
  ∀ n, P16267735296070515786.a n = A337284 (n + 1)

end A337284

/-! ## A337284.P244332334732526948

`∑[n*∑[A001590(n)]²]`
-/

namespace A337284.P244332334732526948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P244332334732526948

namespace A337284

/-- `∑[n*∑[A001590(n)]²]` -/
def P244332334732526948.Spec : Prop :=
  ∀ n, P244332334732526948.a n = A337284 (n + 1)

end A337284

/-! ## A337284.P7132713706278229346

`∑[n*A000073(n+1)²]`
-/

namespace A337284.P7132713706278229346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000073 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P7132713706278229346

namespace A337284

/-- `∑[n*A000073(n+1)²]` -/
def P7132713706278229346.Spec : Prop :=
  ∀ n, P7132713706278229346.a n = A337284 (n + 1)

end A337284

/-! ## A337284.P17606152731751529668

`∑[n/4*A203536(n+1)]`
-/

namespace A337284.P17606152731751529668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A203536 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P17606152731751529668

namespace A337284

/-- `∑[n/4*A203536(n+1)]` -/
def P17606152731751529668.Spec : Prop :=
  ∀ n, P17606152731751529668.a n = (A337284 (n + 1) : ℚ)

end A337284

/-! ## A337284.P1164613200638782249

`∑[n*(A107239(n+1)-A107239(n))]`
-/

namespace A337284.P1164613200638782249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A107239 (n + 1) - A107239 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P1164613200638782249

namespace A337284

/-- `∑[n*(A107239(n+1)-A107239(n))]` -/
def P1164613200638782249.Spec : Prop :=
  ∀ n, P1164613200638782249.a n = A337284 (n + 1)

end A337284

/-! ## A337284.P5173652724895849444

`A337286(n+1)-(A337285(n+1)+A337283(n+1))`
-/

namespace A337284.P5173652724895849444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337286 (n + 1) - (A337285 (n + 1) + A337283 (n + 1))

end

end A337284.P5173652724895849444

namespace A337284

/-- `A337286(n+1)-(A337285(n+1)+A337283(n+1))` -/
def P5173652724895849444.Spec : Prop :=
  ∀ n, P5173652724895849444.a n = A337284 (n + 1)

theorem P5173652724895849444.correct : P5173652724895849444.Spec := by
  intro n
  simp only [A337284, Nat.add_sub_cancel, A337284.P5173652724895849444.a, A337284.P3408227130784434676.a, A107239, A107239.P61325148205186055.f2, A107239.P61325148205186055.f1, A107239.P61325148205186055.a, A337283, A337283.P12415011583511904637.f1, A337283.P12415011583511904637.a, A337285, A337285.P4738724481920193092.a, A337286, A337286.P611714569690157856.f1, A337286.P611714569690157856.a, A085697, A085697.P1967404547249247926.f1, A085697.P1967404547249247926.a, A337281, A337281.P18128628616148545556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337284

/-!
# A337285: a(n) = Sum_{i=1..n} (i-1)^2*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

The programs for A337285, the canonical program `A337285.P4738724481920193092` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337285 has offset 1).

The definition of A337285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107239, A337283, A337286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A337285.P4738724481920193092

`A337286(n+1)-2*A337283(n+1)+A107239(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337285

/-- `A337286(n+1)-2*A337283(n+1)+A107239(n+1)` -/
def P4738724481920193092.Spec : Prop :=
  ∀ n, P4738724481920193092.a n = A337285 (n + 1)

theorem P4738724481920193092.correct : P4738724481920193092.Spec := by
  intro n
  simp only [A337285, Nat.add_sub_cancel]

end A337285

/-! ## A337285.P4554645156759227127

`∑[(n*∑[A001590(n)])²]`
-/

namespace A337285.P4554645156759227127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337285.P4554645156759227127

namespace A337285

/-- `∑[(n*∑[A001590(n)])²]` -/
def P4554645156759227127.Spec : Prop :=
  ∀ n, P4554645156759227127.a n = A337285 (n + 1)

end A337285

/-! ## A337285.P4866188969882695336

`∑[n²*Δ[A107239(n)]]`
-/

namespace A337285.P4866188969882695336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337285.P4866188969882695336

namespace A337285

/-- `∑[n²*Δ[A107239(n)]]` -/
def P4866188969882695336.Spec : Prop :=
  ∀ n, P4866188969882695336.a n = A337285 (n + 1)

end A337285

/-! ## A337285.P6796458935953100240

`∑[(n*A000073(n+1))²]`
-/

namespace A337285.P6796458935953100240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000073 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337285.P6796458935953100240

namespace A337285

/-- `∑[(n*A000073(n+1))²]` -/
def P6796458935953100240.Spec : Prop :=
  ∀ n, P6796458935953100240.a n = A337285 (n + 1)

end A337285

/-! ## A337285.P13850589602234007036

`∑[n²*A085697(n+1)]`
-/

namespace A337285.P13850589602234007036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A085697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337285.P13850589602234007036

namespace A337285

/-- `∑[n²*A085697(n+1)]` -/
def P13850589602234007036.Spec : Prop :=
  ∀ n, P13850589602234007036.a n = A337285 (n + 1)

end A337285

/-! ## A337285.P16022697671619338738

`A337286(n+1)-(A337284(n+1)+A337283(n+1))`
-/

namespace A337285.P16022697671619338738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337286 (n + 1) - (A337284 (n + 1) + A337283 (n + 1))

end

end A337285.P16022697671619338738

namespace A337285

/-- `A337286(n+1)-(A337284(n+1)+A337283(n+1))` -/
def P16022697671619338738.Spec : Prop :=
  ∀ n, P16022697671619338738.a n = A337285 (n + 1)

theorem P16022697671619338738.correct : P16022697671619338738.Spec := by
  intro n
  simp only [A337285, Nat.add_sub_cancel, A337285.P16022697671619338738.a, A337285.P4738724481920193092.a, A107239, A107239.P61325148205186055.f2, A107239.P61325148205186055.f1, A107239.P61325148205186055.a, A337283, A337283.P12415011583511904637.f1, A337283.P12415011583511904637.a, A337284, A337284.P3408227130784434676.a, A337286, A337286.P611714569690157856.f1, A337286.P611714569690157856.a, A085697, A085697.P1967404547249247926.f1, A085697.P1967404547249247926.a, A337281, A337281.P18128628616148545556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337285

/-!
# A337286: a(n) = Sum_{i=0..n} i^2*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

The programs for A337286, the canonical program `A337286.P611714569690157856` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337286 has offset 0).

The definition of A337286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337286.P611714569690157856

`∑[A337281(n)²]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337286

/-- `∑[A337281(n)²]` -/
def P611714569690157856.Spec : Prop :=
  ∀ n, P611714569690157856.a n = A337286 n

theorem P611714569690157856.correct : P611714569690157856.Spec := by
  intro n
  simp only [A337286]

end A337286

/-! ## A337286.P6909926185980308238

`∑[(n*A000073(n))²]`
-/

namespace A337286.P6909926185980308238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000073 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P6909926185980308238

namespace A337286

/-- `∑[(n*A000073(n))²]` -/
def P6909926185980308238.Spec : Prop :=
  ∀ n, P6909926185980308238.a n = A337286 n

end A337286

/-! ## A337286.P11887848399456508380

`∑[n²*A085697(n)]`
-/

namespace A337286.P11887848399456508380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A085697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P11887848399456508380

namespace A337286

/-- `∑[n²*A085697(n)]` -/
def P11887848399456508380.Spec : Prop :=
  ∀ n, P11887848399456508380.a n = A337286 n

end A337286

/-! ## A337286.P17386460018354053446

`∑[(n*Δ[A192804(n)])²]`
-/

namespace A337286.P17386460018354053446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P17386460018354053446

namespace A337286

/-- `∑[(n*Δ[A192804(n)])²]` -/
def P17386460018354053446.Spec : Prop :=
  ∀ n, P17386460018354053446.a n = A337286 n

end A337286

/-! ## A337286.P17659097047824104709

`∑[(n*A114952(A014601(n)))²]`
-/

namespace A337286.P17659097047824104709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A114952 (A014601 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P17659097047824104709

namespace A337286

/-- `∑[(n*A114952(A014601(n)))²]` -/
def P17659097047824104709.Spec : Prop :=
  ∀ n, P17659097047824104709.a n = A337286 n

end A337286

/-! ## A337286.P4522078607422842709

`(n+1)*A337283(n)-∑[A337283(n)]`
-/

namespace A337286.P4522078607422842709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337283 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P4522078607422842709

namespace A337286

/-- `(n+1)*A337283(n)-∑[A337283(n)]` -/
def P4522078607422842709.Spec : Prop :=
  ∀ n, P4522078607422842709.a n = A337286 n

end A337286

/-! ## A337286.P15390237630334872137

`∑[A000073(n)*A000290(n)*A000073(n)]`
-/

namespace A337286.P15390237630334872137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A000290 n * A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P15390237630334872137

namespace A337286

/-- `∑[A000073(n)*A000290(n)*A000073(n)]` -/
def P15390237630334872137.Spec : Prop :=
  ∀ n, P15390237630334872137.a n = A337286 n

end A337286

/-!
# A337287: Numbers k such that both k and k+1 are in A095096.

The programs for A337287, the canonical program `A337287.P16808135169875612648` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337287 has offset 1).

The definition of A337287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337287.P8617834460819440846

`∩[A095096(n+1)-1, A095096(n+1)]`
-/

namespace A337287.P8617834460819440846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337287.P8617834460819440846

namespace A337287

/-- `∩[A095096(n+1)-1, A095096(n+1)]` -/
def P8617834460819440846.Spec : Prop :=
  ∀ n, (P8617834460819440846.a n : ℤ) = A337287 (n + 1)

end A337287

/-! ## A337287.P16808135169875612648

`A095096(eq[1, A095096(n+2)-A095096(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A337287

/-- `A095096(eq[1, A095096(n+2)-A095096(n+1)]+1)` -/
def P16808135169875612648.Spec : Prop :=
  ∀ n, P16808135169875612648.a n = A337287 (n + 1)

theorem P16808135169875612648.correct : P16808135169875612648.Spec := by
  intro n
  simp only [A337287, Nat.add_sub_cancel]

end A337287

/-! ## A337287.P14382740068084687003

`eq[Δ[A095076(n)], A095076(n)]`
-/

namespace A337287.P14382740068084687003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A337287.P14382740068084687003

namespace A337287

/-- `eq[Δ[A095076(n)], A095076(n)]` -/
def P14382740068084687003.Spec : Prop :=
  ∀ n, (P14382740068084687003.a n : ℤ) = A337287 (n + 1)

end A337287

/-! ## A337287.P18400764174050082373

`lt[0, A095111(A095111(n)+n)]`
-/

namespace A337287.P18400764174050082373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (A095111 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337287.P18400764174050082373

namespace A337287

/-- `lt[0, A095111(A095111(n)+n)]` -/
def P18400764174050082373.Spec : Prop :=
  ∀ n, (P18400764174050082373.a n : ℤ) = A337287 (n + 1)

end A337287

/-! ## A337287.P4440618961343414794

`eq[sin(A095076(n+1)), A095076(n)]`
-/

namespace A337287.P4440618961343414794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A095076 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A337287.P4440618961343414794

namespace A337287

/-- `eq[sin(A095076(n+1)), A095076(n)]` -/
def P4440618961343414794.Spec : Prop :=
  ∀ n, (P4440618961343414794.a n : ℤ) = A337287 (n + 1)

end A337287

/-! ## A337287.P7908919096456076624

`eq[0, A095076(A095076(n+1)+n)]`
-/

namespace A337287.P7908919096456076624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (A095076 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337287.P7908919096456076624

namespace A337287

/-- `eq[0, A095076(A095076(n+1)+n)]` -/
def P7908919096456076624.Spec : Prop :=
  ∀ n, (P7908919096456076624.a n : ℤ) = A337287 (n + 1)

end A337287

/-!
# A337288: Numbers k such that k is in A095096 and k+1 is in A020899.

The programs for A337288, the canonical program `A337288.P14799538653772618557` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337288 has offset 1).

The definition of A337288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337288.P14799538653772618557

`A095279(Δ[n²])-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A337288

/-- `A095279(Δ[n²])-1` -/
def P14799538653772618557.Spec : Prop :=
  ∀ n, P14799538653772618557.a n = A337288 (n + 1)

theorem P14799538653772618557.correct : P14799538653772618557.Spec := by
  intro n
  simp only [A337288, Nat.add_sub_cancel]

end A337288

/-! ## A337288.P12902069814061457464

`(A095279(2*n+1)-1)%A068228(n+1)`
-/

namespace A337288.P12902069814061457464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095279 (2 * n + 1) - 1) (A068228 (n + 1))

end

end A337288.P12902069814061457464

namespace A337288

/-- `(A095279(2*n+1)-1)%A068228(n+1)` -/
def P12902069814061457464.Spec : Prop :=
  ∀ n, P12902069814061457464.a n = A337288 (n + 1)

end A337288

/-! ## A337288.P17994701376421031697

`A095279(2*n+1)%A162527(n+1)-1`
-/

namespace A337288.P17994701376421031697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095279 (2 * n + 1)) (A162527 (n + 1)) - 1

end

end A337288.P17994701376421031697

namespace A337288

/-- `A095279(2*n+1)%A162527(n+1)-1` -/
def P17994701376421031697.Spec : Prop :=
  ∀ n, P17994701376421031697.a n = A337288 (n + 1)

end A337288

/-! ## A337288.P5368144748620722950

`A095279(2*n+1)+A010051(2*(n+2))-1`
-/

namespace A337288.P5368144748620722950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (2 * n + 1) + A010051 (2 * (n + 2)) - 1

end

end A337288.P5368144748620722950

namespace A337288

/-- `A095279(2*n+1)+A010051(2*(n+2))-1` -/
def P5368144748620722950.Spec : Prop :=
  ∀ n, P5368144748620722950.a n = A337288 (n + 1)

end A337288

/-! ## A337288.P2430000558065063209

`lt[0, Δ[A095076(n)]]`
-/

namespace A337288.P2430000558065063209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337288.P2430000558065063209

namespace A337288

/-- `lt[0, Δ[A095076(n)]]` -/
def P2430000558065063209.Spec : Prop :=
  ∀ n, (P2430000558065063209.a n : ℤ) = A337288 (n + 1)

end A337288

/-! ## A337288.P11171496296062517815

`lt[A095076(n), A095076(n+1)]`
-/

namespace A337288.P11171496296062517815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337288.P11171496296062517815

namespace A337288

/-- `lt[A095076(n), A095076(n+1)]` -/
def P11171496296062517815.Spec : Prop :=
  ∀ n, (P11171496296062517815.a n : ℤ) = A337288 (n + 1)

end A337288

/-! ## A337288.P14977524016047206578

`lt[A095111(n+1), A095111(n)]`
-/

namespace A337288.P14977524016047206578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337288.P14977524016047206578

namespace A337288

/-- `lt[A095111(n+1), A095111(n)]` -/
def P14977524016047206578.Spec : Prop :=
  ∀ n, (P14977524016047206578.a n : ℤ) = A337288 (n + 1)

end A337288

/-! ## A337288.P16148064107622636410

`eq[char[A337287(n+1)], A095076(n)]`
-/

namespace A337288.P16148064107622636410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337287 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A337288.P16148064107622636410

namespace A337288

/-- `eq[char[A337287(n+1)], A095076(n)]` -/
def P16148064107622636410.Spec : Prop :=
  ∀ n, (P16148064107622636410.a n : ℤ) = A337288 (n + 1)

end A337288

/-! ## A337288.P3199091427280433236

`A095096(A337634(A337289(n+1))+n+1)`
-/

namespace A337288.P3199091427280433236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (A337634 (A337289 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A337288.P3199091427280433236

namespace A337288

/-- `A095096(A337634(A337289(n+1))+n+1)` -/
def P3199091427280433236.Spec : Prop :=
  ∀ n, P3199091427280433236.a n = A337288 (n + 1)

end A337288

/-!
# A337289: Numbers k such that k+1 is in A095096 and k is in A020899.

The programs for A337289, the canonical program `A337289.P989732119151109843` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337289 has offset 1).

The definition of A337289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337289.P989732119151109843

`A095279(2*(n+1))-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A337289

/-- `A095279(2*(n+1))-1` -/
def P989732119151109843.Spec : Prop :=
  ∀ n, P989732119151109843.a n = A337289 (n + 1)

theorem P989732119151109843.correct : P989732119151109843.Spec := by
  intro n
  simp only [A337289, Nat.add_sub_cancel]

end A337289

/-! ## A337289.P75587201768167877

`lt[Δ[A095076(n)], 0]`
-/

namespace A337289.P75587201768167877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A337289.P75587201768167877

namespace A337289

/-- `lt[Δ[A095076(n)], 0]` -/
def P75587201768167877.Spec : Prop :=
  ∀ n, (P75587201768167877.a n : ℤ) = A337289 (n + 1)

end A337289

/-! ## A337289.P14726112712549051959

`lt[A095076(n+1), A095076(n)]`
-/

namespace A337289.P14726112712549051959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337289.P14726112712549051959

namespace A337289

/-- `lt[A095076(n+1), A095076(n)]` -/
def P14726112712549051959.Spec : Prop :=
  ∀ n, (P14726112712549051959.a n : ℤ) = A337289 (n + 1)

end A337289

/-! ## A337289.P12492435023536933081

`lt[A095111(n), A095111(n+1)]`
-/

namespace A337289.P12492435023536933081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337289.P12492435023536933081

namespace A337289

/-- `lt[A095111(n), A095111(n+1)]` -/
def P12492435023536933081.Spec : Prop :=
  ∀ n, (P12492435023536933081.a n : ℤ) = A337289 (n + 1)

end A337289

/-!
# A337290: Numbers k such that both k and k+1 are in A020899.

The programs for A337290, the canonical program `A337290.P12355850104571192112` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337290 has offset 1).

The definition of A337290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A337290.P7089849686148608054

`∩[A020899(n+1)-1, A020899(n+1)]`
-/

namespace A337290.P7089849686148608054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A337290.P7089849686148608054

namespace A337290

/-- `∩[A020899(n+1)-1, A020899(n+1)]` -/
def P7089849686148608054.Spec : Prop :=
  ∀ n, (P7089849686148608054.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P12355850104571192112

`A020899(eq[1, A020899(n+2)-A020899(n+1)]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A337290

/-- `A020899(eq[1, A020899(n+2)-A020899(n+1)]+1)` -/
def P12355850104571192112.Spec : Prop :=
  ∀ n, P12355850104571192112.a n = A337290 (n + 1)

theorem P12355850104571192112.correct : P12355850104571192112.Spec := by
  intro n
  simp only [A337290, Nat.add_sub_cancel]

end A337290

/-! ## A337290.P15150672552752381742

`lt[0, A095076(A095076(n)+n)]`
-/

namespace A337290.P15150672552752381742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (A095076 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337290.P15150672552752381742

namespace A337290

/-- `lt[0, A095076(A095076(n)+n)]` -/
def P15150672552752381742.Spec : Prop :=
  ∀ n, (P15150672552752381742.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P6384055237027123917

`eq[sin(A095111(n+1)), A095111(n)]`
-/

namespace A337290.P6384055237027123917
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A095111 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A337290.P6384055237027123917

namespace A337290

/-- `eq[sin(A095111(n+1)), A095111(n)]` -/
def P6384055237027123917.Spec : Prop :=
  ∀ n, (P6384055237027123917.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P9246268351578345267

`eq[0, A095111(A095111(n+1)+n)]`
-/

namespace A337290.P9246268351578345267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (A095111 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337290.P9246268351578345267

namespace A337290

/-- `eq[0, A095111(A095111(n+1)+n)]` -/
def P9246268351578345267.Spec : Prop :=
  ∀ n, (P9246268351578345267.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P14707358596905204469

`lt[0, A095076(1-(A095111(n)-n))]`
-/

namespace A337290.P14707358596905204469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 (1 - (A095111 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337290.P14707358596905204469

namespace A337290

/-- `lt[0, A095076(1-(A095111(n)-n))]` -/
def P14707358596905204469.Spec : Prop :=
  ∀ n, (P14707358596905204469.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P17170754728839555343

`lt[A095111(n+1), A060140(n)%2]`
-/

namespace A337290.P17170754728839555343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060140 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337290.P17170754728839555343

namespace A337290

/-- `lt[A095111(n+1), A060140(n)%2]` -/
def P17170754728839555343.Spec : Prop :=
  ∀ n, (P17170754728839555343.a n : ℤ) = A337290 (n + 1)

end A337290

/-! ## A337290.P3545068670064611771

`lt[A095111(n), A095111(A095098(n+1))]`
-/

namespace A337290.P3545068670064611771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 (A095098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A337290.P3545068670064611771

namespace A337290

/-- `lt[A095111(n), A095111(A095098(n+1))]` -/
def P3545068670064611771.Spec : Prop :=
  ∀ n, (P3545068670064611771.a n : ℤ) = A337290 (n + 1)

end A337290

/-!
# A337291: a(n) = 3*binomial(4*n,n)/(4*n-1).

The programs for A337291, the canonical program `A337291.P8125429750552470595` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337291 has offset 1).

The definition of A337291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337291.P8125429750552470595

`4*A006632(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337291

/-- `4*A006632(n+1)` -/
def P8125429750552470595.Spec : Prop :=
  ∀ n, P8125429750552470595.a n = A337291 (n + 1)

theorem P8125429750552470595.correct : P8125429750552470595.Spec := by
  intro n
  simp only [A337291, Nat.add_sub_cancel]

end A337291

/-! ## A337291.P2144836702221731456

`3*C(4*(n+1), n+1)/(4*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337291.P2144836702221731456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (4 * (n + 1)) (n + 1) : ℚ) / ((4 * (n + 1) : ℤ) - 1 : ℚ)

end

end A337291.P2144836702221731456

namespace A337291

/-- `3*C(4*(n+1), n+1)/(4*(n+1)-1)` -/
def P2144836702221731456.Spec : Prop :=
  ∀ n, P2144836702221731456.a n = (A337291 (n + 1) : ℚ)

end A337291

/-! ## A337291.P12909226218708640900

`2*A112385(n+1)`
-/

namespace A337291.P12909226218708640900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112385 (n + 1)

end

end A337291.P12909226218708640900

namespace A337291

/-- `2*A112385(n+1)` -/
def P12909226218708640900.Spec : Prop :=
  ∀ n, P12909226218708640900.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P9950702477091166112

`4*abs(A171790(n+1))`
-/

namespace A337291.P9950702477091166112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * |A171790 (n + 1)|

end

end A337291.P9950702477091166112

namespace A337291

/-- `4*abs(A171790(n+1))` -/
def P9950702477091166112.Spec : Prop :=
  ∀ n, P9950702477091166112.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P4247249001082227264

`4*A069270(∑[n+3])`
-/

namespace A337291.P4247249001082227264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A069270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337291.P4247249001082227264

namespace A337291

/-- `4*A069270(∑[n+3])` -/
def P4247249001082227264.Spec : Prop :=
  ∀ n, P4247249001082227264.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P15258714849452808330

`4*A369082(2*n+1)`
-/

namespace A337291.P15258714849452808330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A369082 (2 * n + 1)

end

end A337291.P15258714849452808330

namespace A337291

/-- `4*A369082(2*n+1)` -/
def P15258714849452808330.Spec : Prop :=
  ∀ n, P15258714849452808330.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P15911594631010405689

`(8*n+4)*A000260(n)`
-/

namespace A337291.P15911594631010405689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) * A000260 n

end

end A337291.P15911594631010405689

namespace A337291

/-- `(8*n+4)*A000260(n)` -/
def P15911594631010405689.Spec : Prop :=
  ∀ n, P15911594631010405689.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P9018618625167355248

`2*A000260(n)*A016825(n)`
-/

namespace A337291.P9018618625167355248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000260 n * A016825 n)

end

end A337291.P9018618625167355248

namespace A337291

/-- `2*A000260(n)*A016825(n)` -/
def P9018618625167355248.Spec : Prop :=
  ∀ n, P9018618625167355248.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P18445511525286851667

`A006632(n+1)+A112385(n+1)+A006632(n+1)`
-/

namespace A337291.P18445511525286851667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 1) + (A112385 (n + 1) + A006632 (n + 1))

end

end A337291.P18445511525286851667

namespace A337291

/-- `A006632(n+1)+A112385(n+1)+A006632(n+1)` -/
def P18445511525286851667.Spec : Prop :=
  ∀ n, P18445511525286851667.a n = A337291 (n + 1)

end A337291

/-! ## A337291.P6376624791707573983

`A112385(n+1)+A112385(A069271(n)/A000260(n))`
-/

namespace A337291.P6376624791707573983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112385 (n + 1) + A112385 (SequenceMachineLib.roundAway ((A069271 n : ℚ) / (A000260 n : ℚ))).toNat

end

end A337291.P6376624791707573983

namespace A337291

/-- `A112385(n+1)+A112385(A069271(n)/A000260(n))` -/
def P6376624791707573983.Spec : Prop :=
  ∀ n, P6376624791707573983.a n = A337291 (n + 1)

end A337291

/-!
# A337292: a(n) = 4*binomial(5*n,n)/(5*n-1).

The programs for A337292, the canonical program `A337292.P6810878200403875587` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337292 has offset 1).

The definition of A337292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A337292.P6810878200403875587

`5*A118971(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A337292

/-- `5*A118971(n)` -/
def P6810878200403875587.Spec : Prop :=
  ∀ n, P6810878200403875587.a n = A337292 (n + 1)

theorem P6810878200403875587.correct : P6810878200403875587.Spec := by
  intro n
  simp only [A337292, Nat.add_sub_cancel]

end A337292

/-! ## A337292.P126696294373971042

`4*C(5*(n+1), n+1)/(5*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337292.P126696294373971042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (5 * (n + 1)) (n + 1) : ℚ) / ((5 * (n + 1) : ℤ) - 1 : ℚ)

end

end A337292.P126696294373971042

namespace A337292

/-- `4*C(5*(n+1), n+1)/(5*(n+1)-1)` -/
def P126696294373971042.Spec : Prop :=
  ∀ n, P126696294373971042.a n = (A337292 (n + 1) : ℚ)

end A337292

/-! ## A337292.P17788941316096629355

`5*A370061(2*n+1)`
-/

namespace A337292.P17788941316096629355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A370061 (2 * n + 1)

end

end A337292.P17788941316096629355

namespace A337292

/-- `5*A370061(2*n+1)` -/
def P17788941316096629355.Spec : Prop :=
  ∀ n, P17788941316096629355.a n = A337292 (n + 1)

end A337292

/-! ## A337292.P17641829906185246707

`5*C(5*n+3, n)/(n+1)`
-/

namespace A337292.P17641829906185246707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.choose (5 * n + 3) n : ℚ) / (n + 1 : ℚ))

end

end A337292.P17641829906185246707

namespace A337292

/-- `5*C(5*n+3, n)/(n+1)` -/
def P17641829906185246707.Spec : Prop :=
  ∀ n, P17641829906185246707.a n = (A337292 (n + 1) : ℚ)

end A337292

/-! ## A337292.P1424677615352498283

`5*A329060(∑[n])`
-/

namespace A337292.P1424677615352498283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A329060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A337292.P1424677615352498283

namespace A337292

/-- `5*A329060(∑[n])` -/
def P1424677615352498283.Spec : Prop :=
  ∀ n, P1424677615352498283.a n = A337292 (n + 1)

end A337292

/-!
# A337293: a(n) is the squared distance to the origin of the n-th vertex on an acute angled Babylonian spiral.

The programs for A337293, there is no canonical definition to state claims against.
-/

/-! ## A337293.P14633665340224227746

`A337311(n+1)²+A337312(n+1)²`
-/

namespace A337293.P14633665340224227746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337311 (n + 1) ^ 2 + A337312 (n + 1) ^ 2

end

end A337293.P14633665340224227746

/-!
# A337295: Reversible binary Smith numbers: binary Smith numbers (A278909) whose binary reversal (A030101) is also a binary Smith number.

The programs for A337295, there is no canonical definition to state claims against.
-/

/-! ## A337295.P5745060663487993056

`A278909(record[Δ[A327783(n+1)]])`
-/

namespace A337295.P5745060663487993056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A337295.P5745060663487993056

/-!
# A337296: Number whose sum and product of ternary representation digits are equal.

The programs for A337296, there is no canonical definition to state claims against.
-/

/-! ## A337296.P582346099276691396

`eq[ceil(log2(n+1)), A309953(n)]`
-/

namespace A337296.P582346099276691396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337296.P582346099276691396

/-! ## A337296.P17887094979060397473

`eq[A309953(n), A345380(n)]`
-/

namespace A337296.P17887094979060397473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337296.P17887094979060397473

/-! ## A337296.P6665351243906965013

`eq[n-2*A054861(n), A309954(A023717(n))]`
-/

namespace A337296.P6665351243906965013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337296.P6665351243906965013

/-! ## A337296.P9468845885840831221

`eq[n-2*A054861(n), A309957(A037454(n))]`
-/

namespace A337296.P9468845885840831221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 (A037454 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A337296.P9468845885840831221

/-!
# A337297: a(n) = sigma(n)*(tau(n) - 1).

The programs for A337297, the canonical program `A337297.P1022103926684106451` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A337297 has offset 1).

The definition of A337297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*(A000005(n+1)-1)` (program `A337297.P1022103926684106451`, by `A337297.P1022103926684106451.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A337297.P5442692916388250038

`A064840(n+1)-A000203(n+1)`
-/

namespace A337297.P5442692916388250038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A000203 (n + 1)

end

end A337297.P5442692916388250038

namespace A337297

/-- `A064840(n+1)-A000203(n+1)` -/
def P5442692916388250038.Spec : Prop :=
  ∀ n, P5442692916388250038.a n = A337297 (n + 1)

theorem P5442692916388250038.correct : P5442692916388250038.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P5442692916388250038.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064840, A064840.P1031066778155785146.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P1022103926684106451

`A000203(n+1)*(A000005(n+1)-1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A337297

/-- `A000203(n+1)*(A000005(n+1)-1)` -/
def P1022103926684106451.Spec : Prop :=
  ∀ n, P1022103926684106451.a n = A337297 (n + 1)

theorem P1022103926684106451.correct : P1022103926684106451.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel]

end A337297

/-! ## A337297.P16801378755603823812

`∑{d}[n+1, #]*∑{d}[n+1, floor(atan(#))]`
-/

namespace A337297.P16801378755603823812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * (∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋)

end

end A337297.P16801378755603823812

namespace A337297

/-- `∑{d}[n+1, #]*∑{d}[n+1, floor(atan(#))]` -/
def P16801378755603823812.Spec : Prop :=
  ∀ n, P16801378755603823812.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P12898337110714906524

`(∏{e}[n+1, #+1]-1)*∑{d}[n+1, #]`
-/

namespace A337297.P12898337110714906524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A337297.P12898337110714906524

namespace A337297

/-- `(∏{e}[n+1, #+1]-1)*∑{d}[n+1, #]` -/
def P12898337110714906524.Spec : Prop :=
  ∀ n, P12898337110714906524.a n = A337297 (n + 1)

theorem P12898337110714906524.correct : P12898337110714906524.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P12898337110714906524.f1, A337297.P12898337110714906524.f2, A337297.P12898337110714906524.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P9143636278325491701

`(∑{d}[n+1, gcd(n, #)]-1)*∑{d}[n+1, #]`
-/

namespace A337297.P9143636278325491701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A337297.P9143636278325491701

namespace A337297

/-- `(∑{d}[n+1, gcd(n, #)]-1)*∑{d}[n+1, #]` -/
def P9143636278325491701.Spec : Prop :=
  ∀ n, P9143636278325491701.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P3879402267410608645

`(∑{d}[n+1, ceil(1/#)]-1)*∑{d}[n+1, #]`
-/

namespace A337297.P3879402267410608645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ - 1) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A337297.P3879402267410608645

namespace A337297

/-- `(∑{d}[n+1, ceil(1/#)]-1)*∑{d}[n+1, #]` -/
def P3879402267410608645.Spec : Prop :=
  ∀ n, P3879402267410608645.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P16467854940512833095

`(2^∑{e}[n+1, log2(#+1)]-1)*∑{d}[n+1, #]`
-/

namespace A337297.P16467854940512833095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) - 1) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

end

end A337297.P16467854940512833095

namespace A337297

/-- `(2^∑{e}[n+1, log2(#+1)]-1)*∑{d}[n+1, #]` -/
def P16467854940512833095.Spec : Prop :=
  ∀ n, P16467854940512833095.a n = (A337297 (n + 1) : ℝ)

end A337297

/-! ## A337297.P12953628210293055130

`(∑{d}[n+1, #+1]-∑{d}[n+1, #]-1)*∑{d}[n+1, #]`
-/

namespace A337297.P12953628210293055130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A337297.P12953628210293055130

namespace A337297

/-- `(∑{d}[n+1, #+1]-∑{d}[n+1, #]-1)*∑{d}[n+1, #]` -/
def P12953628210293055130.Spec : Prop :=
  ∀ n, P12953628210293055130.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P15602661435355197162

`∑{d}[n+1, #]*A032741(n+1)`
-/

namespace A337297.P15602661435355197162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A032741 (n + 1)

end

end A337297.P15602661435355197162

namespace A337297

/-- `∑{d}[n+1, #]*A032741(n+1)` -/
def P15602661435355197162.Spec : Prop :=
  ∀ n, P15602661435355197162.a n = A337297 (n + 1)

theorem P15602661435355197162.correct : P15602661435355197162.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P15602661435355197162.f1, A337297.P15602661435355197162.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P7705017990637391510

`∑{d}[n+1, sqrt(A072861(n+1))-#]`
-/

namespace A337297.P7705017990637391510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Real.sqrt (A072861 (n + 1) : ℝ) - (d : ℝ))

end

end A337297.P7705017990637391510

namespace A337297

/-- `∑{d}[n+1, sqrt(A072861(n+1))-#]` -/
def P7705017990637391510.Spec : Prop :=
  ∀ n, P7705017990637391510.a n = (A337297 (n + 1) : ℝ)

end A337297

/-! ## A337297.P10382101344659888816

`A064947(n+1)+A064946(n+1)`
-/

namespace A337297.P10382101344659888816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064947 (n + 1) + A064946 (n + 1)

end

end A337297.P10382101344659888816

namespace A337297

/-- `A064947(n+1)+A064946(n+1)` -/
def P10382101344659888816.Spec : Prop :=
  ∀ n, P10382101344659888816.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P2387217317148903280

`A343824(n+1)+A094471(n+1)`
-/

namespace A337297.P2387217317148903280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343824 (n + 1) + A094471 (n + 1)

end

end A337297.P2387217317148903280

namespace A337297

/-- `A343824(n+1)+A094471(n+1)` -/
def P2387217317148903280.Spec : Prop :=
  ∀ n, P2387217317148903280.a n = A337297 (n + 1)

theorem P2387217317148903280.correct : P2387217317148903280.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P2387217317148903280.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A094471, A094471.P10880822235094612413.a, A343824, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P2767332672895405765

`A337360(n+1)-A074400(n+1)`
-/

namespace A337297.P2767332672895405765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A074400 (n + 1)

end

end A337297.P2767332672895405765

namespace A337297

/-- `A337360(n+1)-A074400(n+1)` -/
def P2767332672895405765.Spec : Prop :=
  ∀ n, P2767332672895405765.a n = A337297 (n + 1)

theorem P2767332672895405765.correct : P2767332672895405765.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P2767332672895405765.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A337360, A337360.P11696731240538320852.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P3154812369418144052

`A000203(n+1)*A032741(n+1)`
-/

namespace A337297.P3154812369418144052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A032741 (n + 1)

end

end A337297.P3154812369418144052

namespace A337297

/-- `A000203(n+1)*A032741(n+1)` -/
def P3154812369418144052.Spec : Prop :=
  ∀ n, P3154812369418144052.a n = A337297 (n + 1)

theorem P3154812369418144052.correct : P3154812369418144052.Spec := by
  intro n
  simp only [A337297, Nat.add_sub_cancel, A337297.P3154812369418144052.a, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A337297

/-! ## A337297.P11356313061096308925

`∑{d}[n+1, A034448(#)*A337177((n+1)/#)]`
-/

namespace A337297.P11356313061096308925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d * A337177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337297.P11356313061096308925

namespace A337297

/-- `∑{d}[n+1, A034448(#)*A337177((n+1)/#)]` -/
def P11356313061096308925.Spec : Prop :=
  ∀ n, P11356313061096308925.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P13900832114145980524

`A064944(n+1)+A064947(n+1)-A000203(n+1)`
-/

namespace A337297.P13900832114145980524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064944 (n + 1) + (A064947 (n + 1) - A000203 (n + 1))

end

end A337297.P13900832114145980524

namespace A337297

/-- `A064944(n+1)+A064947(n+1)-A000203(n+1)` -/
def P13900832114145980524.Spec : Prop :=
  ∀ n, P13900832114145980524.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P5491090136490482549

`A064945(n+1)+A064946(n+1)-A000203(n+1)`
-/

namespace A337297.P5491090136490482549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064945 (n + 1) + (A064946 (n + 1) - A000203 (n + 1))

end

end A337297.P5491090136490482549

namespace A337297

/-- `A064945(n+1)+A064946(n+1)-A000203(n+1)` -/
def P5491090136490482549.Spec : Prop :=
  ∀ n, P5491090136490482549.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P16741323510074919082

`A064840(n+1)+A064946(n+1)-A064944(n+1)`
-/

namespace A337297.P16741323510074919082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064946 (n + 1) - A064944 (n + 1))

end

end A337297.P16741323510074919082

namespace A337297

/-- `A064840(n+1)+A064946(n+1)-A064944(n+1)` -/
def P16741323510074919082.Spec : Prop :=
  ∀ n, P16741323510074919082.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P17307774963299866402

`A064840(n+1)+A064947(n+1)-A064945(n+1)`
-/

namespace A337297.P17307774963299866402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) + (A064947 (n + 1) - A064945 (n + 1))

end

end A337297.P17307774963299866402

namespace A337297

/-- `A064840(n+1)+A064947(n+1)-A064945(n+1)` -/
def P17307774963299866402.Spec : Prop :=
  ∀ n, P17307774963299866402.a n = A337297 (n + 1)

end A337297

/-! ## A337297.P8138032783759962752

`A064946(n+1)+A064949(n+1)-A064945(n+1)`
-/

namespace A337297.P8138032783759962752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064946 (n + 1) + (A064949 (n + 1) - A064945 (n + 1))

end

end A337297.P8138032783759962752

namespace A337297

/-- `A064946(n+1)+A064949(n+1)-A064945(n+1)` -/
def P8138032783759962752.Spec : Prop :=
  ∀ n, P8138032783759962752.a n = A337297 (n + 1)

end A337297

/-!
# A337298: Sum of the coordinates of all relatively prime pairs of divisors of n, (d1,d2), such that d1 <= d2.

The programs for A337298, there is no canonical definition to state claims against.
-/

/-! ## A337298.P11981302448764450104

`∑{d}[(n+1)², #/gcd(#, n+1)]+1`
-/

namespace A337298.P11981302448764450104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.gcd d (n + 1) : ℚ) + 1

end

end A337298.P11981302448764450104

/-! ## A337298.P4771898770773162660

`∑{d}[(n+1)², lcm(#, n+1)/#]+1`
-/

namespace A337298.P4771898770773162660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm d (n + 1) : ℚ) / (d : ℚ) + 1

end

end A337298.P4771898770773162660

/-! ## A337298.P14637110050735581629

`A328485(n+1)+1`
-/

namespace A337298.P14637110050735581629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328485 (n + 1) + 1

end

end A337298.P14637110050735581629

/-! ## A337298.P8202363710943937459

`∑{d}[n+1, A034448(#)]+1`
-/

namespace A337298.P8202363710943937459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034448 d + 1

end

end A337298.P8202363710943937459

/-! ## A337298.P3301070036144173961

`∑{d}[n+1, A063919(#)+#]`
-/

namespace A337298.P3301070036144173961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A063919 d + (d : ℤ))

end

end A337298.P3301070036144173961

/-! ## A337298.P13621216247275326025

`∑{d}[(n+1)², A071974(#)]+1`
-/

namespace A337298.P13621216247275326025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A071974 d + 1

end

end A337298.P13621216247275326025

/-! ## A337298.P6117226458131959297

`∑{d}[n+1, A034460(#)+#]+1`
-/

namespace A337298.P6117226458131959297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A034460 d + (d : ℤ)) + 1

end

end A337298.P6117226458131959297

/-! ## A337298.P2413611271813225178

`∑{d}[n+1, A098189(#)]+2+n`
-/

namespace A337298.P2413611271813225178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A098189 d + 2 + (n : ℤ)

end

end A337298.P2413611271813225178

/-! ## A337298.P15495471705105365756

`A020725(A328485(n+1))`
-/

namespace A337298.P15495471705105365756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A328485 (n + 1)).toNat

end

end A337298.P15495471705105365756

/-! ## A337298.P7073010223634507124

`∑{d}[n+1, A055615(#)*A337360((n+1)/#)]`
-/

namespace A337298.P7073010223634507124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A337360 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A337298.P7073010223634507124

