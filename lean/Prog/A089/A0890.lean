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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A089000: Square table, read by antidiagonals, of coefficients T(k,n) (row k; column n) defined by: T(k,n) = k*T(k,n-1)+ n; T(k,0) = 0.

The programs for A089000, the canonical program `A089000.P8279765915045211993` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089000 has offset 0).

The definition of A089000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*T(n-1,k)+row(n)-col(n)` (program `A089000.P8279765915045211993`, by `A089000.P8279765915045211993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089000.P8279765915045211993

`col(n)*T(n-1,k)+row(n)-col(n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089000

/-- `col(n)*T(n-1,k)+row(n)-col(n)` -/
def P8279765915045211993.Spec : Prop :=
  ∀ n, P8279765915045211993.a n = A089000 n

theorem P8279765915045211993.correct : P8279765915045211993.Spec := by
  intro n
  simp only [A089000]

end A089000

/-! ## A089000.P13651355203622492986

`A126885(A061579(n))-A104881(A061579(n))`
-/

namespace A089000.P13651355203622492986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (A061579 n).toNat - A104881 (A061579 n).toNat

end

end A089000.P13651355203622492986

namespace A089000

/-- `A126885(A061579(n))-A104881(A061579(n))` -/
def P13651355203622492986.Spec : Prop :=
  ∀ n, P13651355203622492986.a n = A089000 n

end A089000

/-! ## A089000.P4204269313704911058

`or(A058343(A109128(n)), A206735(n+1))`
-/

namespace A089000.P4204269313704911058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058343 (A109128 n).toNat) (A206735 (n + 1))

end

end A089000.P4204269313704911058

namespace A089000

/-- `or(A058343(A109128(n)), A206735(n+1))` -/
def P4204269313704911058.Spec : Prop :=
  ∀ n, P4204269313704911058.a n = A089000 n

end A089000

/-! ## A089000.P13267947650420626215

`or(A178798(A028276(n)), A206735(n+1))`
-/

namespace A089000.P13267947650420626215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178798 (A028276 n).toNat) (A206735 (n + 1))

end

end A089000.P13267947650420626215

namespace A089000

/-- `or(A178798(A028276(n)), A206735(n+1))` -/
def P13267947650420626215.Spec : Prop :=
  ∀ n, P13267947650420626215.a n = A089000 n

end A089000

/-! ## A089000.P5175817291865674236

`or(A185284(A131061(n)), A206735(n+1))`
-/

namespace A089000.P5175817291865674236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A131061 n).toNat) (A206735 (n + 1))

end

end A089000.P5175817291865674236

namespace A089000

/-- `or(A185284(A131061(n)), A206735(n+1))` -/
def P5175817291865674236.Spec : Prop :=
  ∀ n, P5175817291865674236.a n = A089000 n

end A089000

/-!
# A089001: Numbers k such that 2*k^2 + 1 is prime.

The programs for A089001, there is no canonical definition to state claims against.
-/

/-! ## A089001.P3652004774147812334

`((A090698(n+1)-1)/2)^(1/2)`
-/

namespace A089001.P3652004774147812334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A090698 (n + 1) - 1 : ℚ) / 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A089001.P3652004774147812334

/-! ## A089001.P17634716183169228708

`floor(sqrt(A236767(n+1)))`
-/

namespace A089001.P17634716183169228708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A236767 (n + 1))

end

end A089001.P17634716183169228708

/-! ## A089001.P7797944326279465005

`round(sqrt(A090698(n+1)/2))`
-/

namespace A089001.P7797944326279465005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A090698 (n + 1) : ℚ) / 2 : ℝ))

end

end A089001.P7797944326279465005

/-! ## A089001.P1698605933058482398

`round(sqrt(A236767(n+1)+A005843(n)))`
-/

namespace A089001.P1698605933058482398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A236767 (n + 1) + A005843 n : ℝ))

end

end A089001.P1698605933058482398

/-! ## A089001.P10805269944754119554

`round(sqrt(A236767(n+1)+A001221(n+1)))`
-/

namespace A089001.P10805269944754119554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A236767 (n + 1) + A001221 (n + 1) : ℝ))

end

end A089001.P10805269944754119554

/-! ## A089001.P16028772188894474069

`record[A001057(A242330(n+1)-1)]`
-/

namespace A089001.P16028772188894474069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A242330 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089001.P16028772188894474069

/-! ## A089001.P13200279483977538223

`eq[2, ∏{e}[2*n²+1, #+1]]`
-/

namespace A089001.P13200279483977538223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089001.P13200279483977538223

/-! ## A089001.P6479320425314254593

`round(sqrt((p?[2*n²+1]-n)/2))`
-/

namespace A089001.P6479320425314254593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ))

end

end A089001.P6479320425314254593

/-! ## A089001.P5697237003128909060

`eq[2, ∑{e}[(2*n)²+2, #]]`
-/

namespace A089001.P5697237003128909060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089001.P5697237003128909060

/-!
# A089002: Number of non-congruent solutions to x^2 + 2y^2 == -1 (mod n).

The programs for A089002, there is no canonical definition to state claims against.
-/

/-! ## A089002.P4067610803715814081

`A088965(n+1)*A168181(n+1)`
-/

namespace A089002.P4067610803715814081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (n + 1) * A168181 (n + 1)

end

end A089002.P4067610803715814081

/-! ## A089002.P9370679676140063259

`A115561(n+1)%2*A088965(n+1)`
-/

namespace A089002.P9370679676140063259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115561 (n + 1)) 2 * A088965 (n + 1)

end

end A089002.P9370679676140063259

/-! ## A089002.P15141535191070374522

`lcm(and(7, A086933(n+1)), A088965(n+1))`
-/

namespace A089002.P15141535191070374522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.land 7 (A086933 (n + 1))) (A088965 (n + 1))

end

end A089002.P15141535191070374522

/-! ## A089002.P11476833167155550533

`A088965(n+1)*A173692(∑[A143621(n)])`
-/

namespace A089002.P11476833167155550533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (n + 1) * A173692 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089002.P11476833167155550533

/-! ## A089002.P8740006221593848304

`A088965(n+1)*A166486(A032742(n+1))`
-/

namespace A089002.P8740006221593848304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088965 (n + 1) * A166486 (A032742 (n + 1)).toNat

end

end A089002.P8740006221593848304

/-!
# A089004: Number of partitions of an n-element set that have at least one odd block.

The programs for A089004, there is no canonical definition to state claims against.
-/

/-! ## A089004.P4512537958178566705

`record[A108087(n)]-A124321(A000124(n))`
-/

namespace A089004.P4512537958178566705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A124321 (A000124 n).toNat

end

end A089004.P4512537958178566705

/-! ## A089004.P17481700238084252036

`record[A211700(n+1)]-A124321(A000124(n))`
-/

namespace A089004.P17481700238084252036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A124321 (A000124 n).toNat

end

end A089004.P17481700238084252036

/-! ## A089004.P15193275215865404747

`A000110(n+1)-A124321(A000217(n+1))`
-/

namespace A089004.P15193275215865404747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A124321 (A000217 (n + 1)).toNat

end

end A089004.P15193275215865404747

/-! ## A089004.P2477463162762121103

`A108087(A134869(n+1))-A124321(A000124(n))`
-/

namespace A089004.P2477463162762121103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A134869 (n + 1)).toNat - A124321 (A000124 n).toNat

end

end A089004.P2477463162762121103

/-! ## A089004.P15120430066809464655

`A372508(n+1)+A089005(n+1)`
-/

namespace A089004.P15120430066809464655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372508 (n + 1) + A089005 (n + 1)

end

end A089004.P15120430066809464655

/-! ## A089004.P18051175197175484704

`A000110(n+1)+A372508(n+1)-A003724(n+1)`
-/

namespace A089004.P18051175197175484704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (A372508 (n + 1) - A003724 (n + 1))

end

end A089004.P18051175197175484704

/-!
# A089005: Number of partitions of n-set with at least one even block.

The programs for A089005, there is no canonical definition to state claims against.
-/

/-! ## A089005.P3752538309328853306

`record[A343254(n)-A124322(n)]`
-/

namespace A089005.P3752538309328853306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 n - A124322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089005.P3752538309328853306

/-! ## A089005.P14041602130926820974

`A011972(∑[n])-A003724(n+1)`
-/

namespace A089005.P14041602130926820974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - A003724 (n + 1)

end

end A089005.P14041602130926820974

/-! ## A089005.P5468614413537373247

`record[A275069(n)]-A003724(n+1)`
-/

namespace A089005.P5468614413537373247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A003724 (n + 1)

end

end A089005.P5468614413537373247

/-! ## A089005.P12924134694376769519

`A000110(n+1)-A003724(n+1)`
-/

namespace A089005.P12924134694376769519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A003724 (n + 1)

end

end A089005.P12924134694376769519

/-! ## A089005.P8674219974354934873

`A224271(n+2)-(A102287(n+1)+A003724(n+1))`
-/

namespace A089005.P8674219974354934873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224271 (n + 2) - (A102287 (n + 1) + A003724 (n + 1))

end

end A089005.P8674219974354934873

/-!
# A089006: Number of distinct n X n (0,1) matrices after double sorting: by row, by column, by row .. until reaching a fixed point.

The programs for A089006, there is no canonical definition to state claims against.
-/

/-! ## A089006.P10029716037512164945

`A162051(n*a(A046074(n+1)-1))` with `a(0)=1`
-/

namespace A089006.P10029716037512164945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162051 ((n : ℤ) * a (A046074 (n + 1) - 1).toNat).toNat

end

end A089006.P10029716037512164945

/-! ## A089006.P9327569748621777605

`A162049(A032862(a(floor(n/10))+n))` with `a(0)=1`
-/

namespace A089006.P9327569748621777605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162049 (A032862 (a ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat).toNat

end

end A089006.P9327569748621777605

/-! ## A089006.P12853508589362029983

`A162049(A306110(a(floor(n/10))+n))` with `a(0)=1`
-/

namespace A089006.P12853508589362029983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162049 (A306110 (a ⌊(n : ℚ) / 10⌋.toNat + (n : ℤ)).toNat).toNat

end

end A089006.P12853508589362029983

/-!
# A089007: Sequence of primes p(n) such that 2*p(n)+3, 2*p(n+1)+3, 2*p(n+2)+3, 2*p(n+3)+3 are four consecutive primes, where p(i) denotes the i-th prime.

The programs for A089007, there is no canonical definition to state claims against.
-/

/-! ## A089007.P15387120505000939134

`(A089492(n+1)-3)/2`
-/

namespace A089007.P15387120505000939134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089492 (n + 1) - 3 : ℚ) / 2

end

end A089007.P15387120505000939134

/-!
# A089008: Numbers k such that 18*k^2 + 1 is prime.

The programs for A089008, there is no canonical definition to state claims against.
-/

/-! ## A089008.P18334960034108290279

`A089001(n+2)/3`
-/

namespace A089008.P18334960034108290279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089001 (n + 2) : ℚ) / 3

end

end A089008.P18334960034108290279

/-! ## A089008.P13767647744710148870

`∑[A135997(Δ[A089001(n+1)])]`
-/

namespace A089008.P13767647744710148870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089008.P13767647744710148870

/-! ## A089008.P4427447531447572084

`∑[A285870(Δ[A089001(n+1)])]`
-/

namespace A089008.P4427447531447572084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089008.P4427447531447572084

/-! ## A089008.P18285531384828162975

`∑[A135997(Δ[((A090698(n+1)-1)/2)^(1/2)])]`
-/

namespace A089008.P18285531384828162975
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A090698 (n + 1) - 1 : ℚ) / 2 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089008.P18285531384828162975

/-! ## A089008.P16523770751619537862

`A002264(A089001(n+2))`
-/

namespace A089008.P16523770751619537862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A089001 (n + 2)).toNat

end

end A089008.P16523770751619537862

/-! ## A089008.P4666455394566822764

`A008611(A089001(n+2)+1)`
-/

namespace A089008.P4666455394566822764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A089001 (n + 2) + 1).toNat

end

end A089008.P4666455394566822764

/-! ## A089008.P15425107874411893043

`A285870(A089001(n+1)+Δ[A089001(n+1)])`
-/

namespace A089008.P15425107874411893043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A089001 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A089008.P15425107874411893043

/-!
# A089011: a(n) = 1 if n is an exponent of the Weyl group W(E_7), 0 otherwise.

The programs for A089011, there is no canonical definition to state claims against.
-/

/-! ## A089011.P217848411569644455

`A294878(A230366(n+1))`
-/

namespace A089011.P217848411569644455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294878 (A230366 (n + 1)).toNat

end

end A089011.P217848411569644455

/-!
# A089012: a(n) = 1 if n is an exponent of the Weyl group W(E_6), 0 otherwise.

The programs for A089012, the canonical program `A089012.P11419056490726605135` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089012 has offset 1).

The definition of A089012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089012.P11419056490726605135

`a(8%(2-n))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089012

/-- `a(8%(2-n))` -/
def P11419056490726605135.Spec : Prop :=
  ∀ n, (P11419056490726605135.a n : ℤ) = A089012 (n + 1)

theorem P11419056490726605135.correct : P11419056490726605135.Spec := by
  intro n
  simp only [A089012, Nat.add_sub_cancel]

end A089012

/-!
# A089013: a(n) = (A088567(8n) mod 2).

The programs for A089013, the canonical program `A089013.P9819339987167635013` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089013 has offset 0).

The definition of A089013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088567, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089013.P9819339987167635013

`A088567(8*n)%2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089013

/-- `A088567(8*n)%2` -/
def P9819339987167635013.Spec : Prop :=
  ∀ n, P9819339987167635013.a n = A089013 n

theorem P9819339987167635013.correct : P9819339987167635013.Spec := by
  intro n
  simp only [A089013]

end A089013

/-! ## A089013.P16489556298781989000

`char[or(n, abs(xor(n, -n)))]`
-/

namespace A089013.P16489556298781989000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) |Int.xor (n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P16489556298781989000

namespace A089013

/-- `char[or(n, abs(xor(n, -n)))]` -/
def P16489556298781989000.Spec : Prop :=
  ∀ n, (P16489556298781989000.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P6082421174080847575

`char[or(n, -xor(n, -n))]`
-/

namespace A089013.P6082421174080847575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-Int.xor (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P6082421174080847575

namespace A089013

/-- `char[or(n, -xor(n, -n))]` -/
def P6082421174080847575.Spec : Prop :=
  ∀ n, (P6082421174080847575.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P17703443949735127598

`char[and(n, -n)+2*n]`
-/

namespace A089013.P17703443949735127598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P17703443949735127598

namespace A089013

/-- `char[and(n, -n)+2*n]` -/
def P17703443949735127598.Spec : Prop :=
  ∀ n, (P17703443949735127598.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P15048608457037628745

`char[2*n-or(n, -n)]`
-/

namespace A089013.P15048608457037628745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P15048608457037628745

namespace A089013

/-- `char[2*n-or(n, -n)]` -/
def P15048608457037628745.Spec : Prop :=
  ∀ n, (P15048608457037628745.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P17564316267362434356

`char[or(2*n, and(n, -n))]`
-/

namespace A089013.P17564316267362434356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (Int.land (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P17564316267362434356

namespace A089013

/-- `char[or(2*n, and(n, -n))]` -/
def P17564316267362434356.Spec : Prop :=
  ∀ n, (P17564316267362434356.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P15191508152337396193

`char[xor(2*n, and(n, -n))]`
-/

namespace A089013.P15191508152337396193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P15191508152337396193

namespace A089013

/-- `char[xor(2*n, and(n, -n))]` -/
def P15191508152337396193.Spec : Prop :=
  ∀ n, (P15191508152337396193.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P17487496175950489204

`char[and(n, -n)+n+n]`
-/

namespace A089013.P17487496175950489204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P17487496175950489204

namespace A089013

/-- `char[and(n, -n)+n+n]` -/
def P17487496175950489204.Spec : Prop :=
  ∀ n, (P17487496175950489204.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P15466183108419861370

`char[or(n, n-1)+1+n]`
-/

namespace A089013.P15466183108419861370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P15466183108419861370

namespace A089013

/-- `char[or(n, n-1)+1+n]` -/
def P15466183108419861370.Spec : Prop :=
  ∀ n, (P15466183108419861370.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P4501051686494439878

`char[3*and(n, n-1)-n]`
-/

namespace A089013.P4501051686494439878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089013.P4501051686494439878

namespace A089013

/-- `char[3*and(n, n-1)-n]` -/
def P4501051686494439878.Spec : Prop :=
  ∀ n, (P4501051686494439878.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P3521963554301542200

`char[comp[and(n, n+1)+1+n]]`
-/

namespace A089013.P3521963554301542200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089013.P3521963554301542200

namespace A089013

/-- `char[comp[and(n, n+1)+1+n]]` -/
def P3521963554301542200.Spec : Prop :=
  ∀ n, (P3521963554301542200.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P7315273863263074220

`1-char[and(n, n+1)+1+n]`
-/

namespace A089013.P7315273863263074220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089013.P7315273863263074220

namespace A089013

/-- `1-char[and(n, n+1)+1+n]` -/
def P7315273863263074220.Spec : Prop :=
  ∀ n, P7315273863263074220.a n = A089013 n

end A089013

/-! ## A089013.P490358042957902207

`xor(1, char[and(n, n+1)+1+n])`
-/

namespace A089013.P490358042957902207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A089013.P490358042957902207

namespace A089013

/-- `xor(1, char[and(n, n+1)+1+n])` -/
def P490358042957902207.Spec : Prop :=
  ∀ n, (P490358042957902207.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P17242384539933920706

`char[lt[char[and(n, n+1)+1+n], 1]]`
-/

namespace A089013.P17242384539933920706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089013.P17242384539933920706

namespace A089013

/-- `char[lt[char[and(n, n+1)+1+n], 1]]` -/
def P17242384539933920706.Spec : Prop :=
  ∀ n, (P17242384539933920706.a n : ℤ) = A089013 n

end A089013

/-! ## A089013.P17718779328250139218

`1-A082410(n+1)`
-/

namespace A089013.P17718779328250139218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082410 (n + 1)

end

end A089013.P17718779328250139218

namespace A089013

/-- `1-A082410(n+1)` -/
def P17718779328250139218.Spec : Prop :=
  ∀ n, P17718779328250139218.a n = A089013 n

end A089013

/-! ## A089013.P2911712851942595107

`A103391(n+1)%2`
-/

namespace A089013.P2911712851942595107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103391 (n + 1)) 2

end

end A089013.P2911712851942595107

namespace A089013

/-- `A103391(n+1)%2` -/
def P2911712851942595107.Spec : Prop :=
  ∀ n, P2911712851942595107.a n = A089013 n

end A089013

/-! ## A089013.P14951163491347197033

`A317333(n+1)%2`
-/

namespace A089013.P14951163491347197033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317333 (n + 1)) 2

end

end A089013.P14951163491347197033

namespace A089013

/-- `A317333(n+1)%2` -/
def P14951163491347197033.Spec : Prop :=
  ∀ n, P14951163491347197033.a n = A089013 n

end A089013

/-! ## A089013.P12270202362320621102

`and(1, A317336(n+1))`
-/

namespace A089013.P12270202362320621102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317336 (n + 1))

end

end A089013.P12270202362320621102

namespace A089013

/-- `and(1, A317336(n+1))` -/
def P12270202362320621102.Spec : Prop :=
  ∀ n, P12270202362320621102.a n = A089013 n

end A089013

/-! ## A089013.P11367118118965840639

`1-A073089(Δ[n²])`
-/

namespace A089013.P11367118118965840639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073089 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089013.P11367118118965840639

namespace A089013

/-- `1-A073089(Δ[n²])` -/
def P11367118118965840639.Spec : Prop :=
  ∀ n, P11367118118965840639.a n = A089013 n

end A089013

/-! ## A089013.P9461760249285906380

`A038189(n)+A000007(n)`
-/

namespace A089013.P9461760249285906380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n + A000007 n

end

end A089013.P9461760249285906380

namespace A089013

/-- `A038189(n)+A000007(n)` -/
def P9461760249285906380.Spec : Prop :=
  ∀ n, P9461760249285906380.a n = A089013 n

end A089013

/-!
# A089014: n*nextprime((n-1)!)-nextprime(n!).

The programs for A089014, there is no canonical definition to state claims against.
-/

/-! ## A089014.P2089357396674769152

`n*A033932(n)-Δ[A033932(n)]`
-/

namespace A089014.P2089357396674769152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033932 n - (f1 (n + 1) - f1 n)

end

end A089014.P2089357396674769152

/-! ## A089014.P17801905251485156631

`(n+1)*A033932(n)-A033932(n+1)`
-/

namespace A089014.P17801905251485156631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033932 n - A033932 (n + 1)

end

end A089014.P17801905251485156631

/-! ## A089014.P16211400222487832475

`A033932(n)*A077168(n)-A033932(A077168(n))`
-/

namespace A089014.P16211400222487832475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n * A077168 n - A033932 (A077168 n).toNat

end

end A089014.P16211400222487832475

/-!
# A089017: n for which the number consisting of a string of n 3's and a terminal 1 is not prime.

The programs for A089017, there is no canonical definition to state claims against.
-/

/-! ## A089017.P18444691937327957138

`comp[A055520(n+1)-1]+1`
-/

namespace A089017.P18444691937327957138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055520 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A089017.P18444691937327957138

/-! ## A089017.P4350762090456097267

`comp[A055557(n+1)-2]+1`
-/

namespace A089017.P4350762090456097267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055557 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A089017.P4350762090456097267

/-! ## A089017.P11010581098694834728

`lt[1, A104484(n)]`
-/

namespace A089017.P11010581098694834728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089017.P11010581098694834728

/-! ## A089017.P7917165515601261789

`lt[2, A105267(n)]`
-/

namespace A089017.P7917165515601261789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089017.P7917165515601261789

/-! ## A089017.P5691660366642712889

`eq[0, A000035(A104484(n)!)]`
-/

namespace A089017.P5691660366642712889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (A104484 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089017.P5691660366642712889

/-! ## A089017.P17517558647634066500

`eq[0, A000122(A104484(n)!)]`
-/

namespace A089017.P17517558647634066500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.factorial (A104484 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089017.P17517558647634066500

/-! ## A089017.P14944456260121470880

`eq[0, A010057(A104484(n)!)]`
-/

namespace A089017.P14944456260121470880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (Nat.factorial (A104484 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089017.P14944456260121470880

/-! ## A089017.P13090304137972604874

`eq[0, A104477(A104484(n)!)]`
-/

namespace A089017.P13090304137972604874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (Nat.factorial (A104484 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089017.P13090304137972604874

/-! ## A089017.P10881226863006045572

`eq[2, A020639(A104484(n)!)]`
-/

namespace A089017.P10881226863006045572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A104484 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089017.P10881226863006045572

/-!
# A089019: First nontrivial x satisfying x^2 - 3*y^2 = d^2, where d=A072330(n).

The programs for A089019, there is no canonical definition to state claims against.
-/

/-! ## A089019.P16997007103642401439

`A086909(n+1)/2`
-/

namespace A089019.P16997007103642401439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086909 (n + 1) : ℚ) / 2

end

end A089019.P16997007103642401439

/-! ## A089019.P12509690657651565720

`floor(A086909(A008619(2*n))/2)`
-/

namespace A089019.P12509690657651565720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086909 (A008619 (2 * n)).toNat : ℚ) / 2⌋

end

end A089019.P12509690657651565720

/-! ## A089019.P6775458237278480570

`2*A072360(n+1)/A089020(n+1)`
-/

namespace A089019.P6775458237278480570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A072360 (n + 1) : ℚ) / (A089020 (n + 1) : ℚ))

end

end A089019.P6775458237278480570

/-! ## A089019.P18274848355209889718

`A000217(A086909(n+1)-1)%A086909(n+1)`
-/

namespace A089019.P18274848355209889718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A086909 (n + 1) - 1).toNat) (A086909 (n + 1))

end

end A089019.P18274848355209889718

/-! ## A089019.P4074436513552917247

`A123108(A086909(n+1)-n)+A123108(n+1)`
-/

namespace A089019.P4074436513552917247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A086909 (n + 1) - (n : ℤ)).toNat + A123108 (n + 1)

end

end A089019.P4074436513552917247

/-! ## A089019.P8628145813713481537

`A001281(A086909(n+1))`
-/

namespace A089019.P8628145813713481537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A086909 (n + 1)).toNat

end

end A089019.P8628145813713481537

/-! ## A089019.P9066312032429750810

`A004526(A086909(n+1)+1)`
-/

namespace A089019.P9066312032429750810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A086909 (n + 1) + 1).toNat

end

end A089019.P9066312032429750810

/-! ## A089019.P1718639588488997486

`A123108(A086909(n+1)+1)`
-/

namespace A089019.P1718639588488997486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A086909 (n + 1) + 1).toNat

end

end A089019.P1718639588488997486

/-! ## A089019.P13306658815989984328

`A008619(A086909(n+1)-1)`
-/

namespace A089019.P13306658815989984328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A086909 (n + 1) - 1).toNat

end

end A089019.P13306658815989984328

/-! ## A089019.P4016365778608080677

`A051724(2*A086909(n+1))`
-/

namespace A089019.P4016365778608080677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * A086909 (n + 1)).toNat

end

end A089019.P4016365778608080677

/-!
# A089020: First value y satisfying x^2 - 3*y^2 = d^2, where d=A072330(n).

The programs for A089020, there is no canonical definition to state claims against.
-/

/-! ## A089020.P10261951911092522418

`2*A072360(n+1)/A089019(n+1)`
-/

namespace A089020.P10261951911092522418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A072360 (n + 1) : ℚ) / (A089019 (n + 1) : ℚ))

end

end A089020.P10261951911092522418

/-! ## A089020.P109044358029892969

`4*A072360(n+1)/A086909(n+1)`
-/

namespace A089020.P109044358029892969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A072360 (n + 1) : ℚ) / (A086909 (n + 1) : ℚ))

end

end A089020.P109044358029892969

/-! ## A089020.P4334014437943154784

`6*A072360(n+1)/A096674(n+1)`
-/

namespace A089020.P4334014437943154784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A072360 (n + 1) : ℚ) / (A096674 (n + 1) : ℚ))

end

end A089020.P4334014437943154784

/-! ## A089020.P13114656599634819327

`A004277(A072360(n+1))/A089019(n+1)`
-/

namespace A089020.P13114656599634819327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A072360 (n + 1)).toNat : ℚ) / (A089019 (n + 1) : ℚ)

end

end A089020.P13114656599634819327

/-! ## A089020.P5416762622312763204

`A008574(A072360(n+1))/A086909(n+1)`
-/

namespace A089020.P5416762622312763204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A072360 (n + 1)).toNat : ℚ) / (A086909 (n + 1) : ℚ)

end

end A089020.P5416762622312763204

/-!
# A089021: Values associated with sequence A087004(n).

The programs for A089021, there is no canonical definition to state claims against.
-/

/-! ## A089021.P1996152855276028929

`A000005(A087004(n+1))`
-/

namespace A089021.P1996152855276028929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A087004 (n + 1)).toNat

end

end A089021.P1996152855276028929

/-! ## A089021.P9339413521777592832

`∑{d}[A087004(n+1), A007318(C(2, #))]`
-/

namespace A089021.P9339413521777592832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (Nat.choose 2 d)

end

end A089021.P9339413521777592832

/-! ## A089021.P271547173855326940

`∑{d}[A087004(n+1), A204858(C(2, #))]`
-/

namespace A089021.P271547173855326940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A204858 (Nat.choose 2 d)

end

end A089021.P271547173855326940

/-! ## A089021.P7704008019627002493

`∑{d}[A087004(n+1), A000041(C(2, #+1))]`
-/

namespace A089021.P7704008019627002493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (Nat.choose 2 (d + 1))

end

end A089021.P7704008019627002493

/-! ## A089021.P2383907681366742123

`∑{d}[A087004(n+1), A000700(C(2, #+1))]`
-/

namespace A089021.P2383907681366742123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000700 (Nat.choose 2 (d + 1))

end

end A089021.P2383907681366742123

/-! ## A089021.P784670512261664636

`∑{d}[A087004(n+1), A000726(C(2, #+1))]`
-/

namespace A089021.P784670512261664636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000726 (Nat.choose 2 (d + 1))

end

end A089021.P784670512261664636

/-! ## A089021.P17009145118964838086

`∑{d}[A087004(n+1), A007716(C(2, #+1))]`
-/

namespace A089021.P17009145118964838086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007716 (Nat.choose 2 (d + 1))

end

end A089021.P17009145118964838086

/-!
# A089022: Number of walks of length 2n on the 3-regular tree beginning and ending at some fixed vertex.

The programs for A089022, there is no canonical definition to state claims against.
-/

/-! ## A089022.P14079097920452582913

`A126087(2*n)`
-/

namespace A089022.P14079097920452582913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (2 * n)

end

end A089022.P14079097920452582913

/-! ## A089022.P11580542704315942467

`record[A126087(and(n, n+1))]`
-/

namespace A089022.P11580542704315942467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P11580542704315942467

/-! ## A089022.P6051742358584958340

`record[A126087(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A089022.P6051742358584958340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A126087 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P6051742358584958340

/-! ## A089022.P11749353777107503180

`record[A126087(A014681(n))]`
-/

namespace A089022.P11749353777107503180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P11749353777107503180

/-! ## A089022.P2371817995235379335

`record[A126087(A018838(n))]`
-/

namespace A089022.P2371817995235379335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P2371817995235379335

/-! ## A089022.P1415074460513347183

`record[gcd(A007814(n+1), A126087(n))]`
-/

namespace A089022.P1415074460513347183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A126087 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P1415074460513347183

/-! ## A089022.P14948173657526170561

`record[A126087(A008611(A026741(n)))]`
-/

namespace A089022.P14948173657526170561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126087 (A008611 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089022.P14948173657526170561

/-! ## A089022.P16916063723813151985

`A059304(n)-A386670(n)`
-/

namespace A089022.P16916063723813151985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059304 n - A386670 n

end

end A089022.P16916063723813151985

/-! ## A089022.P1433041742772863761

`A103973(2*n)-A386670(n)`
-/

namespace A089022.P1433041742772863761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103973 (2 * n) - A386670 n

end

end A089022.P1433041742772863761

/-! ## A089022.P7456443375958082463

`A128418(n)-2*A386670(n)`
-/

namespace A089022.P7456443375958082463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - 2 * A386670 n

end

end A089022.P7456443375958082463

/-! ## A089022.P166054929972589803

`2*A243019(2*n)-A243019(2*n+1)`
-/

namespace A089022.P166054929972589803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243019 (2 * n) - A243019 (2 * n + 1)

end

end A089022.P166054929972589803

/-! ## A089022.P11646552927397654007

`2*A151281(2*n)-A000244(n)²`
-/

namespace A089022.P11646552927397654007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151281 (2 * n) - A000244 n ^ 2

end

end A089022.P11646552927397654007

/-! ## A089022.P13120052926654418706

`2*A151281(2*n)-A000244(2*n)`
-/

namespace A089022.P13120052926654418706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151281 (2 * n) - A000244 (2 * n)

end

end A089022.P13120052926654418706

/-!
# A089024: 1's separated by d(n) 0's, where d(n) = n-th digit of decimal expansion of Pi.

The programs for A089024, there is no canonical definition to state claims against.
-/

/-! ## A089024.P14100511448124253648

`1-A130854(n+1)`
-/

namespace A089024.P14100511448124253648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A130854 (n + 1)

end

end A089024.P14100511448124253648

/-! ## A089024.P6408490690094526050

`char[A059582(n)-1+n]`
-/

namespace A089024.P6408490690094526050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089024.P6408490690094526050

/-! ## A089024.P9157392304957647322

`1-char[∑[char[A046974(n)]+1]]`
-/

namespace A089024.P9157392304957647322
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089024.P9157392304957647322

/-! ## A089024.P12522113281499935246

`char[Δ[A227844(n+1)]+n-1]`
-/

namespace A089024.P12522113281499935246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089024.P12522113281499935246

/-! ## A089024.P12502589487196463453

`char[n*char[A059582(n+1)+n]]`
-/

namespace A089024.P12502589487196463453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089024.P12502589487196463453

/-! ## A089024.P17486415178491476405

`char[A023443(A059582(n)+n)]`
-/

namespace A089024.P17486415178491476405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059582 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089024.P17486415178491476405

/-! ## A089024.P17639033804263024268

`char[A059582(n)-A024000(n)]`
-/

namespace A089024.P17639033804263024268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - A024000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089024.P17639033804263024268

/-! ## A089024.P1766077100599214909

`xor(1, A130854(A000027(n+1)))`
-/

namespace A089024.P1766077100599214909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A130854 (A000027 (n + 1)).toNat)

end

end A089024.P1766077100599214909

/-! ## A089024.P952306301161798653

`A000007(n*A130854(n+1))`
-/

namespace A089024.P952306301161798653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A130854 (n + 1)).toNat

end

end A089024.P952306301161798653

/-! ## A089024.P17626851269465618513

`A112316(n*A130854(n+1))`
-/

namespace A089024.P17626851269465618513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 ((n : ℤ) * A130854 (n + 1)).toNat

end

end A089024.P17626851269465618513

/-! ## A089024.P5728845895073537488

`xor(A130854(n+1), A361338(n))`
-/

namespace A089024.P5728845895073537488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130854 (n + 1)) (A361338 n)

end

end A089024.P5728845895073537488

/-! ## A089024.P12840017191768880975

`A010054(A130854(n+1)+∑[n])`
-/

namespace A089024.P12840017191768880975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A130854 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A089024.P12840017191768880975

/-! ## A089024.P8496795434418905533

`xor(A007318(C(2, n)), A130854(n+1))`
-/

namespace A089024.P8496795434418905533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose 2 n)) (A130854 (n + 1))

end

end A089024.P8496795434418905533

/-! ## A089024.P2840659283585086758

`char[∑[A123152(n+1)]-A123152(n+1)]`
-/

namespace A089024.P2840659283585086758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A123152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A089024.P2840659283585086758

/-! ## A089024.P14914551813182216406

`A112316(A130854(n+1)/(A112316(n)+1))`
-/

namespace A089024.P14914551813182216406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (SequenceMachineLib.roundAway ((A130854 (n + 1) : ℚ) / (A112316 n + 1 : ℚ))).toNat

end

end A089024.P14914551813182216406

/-! ## A089024.P12001124959732074253

`A010054(A010054(n)+n*A130854(n+1))`
-/

namespace A089024.P12001124959732074253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A010054 n + (n : ℤ) * A130854 (n + 1)).toNat

end

end A089024.P12001124959732074253

/-! ## A089024.P907488279700819734

`C(A007318(n), A130854(n+1)+A007318(n))`
-/

namespace A089024.P907488279700819734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (A130854 (n + 1) + A007318 n).toNat

end

end A089024.P907488279700819734

/-! ## A089024.P2305066021273952513

`xor(A000045(A020639(2*(n+1))), A130854(n+1))`
-/

namespace A089024.P2305066021273952513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 (A020639 (2 * (n + 1))).toNat) (A130854 (n + 1))

end

end A089024.P2305066021273952513

/-! ## A089024.P3436418511435711395

`char[eq[A008683(8*(n+1)), A130854(n+1)]]`
-/

namespace A089024.P3436418511435711395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130854 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A089024.P3436418511435711395

/-!
# A089025: Side of primitive equilateral triangle bearing at least one integral cevian that partitions an edge into two integral sections.

The programs for A089025, there is no canonical definition to state claims against.
-/

/-! ## A089025.P16223397585286012082

`record[A201223(n+2)]`
-/

namespace A089025.P16223397585286012082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089025.P16223397585286012082

/-! ## A089025.P6231617563485039796

`or(record[A201223(A166517(n))], char[1])`
-/

namespace A089025.P6231617563485039796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A166517 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089025.P6231617563485039796

/-! ## A089025.P17412812765135707811

`A088586(n+1)+A088514(n+1)`
-/

namespace A089025.P17412812765135707811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (n + 1) + A088514 (n + 1)

end

end A089025.P17412812765135707811

/-! ## A089025.P12843348613650713165

`(record[A201223(A049636(n))]^(1/2))²`
-/

namespace A089025.P12843348613650713165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A049636 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A089025.P12843348613650713165

/-! ## A089025.P4059715294728626190

`lcm(1-4/2, record[A201223(A133265(n))])`
-/

namespace A089025.P4059715294728626190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A133265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A089025.P4059715294728626190

/-! ## A089025.P5066951174914554595

`A088587(n+1)+2*A088514(n+1)`
-/

namespace A089025.P5066951174914554595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088587 (n + 1) + 2 * A088514 (n + 1)

end

end A089025.P5066951174914554595

/-! ## A089025.P8425303662072184287

`2*A088586(n+1)-A088587(n+1)`
-/

namespace A089025.P8425303662072184287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088586 (n + 1) - A088587 (n + 1)

end

end A089025.P8425303662072184287

/-! ## A089025.P5334594996193303540

`record[A087960(n)*A201223(A166517(n))]`
-/

namespace A089025.P5334594996193303540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A201223 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089025.P5334594996193303540

/-! ## A089025.P8858425005765965472

`record[A201223(A166517(n))/A000034(n)]`
-/

namespace A089025.P8858425005765965472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201223 (A166517 n).toNat : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089025.P8858425005765965472

/-! ## A089025.P9843068334947632305

`record[A201223(A166517(n))]*A000034(2*n)`
-/

namespace A089025.P9843068334947632305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201223 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000034 (2 * n)

end

end A089025.P9843068334947632305

/-!
# A089026: a(n) = n if n is a prime, otherwise a(n) = 1.

The programs for A089026, the canonical program `A089026.P9133057752167928232` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089026 has offset 1).

The definition of A089026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A014963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089026.P9133057752167928232

`A014963(n+1)^-A008683(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089026

/-- `A014963(n+1)^-A008683(n+1)` -/
def P9133057752167928232.Spec : Prop :=
  ∀ n, P9133057752167928232.a n = (A089026 (n + 1) : ℚ)

end A089026

/-! ## A089026.P9221500075784476305

`A034386(n+1)/A034386(n)`
-/

namespace A089026.P9221500075784476305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 n : ℚ)

end

end A089026.P9221500075784476305

namespace A089026

/-- `A034386(n+1)/A034386(n)` -/
def P9221500075784476305.Spec : Prop :=
  ∀ n, P9221500075784476305.a n = (A089026 (n + 1) : ℚ)

end A089026

/-! ## A089026.P5763856590301554632

`gcd(n+1, n!+1)`
-/

namespace A089026.P5763856590301554632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial n + 1)

end

end A089026.P5763856590301554632

namespace A089026

/-- `gcd(n+1, n!+1)` -/
def P5763856590301554632.Spec : Prop :=
  ∀ n, (P5763856590301554632.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P15573092126262095247

`∏{d}[∑{p}[n+1, C(#, n)], #]`
-/

namespace A089026.P15573092126262095247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A089026.P15573092126262095247

namespace A089026

/-- `∏{d}[∑{p}[n+1, C(#, n)], #]` -/
def P15573092126262095247.Spec : Prop :=
  ∀ n, (P15573092126262095247.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P15001891487037176597

`∏{p}[∑{p}[n+1, C(#, n)], #]`
-/

namespace A089026.P15001891487037176597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A089026.P15001891487037176597

namespace A089026

/-- `∏{p}[∑{p}[n+1, C(#, n)], #]` -/
def P15001891487037176597.Spec : Prop :=
  ∀ n, (P15001891487037176597.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P11138374276715985589

`∏{p}[∏{p}[n+1, C(#, n)], #]`
-/

namespace A089026.P11138374276715985589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A089026.P11138374276715985589

namespace A089026

/-- `∏{p}[∏{p}[n+1, C(#, n)], #]` -/
def P11138374276715985589.Spec : Prop :=
  ∀ n, (P11138374276715985589.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P9709721143745549211

`∏{p}[n+1, ceil(#^(#-n))]`
-/

namespace A089026.P9709721143745549211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ)⌉

end

end A089026.P9709721143745549211

namespace A089026

/-- `∏{p}[n+1, ceil(#^(#-n))]` -/
def P9709721143745549211.Spec : Prop :=
  ∀ n, P9709721143745549211.a n = A089026 (n + 1)

end A089026

/-! ## A089026.P834356725552615602

`ceil(∏{p}[n+1, #²/(n+1)])`
-/

namespace A089026.P834356725552615602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 : ℚ) / (n + 1 : ℚ)⌉

end

end A089026.P834356725552615602

namespace A089026

/-- `ceil(∏{p}[n+1, #²/(n+1)])` -/
def P834356725552615602.Spec : Prop :=
  ∀ n, P834356725552615602.a n = A089026 (n + 1)

end A089026

/-! ## A089026.P8912498012373929942

`ceil((n+1)^(2-∑{e}[n+1, #]))`
-/

namespace A089026.P8912498012373929942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (2 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)⌉

end

end A089026.P8912498012373929942

namespace A089026

/-- `ceil((n+1)^(2-∑{e}[n+1, #]))` -/
def P8912498012373929942.Spec : Prop :=
  ∀ n, P8912498012373929942.a n = A089026 (n + 1)

end A089026

/-! ## A089026.P8144968123011757405

`(n+1)^and(1, ∑{e}[n+1, #]!)`
-/

namespace A089026.P8144968123011757405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A089026.P8144968123011757405

namespace A089026

/-- `(n+1)^and(1, ∑{e}[n+1, #]!)` -/
def P8144968123011757405.Spec : Prop :=
  ∀ n, (P8144968123011757405.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P2380934091404553682

`ceil((n+1)^∑{p}[n+1, #-n])`
-/

namespace A089026.P2380934091404553682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (n : ℤ)) : ℤ)⌉

end

end A089026.P2380934091404553682

namespace A089026

/-- `ceil((n+1)^∑{p}[n+1, #-n])` -/
def P2380934091404553682.Spec : Prop :=
  ∀ n, P2380934091404553682.a n = A089026 (n + 1)

end A089026

/-! ## A089026.P7215620117004367448

`(n+1)^∑{p}[n+1, val(#, n+1)]`
-/

namespace A089026.P7215620117004367448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1))

end

end A089026.P7215620117004367448

namespace A089026

/-- `(n+1)^∑{p}[n+1, val(#, n+1)]` -/
def P7215620117004367448.Spec : Prop :=
  ∀ n, (P7215620117004367448.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P3743983370994388497

`(n+1)^∏{p}[n+1, val(#, n+1)]`
-/

namespace A089026.P3743983370994388497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1))

end

end A089026.P3743983370994388497

namespace A089026

/-- `(n+1)^∏{p}[n+1, val(#, n+1)]` -/
def P3743983370994388497.Spec : Prop :=
  ∀ n, (P3743983370994388497.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P9263668485006411779

`(n+1)^C(n+2, ∑{d}[n+1, #])`
-/

namespace A089026.P9263668485006411779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.choose (n + 2) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A089026.P9263668485006411779

namespace A089026

/-- `(n+1)^C(n+2, ∑{d}[n+1, #])` -/
def P9263668485006411779.Spec : Prop :=
  ∀ n, (P9263668485006411779.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P18195472802351045624

`(n+1)^∑{p}[n+1, C(#, n+1)]`
-/

namespace A089026.P18195472802351045624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1))

end

end A089026.P18195472802351045624

namespace A089026

/-- `(n+1)^∑{p}[n+1, C(#, n+1)]` -/
def P18195472802351045624.Spec : Prop :=
  ∀ n, (P18195472802351045624.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P12705405642124958943

`C(n+1, ∑{p}[n+1, C(#, n+1)])`
-/

namespace A089026.P12705405642124958943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1))

end

end A089026.P12705405642124958943

namespace A089026

/-- `C(n+1, ∑{p}[n+1, C(#, n+1)])` -/
def P12705405642124958943.Spec : Prop :=
  ∀ n, (P12705405642124958943.a n : ℤ) = A089026 (n + 1)

end A089026

/-! ## A089026.P5220186099391404499

`floor(∏{p}[n+1, (n+1)/(n+2-#)])`
-/

namespace A089026.P5220186099391404499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / ((n + 2 : ℤ) - (p : ℤ) : ℚ)⌋

end

end A089026.P5220186099391404499

namespace A089026

/-- `floor(∏{p}[n+1, (n+1)/(n+2-#)])` -/
def P5220186099391404499.Spec : Prop :=
  ∀ n, P5220186099391404499.a n = A089026 (n + 1)

end A089026

/-! ## A089026.P6209213025919009204

`(n+1)^floor((n+2)/∑{d}[n+1, #])`
-/

namespace A089026.P6209213025919009204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊(n + 2 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋ : ℤ)

end

end A089026.P6209213025919009204

namespace A089026

/-- `(n+1)^floor((n+2)/∑{d}[n+1, #])` -/
def P6209213025919009204.Spec : Prop :=
  ∀ n, P6209213025919009204.a n = (A089026 (n + 1) : ℚ)

end A089026

/-! ## A089026.P3769461982547031692

`(n+1)^∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A089026.P3769461982547031692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ : ℤ)

end

end A089026.P3769461982547031692

namespace A089026

/-- `(n+1)^∑{p}[n+1, floor(#/(n+1))]` -/
def P3769461982547031692.Spec : Prop :=
  ∀ n, P3769461982547031692.a n = (A089026 (n + 1) : ℚ)

end A089026

/-!
# A089027: a(n) =1 if the prime gap A001223(n) is <=2, otherwise a(n)=n+1.

The programs for A089027, the canonical program `A089027.P2369719656046734441` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089027 has offset 1).

The definition of A089027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089027.P2369719656046734441

`(n+1)*floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1))+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089027

/-- `(n+1)*floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1))+1` -/
def P2369719656046734441.Spec : Prop :=
  ∀ n, P2369719656046734441.a n = A089027 (n + 1)

theorem P2369719656046734441.correct : P2369719656046734441.Spec := by
  intro n
  simp only [A089027, Nat.add_sub_cancel]

end A089027

/-! ## A089027.P1362217718663329384

`ceil((n+2)/A049563(n+1))`
-/

namespace A089027.P1362217718663329384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (A049563 (n + 1) : ℚ)⌉

end

end A089027.P1362217718663329384

namespace A089027

/-- `ceil((n+2)/A049563(n+1))` -/
def P1362217718663329384.Spec : Prop :=
  ∀ n, P1362217718663329384.a n = A089027 (n + 1)

end A089027

/-! ## A089027.P3778398201573743325

`(n+1)*A106002(n+1)+1`
-/

namespace A089027.P3778398201573743325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106002 (n + 1) + 1

end

end A089027.P3778398201573743325

namespace A089027

/-- `(n+1)*A106002(n+1)+1` -/
def P3778398201573743325.Spec : Prop :=
  ∀ n, P3778398201573743325.a n = A089027 (n + 1)

end A089027

/-! ## A089027.P15692975092181420020

`sqrt((n+2)^(2%Δ[A000040(n+1)]))`
-/

namespace A089027.P15692975092181420020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 2 : ℚ) ^ (Int.tmod 2 (f1 (n + 1) - f1 n) : ℤ) : ℝ)

end

end A089027.P15692975092181420020

namespace A089027

/-- `sqrt((n+2)^(2%Δ[A000040(n+1)]))` -/
def P15692975092181420020.Spec : Prop :=
  ∀ n, P15692975092181420020.a n = (A089027 (n + 1) : ℝ)

end A089027

/-! ## A089027.P2650348855711502362

`(n+1)%A061215(n+1)+1`
-/

namespace A089027.P2650348855711502362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A061215 (n + 1)) + 1

end

end A089027.P2650348855711502362

namespace A089027

/-- `(n+1)%A061215(n+1)+1` -/
def P2650348855711502362.Spec : Prop :=
  ∀ n, P2650348855711502362.a n = A089027 (n + 1)

end A089027

/-! ## A089027.P6100506283880555760

`gcd(n+2, A090405(A000040(n+1)))`
-/

namespace A089027.P6100506283880555760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A090405 (A000040 (n + 1)).toNat)

end

end A089027.P6100506283880555760

namespace A089027

/-- `gcd(n+2, A090405(A000040(n+1)))` -/
def P6100506283880555760.Spec : Prop :=
  ∀ n, (P6100506283880555760.a n : ℤ) = A089027 (n + 1)

end A089027

/-! ## A089027.P417402850779895649

`(n+2)^(A175044(n+1)-1)`
-/

namespace A089027.P417402850779895649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A175044 (n + 1) - 1 : ℤ)

end

end A089027.P417402850779895649

namespace A089027

/-- `(n+2)^(A175044(n+1)-1)` -/
def P417402850779895649.Spec : Prop :=
  ∀ n, P417402850779895649.a n = (A089027 (n + 1) : ℚ)

end A089027

/-!
# A089028: a(n) = n+1 where the Hofstadter-Conway Delta A093878(n) >0, otherwise a(n) = 1.

The programs for A089028, there is no canonical definition to state claims against.
-/

/-! ## A089028.P9638268151188310334

`(n+2)^Δ[A004001(n+1)]`
-/

namespace A089028.P9638268151188310334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A089028.P9638268151188310334

/-! ## A089028.P569282118024753273

`gcd(n+2, Δ[A080677(n+1)])`
-/

namespace A089028.P569282118024753273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A089028.P569282118024753273

/-! ## A089028.P2561858867895915689

`(n+1)*A093879(n+1)+1`
-/

namespace A089028.P2561858867895915689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093879 (n + 1) + 1

end

end A089028.P2561858867895915689

/-! ## A089028.P14652196112310260979

`(n+2)^(A267111(n+2)%2)`
-/

namespace A089028.P14652196112310260979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.tmod (A267111 (n + 2)) 2 : ℤ)

end

end A089028.P14652196112310260979

/-! ## A089028.P12848925095303217101

`(n+2)^abs(Δ[A095901(n+1)])`
-/

namespace A089028.P12848925095303217101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095901 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (|f1 (n + 1) - f1 n| : ℤ)

end

end A089028.P12848925095303217101

/-! ## A089028.P8057005942841573513

`(n+2)^abs(Δ[A283468(n+1)])`
-/

namespace A089028.P8057005942841573513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283468 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (|f1 (n + 1) - f1 n| : ℤ)

end

end A089028.P8057005942841573513

/-! ## A089028.P4223448298725356467

`ceil((n+2)^Δ[A004074(n+1)])`
-/

namespace A089028.P4223448298725356467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌉

end

end A089028.P4223448298725356467

/-! ## A089028.P10847739447874683980

`(n+2)^A000045(Δ[A004074(n+1)]+1)`
-/

namespace A089028.P10847739447874683980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A000045 (f1 (n + 1) - f1 n + 1).toNat : ℤ)

end

end A089028.P10847739447874683980

/-! ## A089028.P14466526174717304741

`(n+2)^A000045(1-Δ[A080677(n+1)])`
-/

namespace A089028.P14466526174717304741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A000045 (1 - (f1 (n + 1) - f1 n)).toNat : ℤ)

end

end A089028.P14466526174717304741

/-! ## A089028.P11865503409439869661

`(n+2)^A001222(2-Δ[A080677(n+1)])`
-/

namespace A089028.P11865503409439869661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A001222 (2 - (f1 (n + 1) - f1 n)).toNat : ℤ)

end

end A089028.P11865503409439869661

/-!
# A089029: a(n)=n if Hofstadter's Q-sequence increases A005185(n-1)->A005185(n), a(n)=1 otherwise.

The programs for A089029, there is no canonical definition to state claims against.
-/

/-! ## A089029.P13811853453193955199

`(n+2)^ceil(A081827(n+1)/A000041(n))`
-/

namespace A089029.P13811853453193955199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (⌈(A081827 (n + 1) : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A089029.P13811853453193955199

/-! ## A089029.P4417429916942154491

`(n+1)*A320815(A163932(n+1))+1`
-/

namespace A089029.P4417429916942154491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A320815 (A163932 (n + 1)).toNat + 1

end

end A089029.P4417429916942154491

/-! ## A089029.P8459613812612376544

`(n+2)^A010081(A111178(n))`
-/

namespace A089029.P8459613812612376544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A010081 (A111178 n).toNat : ℤ)

end

end A089029.P8459613812612376544

/-! ## A089029.P7505313419416228714

`(n+2)^A243778(A029297(n))`
-/

namespace A089029.P7505313419416228714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A243778 ((A029297 n).toNat + 10) : ℤ)

end

end A089029.P7505313419416228714

/-! ## A089029.P5186415138078309799

`A035159(A025143(2*(n+1))^(n+1))`
-/

namespace A089029.P5186415138078309799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035159 (A025143 (2 * (n + 1)) ^ (n + 1)).toNat

end

end A089029.P5186415138078309799

/-!
# A089033: Numbers n such that 7*n+3 is prime.

The programs for A089033, the canonical program `A089033.P1967463785301948197` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089033 has offset 1).

The definition of A089033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089033.P1967463785301948197

`A024903(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089033

/-- `A024903(n+1)-1` -/
def P1967463785301948197.Spec : Prop :=
  ∀ n, P1967463785301948197.a n = A089033 (n + 1)

theorem P1967463785301948197.correct : P1967463785301948197.Spec := by
  intro n
  simp only [A089033, Nat.add_sub_cancel]

end A089033

/-! ## A089033.P8382128460218238088

`A033868(n+1)-2`
-/

namespace A089033.P8382128460218238088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033868 (n + 1) - 2

end

end A089033.P8382128460218238088

namespace A089033

/-- `A033868(n+1)-2` -/
def P8382128460218238088.Spec : Prop :=
  ∀ n, P8382128460218238088.a n = A089033 (n + 1)

theorem P8382128460218238088.correct : P8382128460218238088.Spec := by
  intro n
  simp only [A089033, Nat.add_sub_cancel, A089033.P8382128460218238088.a, A089033.P1967463785301948197.a, A024903, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, A033868, A033868.P9616034218409755744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089033

/-! ## A089033.P12263164426652837909

`A090614(n+1)*2`
-/

namespace A089033.P12263164426652837909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1) * 2

end

end A089033.P12263164426652837909

namespace A089033

/-- `A090614(n+1)*2` -/
def P12263164426652837909.Spec : Prop :=
  ∀ n, P12263164426652837909.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P8722481013391364792

`floor(A045437(n+1)/7)`
-/

namespace A089033.P8722481013391364792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045437 (n + 1) : ℚ) / 7⌋

end

end A089033.P8722481013391364792

namespace A089033

/-- `floor(A045437(n+1)/7)` -/
def P8722481013391364792.Spec : Prop :=
  ∀ n, P8722481013391364792.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P2929672879079951318

`A090614(n+1)+A090614(-xor(n, -1))`
-/

namespace A089033.P2929672879079951318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1) + A090614 (-Int.xor (n : ℤ) (-1)).toNat

end

end A089033.P2929672879079951318

namespace A089033

/-- `A090614(n+1)+A090614(-xor(n, -1))` -/
def P2929672879079951318.Spec : Prop :=
  ∀ n, P2929672879079951318.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P2930950569299719491

`floor(A090614(n+1)+A024903(n+1)/2)`
-/

namespace A089033.P2930950569299719491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090614 (n + 1) : ℚ) + (A024903 (n + 1) : ℚ) / 2⌋

end

end A089033.P2930950569299719491

namespace A089033

/-- `floor(A090614(n+1)+A024903(n+1)/2)` -/
def P2930950569299719491.Spec : Prop :=
  ∀ n, P2930950569299719491.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P14400651722812471560

`A090614(A000027(n+1))+A090614(n+1)`
-/

namespace A089033.P14400651722812471560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (A000027 (n + 1)).toNat + A090614 (n + 1)

end

end A089033.P14400651722812471560

namespace A089033

/-- `A090614(A000027(n+1))+A090614(n+1)` -/
def P14400651722812471560.Spec : Prop :=
  ∀ n, P14400651722812471560.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P4366950408044362430

`xor(A010051(A000040(n+1)), A024903(n+1))`
-/

namespace A089033.P4366950408044362430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A000040 (n + 1)).toNat) (A024903 (n + 1))

end

end A089033.P4366950408044362430

namespace A089033

/-- `xor(A010051(A000040(n+1)), A024903(n+1))` -/
def P4366950408044362430.Spec : Prop :=
  ∀ n, P4366950408044362430.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P11922411821107018471

`A005843(A090614(n+1))`
-/

namespace A089033.P11922411821107018471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A090614 (n + 1)).toNat

end

end A089033.P11922411821107018471

namespace A089033

/-- `A005843(A090614(n+1))` -/
def P11922411821107018471.Spec : Prop :=
  ∀ n, P11922411821107018471.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P8621315250977250736

`A004273(A090614(n+1)+1)-1`
-/

namespace A089033.P8621315250977250736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090614 (n + 1) + 1).toNat - 1

end

end A089033.P8621315250977250736

namespace A089033

/-- `A004273(A090614(n+1)+1)-1` -/
def P8621315250977250736.Spec : Prop :=
  ∀ n, P8621315250977250736.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P14750272111543070613

`A046666(A033868(n+1))`
-/

namespace A089033.P14750272111543070613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A033868 (n + 1)).toNat

end

end A089033.P14750272111543070613

namespace A089033

/-- `A046666(A033868(n+1))` -/
def P14750272111543070613.Spec : Prop :=
  ∀ n, P14750272111543070613.a n = A089033 (n + 1)

end A089033

/-! ## A089033.P3328160893136602683

`eq[1, A001222(7*n+3)]`
-/

namespace A089033.P3328160893136602683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089033.P3328160893136602683

namespace A089033

/-- `eq[1, A001222(7*n+3)]` -/
def P3328160893136602683.Spec : Prop :=
  ∀ n, (P3328160893136602683.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P2258160407766393145

`eq[2, A000005(7*n+3)]`
-/

namespace A089033.P2258160407766393145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089033.P2258160407766393145

namespace A089033

/-- `eq[2, A000005(7*n+3)]` -/
def P2258160407766393145.Spec : Prop :=
  ∀ n, (P2258160407766393145.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P4684525564194057989

`lt[A001222(6*n+3+n), 2]`
-/

namespace A089033.P4684525564194057989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 3 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089033.P4684525564194057989

namespace A089033

/-- `lt[A001222(6*n+3+n), 2]` -/
def P4684525564194057989.Spec : Prop :=
  ∀ n, (P4684525564194057989.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P11294383675357703049

`lt[n+1, A020639(7*n+3)]`
-/

namespace A089033.P11294383675357703049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089033.P11294383675357703049

namespace A089033

/-- `lt[n+1, A020639(7*n+3)]` -/
def P11294383675357703049.Spec : Prop :=
  ∀ n, (P11294383675357703049.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P17421406859185181016

`lt[A000005(6*n+n+3), 3]`
-/

namespace A089033.P17421406859185181016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + (n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089033.P17421406859185181016

namespace A089033

/-- `lt[A000005(6*n+n+3), 3]` -/
def P17421406859185181016.Spec : Prop :=
  ∀ n, (P17421406859185181016.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P16579468443651251403

`lt[7*n, A000010(7*n+3)]`
-/

namespace A089033.P16579468443651251403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089033.P16579468443651251403

namespace A089033

/-- `lt[7*n, A000010(7*n+3)]` -/
def P16579468443651251403.Spec : Prop :=
  ∀ n, (P16579468443651251403.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P9051526593599089055

`2*eq[1, A101264(A016993(n))]`
-/

namespace A089033.P9051526593599089055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089033.P9051526593599089055

namespace A089033

/-- `2*eq[1, A101264(A016993(n))]` -/
def P9051526593599089055.Spec : Prop :=
  ∀ n, (P9051526593599089055.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P17740116084663946175

`comp[A154611(n+1)]`
-/

namespace A089033.P17740116084663946175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089033.P17740116084663946175

namespace A089033

/-- `comp[A154611(n+1)]` -/
def P17740116084663946175.Spec : Prop :=
  ∀ n, (P17740116084663946175.a n : ℤ) = A089033 (n + 1)

end A089033

/-! ## A089033.P9492947510330154773

`lt[∑{e}[7*n+3, #], 2]`
-/

namespace A089033.P9492947510330154773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A089033.P9492947510330154773

namespace A089033

/-- `lt[∑{e}[7*n+3, #], 2]` -/
def P9492947510330154773.Spec : Prop :=
  ∀ n, (P9492947510330154773.a n : ℤ) = A089033 (n + 1)

end A089033

/-!
# A089034: a(n) = (prime(n)^4 - 1) / 240.

The programs for A089034, the canonical program `A089034.P10565248733598604724` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089034 has offset 4).

The definition of A089034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089034.P10565248733598604724

`(A000040(n+4)^4-1)/240`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089034

/-- `(A000040(n+4)^4-1)/240` -/
def P10565248733598604724.Spec : Prop :=
  ∀ n, P10565248733598604724.a n = (A089034 (n + 4) : ℚ)

end A089034

/-! ## A089034.P926147083428431417

`A115002(A004139(n+2))`
-/

namespace A089034.P926147083428431417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115002 (A004139 (n + 2)).toNat

end

end A089034.P926147083428431417

namespace A089034

/-- `A115002(A004139(n+2))` -/
def P926147083428431417.Spec : Prop :=
  ∀ n, P926147083428431417.a n = A089034 (n + 4)

end A089034

/-! ## A089034.P442823500553261491

`A115002(A215848(n+2))`
-/

namespace A089034.P442823500553261491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115002 (A215848 (n + 2)).toNat

end

end A089034.P442823500553261491

namespace A089034

/-- `A115002(A215848(n+2))` -/
def P442823500553261491.Spec : Prop :=
  ∀ n, P442823500553261491.a n = A089034 (n + 4)

end A089034

/-! ## A089034.P14650621314894558303

`A011863(A000040(n+4))/15`
-/

namespace A089034.P14650621314894558303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011863 (A000040 (n + 4)).toNat : ℚ) / 15

end

end A089034.P14650621314894558303

namespace A089034

/-- `A011863(A000040(n+4))/15` -/
def P14650621314894558303.Spec : Prop :=
  ∀ n, P14650621314894558303.a n = (A089034 (n + 4) : ℚ)

end A089034

/-! ## A089034.P4333557791677267853

`A115002(A090417(n+1))`
-/

namespace A089034.P4333557791677267853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115002 (A090417 (n + 1)).toNat

end

end A089034.P4333557791677267853

namespace A089034

/-- `A115002(A090417(n+1))` -/
def P4333557791677267853.Spec : Prop :=
  ∀ n, P4333557791677267853.a n = A089034 (n + 4)

end A089034

/-! ## A089034.P3722306904190431303

`A011863(A090417(ϕ²-(ϕ-n)))/15`
-/

namespace A089034.P3722306904190431303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011863 (A090417 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat : ℚ) / 15

end

end A089034.P3722306904190431303

namespace A089034

/-- `A011863(A090417(ϕ²-(ϕ-n)))/15` -/
def P3722306904190431303.Spec : Prop :=
  ∀ n, P3722306904190431303.a n = (A089034 (n + 4) : ℚ)

end A089034

/-! ## A089034.P13085096850890736786

`A115002(A173135(n+2))`
-/

namespace A089034.P13085096850890736786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115002 (A173135 (n + 2)).toNat

end

end A089034.P13085096850890736786

namespace A089034

/-- `A115002(A173135(n+2))` -/
def P13085096850890736786.Spec : Prop :=
  ∀ n, P13085096850890736786.a n = A089034 (n + 4)

end A089034

/-!
# A089035: Number of n X n matrices over GF(2) with characteristic polynomial x^n - 1.

The programs for A089035, there is no canonical definition to state claims against.
-/

/-! ## A089035.P2066744291330064037

`A006125(n+1)*A243970(A006125(n+1))`
-/

namespace A089035.P2066744291330064037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A243970 (A006125 (n + 1)).toNat

end

end A089035.P2066744291330064037

/-!
# A089038: Nonnegative numbers k such that 2k+5 is prime.

The programs for A089038, the canonical program `A089038.P1158643592573954498` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089038 has offset 1).

The definition of A089038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089038.P1158643592573954498

`A161720(n+3)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089038

/-- `A161720(n+3)+1` -/
def P1158643592573954498.Spec : Prop :=
  ∀ n, P1158643592573954498.a n = A089038 (n + 1)

theorem P1158643592573954498.correct : P1158643592573954498.Spec := by
  intro n
  simp only [A089038, Nat.add_sub_cancel]

end A089038

/-! ## A089038.P13415379750150349323

`A173064(n+3)/2`
-/

namespace A089038.P13415379750150349323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173064 (n + 3) : ℚ) / 2

end

end A089038.P13415379750150349323

namespace A089038

/-- `A173064(n+3)/2` -/
def P13415379750150349323.Spec : Prop :=
  ∀ n, P13415379750150349323.a n = (A089038 (n + 1) : ℚ)

end A089038

/-! ## A089038.P8959899792028874006

`floor(A172367(n+1)/2)`
-/

namespace A089038.P8959899792028874006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172367 (n + 1) : ℚ) / 2⌋

end

end A089038.P8959899792028874006

namespace A089038

/-- `floor(A172367(n+1)/2)` -/
def P8959899792028874006.Spec : Prop :=
  ∀ n, P8959899792028874006.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P4975494076410209180

`∑[A028334(n+2)]-1`
-/

namespace A089038.P4975494076410209180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089038.P4975494076410209180

namespace A089038

/-- `∑[A028334(n+2)]-1` -/
def P4975494076410209180.Spec : Prop :=
  ∀ n, P4975494076410209180.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P12713438950438799632

`floor((A055670(n+3)-5)/2)`
-/

namespace A089038.P12713438950438799632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055670 (n + 3) - 5 : ℚ) / 2⌋

end

end A089038.P12713438950438799632

namespace A089038

/-- `floor((A055670(n+3)-5)/2)` -/
def P12713438950438799632.Spec : Prop :=
  ∀ n, P12713438950438799632.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P6488519105579236996

`∑[A028334(n+2)%A000124(n)]`
-/

namespace A089038.P6488519105579236996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028334 (n + 2)) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089038.P6488519105579236996

namespace A089038

/-- `∑[A028334(n+2)%A000124(n)]` -/
def P6488519105579236996.Spec : Prop :=
  ∀ n, P6488519105579236996.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P15475204178967207273

`A024675(n+1)-A089253(n+1)`
-/

namespace A089038.P15475204178967207273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A089253 (n + 1)

end

end A089038.P15475204178967207273

namespace A089038

/-- `A024675(n+1)-A089253(n+1)` -/
def P15475204178967207273.Spec : Prop :=
  ∀ n, P15475204178967207273.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P11728426282504205699

`A067076(n+2)-1`
-/

namespace A089038.P11728426282504205699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2) - 1

end

end A089038.P11728426282504205699

namespace A089038

/-- `A067076(n+2)-1` -/
def P11728426282504205699.Spec : Prop :=
  ∀ n, P11728426282504205699.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P12317517571552977233

`A005097(n+2)-2`
-/

namespace A089038.P12317517571552977233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - 2

end

end A089038.P12317517571552977233

namespace A089038

/-- `A005097(n+2)-2` -/
def P12317517571552977233.Spec : Prop :=
  ∀ n, P12317517571552977233.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P2008446298195429035

`A006254(n+2)-3`
-/

namespace A089038.P2008446298195429035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) - 3

end

end A089038.P2008446298195429035

namespace A089038

/-- `A006254(n+2)-3` -/
def P2008446298195429035.Spec : Prop :=
  ∀ n, P2008446298195429035.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P9602837635569691310

`A098090(n+2)-4`
-/

namespace A089038.P9602837635569691310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 2) - 4

end

end A089038.P9602837635569691310

namespace A089038

/-- `A098090(n+2)-4` -/
def P9602837635569691310.Spec : Prop :=
  ∀ n, P9602837635569691310.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P11611680346927781217

`A089253(n+2)-5`
-/

namespace A089038.P11611680346927781217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 2) - 5

end

end A089038.P11611680346927781217

namespace A089038

/-- `A089253(n+2)-5` -/
def P11611680346927781217.Spec : Prop :=
  ∀ n, P11611680346927781217.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P9495051795138988895

`A089192(n+2)-6`
-/

namespace A089038.P9495051795138988895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 2) - 6

end

end A089038.P9495051795138988895

namespace A089038

/-- `A089192(n+2)-6` -/
def P9495051795138988895.Spec : Prop :=
  ∀ n, P9495051795138988895.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P16390832409491204095

`A097069(n+2)-7`
-/

namespace A089038.P16390832409491204095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 2) - 7

end

end A089038.P16390832409491204095

namespace A089038

/-- `A097069(n+2)-7` -/
def P16390832409491204095.Spec : Prop :=
  ∀ n, P16390832409491204095.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P5055121694802499847

`A097338(n+2)-8`
-/

namespace A089038.P5055121694802499847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 2) - 8

end

end A089038.P5055121694802499847

namespace A089038

/-- `A097338(n+2)-8` -/
def P5055121694802499847.Spec : Prop :=
  ∀ n, P5055121694802499847.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P12356297414064564198

`A097363(n+2)-9`
-/

namespace A089038.P12356297414064564198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 2) - 9

end

end A089038.P12356297414064564198

namespace A089038

/-- `A097363(n+2)-9` -/
def P12356297414064564198.Spec : Prop :=
  ∀ n, P12356297414064564198.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P13492615485897082061

`A008507(n+2)+n`
-/

namespace A089038.P13492615485897082061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 2) + (n : ℤ)

end

end A089038.P13492615485897082061

namespace A089038

/-- `A008507(n+2)+n` -/
def P13492615485897082061.Spec : Prop :=
  ∀ n, P13492615485897082061.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P1468318710511442558

`A100820(n+2)+A067076(n+1)`
-/

namespace A089038.P1468318710511442558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 2) + A067076 (n + 1)

end

end A089038.P1468318710511442558

namespace A089038

/-- `A100820(n+2)+A067076(n+1)` -/
def P1468318710511442558.Spec : Prop :=
  ∀ n, P1468318710511442558.a n = A089038 (n + 1)

end A089038

/-! ## A089038.P15436387762891030953

`A102781(n+3)-2`
-/

namespace A089038.P15436387762891030953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 3) - 2

end

end A089038.P15436387762891030953

namespace A089038

/-- `A102781(n+3)-2` -/
def P15436387762891030953.Spec : Prop :=
  ∀ n, P15436387762891030953.a n = A089038 (n + 1)

end A089038

/-!
# A089039: Number of circular permutations of 2n letters that are free of jealousy.

The programs for A089039, there is no canonical definition to state claims against.
-/

/-! ## A089039.P3661758750591622118

`A000007(n)+2*A276356(n+1)`
-/

namespace A089039.P3661758750591622118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A276356 (n + 1)

end

end A089039.P3661758750591622118

/-! ## A089039.P12600832979658169613

`A276356(n+1)+A276356(A028310(n)+1)`
-/

namespace A089039.P12600832979658169613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276356 (n + 1) + A276356 (A028310 n + 1).toNat

end

end A089039.P12600832979658169613

/-!
# A089040: Number of primitive partition identities with largest part n.

The programs for A089040, there is no canonical definition to state claims against.
-/

/-! ## A089040.P4388989878057827445

`∑[floor(Δ[A296303(n+1)/2])]`
-/

namespace A089040.P4388989878057827445
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296303 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089040.P4388989878057827445

/-! ## A089040.P1448084775830602382

`∑[A004524(Δ[A296303(n+1)])]`
-/

namespace A089040.P1448084775830602382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089040.P1448084775830602382

/-! ## A089040.P18274197728130455624

`∑[A004526(Δ[A296303(n+1)])]`
-/

namespace A089040.P18274197728130455624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089040.P18274197728130455624

/-! ## A089040.P6491539181988312480

`∑[A028242(Δ[A296303(n+1)])]`
-/

namespace A089040.P6491539181988312480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089040.P6491539181988312480

/-! ## A089040.P156465716740213884

`∑[A057979(Δ[A296303(n+1)])]`
-/

namespace A089040.P156465716740213884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089040.P156465716740213884

/-!
# A089041: Inverse binomial transform of squares of factorial numbers.

The programs for A089041, the canonical program `A089041.P18300968193438662870` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089041 has offset 0).

The definition of A089041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089041.P18300968193438662870

`n²*a(n-1)+n*(n-1)*a(n-2)+(-1)^n` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089041

/-- `n²*a(n-1)+n*(n-1)*a(n-2)+(-1)^n` -/
def P18300968193438662870.Spec : Prop :=
  ∀ n, P18300968193438662870.a n = A089041 n

theorem P18300968193438662870.correct : P18300968193438662870.Spec := by
  intro n
  simp only [A089041]

end A089041

/-! ## A089041.P7859123559917796285

`(n-1)*(n+1)*a(n-1)+(n-1)*(2*n-1)*a(n-2)+(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A089041.P7859123559917796285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  ((n : ℤ) - 1) * ((n + 1 : ℤ) * a (n - 1)) + ((n : ℤ) - 1) * (((2 * n : ℤ) - 1) * a (n - 2)) + ((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3))

end

end A089041.P7859123559917796285

namespace A089041

/-- `(n-1)*(n+1)*a(n-1)+(n-1)*(2*n-1)*a(n-2)+(n-2)*(n-1)*a(n-3)` -/
def P7859123559917796285.Spec : Prop :=
  ∀ n, P7859123559917796285.a n = A089041 n

end A089041

/-! ## A089041.P13303539541013383115

`A226780(∑[n])`
-/

namespace A089041.P13303539541013383115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089041.P13303539541013383115

namespace A089041

/-- `A226780(∑[n])` -/
def P13303539541013383115.Spec : Prop :=
  ∀ n, P13303539541013383115.a n = A089041 n

end A089041

/-! ## A089041.P3709848056276026277

`lcm(A033999(n), A226780(A000217(n)))`
-/

namespace A089041.P3709848056276026277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226780 (A000217 n).toNat)

end

end A089041.P3709848056276026277

namespace A089041

/-- `lcm(A033999(n), A226780(A000217(n)))` -/
def P3709848056276026277.Spec : Prop :=
  ∀ n, (P3709848056276026277.a n : ℤ) = A089041 n

end A089041

/-! ## A089041.P10685771542006106301

`A226780(A000217(n))%A046662(n+1)`
-/

namespace A089041.P10685771542006106301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226780 (A000217 n).toNat) (A046662 (n + 1))

end

end A089041.P10685771542006106301

namespace A089041

/-- `A226780(A000217(n))%A046662(n+1)` -/
def P10685771542006106301.Spec : Prop :=
  ∀ n, P10685771542006106301.a n = A089041 n

end A089041

/-!
# A089042: Composite numbers such that all divisors >1 have the same number of 1's in binary representation.

The programs for A089042, there is no canonical definition to state claims against.
-/

/-! ## A089042.P16726199699451656272

`∩[A080025(n+1), A346041(n+1)]`
-/

namespace A089042.P16726199699451656272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089042.P16726199699451656272

/-! ## A089042.P4125888374313555919

`record[A321366(A100781(n+2))]`
-/

namespace A089042.P4125888374313555919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (A100781 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089042.P4125888374313555919

/-! ## A089042.P1166667624709649606

`filter[A374664(n+2), A268340(#)]`
-/

namespace A089042.P1166667624709649606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A268340 (f1 j).toNat = 1) n)

end

end A089042.P1166667624709649606

/-! ## A089042.P15127535442448118103

`∩[A025475(n+1), A374664(n+1)]`
-/

namespace A089042.P15127535442448118103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089042.P15127535442448118103

/-!
# A089043: a(n) = n!^2 + (-1)^n.

The programs for A089043, the canonical program `A089043.P12109726793413212987` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089043 has offset 1).

The definition of A089043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!²+(-1)^(n+1)` (program `A089043.P12109726793413212987`, by `A089043.P12109726793413212987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089043.P12109726793413212987

`(n+1)!²+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089043

/-- `(n+1)!²+(-1)^(n+1)` -/
def P12109726793413212987.Spec : Prop :=
  ∀ n, P12109726793413212987.a n = A089043 (n + 1)

theorem P12109726793413212987.correct : P12109726793413212987.Spec := by
  intro n
  simp only [A089043, Nat.add_sub_cancel]

end A089043

/-! ## A089043.P3927814924001186031

`(n+1)²*(a(n-1)-(-1)^n)+(-1)^(n+1)` with `a(0)=0`
-/

namespace A089043.P3927814924001186031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) * (a (n - 1) - (-1) ^ n) + (-1) ^ (n + 1)

end

end A089043.P3927814924001186031

namespace A089043

/-- `(n+1)²*(a(n-1)-(-1)^n)+(-1)^(n+1)` -/
def P3927814924001186031.Spec : Prop :=
  ∀ n, P3927814924001186031.a n = A089043 (n + 1)

end A089043

/-! ## A089043.P6413959076943765229

`abs(∏[-(n+1)²]+1)`
-/

namespace A089043.P6413959076943765229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A089043.P6413959076943765229

namespace A089043

/-- `abs(∏[-(n+1)²]+1)` -/
def P6413959076943765229.Spec : Prop :=
  ∀ n, P6413959076943765229.a n = A089043 (n + 1)

end A089043

/-! ## A089043.P17745433122254240088

`∏[(n+1)²]+n-xor(1, n)`
-/

namespace A089043.P17745433122254240088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.xor 1 n : ℤ))

end

end A089043.P17745433122254240088

namespace A089043

/-- `∏[(n+1)²]+n-xor(1, n)` -/
def P17745433122254240088.Spec : Prop :=
  ∀ n, P17745433122254240088.a n = A089043 (n + 1)

end A089043

/-! ## A089043.P17580733843978980627

`A000142(n+1)²-(-1)^n`
-/

namespace A089043.P17580733843978980627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 - (-1) ^ n

end

end A089043.P17580733843978980627

namespace A089043

/-- `A000142(n+1)²-(-1)^n` -/
def P17580733843978980627.Spec : Prop :=
  ∀ n, P17580733843978980627.a n = A089043 (n + 1)

theorem P17580733843978980627.correct : P17580733843978980627.Spec := by
  intro n
  simp only [A089043, Nat.add_sub_cancel, A089043.P17580733843978980627.a, A089043.P12109726793413212987.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089043

/-!
# A089045: a(n) = a(n-1) + (-1)^floor(n/2)*a(floor(n/2)) with a(1) = 1.

The programs for A089045, the canonical program `A089045.P11185647529354523946` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089045 has offset 1).

The definition of A089045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089045.P11185647529354523946

`a(n-1)+(-1)^floor((n+1)/2)*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089045

/-- `a(n-1)+(-1)^floor((n+1)/2)*a(floor((n+1)/2)-1)` -/
def P11185647529354523946.Spec : Prop :=
  ∀ n, P11185647529354523946.a n = (A089045 (n + 1) : ℚ)

end A089045

/-! ## A089045.P17508979358098153397

`xor(n, n+1)%3*∏[(-1)^val(n+1, 2)]`
-/

namespace A089045.P17508979358098153397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A089045.P17508979358098153397

namespace A089045

/-- `xor(n, n+1)%3*∏[(-1)^val(n+1, 2)]` -/
def P17508979358098153397.Spec : Prop :=
  ∀ n, P17508979358098153397.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P8622504374482449038

`abs(Δ[Δ[A228495(n)]])-1`
-/

namespace A089045.P8622504374482449038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A089045.P8622504374482449038

namespace A089045

/-- `abs(Δ[Δ[A228495(n)]])-1` -/
def P8622504374482449038.Spec : Prop :=
  ∀ n, P8622504374482449038.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P16133290840396258518

`abs(Δ[Δ[A254377(n)]])-1`
-/

namespace A089045.P16133290840396258518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A089045.P16133290840396258518

namespace A089045

/-- `abs(Δ[Δ[A254377(n)]])-1` -/
def P16133290840396258518.Spec : Prop :=
  ∀ n, P16133290840396258518.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P8071012619417334400

`(-1)^n*Δ[A001285(n)]`
-/

namespace A089045.P8071012619417334400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A089045.P8071012619417334400

namespace A089045

/-- `(-1)^n*Δ[A001285(n)]` -/
def P8071012619417334400.Spec : Prop :=
  ∀ n, P8071012619417334400.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P16258151931524557373

`(-1)^n*Δ[A010060(n)]`
-/

namespace A089045.P16258151931524557373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A089045.P16258151931524557373

namespace A089045

/-- `(-1)^n*Δ[A010060(n)]` -/
def P16258151931524557373.Spec : Prop :=
  ∀ n, P16258151931524557373.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P4374098387408528710

`(-1)^n*Δ[A277822(2*n+1)]`
-/

namespace A089045.P4374098387408528710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A089045.P4374098387408528710

namespace A089045

/-- `(-1)^n*Δ[A277822(2*n+1)]` -/
def P4374098387408528710.Spec : Prop :=
  ∀ n, P4374098387408528710.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P402431359065398882

`∏[(-1)^val(n+1, 2)]*A035263(n+1)`
-/

namespace A089045.P402431359065398882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A035263 (n + 1)

end

end A089045.P402431359065398882

namespace A089045

/-- `∏[(-1)^val(n+1, 2)]*A035263(n+1)` -/
def P402431359065398882.Spec : Prop :=
  ∀ n, P402431359065398882.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P7893492953721929500

`A091338(A361145(n+1))`
-/

namespace A089045.P7893492953721929500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (A361145 (n + 1)).toNat

end

end A089045.P7893492953721929500

namespace A089045

/-- `A091338(A361145(n+1))` -/
def P7893492953721929500.Spec : Prop :=
  ∀ n, P7893492953721929500.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P7807910733561054182

`A046978(A338276(n+2))`
-/

namespace A089045.P7807910733561054182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A338276 (n + 2)).toNat

end

end A089045.P7807910733561054182

namespace A089045

/-- `A046978(A338276(n+2))` -/
def P7807910733561054182.Spec : Prop :=
  ∀ n, P7807910733561054182.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P12849824277264434549

`Δ[A010060(n)]*A033999(n)`
-/

namespace A089045.P12849824277264434549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A089045.P12849824277264434549

namespace A089045

/-- `Δ[A010060(n)]*A033999(n)` -/
def P12849824277264434549.Spec : Prop :=
  ∀ n, P12849824277264434549.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P18021191527588408326

`A179020(n+1)-A095190(n)`
-/

namespace A089045.P18021191527588408326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 (n + 1) - A095190 n

end

end A089045.P18021191527588408326

namespace A089045

/-- `A179020(n+1)-A095190(n)` -/
def P18021191527588408326.Spec : Prop :=
  ∀ n, P18021191527588408326.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P1658438608175858585

`A029883(n+1)*A033999(n)`
-/

namespace A089045.P1658438608175858585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) * A033999 n

end

end A089045.P1658438608175858585

namespace A089045

/-- `A029883(n+1)*A033999(n)` -/
def P1658438608175858585.Spec : Prop :=
  ∀ n, P1658438608175858585.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P16636422902842222517

`A029883(A091949(2*n)+n)`
-/

namespace A089045.P16636422902842222517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A091949 (2 * n) + (n : ℤ)).toNat

end

end A089045.P16636422902842222517

namespace A089045

/-- `A029883(A091949(2*n)+n)` -/
def P16636422902842222517.Spec : Prop :=
  ∀ n, P16636422902842222517.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P5075435714014495916

`(A096268(n)-1)^∑[A096268(n)]`
-/

namespace A089045.P5075435714014495916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096268 n - 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089045.P5075435714014495916

namespace A089045

/-- `(A096268(n)-1)^∑[A096268(n)]` -/
def P5075435714014495916.Spec : Prop :=
  ∀ n, P5075435714014495916.a n = (A089045 (n + 1) : ℚ)

end A089045

/-! ## A089045.P18431851931054960972

`A029883(A328981(n+1)+1+n)`
-/

namespace A089045.P18431851931054960972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A328981 (n + 1) + 1 + (n : ℤ)).toNat

end

end A089045.P18431851931054960972

namespace A089045

/-- `A029883(A328981(n+1)+1+n)` -/
def P18431851931054960972.Spec : Prop :=
  ∀ n, P18431851931054960972.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P9429416474756570748

`A029883(n+1)*A105931(n+1)`
-/

namespace A089045.P9429416474756570748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) * A105931 (n + 1)

end

end A089045.P9429416474756570748

namespace A089045

/-- `A029883(n+1)*A105931(n+1)` -/
def P9429416474756570748.Spec : Prop :=
  ∀ n, P9429416474756570748.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P4712333802899577117

`(1-A191254(n+1))*A106400(n)`
-/

namespace A089045.P4712333802899577117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A191254 (n + 1)) * A106400 n

end

end A089045.P4712333802899577117

namespace A089045

/-- `(1-A191254(n+1))*A106400(n)` -/
def P4712333802899577117.Spec : Prop :=
  ∀ n, P4712333802899577117.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P6074364752268816117

`A007413(n+1)-2*A076826(n)`
-/

namespace A089045.P6074364752268816117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1) - 2 * A076826 n

end

end A089045.P6074364752268816117

namespace A089045

/-- `A007413(n+1)-2*A076826(n)` -/
def P6074364752268816117.Spec : Prop :=
  ∀ n, P6074364752268816117.a n = A089045 (n + 1)

end A089045

/-! ## A089045.P5370223426537606465

`(1-A191254(n+1))*A029883(n+1)`
-/

namespace A089045.P5370223426537606465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A191254 (n + 1)) * A029883 (n + 1)

end

end A089045.P5370223426537606465

namespace A089045

/-- `(1-A191254(n+1))*A029883(n+1)` -/
def P5370223426537606465.Spec : Prop :=
  ∀ n, P5370223426537606465.a n = A089045 (n + 1)

end A089045

/-!
# A089047: Edge length of largest square dissectible into up to n squares in Mrs. Perkins's quilt problem.

The programs for A089047, there is no canonical definition to state claims against.
-/

/-! ## A089047.P4528257685179155073

`A334965(A000009(n*A043568(n)))`
-/

namespace A089047.P4528257685179155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (A000009 ((n : ℤ) * A043568 n).toNat).toNat

end

end A089047.P4528257685179155073

/-! ## A089047.P2182847177597290470

`A334965(A000009(n)^A043568(n))`
-/

namespace A089047.P2182847177597290470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (SequenceMachineLib.roundAway ((A000009 n : ℚ) ^ (A043568 n : ℤ))).toNat

end

end A089047.P2182847177597290470

/-! ## A089047.P540634139040047062

`A334965(C(A000009(n), A043568(n)))`
-/

namespace A089047.P540634139040047062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (Nat.choose (A000009 n).toNat (A043568 n).toNat)

end

end A089047.P540634139040047062

/-! ## A089047.P13974121736607530324

`A334965(A000009(n)%A050248(n+1))`
-/

namespace A089047.P13974121736607530324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (Int.tmod (A000009 n) (A050248 (n + 1))).toNat

end

end A089047.P13974121736607530324

/-! ## A089047.P2607933788333082187

`A334965(A000009(n))%A325994(3*n+4)`
-/

namespace A089047.P2607933788333082187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334965 (A000009 n).toNat) (A325994 (3 * n + 4))

end

end A089047.P2607933788333082187

/-!
# A089048: Number of ways of writing n as a sum of exactly 3 powers of 2.

The programs for A089048, the canonical program `A089048.P16381130476308871988` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089048 has offset 0).

The definition of A089048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089048.P16381130476308871988

`A151774(n)+char[A151757(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089048

/-- `A151774(n)+char[A151757(n+1)]` -/
def P16381130476308871988.Spec : Prop :=
  ∀ n, P16381130476308871988.a n = A089048 n

theorem P16381130476308871988.correct : P16381130476308871988.Spec := by
  intro n
  simp only [A089048]

end A089048

/-! ## A089048.P10039686018361970126

`A089049(2*n+1)-char[A000051(n)]`
-/

namespace A089048.P10039686018361970126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089049 (2 * n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A089048.P10039686018361970126

namespace A089048

/-- `A089049(2*n+1)-char[A000051(n)]` -/
def P10039686018361970126.Spec : Prop :=
  ∀ n, P10039686018361970126.a n = A089048 n

end A089048

/-! ## A089048.P13036555595102802228

`A089050(4*n+2)-A089050(4*n+1)`
-/

namespace A089048.P13036555595102802228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (4 * n + 2) - A089050 (4 * n + 1)

end

end A089048.P13036555595102802228

namespace A089048

/-- `A089050(4*n+2)-A089050(4*n+1)` -/
def P13036555595102802228.Spec : Prop :=
  ∀ n, P13036555595102802228.a n = A089048 n

end A089048

/-! ## A089048.P17947152351898338769

`A089051(2*n+1)+A089051(4*n+3)-A089051(4*n+2)`
-/

namespace A089048.P17947152351898338769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (2 * n + 1) + (A089051 (4 * n + 3) - A089051 (4 * n + 2))

end

end A089048.P17947152351898338769

namespace A089048

/-- `A089051(2*n+1)+A089051(4*n+3)-A089051(4*n+2)` -/
def P17947152351898338769.Spec : Prop :=
  ∀ n, P17947152351898338769.a n = A089048 n

end A089048

/-! ## A089048.P13566659338182008748

`A089050(4*n+2)-A089049(4*n)`
-/

namespace A089048.P13566659338182008748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (4 * n + 2) - A089049 (4 * n)

end

end A089048.P13566659338182008748

namespace A089048

/-- `A089050(4*n+2)-A089049(4*n)` -/
def P13566659338182008748.Spec : Prop :=
  ∀ n, P13566659338182008748.a n = A089048 n

end A089048

/-! ## A089048.P4730162518847802657

`A089051(4*n+3)-A089049(4*n)`
-/

namespace A089048.P4730162518847802657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (4 * n + 3) - A089049 (4 * n)

end

end A089048.P4730162518847802657

namespace A089048

/-- `A089051(4*n+3)-A089049(4*n)` -/
def P4730162518847802657.Spec : Prop :=
  ∀ n, P4730162518847802657.a n = A089048 n

end A089048

/-! ## A089048.P9290448357567412875

`A089052(∑[n]+3)-char[1]`
-/

namespace A089048.P9290448357567412875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A089048.P9290448357567412875

namespace A089048

/-- `A089052(∑[n]+3)-char[1]` -/
def P9290448357567412875.Spec : Prop :=
  ∀ n, P9290448357567412875.a n = A089048 n

end A089048

/-! ## A089048.P2237144353850170913

`A089052(∑[A130716(n)+n])`
-/

namespace A089048.P2237144353850170913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089048.P2237144353850170913

namespace A089048

/-- `A089052(∑[A130716(n)+n])` -/
def P2237144353850170913.Spec : Prop :=
  ∀ n, P2237144353850170913.a n = A089048 n

end A089048

/-! ## A089048.P6751831297521153483

`A089052(A152950(n+1)-char[1])`
-/

namespace A089048.P6751831297521153483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A152950 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A089048.P6751831297521153483

namespace A089048

/-- `A089052(A152950(n+1)-char[1])` -/
def P6751831297521153483.Spec : Prop :=
  ∀ n, P6751831297521153483.a n = A089048 n

end A089048

/-! ## A089048.P16677014079486665733

`A089052(∑[n]+3)%A000041(n)`
-/

namespace A089048.P16677014079486665733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A000041 n)

end

end A089048.P16677014079486665733

namespace A089048

/-- `A089052(∑[n]+3)%A000041(n)` -/
def P16677014079486665733.Spec : Prop :=
  ∀ n, P16677014079486665733.a n = A089048 n

end A089048

/-! ## A089048.P6689952830781375719

`A089052(A157928(n)+A133263(n))`
-/

namespace A089048.P6689952830781375719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A157928 n + A133263 n).toNat

end

end A089048.P6689952830781375719

namespace A089048

/-- `A089052(A157928(n)+A133263(n))` -/
def P6689952830781375719.Spec : Prop :=
  ∀ n, P6689952830781375719.a n = A089048 n

end A089048

/-! ## A089048.P6911887997625017711

`A089052(A034856(n+1)-A004275(n))`
-/

namespace A089048.P6911887997625017711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A034856 (n + 1) - A004275 n).toNat

end

end A089048.P6911887997625017711

namespace A089048

/-- `A089052(A034856(n+1)-A004275(n))` -/
def P6911887997625017711.Spec : Prop :=
  ∀ n, P6911887997625017711.a n = A089048 n

end A089048

/-! ## A089048.P3748657975898543864

`A089052(A107286(2*n)+A000124(n))`
-/

namespace A089048.P3748657975898543864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A107286 (2 * n) + A000124 n).toNat

end

end A089048.P3748657975898543864

namespace A089048

/-- `A089052(A107286(2*n)+A000124(n))` -/
def P3748657975898543864.Spec : Prop :=
  ∀ n, P3748657975898543864.a n = A089048 n

end A089048

/-! ## A089048.P8817607409746587892

`A089052(A152950(n+1))%A004207(n)`
-/

namespace A089048.P8817607409746587892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A152950 (n + 1)).toNat) (A004207 n)

end

end A089048.P8817607409746587892

namespace A089048

/-- `A089052(A152950(n+1))%A004207(n)` -/
def P8817607409746587892.Spec : Prop :=
  ∀ n, P8817607409746587892.a n = A089048 n

end A089048

/-!
# A089049: Number of ways of writing n as a sum of exactly 4 powers of 2.

The programs for A089049, there is no canonical definition to state claims against.
-/

/-! ## A089049.P283322994903264019

`A089050(n+1)-A089050(∑[n]%(n+1))`
-/

namespace A089049.P283322994903264019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (n + 1) - A089050 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A089049.P283322994903264019

/-! ## A089049.P8899546644702161024

`A089050(n+1)-A089050(A142150(n+1))`
-/

namespace A089049.P8899546644702161024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (n + 1) - A089050 (A142150 (n + 1)).toNat

end

end A089049.P8899546644702161024

/-! ## A089049.P1213724470493760926

`A089052(A077169(n+1)-1)`
-/

namespace A089049.P1213724470493760926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A077169 (n + 1) - 1).toNat

end

end A089049.P1213724470493760926

/-! ## A089049.P1079489795443312647

`A089052(A297217(n+1)+∑[n])`
-/

namespace A089049.P1079489795443312647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A297217 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A089049.P1079489795443312647

/-! ## A089049.P3038217635797592906

`A089052(A000124(n)+3)%or(1, n)`
-/

namespace A089049.P3038217635797592906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A000124 n + 3).toNat) (Nat.lor 1 n : ℤ)

end

end A089049.P3038217635797592906

/-! ## A089049.P2467699960518840654

`A089052(∑[char[1]+n]+3)%A000041(n)`
-/

namespace A089049.P2467699960518840654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A000041 n)

end

end A089049.P2467699960518840654

/-! ## A089049.P10713622161871568651

`A089052(A152950(n+1)-A134824(n))`
-/

namespace A089049.P10713622161871568651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A152950 (n + 1) - A134824 n).toNat

end

end A089049.P10713622161871568651

/-! ## A089049.P2134309122568976604

`A089052(A133263(n)+2*A157928(n))`
-/

namespace A089049.P2134309122568976604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A133263 n + 2 * A157928 n).toNat

end

end A089049.P2134309122568976604

/-! ## A089049.P1401502696070062828

`A089052(A145018(n+1))%A006950(n)`
-/

namespace A089049.P1401502696070062828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A145018 (n + 1)).toNat) (A006950 n)

end

end A089049.P1401502696070062828

/-! ## A089049.P6772259217535643027

`A089052(A000124(n)+3)%A001399(n)`
-/

namespace A089049.P6772259217535643027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A000124 n + 3).toNat) (A001399 n)

end

end A089049.P6772259217535643027

/-! ## A089049.P17782586900590143440

`A089052(A157928(n)+A157928(n)+A133263(n))`
-/

namespace A089049.P17782586900590143440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A157928 n + (A157928 n + A133263 n)).toNat

end

end A089049.P17782586900590143440

/-!
# A089050: Number of ways of writing n as a sum of exactly 5 powers of 2.

The programs for A089050, there is no canonical definition to state claims against.
-/

/-! ## A089050.P6753426139745498060

`A089051(n+1)-A089051(∑[n]%(n+1))`
-/

namespace A089050.P6753426139745498060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (n + 1) - A089051 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A089050.P6753426139745498060

/-! ## A089050.P10674916719922857049

`A089051(2*n+1)-A089049(comp[2*(n+1)])`
-/

namespace A089050.P10674916719922857049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (2 * n + 1) - A089049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A089050.P10674916719922857049

/-! ## A089050.P13151403446877783602

`A089051(n+1)-A089051(A142150(n+1))`
-/

namespace A089050.P13151403446877783602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (n + 1) - A089051 (A142150 (n + 1)).toNat

end

end A089050.P13151403446877783602

/-! ## A089050.P2544996567103401867

`A089052(A077169(n)+n)`
-/

namespace A089050.P2544996567103401867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A077169 n + (n : ℤ)).toNat

end

end A089050.P2544996567103401867

/-! ## A089050.P9493721540904238744

`A089052(A034856(n+1)-A004271(n))`
-/

namespace A089050.P9493721540904238744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A034856 (n + 1) - A004271 n).toNat

end

end A089050.P9493721540904238744

/-! ## A089050.P15680318056844969375

`A347660(n)-(A089049(A047608(n+1))+A089049(n))`
-/

namespace A089050.P15680318056844969375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n - (A089049 (A047608 (n + 1)).toNat + A089049 n)

end

end A089050.P15680318056844969375

/-! ## A089050.P7801627866666344015

`A347660(n)-(A347658(n)+A089049(n))`
-/

namespace A089050.P7801627866666344015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n - (A347658 n + A089049 n)

end

end A089050.P7801627866666344015

/-! ## A089050.P17686324901208414878

`A347660(n)-A347659(n)`
-/

namespace A089050.P17686324901208414878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347660 n - A347659 n

end

end A089050.P17686324901208414878

/-! ## A089050.P2892786083210575005

`A347661(n)-(A347659(n)+A089051(n))`
-/

namespace A089050.P2892786083210575005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - (A347659 n + A089051 n)

end

end A089050.P2892786083210575005

/-!
# A089051: Number of ways of writing n as a sum of exactly 6 powers of 2.

The programs for A089051, there is no canonical definition to state claims against.
-/

/-! ## A089051.P13784030899801652483

`A347661(n)-A347660(n)`
-/

namespace A089051.P13784030899801652483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - A347660 n

end

end A089051.P13784030899801652483

/-! ## A089051.P15231082118021054053

`A347661(n)-(A347659(n)+A089050(n))`
-/

namespace A089051.P15231082118021054053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - (A347659 n + A089050 n)

end

end A089051.P15231082118021054053

/-! ## A089051.P818911368678172298

`A347661(n)-(A347659(n)+A089052(A077169(n)+n))`
-/

namespace A089051.P818911368678172298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - (A347659 n + A089052 (A077169 n + (n : ℤ)).toNat)

end

end A089051.P818911368678172298

/-! ## A089051.P17713377089905829214

`A347661(n)-(A089049(n)+A347658(n)+A089050(n))`
-/

namespace A089051.P17713377089905829214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 n - (A089049 n + (A347658 n + A089050 n))

end

end A089051.P17713377089905829214

/-!
# A089052: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= n) = number of partitions of n into exactly k powers of 2.

The programs for A089052, there is no canonical definition to state claims against.
-/

/-! ## A089052.P11173359407893723828

`and(A006257(A194938(n+1)), A015716(n+1))`
-/

namespace A089052.P11173359407893723828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006257 (A194938 (n + 1)).toNat) (A015716 (n + 1))

end

end A089052.P11173359407893723828

/-! ## A089052.P17512102147346683855

`A176724(A002262(n)+A245300(n)+1)`
-/

namespace A089052.P17512102147346683855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176724 (A002262 n + (A245300 n + 1)).toNat

end

end A089052.P17512102147346683855

/-! ## A089052.P13021021144755414449

`A176724(A245300(n)+A002260(n+1))`
-/

namespace A089052.P13021021144755414449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176724 (A245300 n + A002260 (n + 1)).toNat

end

end A089052.P13021021144755414449

/-! ## A089052.P17211687500470389126

`and(A011585(A094344(n)), A015716(n+1))`
-/

namespace A089052.P17211687500470389126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011585 (A094344 n).toNat) (A015716 (n + 1))

end

end A089052.P17211687500470389126

/-! ## A089052.P11092690209968889516

`A026836(n+1)^A058710(A007947(n+1))`
-/

namespace A089052.P11092690209968889516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026836 (n + 1) : ℚ) ^ (A058710 (A007947 (n + 1)).toNat : ℤ)

end

end A089052.P11092690209968889516

/-!
# A089053: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = number of partitions of n into exactly k powers of 2.

The programs for A089053, there is no canonical definition to state claims against.
-/

/-! ## A089053.P4456707603446714400

`A089052(comp[∑[n]])`
-/

namespace A089053.P4456707603446714400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A089053.P4456707603446714400

/-! ## A089053.P1833005497897138976

`dr(A089052(comp[C(n, 2)]))`
-/

namespace A089053.P1833005497897138976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A089053.P1833005497897138976

/-! ## A089053.P14376555748321401806

`A089052(comp[C(n+1, 2)])%6`
-/

namespace A089053.P14376555748321401806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 6

end

end A089053.P14376555748321401806

/-! ## A089053.P13360646346820584428

`dr(A089052(∑[A035214(n)]))`
-/

namespace A089053.P13360646346820584428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A089053.P13360646346820584428

/-! ## A089053.P5265060905222486273

`dr(A089052(comp[A000217(n)]))`
-/

namespace A089053.P5265060905222486273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A089053.P5265060905222486273

/-! ## A089053.P8592630592712054661

`dr(A089052(comp[A057944(n)]))`
-/

namespace A089053.P8592630592712054661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A089053.P8592630592712054661

/-! ## A089053.P7358943802911277831

`dr(A089052(comp[A161680(n)]))`
-/

namespace A089053.P7358943802911277831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A089053.P7358943802911277831

/-! ## A089053.P11045076445903620531

`dr(A089052(A014132(n+1)))`
-/

namespace A089053.P11045076445903620531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (A014132 (n + 1)).toNat)

end

end A089053.P11045076445903620531

/-! ## A089053.P11244758375178554871

`dr(A089052(A007401(n+1)+1))`
-/

namespace A089053.P11244758375178554871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089052 (A007401 (n + 1) + 1).toNat)

end

end A089053.P11244758375178554871

/-! ## A089053.P11584781798265865501

`gcd(A000038(n), A089052(A014132(n+1)))`
-/

namespace A089053.P11584781798265865501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A089052 (A014132 (n + 1)).toNat)

end

end A089053.P11584781798265865501

/-! ## A089053.P852147983869599434

`and(A089052(A014132(n+1)), A183010(n))`
-/

namespace A089053.P852147983869599434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089052 (A014132 (n + 1)).toNat) (A183010 n)

end

end A089053.P852147983869599434

/-! ## A089053.P15941768815670244691

`or(A000007(n), A089052(A014132(n+1)))`
-/

namespace A089053.P15941768815670244691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A089052 (A014132 (n + 1)).toNat)

end

end A089053.P15941768815670244691

/-! ## A089053.P3761928753298748949

`A159075(n+2)+A089052(A014132(n+1))`
-/

namespace A089053.P3761928753298748949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 2) + A089052 (A014132 (n + 1)).toNat

end

end A089053.P3761928753298748949

/-! ## A089053.P17779371154949953630

`A089052(A014132(n+1))%A000040(n+2)`
-/

namespace A089053.P17779371154949953630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A014132 (n + 1)).toNat) (A000040 (n + 2))

end

end A089053.P17779371154949953630

/-! ## A089053.P14131952790618235402

`A007318(C(2, n))*A089052(A014132(n+1))`
-/

namespace A089053.P14131952790618235402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A089052 (A014132 (n + 1)).toNat

end

end A089053.P14131952790618235402

/-! ## A089053.P8848366600394307939

`A001511(or(3, n))*A089052(A007401(n+1)+1)`
-/

namespace A089053.P8848366600394307939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lor 3 n) * A089052 (A007401 (n + 1) + 1).toNat

end

end A089053.P8848366600394307939

/-! ## A089053.P4565174278032726679

`A014963(20*(n+1))*A089052(A007401(n+1)+1)`
-/

namespace A089053.P4565174278032726679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A089052 (A007401 (n + 1) + 1).toNat

end

end A089053.P4565174278032726679

/-! ## A089053.P4211927143778770970

`A007318(A089052(n))*A089052(A014132(n+1))`
-/

namespace A089053.P4211927143778770970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A089052 n).toNat * A089052 (A014132 (n + 1)).toNat

end

end A089053.P4211927143778770970

/-!
# A089054: Solution to the non-squashing boxes problem (version 1).

The programs for A089054, the canonical program `A089054.P672923659148027208` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089054 has offset 0).

The definition of A089054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089054.P672923659148027208

`(A088575(2*n+1)-n+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089054

/-- `(A088575(2*n+1)-n+1)/2` -/
def P672923659148027208.Spec : Prop :=
  ∀ n, P672923659148027208.a n = (A089054 n : ℚ)

end A089054

/-! ## A089054.P4431289682638475467

`∑[∑[a(n-2)+a(floor(n/2))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A089054.P4431289682638475467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f2 =>
  f2 (n - 2) + f2 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089054.P4431289682638475467

namespace A089054

/-- `∑[∑[a(n-2)+a(floor(n/2))]]` -/
def P4431289682638475467.Spec : Prop :=
  ∀ n, (P4431289682638475467.a n : ℤ) = A089054 n

end A089054

/-! ## A089054.P11108759340351806461

`∑[A088575(n)]`
-/

namespace A089054.P11108759340351806461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089054.P11108759340351806461

namespace A089054

/-- `∑[A088575(n)]` -/
def P11108759340351806461.Spec : Prop :=
  ∀ n, P11108759340351806461.a n = A089054 n

end A089054

/-! ## A089054.P7611047510488967031

`∑[A088585(n)]-n`
-/

namespace A089054.P7611047510488967031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A089054.P7611047510488967031

namespace A089054

/-- `∑[A088585(n)]-n` -/
def P7611047510488967031.Spec : Prop :=
  ∀ n, P7611047510488967031.a n = A089054 n

end A089054

/-! ## A089054.P5696041803248692965

`∑[∑[A242634(n)]]+1`
-/

namespace A089054.P5696041803248692965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089054.P5696041803248692965

namespace A089054

/-- `∑[∑[A242634(n)]]+1` -/
def P5696041803248692965.Spec : Prop :=
  ∀ n, P5696041803248692965.a n = A089054 n

end A089054

/-! ## A089054.P7470852001487684637

`∑[A088567(2*n)]`
-/

namespace A089054.P7470852001487684637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089054.P7470852001487684637

namespace A089054

/-- `∑[A088567(2*n)]` -/
def P7470852001487684637.Spec : Prop :=
  ∀ n, P7470852001487684637.a n = A089054 n

end A089054

/-!
# A089055: Solution to the non-squashing boxes problem (version 2).

The programs for A089055, there is no canonical definition to state claims against.
-/

/-! ## A089055.P4844308922968035116

`2*∑[∑[a(n-2)+a(floor(n/2))]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A089055.P4844308922968035116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n f2 =>
  f2 (n - 2) + f2 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089055.P4844308922968035116

/-! ## A089055.P8109142559540617982

`2*A089054(n)`
-/

namespace A089055.P8109142559540617982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089054 n

end

end A089055.P8109142559540617982

/-! ## A089055.P8241730811986468046

`∑[2*A088575(n)]`
-/

namespace A089055.P8241730811986468046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089055.P8241730811986468046

/-! ## A089055.P15647625827674307372

`A088585(Δ[n²])-n`
-/

namespace A089055.P15647625827674307372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A089055.P15647625827674307372

/-! ## A089055.P9347746857760187886

`∑[2*A088567(2*n)]`
-/

namespace A089055.P9347746857760187886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089055.P9347746857760187886

/-!
# A089056: Primes whose sum of digits [s(d)] is a prime and where sum of two such consecutive s(d) values is a square.

The programs for A089056, there is no canonical definition to state claims against.
-/

/-! ## A089056.P951768092646391223

`p?[A047742(A141214(n))+4]`
-/

namespace A089056.P951768092646391223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047742 (A141214 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089056.P951768092646391223

/-! ## A089056.P15907377961919816626

`A092858(A153443(n+1))`
-/

namespace A089056.P15907377961919816626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092858 (A153443 (n + 1)).toNat

end

end A089056.P15907377961919816626

/-!
# A089057: n! divided by prime whose index is the integer part of log(n).

The programs for A089057, the canonical program `A089057.P6919157401848233555` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089057 has offset 3).

The definition of A089057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089057.P6919157401848233555

`(n+3)!/A000040(floor(log(n+3)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089057

/-- `(n+3)!/A000040(floor(log(n+3)))` -/
def P6919157401848233555.Spec : Prop :=
  ∀ n, P6919157401848233555.a n = (A089057 (n + 3) : ℚ)

end A089057

/-! ## A089057.P14754588307896385508

`(n+3)!/ceil(log(n+3))`
-/

namespace A089057.P14754588307896385508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (⌈Real.log (n + 3 : ℝ)⌉ : ℚ)

end

end A089057.P14754588307896385508

namespace A089057

/-- `(n+3)!/ceil(log(n+3))` -/
def P14754588307896385508.Spec : Prop :=
  ∀ n, P14754588307896385508.a n = (A089057 (n + 3) : ℚ)

end A089057

/-! ## A089057.P14181632024284567928

`A000142(n+3)/A346425(A048764(n+1))`
-/

namespace A089057.P14181632024284567928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A346425 (A048764 (n + 1)).toNat : ℚ)

end

end A089057.P14181632024284567928

namespace A089057

/-- `A000142(n+3)/A346425(A048764(n+1))` -/
def P14181632024284567928.Spec : Prop :=
  ∀ n, P14181632024284567928.a n = (A089057 (n + 3) : ℚ)

end A089057

/-! ## A089057.P3047600463757146238

`A000142(n+3)/A002024(A002024(n+2))`
-/

namespace A089057.P3047600463757146238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A002024 (A002024 (n + 2)).toNat : ℚ)

end

end A089057.P3047600463757146238

namespace A089057

/-- `A000142(n+3)/A002024(A002024(n+2))` -/
def P3047600463757146238.Spec : Prop :=
  ∀ n, P3047600463757146238.a n = (A089057 (n + 3) : ℚ)

end A089057

/-! ## A089057.P2004151202730988863

`A000142(n+3)/A004257(A269225(n+2))`
-/

namespace A089057.P2004151202730988863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A004257 (A269225 (n + 2)).toNat : ℚ)

end

end A089057.P2004151202730988863

namespace A089057

/-- `A000142(n+3)/A004257(A269225(n+2))` -/
def P2004151202730988863.Spec : Prop :=
  ∀ n, P2004151202730988863.a n = (A089057 (n + 3) : ℚ)

end A089057

/-!
# A089058: Each positive number x is repeated m times, where there are m numbers y >= x such that x*y/(x+y) is an integer.

The programs for A089058, there is no canonical definition to state claims against.
-/

/-! ## A089058.P1857682113953704315

`A002024(eq[A107329(n+1), A122191(n+1)])`
-/

namespace A089058.P1857682113953704315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089058.P1857682113953704315

/-! ## A089058.P16530575592642454667

`A061017(lt[A319135(2*(n+1)), ∏{p}[∏{p}[n+1, #%n], #]])`
-/

namespace A089058.P16530575592642454667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319135 (2 * (n + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p % n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A089058.P16530575592642454667

/-! ## A089058.P13671181737208514187

`A061017(lt[A319135(2*(n+1)), 1-∑{p}[n+1, C(#, n)]+n])`
-/

namespace A089058.P13671181737208514187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319135 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089058.P13671181737208514187

/-! ## A089058.P17818564271166467985

`A061017(lt[A076303(n+1), A293524(n+1)])`
-/

namespace A089058.P17818564271166467985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089058.P17818564271166467985

/-! ## A089058.P64012277236996621

`A000523(∑[A249982(n+1)])`
-/

namespace A089058.P64012277236996621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089058.P64012277236996621

/-!
# A089059: Numbers x such that xy/(x+y) is an integer and the hypotenuse of the right triangle with legs x and y is an integer.

The programs for A089059, there is no canonical definition to state claims against.
-/

/-! ## A089059.P18041099107616719676

`eq[A016346(n), A070605(n)]`
-/

namespace A089059.P18041099107616719676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089059.P18041099107616719676

/-! ## A089059.P7966437128847202028

`∑[A040460(A174616(3*n))]`
-/

namespace A089059.P7966437128847202028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040460 (A174616 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089059.P7966437128847202028

/-!
# A089061: a(0) = 5, a(1) = 7; for n>1, a(n) = a(n-1) + a(n-2) - (2*n-2).

The programs for A089061, the canonical program `A089061.P9119614650874609432` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089061 has offset 0).

The definition of A089061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-(2*n-2)` (program `A089061.P9119614650874609432`, by `A089061.P9119614650874609432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089061.P9119614650874609432

`a(n-1)+a(n-2)-(2*n-2)` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089061

/-- `a(n-1)+a(n-2)-(2*n-2)` -/
def P9119614650874609432.Spec : Prop :=
  ∀ n, P9119614650874609432.a n = A089061 n

theorem P9119614650874609432.correct : P9119614650874609432.Spec := by
  intro n
  simp only [A089061]

end A089061

/-! ## A089061.P16593878128961712027

`A000045(n+1)+2*n+4`
-/

namespace A089061.P16593878128961712027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (2 * n : ℤ) + 4

end

end A089061.P16593878128961712027

namespace A089061

/-- `A000045(n+1)+2*n+4` -/
def P16593878128961712027.Spec : Prop :=
  ∀ n, P16593878128961712027.a n = A089061 n

end A089061

/-! ## A089061.P10226692626405924724

`∑[a(n-1)+a(n-2)-2]` with `a(0)=5, a(1)=2, a(2)=3`
-/

namespace A089061.P10226692626405924724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089061.P10226692626405924724

namespace A089061

/-- `∑[a(n-1)+a(n-2)-2]` -/
def P10226692626405924724.Spec : Prop :=
  ∀ n, P10226692626405924724.a n = A089061 n

end A089061

/-! ## A089061.P14429500628195548147

`∑[a(n-1)-(2-a(n-2))]` with `a(0)=5, a(1)=2, a(2)=3`
-/

namespace A089061.P14429500628195548147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089061.P14429500628195548147

namespace A089061

/-- `∑[a(n-1)-(2-a(n-2))]` -/
def P14429500628195548147.Spec : Prop :=
  ∀ n, P14429500628195548147.a n = A089061 n

end A089061

/-! ## A089061.P10427515593536889095

`∑[∑[ogf((-2+x+3x^2)/(-1+2x^2+x^3))]]+3+n`
-/

namespace A089061.P10427515593536889095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -3] [1, 0, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 + (n : ℤ)

end

end A089061.P10427515593536889095

namespace A089061

/-- `∑[∑[ogf((-2+x+3x^2)/(-1+2x^2+x^3))]]+3+n` -/
def P10427515593536889095.Spec : Prop :=
  ∀ n, P10427515593536889095.a n = A089061 n

end A089061

/-! ## A089061.P9856252656822412984

`A129728(n+1)+4`
-/

namespace A089061.P9856252656822412984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (n + 1) + 4

end

end A089061.P9856252656822412984

namespace A089061

/-- `A129728(n+1)+4` -/
def P9856252656822412984.Spec : Prop :=
  ∀ n, P9856252656822412984.a n = A089061 n

end A089061

/-! ## A089061.P12798339351269334645

`A081659(n)+4+n`
-/

namespace A089061.P12798339351269334645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + 4 + (n : ℤ)

end

end A089061.P12798339351269334645

namespace A089061

/-- `A081659(n)+4+n` -/
def P12798339351269334645.Spec : Prop :=
  ∀ n, P12798339351269334645.a n = A089061 n

end A089061

/-! ## A089061.P17327036473011695519

`∑[A212804(n)+2]+2`
-/

namespace A089061.P17327036473011695519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A089061.P17327036473011695519

namespace A089061

/-- `∑[A212804(n)+2]+2` -/
def P17327036473011695519.Spec : Prop :=
  ∀ n, P17327036473011695519.a n = A089061 n

end A089061

/-! ## A089061.P15898078546046955637

`A002062(n+1)+3+n`
-/

namespace A089061.P15898078546046955637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1) + 3 + (n : ℤ)

end

end A089061.P15898078546046955637

namespace A089061

/-- `A002062(n+1)+3+n` -/
def P15898078546046955637.Spec : Prop :=
  ∀ n, P15898078546046955637.a n = A089061 n

end A089061

/-! ## A089061.P17752995792421636054

`A157727(n+1)+2*n`
-/

namespace A089061.P17752995792421636054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 1) + (2 * n : ℤ)

end

end A089061.P17752995792421636054

namespace A089061

/-- `A157727(n+1)+2*n` -/
def P17752995792421636054.Spec : Prop :=
  ∀ n, P17752995792421636054.a n = A089061 n

end A089061

/-! ## A089061.P17345623586748401019

`∑[Δ[A000045(n)]+2]+2`
-/

namespace A089061.P17345623586748401019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A089061.P17345623586748401019

namespace A089061

/-- `∑[Δ[A000045(n)]+2]+2` -/
def P17345623586748401019.Spec : Prop :=
  ∀ n, P17345623586748401019.a n = A089061 n

end A089061

/-! ## A089061.P10848326984914946343

`A157726(n+1)+Δ[n²]`
-/

namespace A089061.P10848326984914946343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A089061.P10848326984914946343

namespace A089061

/-- `A157726(n+1)+Δ[n²]` -/
def P10848326984914946343.Spec : Prop :=
  ∀ n, P10848326984914946343.a n = A089061 n

end A089061

/-! ## A089061.P4609401881194800816

`A157725(n+1)+2*(n+1)`
-/

namespace A089061.P4609401881194800816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1) + (2 * (n + 1) : ℤ)

end

end A089061.P4609401881194800816

namespace A089061

/-- `A157725(n+1)+2*(n+1)` -/
def P4609401881194800816.Spec : Prop :=
  ∀ n, P4609401881194800816.a n = A089061 n

end A089061

/-! ## A089061.P17658921377652098993

`A187179(n+1)+2*(n-1)`
-/

namespace A089061.P17658921377652098993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1) + 2 * ((n : ℤ) - 1)

end

end A089061.P17658921377652098993

namespace A089061

/-- `A187179(n+1)+2*(n-1)` -/
def P17658921377652098993.Spec : Prop :=
  ∀ n, P17658921377652098993.a n = A089061 n

end A089061

/-! ## A089061.P8699843617109091375

`A001611(n+1)+2*n+3`
-/

namespace A089061.P8699843617109091375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + (2 * n + 3 : ℤ)

end

end A089061.P8699843617109091375

namespace A089061

/-- `A001611(n+1)+2*n+3` -/
def P8699843617109091375.Spec : Prop :=
  ∀ n, P8699843617109091375.a n = A089061 n

end A089061

/-! ## A089061.P468193434840658511

`A212804(n+2)+2*(n+2)`
-/

namespace A089061.P468193434840658511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + (2 * (n + 2) : ℤ)

end

end A089061.P468193434840658511

namespace A089061

/-- `A212804(n+2)+2*(n+2)` -/
def P468193434840658511.Spec : Prop :=
  ∀ n, P468193434840658511.a n = A089061 n

end A089061

/-! ## A089061.P14319936144769835196

`a(n-1)+A000045(n-1)+2` with `a(0)=5`
-/

namespace A089061.P14319936144769835196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (A000045 (n - 1) + 2)

end

end A089061.P14319936144769835196

namespace A089061

/-- `a(n-1)+A000045(n-1)+2` -/
def P14319936144769835196.Spec : Prop :=
  ∀ n, P14319936144769835196.a n = A089061 n

end A089061

/-! ## A089061.P13531121440907431368

`A065220(n)+A037141(n)`
-/

namespace A089061.P13531121440907431368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A037141 n

end

end A089061.P13531121440907431368

namespace A089061

/-- `A065220(n)+A037141(n)` -/
def P13531121440907431368.Spec : Prop :=
  ∀ n, P13531121440907431368.a n = A089061 n

end A089061

/-! ## A089061.P9745070740820405713

`A081659(n)+A020705(n)`
-/

namespace A089061.P9745070740820405713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A020705 n

end

end A089061.P9745070740820405713

namespace A089061

/-- `A081659(n)+A020705(n)` -/
def P9745070740820405713.Spec : Prop :=
  ∀ n, P9745070740820405713.a n = A089061 n

end A089061

/-! ## A089061.P13195677031517664378

`A020735(n+1)+A000071(n+1)`
-/

namespace A089061.P13195677031517664378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1) + A000071 (n + 1)

end

end A089061.P13195677031517664378

namespace A089061

/-- `A020735(n+1)+A000071(n+1)` -/
def P13195677031517664378.Spec : Prop :=
  ∀ n, P13195677031517664378.a n = A089061 n

end A089061

/-!
# A089063: Numbers k such that 840*k + 175177943 is a prime.

The programs for A089063, there is no canonical definition to state claims against.
-/

/-! ## A089063.P10728082173075736601

`lt[A045345(A166974(n)), A262087(n)]`
-/

namespace A089063.P10728082173075736601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045345 (A166974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089063.P10728082173075736601

/-! ## A089063.P8595438887438587087

`lt[A045345(A166974(n)), A265525(n)]`
-/

namespace A089063.P8595438887438587087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045345 (A166974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089063.P8595438887438587087

/-! ## A089063.P3751384631562493081

`lt[A367561(A002033(n)), A239932(n+1)]+1`
-/

namespace A089063.P3751384631562493081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367561 (A002033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A089063.P3751384631562493081

/-! ## A089063.P11163382990733167127

`lt[A118673(A223135(n)), A289895(2*n+1)]`
-/

namespace A089063.P11163382990733167127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118673 (A223135 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289895 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089063.P11163382990733167127

/-! ## A089063.P11513966044121932460

`record[A000040(n+1)%A375398(2*n+3)]`
-/

namespace A089063.P11513966044121932460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A375398 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089063.P11513966044121932460

/-!
# A089064: Expansion of e.g.f. log(1-log(1-x)).

The programs for A089064, there is no canonical definition to state claims against.
-/

/-! ## A089064.P6829485828762755313

`A308497(A175631(n+2)+1)`
-/

namespace A089064.P6829485828762755313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (A175631 (n + 2) + 1).toNat

end

end A089064.P6829485828762755313

/-! ## A089064.P9493448602664796100

`A003713(n)-A052824(n)`
-/

namespace A089064.P9493448602664796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n - A052824 n

end

end A089064.P9493448602664796100

/-! ## A089064.P1703565309041123626

`A052809(n+1)/(n+1)-A052824(n)`
-/

namespace A089064.P1703565309041123626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052809 (n + 1) : ℚ) / (n + 1 : ℚ) - (A052824 n : ℚ)

end

end A089064.P1703565309041123626

/-! ## A089064.P16215967690631689500

`abs(A325872(A000124(n)))-A052824(n)`
-/

namespace A089064.P16215967690631689500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (A000124 n).toNat| - A052824 n

end

end A089064.P16215967690631689500

/-! ## A089064.P16094131639834496650

`A003713(n)+A033999(A007821(n+1))*A052824(n)`
-/

namespace A089064.P16094131639834496650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n + A033999 (A007821 (n + 1)).toNat * A052824 n

end

end A089064.P16094131639834496650

/-!
# A089066: Number of distinct classes of permutations of length n under reversal, rotation and complement to n+1.

The programs for A089066, there is no canonical definition to state claims against.
-/

/-! ## A089066.P11565618852539845463

`A099030(C(2, n+1)+n+1)`
-/

namespace A089066.P11565618852539845463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099030 (Nat.choose 2 (n + 1) + (n + 1))

end

end A089066.P11565618852539845463

/-! ## A089066.P5134729107947361465

`A099030(A289207(n)+3)`
-/

namespace A089066.P5134729107947361465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099030 (A289207 n + 3).toNat

end

end A089066.P5134729107947361465

/-! ## A089066.P11053916531172631117

`A099030(A233583(n+1)+1)`
-/

namespace A089066.P11053916531172631117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099030 (A233583 (n + 1) + 1).toNat

end

end A089066.P11053916531172631117

/-!
# A089067: a(n) = 2*a(n-1) + (-1)^n*a(floor(n/2)); a(1)=1.

The programs for A089067, the canonical program `A089067.P6642822775455674060` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089067 has offset 1).

The definition of A089067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(-1)^(n+1)*a(floor((n+1)/2)-1)` (program `A089067.P6642822775455674060`, by `A089067.P6642822775455674060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089067.P6642822775455674060

`2*a(n-1)+(-1)^(n+1)*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089067

/-- `2*a(n-1)+(-1)^(n+1)*a(floor((n+1)/2)-1)` -/
def P6642822775455674060.Spec : Prop :=
  ∀ n, P6642822775455674060.a n = A089067 (n + 1)

theorem P6642822775455674060.correct : P6642822775455674060.Spec := by
  intro n
  simp only [A089067, Nat.add_sub_cancel]

end A089067

/-! ## A089067.P311458431493702026

`record[a(A029578(n))-2*a(n-1)]` with `a(0)=1`
-/

namespace A089067.P311458431493702026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A029578 n).toNat - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089067.P311458431493702026

namespace A089067

/-- `record[a(A029578(n))-2*a(n-1)]` -/
def P311458431493702026.Spec : Prop :=
  ∀ n, P311458431493702026.a n = A089067 (n + 1)

end A089067

/-! ## A089067.P14007769620825467566

`A089141(∑[n+1]+2)`
-/

namespace A089067.P14007769620825467566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089141 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089067.P14007769620825467566

namespace A089067

/-- `A089141(∑[n+1]+2)` -/
def P14007769620825467566.Spec : Prop :=
  ∀ n, P14007769620825467566.a n = A089067 (n + 1)

end A089067

/-! ## A089067.P16746488261563756675

`record[A089141(n+3)/A091965(n)]`
-/

namespace A089067.P16746488261563756675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089141 (n + 3) : ℚ) / (A091965 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089067.P16746488261563756675

namespace A089067

/-- `record[A089141(n+3)/A091965(n)]` -/
def P16746488261563756675.Spec : Prop :=
  ∀ n, P16746488261563756675.a n = (A089067 (n + 1) : ℚ)

end A089067

/-! ## A089067.P16563339128811465427

`record[and(A089141(n+3), A228035(n))]`
-/

namespace A089067.P16563339128811465427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089141 (n + 3)) (A228035 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089067.P16563339128811465427

namespace A089067

/-- `record[and(A089141(n+3), A228035(n))]` -/
def P16563339128811465427.Spec : Prop :=
  ∀ n, P16563339128811465427.a n = A089067 (n + 1)

end A089067

/-!
# A089068: a(n) = a(n-1)+a(n-2)+a(n-3)+2 with a(0)=0, a(1)=0 and a(2)=1.

The programs for A089068, the canonical program `A089068.P5558120928903495532` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089068 has offset 0).

The definition of A089068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2` (program `A089068.P5558120928903495532`, by `A089068.P5558120928903495532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089068.P12715868340262370166

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A089068.P12715868340262370166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A089068.P12715868340262370166

namespace A089068

/-- `2*a(n-1)-a(n-4)` -/
def P12715868340262370166.Spec : Prop :=
  ∀ n, P12715868340262370166.a n = A089068 n

end A089068

/-! ## A089068.P5558120928903495532

`a(n-1)+a(n-2)+a(n-3)+2` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089068

/-- `a(n-1)+a(n-2)+a(n-3)+2` -/
def P5558120928903495532.Spec : Prop :=
  ∀ n, (P5558120928903495532.a n : ℤ) = A089068 n

theorem P5558120928903495532.correct : P5558120928903495532.Spec := by
  intro n
  simp only [A089068]

end A089068

/-! ## A089068.P7210871934445872334

`A000073(n+2)-1`
-/

namespace A089068.P7210871934445872334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - 1

end

end A089068.P7210871934445872334

namespace A089068

/-- `A000073(n+2)-1` -/
def P7210871934445872334.Spec : Prop :=
  ∀ n, P7210871934445872334.a n = A089068 n

end A089068

/-! ## A089068.P1617451276873135301

`a(n-1)+A001590(n+1)` with `a(0)=0`
-/

namespace A089068.P1617451276873135301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001590 (n + 1)

end

end A089068.P1617451276873135301

namespace A089068

/-- `a(n-1)+A001590(n+1)` -/
def P1617451276873135301.Spec : Prop :=
  ∀ n, P1617451276873135301.a n = A089068 n

end A089068

/-! ## A089068.P251831286629879252

`ogf((x^2+x^3)/(1-2x+x^4))`
-/

namespace A089068.P251831286629879252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, -2, 0, 0, 1] n

end

end A089068.P251831286629879252

namespace A089068

/-- `ogf((x^2+x^3)/(1-2x+x^4))` -/
def P251831286629879252.Spec : Prop :=
  ∀ n, P251831286629879252.a n = A089068 n

end A089068

/-! ## A089068.P10175056760510904072

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A089068.P10175056760510904072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A089068.P10175056760510904072

namespace A089068

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P10175056760510904072.Spec : Prop :=
  ∀ n, P10175056760510904072.a n = A089068 n

end A089068

/-! ## A089068.P4405875928162295366

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A089068.P4405875928162295366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A089068.P4405875928162295366

namespace A089068

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P4405875928162295366.Spec : Prop :=
  ∀ n, P4405875928162295366.a n = A089068 n

end A089068

/-! ## A089068.P17324533776786131439

`A213816(Δ[n²])-1`
-/

namespace A089068.P17324533776786131439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A089068.P17324533776786131439

namespace A089068

/-- `A213816(Δ[n²])-1` -/
def P17324533776786131439.Spec : Prop :=
  ∀ n, P17324533776786131439.a n = A089068 n

end A089068

/-! ## A089068.P6407668110178915574

`∑[A001590(n+1)]-1`
-/

namespace A089068.P6407668110178915574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089068.P6407668110178915574

namespace A089068

/-- `∑[A001590(n+1)]-1` -/
def P6407668110178915574.Spec : Prop :=
  ∀ n, P6407668110178915574.a n = A089068 n

end A089068

/-! ## A089068.P14155658053798209945

`∑[A000213(n)-a(n-1)]-1` with `a(0)=1`
-/

namespace A089068.P14155658053798209945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000213 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089068.P14155658053798209945

namespace A089068

/-- `∑[A000213(n)-a(n-1)]-1` -/
def P14155658053798209945.Spec : Prop :=
  ∀ n, P14155658053798209945.a n = A089068 n

end A089068

/-! ## A089068.P4703809129595152352

`A282718(n)-A294619(n)`
-/

namespace A089068.P4703809129595152352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 n - A294619 n

end

end A089068.P4703809129595152352

namespace A089068

/-- `A282718(n)-A294619(n)` -/
def P4703809129595152352.Spec : Prop :=
  ∀ n, P4703809129595152352.a n = A089068 n

end A089068

/-! ## A089068.P469934108504699943

`A000100(n)+A000071(n+1)`
-/

namespace A089068.P469934108504699943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 n + A000071 (n + 1)

end

end A089068.P469934108504699943

namespace A089068

/-- `A000100(n)+A000071(n+1)` -/
def P469934108504699943.Spec : Prop :=
  ∀ n, P469934108504699943.a n = A089068 n

end A089068

/-! ## A089068.P8458022878407211890

`A214727(n)-(A001590(n)+1)`
-/

namespace A089068.P8458022878407211890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - (A001590 n + 1)

end

end A089068.P8458022878407211890

namespace A089068

/-- `A214727(n)-(A001590(n)+1)` -/
def P8458022878407211890.Spec : Prop :=
  ∀ n, P8458022878407211890.a n = A089068 n

end A089068

/-! ## A089068.P10085258542233587770

`∑[A001590(A065033(2*n)+1)]`
-/

namespace A089068.P10085258542233587770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A065033 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089068.P10085258542233587770

namespace A089068

/-- `∑[A001590(A065033(2*n)+1)]` -/
def P10085258542233587770.Spec : Prop :=
  ∀ n, P10085258542233587770.a n = A089068 n

end A089068

/-! ## A089068.P3584165772138158483

`∑[A000213(n)-A001590(n)]-1`
-/

namespace A089068.P3584165772138158483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089068.P3584165772138158483

namespace A089068

/-- `∑[A000213(n)-A001590(n)]-1` -/
def P3584165772138158483.Spec : Prop :=
  ∀ n, P3584165772138158483.a n = A089068 n

end A089068

/-! ## A089068.P15812225771721663796

`A000213(n)+Δ[A192804(n)]-1`
-/

namespace A089068.P15812225771721663796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (f1 (n + 1) - f1 n - 1)

end

end A089068.P15812225771721663796

namespace A089068

/-- `A000213(n)+Δ[A192804(n)]-1` -/
def P15812225771721663796.Spec : Prop :=
  ∀ n, P15812225771721663796.a n = A089068 n

end A089068

/-! ## A089068.P8298566253576200136

`∑[A099331(n)+A099328(n+1)]-1`
-/

namespace A089068.P8298566253576200136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099331 n + A099328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A089068.P8298566253576200136

namespace A089068

/-- `∑[A099331(n)+A099328(n+1)]-1` -/
def P8298566253576200136.Spec : Prop :=
  ∀ n, P8298566253576200136.a n = A089068 n

end A089068

/-! ## A089068.P8315681136939200697

`A020992(n+1)-(A001590(n+1)+1)`
-/

namespace A089068.P8315681136939200697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - (A001590 (n + 1) + 1)

end

end A089068.P8315681136939200697

namespace A089068

/-- `A020992(n+1)-(A001590(n+1)+1)` -/
def P8315681136939200697.Spec : Prop :=
  ∀ n, P8315681136939200697.a n = A089068 n

end A089068

/-! ## A089068.P17570944639482628521

`A033999(2*n+1)+A000073(n+2)`
-/

namespace A089068.P17570944639482628521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000073 (n + 2)

end

end A089068.P17570944639482628521

namespace A089068

/-- `A033999(2*n+1)+A000073(n+2)` -/
def P17570944639482628521.Spec : Prop :=
  ∀ n, P17570944639482628521.a n = A089068 n

end A089068

/-! ## A089068.P12088904893893762218

`∑[A000045(n)]+A000100(n)-A000045(n)`
-/

namespace A089068.P12088904893893762218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000100 n - A000045 n)

end

end A089068.P12088904893893762218

namespace A089068

/-- `∑[A000045(n)]+A000100(n)-A000045(n)` -/
def P12088904893893762218.Spec : Prop :=
  ∀ n, P12088904893893762218.a n = A089068 n

end A089068

/-!
# A089070: A semi-empirical prime like function with primes isolated.

The programs for A089070, there is no canonical definition to state claims against.
-/

/-! ## A089070.P1350924468629377716

`p?[A027434(∑[A174046(n+1)])]`
-/

namespace A089070.P1350924468629377716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089070.P1350924468629377716

/-! ## A089070.P8140705737321181089

`p?[A001462(∑[A282534(n+1)])]`
-/

namespace A089070.P8140705737321181089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089070.P8140705737321181089

/-!
# A089071: Number of liberties a big eye of size n gives in the game of Go.

The programs for A089071, the canonical program `A089071.P5040348556766612571` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089071 has offset 1).

The definition of A089071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089071.P5287767377964324921

`a(n-1)+n+1-2` with `a(0)=1, a(1)=2`
-/

namespace A089071.P5287767377964324921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (n + 1 : ℤ) - 2

end

end A089071.P5287767377964324921

namespace A089071

/-- `a(n-1)+n+1-2` -/
def P5287767377964324921.Spec : Prop :=
  ∀ n, P5287767377964324921.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P5040348556766612571

`A022856(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089071

/-- `A022856(n+3)` -/
def P5040348556766612571.Spec : Prop :=
  ∀ n, P5040348556766612571.a n = A089071 (n + 1)

theorem P5040348556766612571.correct : P5040348556766612571.Spec := by
  intro n
  simp only [A089071, Nat.add_sub_cancel]

end A089071

/-! ## A089071.P4051175505401901967

`∑[abs(1-(char[1]+n))]`
-/

namespace A089071.P4051175505401901967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089071.P4051175505401901967

namespace A089071

/-- `∑[abs(1-(char[1]+n))]` -/
def P4051175505401901967.Spec : Prop :=
  ∀ n, P4051175505401901967.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P4690528356158716494

`∑[n-floor(atan(n))]+1`
-/

namespace A089071.P4690528356158716494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089071.P4690528356158716494

namespace A089071

/-- `∑[n-floor(atan(n))]+1` -/
def P4690528356158716494.Spec : Prop :=
  ∀ n, P4690528356158716494.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P10952814715305614156

`1-∑[floor(atan(n)-n)]`
-/

namespace A089071.P10952814715305614156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089071.P10952814715305614156

namespace A089071

/-- `1-∑[floor(atan(n)-n)]` -/
def P10952814715305614156.Spec : Prop :=
  ∀ n, P10952814715305614156.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P867361039368617743

`∑[ceil(n-atan(n))]+1`
-/

namespace A089071.P867361039368617743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089071.P867361039368617743

namespace A089071

/-- `∑[ceil(n-atan(n))]+1` -/
def P867361039368617743.Spec : Prop :=
  ∀ n, P867361039368617743.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P7246237992170993023

`∑[C(n, n²)+n]-n`
-/

namespace A089071.P7246237992170993023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A089071.P7246237992170993023

namespace A089071

/-- `∑[C(n, n²)+n]-n` -/
def P7246237992170993023.Spec : Prop :=
  ∀ n, P7246237992170993023.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P128105652611411493

`n-1+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A089071.P128105652611411493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - 1 + a (n - 1)

end

end A089071.P128105652611411493

namespace A089071

/-- `n-1+a(n-1)` -/
def P128105652611411493.Spec : Prop :=
  ∀ n, P128105652611411493.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P6631572071425993219

`n-(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A089071.P6631572071425993219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (1 - a (n - 1))

end

end A089071.P6631572071425993219

namespace A089071

/-- `n-(1-a(n-1))` -/
def P6631572071425993219.Spec : Prop :=
  ∀ n, P6631572071425993219.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P7270155171610410129

`C(abs(1-n), 2)+1+n`
-/

namespace A089071.P7270155171610410129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (n : ℤ)|.toNat 2 + 1 + n

end

end A089071.P7270155171610410129

namespace A089071

/-- `C(abs(1-n), 2)+1+n` -/
def P7270155171610410129.Spec : Prop :=
  ∀ n, (P7270155171610410129.a n : ℤ) = A089071 (n + 1)

end A089071

/-! ## A089071.P13741951290459890124

`∑[round(acot(n)+n)]-(n+1)`
-/

namespace A089071.P13741951290459890124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A089071.P13741951290459890124

namespace A089071

/-- `∑[round(acot(n)+n)]-(n+1)` -/
def P13741951290459890124.Spec : Prop :=
  ∀ n, P13741951290459890124.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P14373524137995717540

`n²-∑[n-C(n, n²)]`
-/

namespace A089071.P14373524137995717540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089071.P14373524137995717540

namespace A089071

/-- `n²-∑[n-C(n, n²)]` -/
def P14373524137995717540.Spec : Prop :=
  ∀ n, P14373524137995717540.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P17958018599786449649

`ogf((1-x+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A089071.P17958018599786449649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -3, 3, -1] n

end

end A089071.P17958018599786449649

namespace A089071

/-- `ogf((1-x+x^3)/(1-3x+3x^2-x^3))` -/
def P17958018599786449649.Spec : Prop :=
  ∀ n, P17958018599786449649.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P17795864371651692160

`2-(C(2, n+2)-C(n, 2))`
-/

namespace A089071.P17795864371651692160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose 2 (n + 2) : ℤ) - (Nat.choose n 2 : ℤ))

end

end A089071.P17795864371651692160

namespace A089071

/-- `2-(C(2, n+2)-C(n, 2))` -/
def P17795864371651692160.Spec : Prop :=
  ∀ n, P17795864371651692160.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P14067119078552933965

`gcd(C(n, 2)+2, C(2, n+2))`
-/

namespace A089071.P14067119078552933965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2 + 2) (Nat.choose 2 (n + 2))

end

end A089071.P14067119078552933965

namespace A089071

/-- `gcd(C(n, 2)+2, C(2, n+2))` -/
def P14067119078552933965.Spec : Prop :=
  ∀ n, (P14067119078552933965.a n : ℤ) = A089071 (n + 1)

end A089071

/-! ## A089071.P9544346108748013437

`abs(∑[n-1]+3%(n+3))`
-/

namespace A089071.P9544346108748013437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + ((3 % (n + 3) : ℕ) : ℤ)|

end

end A089071.P9544346108748013437

namespace A089071

/-- `abs(∑[n-1]+3%(n+3))` -/
def P9544346108748013437.Spec : Prop :=
  ∀ n, P9544346108748013437.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P15560043404854862196

`∑[n+1]-comp[lcm(2, n+1)]`
-/

namespace A089071.P15560043404854862196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A089071.P15560043404854862196

namespace A089071

/-- `∑[n+1]-comp[lcm(2, n+1)]` -/
def P15560043404854862196.Spec : Prop :=
  ∀ n, P15560043404854862196.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P16178655217299008369

`∑[n]+1-(n-1)%(n+1)`
-/

namespace A089071.P16178655217299008369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ))

end

end A089071.P16178655217299008369

namespace A089071

/-- `∑[n]+1-(n-1)%(n+1)` -/
def P16178655217299008369.Spec : Prop :=
  ∀ n, P16178655217299008369.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P1652992222927835044

`∑[n-1]-(C(n, 2*n)-3)`
-/

namespace A089071.P1652992222927835044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((Nat.choose n (2 * n) : ℤ) - 3)

end

end A089071.P1652992222927835044

namespace A089071

/-- `∑[n-1]-(C(n, 2*n)-3)` -/
def P1652992222927835044.Spec : Prop :=
  ∀ n, P1652992222927835044.a n = A089071 (n + 1)

end A089071

/-! ## A089071.P3454556010569811856

`∑[n+1]-eq[n, n*gcd(2, n)]`
-/

namespace A089071.P3454556010569811856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ)

end

end A089071.P3454556010569811856

namespace A089071

/-- `∑[n+1]-eq[n, n*gcd(2, n)]` -/
def P3454556010569811856.Spec : Prop :=
  ∀ n, P3454556010569811856.a n = A089071 (n + 1)

end A089071

/-!
# A089072: Triangle read by rows: T(n,k) = k^n, n >= 1, 1 <= k <= n.

The programs for A089072, the canonical program `A089072.P7848010540190067138` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089072 has offset 1).

The definition of A089072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)^(row(n)+1)` (program `A089072.P7848010540190067138`, by `A089072.P7848010540190067138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089072.P7848010540190067138

`(col(n)+1)^(row(n)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089072

/-- `(col(n)+1)^(row(n)+1)` -/
def P7848010540190067138.Spec : Prop :=
  ∀ n, (P7848010540190067138.a n : ℤ) = A089072 (n + 1)

theorem P7848010540190067138.correct : P7848010540190067138.Spec := by
  intro n
  simp only [A089072, Nat.add_sub_cancel]

end A089072

/-! ## A089072.P9717631086525072128

`A076014(comp[∑[n]])`
-/

namespace A089072.P9717631086525072128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A089072.P9717631086525072128

namespace A089072

/-- `A076014(comp[∑[n]])` -/
def P9717631086525072128.Spec : Prop :=
  ∀ n, P9717631086525072128.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P4217632278619127775

`A009998(n)*A033918(n+1)`
-/

namespace A089072.P4217632278619127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A033918 (n + 1)

end

end A089072.P4217632278619127775

namespace A089072

/-- `A009998(n)*A033918(n+1)` -/
def P4217632278619127775.Spec : Prop :=
  ∀ n, P4217632278619127775.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P9542644939921547761

`A002260(n+1)^∑[A010054(n)]`
-/

namespace A089072.P9542644939921547761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A089072.P9542644939921547761

namespace A089072

/-- `A002260(n+1)^∑[A010054(n)]` -/
def P9542644939921547761.Spec : Prop :=
  ∀ n, P9542644939921547761.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P15636708137654388474

`A093898(n+1)-A075363(n+1)`
-/

namespace A089072.P15636708137654388474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093898 (n + 1) - A075363 (n + 1)

end

end A089072.P15636708137654388474

namespace A089072

/-- `A093898(n+1)-A075363(n+1)` -/
def P15636708137654388474.Spec : Prop :=
  ∀ n, P15636708137654388474.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P9168460855450038374

`A002260(n+1)*A076014(n+1)`
-/

namespace A089072.P9168460855450038374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A076014 (n + 1)

end

end A089072.P9168460855450038374

namespace A089072

/-- `A002260(n+1)*A076014(n+1)` -/
def P9168460855450038374.Spec : Prop :=
  ∀ n, P9168460855450038374.a n = A089072 (n + 1)

theorem P9168460855450038374.correct : P9168460855450038374.Spec := by
  intro n
  simp only [A089072, Nat.add_sub_cancel, A089072.P9168460855450038374.a, A089072.P7848010540190067138.a, A002260, A002260.P9170571874073898642.a, A076014, A076014.P9805967088304399622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089072

/-! ## A089072.P10413786626564252359

`A002260(n+1)^A002024(n+1)`
-/

namespace A089072.P10413786626564252359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A089072.P10413786626564252359

namespace A089072

/-- `A002260(n+1)^A002024(n+1)` -/
def P10413786626564252359.Spec : Prop :=
  ∀ n, P10413786626564252359.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P5759792685544633544

`(A002262(n)+1)^A002024(n+1)`
-/

namespace A089072.P5759792685544633544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A089072.P5759792685544633544

namespace A089072

/-- `(A002262(n)+1)^A002024(n+1)` -/
def P5759792685544633544.Spec : Prop :=
  ∀ n, P5759792685544633544.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P1223079411453886456

`A002260(n+1)^A000194(2*n)`
-/

namespace A089072.P1223079411453886456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A000194 (2 * n) : ℤ)

end

end A089072.P1223079411453886456

namespace A089072

/-- `A002260(n+1)^A000194(2*n)` -/
def P1223079411453886456.Spec : Prop :=
  ∀ n, P1223079411453886456.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P9974330475446897758

`A002260(n+1)^round(sqrt(A004277(n)))`
-/

namespace A089072.P9974330475446897758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (A004277 n : ℝ)) : ℤ)

end

end A089072.P9974330475446897758

namespace A089072

/-- `A002260(n+1)^round(sqrt(A004277(n)))` -/
def P9974330475446897758.Spec : Prop :=
  ∀ n, P9974330475446897758.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P8112923067895522199

`A097285(2*n+1)^A349520(2*(n+1))`
-/

namespace A089072.P8112923067895522199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097285 (2 * n + 1) : ℚ) ^ (A349520 (2 * (n + 1)) : ℤ)

end

end A089072.P8112923067895522199

namespace A089072

/-- `A097285(2*n+1)^A349520(2*(n+1))` -/
def P8112923067895522199.Spec : Prop :=
  ∀ n, P8112923067895522199.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P9376273272962308460

`A349520(2*n+1)^A349520(2*(n+1))`
-/

namespace A089072.P9376273272962308460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349520 (2 * n + 1) : ℚ) ^ (A349520 (2 * (n + 1)) : ℤ)

end

end A089072.P9376273272962308460

namespace A089072

/-- `A349520(2*n+1)^A349520(2*(n+1))` -/
def P9376273272962308460.Spec : Prop :=
  ∀ n, P9376273272962308460.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P2131820687702559394

`A000169(A002260(n+1))*A051129(n+1)`
-/

namespace A089072.P2131820687702559394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A002260 (n + 1)).toNat * A051129 (n + 1)

end

end A089072.P2131820687702559394

namespace A089072

/-- `A000169(A002260(n+1))*A051129(n+1)` -/
def P2131820687702559394.Spec : Prop :=
  ∀ n, P2131820687702559394.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P3655668355841623795

`A026100(A026098(n+1))^A002024(n+1)`
-/

namespace A089072.P3655668355841623795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A089072.P3655668355841623795

namespace A089072

/-- `A026100(A026098(n+1))^A002024(n+1)` -/
def P3655668355841623795.Spec : Prop :=
  ∀ n, P3655668355841623795.a n = (A089072 (n + 1) : ℚ)

end A089072

/-! ## A089072.P11833199083031095198

`A095887(A038722(n+1))`
-/

namespace A089072.P11833199083031095198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A038722 (n + 1)).toNat

end

end A089072.P11833199083031095198

namespace A089072

/-- `A095887(A038722(n+1))` -/
def P11833199083031095198.Spec : Prop :=
  ∀ n, P11833199083031095198.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P15252439982056594537

`A095887(A061579(n)+1)`
-/

namespace A089072.P15252439982056594537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A061579 n + 1).toNat

end

end A089072.P15252439982056594537

namespace A089072

/-- `A095887(A061579(n)+1)` -/
def P15252439982056594537.Spec : Prop :=
  ∀ n, P15252439982056594537.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P16927717438346190796

`A095887(A002024(n+1)²-n)`
-/

namespace A089072.P16927717438346190796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A089072.P16927717438346190796

namespace A089072

/-- `A095887(A002024(n+1)²-n)` -/
def P16927717438346190796.Spec : Prop :=
  ∀ n, P16927717438346190796.a n = A089072 (n + 1)

end A089072

/-! ## A089072.P6677682955706650813

`A068424(n+1)+A344115(n+1)-A344112(n+1)`
-/

namespace A089072.P6677682955706650813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (n + 1) + (A344115 (n + 1) - A344112 (n + 1))

end

end A089072.P6677682955706650813

namespace A089072

/-- `A068424(n+1)+A344115(n+1)-A344112(n+1)` -/
def P6677682955706650813.Spec : Prop :=
  ∀ n, P6677682955706650813.a n = A089072 (n + 1)

end A089072

/-!
# A089073: Number of symmetric non-crossing connected graphs on n equidistant nodes on a circle.

The programs for A089073, there is no canonical definition to state claims against.
-/

/-! ## A089073.P3214979966090906452

`A078531(A110654(n))/gcd(2, n+1)`
-/

namespace A089073.P3214979966090906452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078531 (A110654 n).toNat : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A089073.P3214979966090906452

/-! ## A089073.P13351322499077410896

`A078531(A110654(n))/A000034(n)`
-/

namespace A089073.P13351322499077410896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078531 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A089073.P13351322499077410896

/-!
# A089074: Expansion of x*(1 + x + x^2)/(1 - 2*x + x^5).

The programs for A089074, the canonical program `A089074.P15468089691723321055` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089074 has offset 0).

The definition of A089074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+x^3)/(1-2x+x^5))` (program `A089074.P15468089691723321055`, by `A089074.P15468089691723321055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089074.P15468089691723321055

`ogf((x+x^2+x^3)/(1-2x+x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089074

/-- `ogf((x+x^2+x^3)/(1-2x+x^5))` -/
def P15468089691723321055.Spec : Prop :=
  ∀ n, P15468089691723321055.a n = A089074 n

theorem P15468089691723321055.correct : P15468089691723321055.Spec := by
  intro n
  simp only [A089074]

end A089074

/-! ## A089074.P16497410691182975607

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=14`
-/

namespace A089074.P16497410691182975607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 14] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A089074.P16497410691182975607

namespace A089074

/-- `2*a(n-1)-a(n-5)` -/
def P16497410691182975607.Spec : Prop :=
  ∀ n, P16497410691182975607.a n = A089074 n

end A089074

/-! ## A089074.P9764657002700651653

`A000078(n+4)-1`
-/

namespace A089074.P9764657002700651653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 4) - 1

end

end A089074.P9764657002700651653

namespace A089074

/-- `A000078(n+4)-1` -/
def P9764657002700651653.Spec : Prop :=
  ∀ n, P9764657002700651653.a n = A089074 n

end A089074

/-! ## A089074.P2549415824990549221

`∑[record[A001631(n)]]`
-/

namespace A089074.P2549415824990549221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089074.P2549415824990549221

namespace A089074

/-- `∑[record[A001631(n)]]` -/
def P2549415824990549221.Spec : Prop :=
  ∀ n, P2549415824990549221.a n = A089074 n

end A089074

/-! ## A089074.P6866404806660074843

`∑[A001631(n+3)]`
-/

namespace A089074.P6866404806660074843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089074.P6866404806660074843

namespace A089074

/-- `∑[A001631(n+3)]` -/
def P6866404806660074843.Spec : Prop :=
  ∀ n, P6866404806660074843.a n = A089074 n

end A089074

/-! ## A089074.P17022964378420745360

`∑[A274759(3*n)]`
-/

namespace A089074.P17022964378420745360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089074.P17022964378420745360

namespace A089074

/-- `∑[A274759(3*n)]` -/
def P17022964378420745360.Spec : Prop :=
  ∀ n, P17022964378420745360.a n = A089074 n

end A089074

/-! ## A089074.P8348615685061742527

`∑[record[Δ[A000078(n)]]]`
-/

namespace A089074.P8348615685061742527
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089074.P8348615685061742527

namespace A089074

/-- `∑[record[Δ[A000078(n)]]]` -/
def P8348615685061742527.Spec : Prop :=
  ∀ n, P8348615685061742527.a n = A089074 n

end A089074

/-! ## A089074.P13808468761928825506

`A274759(3*(n+1)+1)-1`
-/

namespace A089074.P13808468761928825506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * (n + 1) + 1) - 1

end

end A089074.P13808468761928825506

namespace A089074

/-- `A274759(3*(n+1)+1)-1` -/
def P13808468761928825506.Spec : Prop :=
  ∀ n, P13808468761928825506.a n = A089074 n

end A089074

/-! ## A089074.P2123930224819078240

`A238913(n+1)+A000071(n+2)`
-/

namespace A089074.P2123930224819078240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238913 (n + 1) + A000071 (n + 2)

end

end A089074.P2123930224819078240

namespace A089074

/-- `A238913(n+1)+A000071(n+2)` -/
def P2123930224819078240.Spec : Prop :=
  ∀ n, P2123930224819078240.a n = A089074 n

end A089074

/-! ## A089074.P9819519279788073399

`A000100(n+1)+A000102(n+1)+A000071(n+2)`
-/

namespace A089074.P9819519279788073399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (n + 1) + (A000102 (n + 1) + A000071 (n + 2))

end

end A089074.P9819519279788073399

namespace A089074

/-- `A000100(n+1)+A000102(n+1)+A000071(n+2)` -/
def P9819519279788073399.Spec : Prop :=
  ∀ n, P9819519279788073399.a n = A089074 n

end A089074

/-! ## A089074.P12131525485917884921

`Δ[A107066(n)]-1`
-/

namespace A089074.P12131525485917884921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A089074.P12131525485917884921

namespace A089074

/-- `Δ[A107066(n)]-1` -/
def P12131525485917884921.Spec : Prop :=
  ∀ n, P12131525485917884921.a n = A089074 n

end A089074

/-! ## A089074.P13350042515851243078

`A135492(n+1)/2-1`
-/

namespace A089074.P13350042515851243078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135492 (n + 1) : ℚ) / 2 - 1

end

end A089074.P13350042515851243078

namespace A089074

/-- `A135492(n+1)/2-1` -/
def P13350042515851243078.Spec : Prop :=
  ∀ n, P13350042515851243078.a n = (A089074 n : ℚ)

end A089074

/-! ## A089074.P13199609407634637075

`Δ[Δ[A145112(n)]]-1`
-/

namespace A089074.P13199609407634637075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A089074.P13199609407634637075

namespace A089074

/-- `Δ[Δ[A145112(n)]]-1` -/
def P13199609407634637075.Spec : Prop :=
  ∀ n, P13199609407634637075.a n = A089074 n

end A089074

/-! ## A089074.P13273873298401761393

`A048887(eq[2, A054123(n)])-1`
-/

namespace A089074.P13273873298401761393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A089074.P13273873298401761393

namespace A089074

/-- `A048887(eq[2, A054123(n)])-1` -/
def P13273873298401761393.Spec : Prop :=
  ∀ n, P13273873298401761393.a n = A089074 n

end A089074

/-!
# A089077: A nonsense sequence.

The programs for A089077, there is no canonical definition to state claims against.
-/

/-! ## A089077.P6181660695387693421

`A083890(A115994(n+1))-A037802(A164187(n))`
-/

namespace A089077.P6181660695387693421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (A115994 (n + 1)).toNat - A037802 (A164187 n).toNat

end

end A089077.P6181660695387693421

/-! ## A089077.P6198750275604192545

`A055736(A283285(n)+A057163(n))`
-/

namespace A089077.P6198750275604192545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055736 (A283285 n + A057163 n).toNat

end

end A089077.P6198750275604192545

/-!
# A089079: Numbers n such that 7*n - 23 is prime.

The programs for A089079, the canonical program `A089079.P830463903294487501` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089079 has offset 1).

The definition of A089079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089079.P6507775664820500700

`A024901(n+1)+3`
-/

namespace A089079.P6507775664820500700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024901 (n + 1) + 3

end

end A089079.P6507775664820500700

namespace A089079

/-- `A024901(n+1)+3` -/
def P6507775664820500700.Spec : Prop :=
  ∀ n, P6507775664820500700.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P688548862002930731

`A111367(n+1)+4`
-/

namespace A089079.P688548862002930731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111367 (n + 1) + 4

end

end A089079.P688548862002930731

namespace A089079

/-- `A111367(n+1)+4` -/
def P688548862002930731.Spec : Prop :=
  ∀ n, P688548862002930731.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P830463903294487501

`(A045458(n+1)+23)/7`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A089079

/-- `(A045458(n+1)+23)/7` -/
def P830463903294487501.Spec : Prop :=
  ∀ n, P830463903294487501.a n = (A089079 (n + 1) : ℚ)

end A089079

/-! ## A089079.P12591304782323157754

`ceil(p?[a(n-1)+7]/7)+3` with `a(0)=5`
-/

namespace A089079.P12591304782323157754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉ + 3

end

end A089079.P12591304782323157754

namespace A089079

/-- `ceil(p?[a(n-1)+7]/7)+3` -/
def P12591304782323157754.Spec : Prop :=
  ∀ n, P12591304782323157754.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P179811650060824850

`ceil(p?[4*(n+1)+3*n+1]/7)+3`
-/

namespace A089079.P179811650060824850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1) + (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉ + 3

end

end A089079.P179811650060824850

namespace A089079

/-- `ceil(p?[4*(n+1)+3*n+1]/7)+3` -/
def P179811650060824850.Spec : Prop :=
  ∀ n, P179811650060824850.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P1716499133546118834

`record[(n+4)/A001222(7*n+5)]`
-/

namespace A089079.P1716499133546118834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / (A001222 (7 * n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089079.P1716499133546118834

namespace A089079

/-- `record[(n+4)/A001222(7*n+5)]` -/
def P1716499133546118834.Spec : Prop :=
  ∀ n, P1716499133546118834.a n = (A089079 (n + 1) : ℚ)

end A089079

/-! ## A089079.P17780889302753291487

`eq[2, A000005(2*n+5*(n+1))]+4`
-/

namespace A089079.P17780889302753291487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A089079.P17780889302753291487

namespace A089079

/-- `eq[2, A000005(2*n+5*(n+1))]+4` -/
def P17780889302753291487.Spec : Prop :=
  ∀ n, (P17780889302753291487.a n : ℤ) = A089079 (n + 1)

end A089079

/-! ## A089079.P5245889970767889450

`A020705(A111367(n+1))`
-/

namespace A089079.P5245889970767889450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A111367 (n + 1)).toNat

end

end A089079.P5245889970767889450

namespace A089079

/-- `A020705(A111367(n+1))` -/
def P5245889970767889450.Spec : Prop :=
  ∀ n, P5245889970767889450.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P14567584143787154554

`A174390(A024901(n+1))`
-/

namespace A089079.P14567584143787154554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 (A024901 (n + 1)).toNat

end

end A089079.P14567584143787154554

namespace A089079

/-- `A174390(A024901(n+1))` -/
def P14567584143787154554.Spec : Prop :=
  ∀ n, P14567584143787154554.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P7301308783761720826

`eq[2, A001222(record[7*A006257(n)]+3)]+3`
-/

namespace A089079.P7301308783761720826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A089079.P7301308783761720826

namespace A089079

/-- `eq[2, A001222(record[7*A006257(n)]+3)]+3` -/
def P7301308783761720826.Spec : Prop :=
  ∀ n, (P7301308783761720826.a n : ℤ) = A089079 (n + 1)

end A089079

/-! ## A089079.P10006218631023852786

`eq[1, A061358(7*n)]+3`
-/

namespace A089079.P10006218631023852786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A089079.P10006218631023852786

namespace A089079

/-- `eq[1, A061358(7*n)]+3` -/
def P10006218631023852786.Spec : Prop :=
  ∀ n, (P10006218631023852786.a n : ℤ) = A089079 (n + 1)

end A089079

/-! ## A089079.P2767752702163885580

`record[(n+4)%A014963(7*n+5)]`
-/

namespace A089079.P2767752702163885580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 4 : ℤ) (A014963 (7 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089079.P2767752702163885580

namespace A089079

/-- `record[(n+4)%A014963(7*n+5)]` -/
def P2767752702163885580.Spec : Prop :=
  ∀ n, P2767752702163885580.a n = A089079 (n + 1)

end A089079

/-! ## A089079.P15136684963380494979

`A242062(p?[A017041(n)])+3`
-/

namespace A089079.P15136684963380494979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 3

end

end A089079.P15136684963380494979

namespace A089079

/-- `A242062(p?[A017041(n)])+3` -/
def P15136684963380494979.Spec : Prop :=
  ∀ n, P15136684963380494979.a n = A089079 (n + 1)

end A089079

/-!
# A089080: Sequence is S(infinity) where S(1)={1,2} and S(n)=S(n-1)S'(n-1), where S'(k) is obtained from S(k) by replacing the single 1 with the least integer not occurring in S(k).

The programs for A089080, the canonical program `A089080.P9364764705293490208` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089080 has offset 1).

The definition of A089080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089080.P9364764705293490208

`val(record[lcm(2, n)+2], 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089080

/-- `val(record[lcm(2, n)+2], 2)` -/
def P9364764705293490208.Spec : Prop :=
  ∀ n, (P9364764705293490208.a n : ℤ) = A089080 (n + 1)

theorem P9364764705293490208.correct : P9364764705293490208.Spec := by
  intro n
  simp only [A089080, Nat.add_sub_cancel]

end A089080

/-! ## A089080.P9832047363160340043

`a(∑[n]%n)+1` with `a(0)=1`
-/

namespace A089080.P9832047363160340043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) + 1

end

end A089080.P9832047363160340043

namespace A089080

/-- `a(∑[n]%n)+1` -/
def P9832047363160340043.Spec : Prop :=
  ∀ n, (P9832047363160340043.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P15919981247960658498

`∑{e}[xor(n, -n), #]+1`
-/

namespace A089080.P15919981247960658498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A089080.P15919981247960658498

namespace A089080

/-- `∑{e}[xor(n, -n), #]+1` -/
def P15919981247960658498.Spec : Prop :=
  ∀ n, (P15919981247960658498.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P2148321245139416501

`∏{e}[xor(n, -n), #+1]`
-/

namespace A089080.P2148321245139416501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A089080.P2148321245139416501

namespace A089080

/-- `∏{e}[xor(n, -n), #+1]` -/
def P2148321245139416501.Spec : Prop :=
  ∀ n, (P2148321245139416501.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P2990394167911719524

`∏{e}[2*xor(n, -n), #]`
-/

namespace A089080.P2990394167911719524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A089080.P2990394167911719524

namespace A089080

/-- `∏{e}[2*xor(n, -n), #]` -/
def P2990394167911719524.Spec : Prop :=
  ∀ n, (P2990394167911719524.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P13122258979048083963

`∏{e}[4*and(n, -n), #]`
-/

namespace A089080.P13122258979048083963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A089080.P13122258979048083963

namespace A089080

/-- `∏{e}[4*and(n, -n), #]` -/
def P13122258979048083963.Spec : Prop :=
  ∀ n, (P13122258979048083963.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P3186890143413723092

`∏{e}[4*or(n, -n), #]`
-/

namespace A089080.P3186890143413723092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A089080.P3186890143413723092

namespace A089080

/-- `∏{e}[4*or(n, -n), #]` -/
def P3186890143413723092.Spec : Prop :=
  ∀ n, (P3186890143413723092.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P17772753799735507655

`val(abs(1-4*n)+1, 2)`
-/

namespace A089080.P17772753799735507655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

end

end A089080.P17772753799735507655

namespace A089080

/-- `val(abs(1-4*n)+1, 2)` -/
def P17772753799735507655.Spec : Prop :=
  ∀ n, (P17772753799735507655.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P9234752283692464693

`a(n-gcd(n, ∑[n]))+1` with `a(0)=1`
-/

namespace A089080.P9234752283692464693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A089080.P9234752283692464693

namespace A089080

/-- `a(n-gcd(n, ∑[n]))+1` -/
def P9234752283692464693.Spec : Prop :=
  ∀ n, (P9234752283692464693.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P14683386412122866738

`val(n^a(n-1), 4)+2` with `a(0)=1`
-/

namespace A089080.P14683386412122866738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (n ^ a (n - 1)) 4 + 2

end

end A089080.P14683386412122866738

namespace A089080

/-- `val(n^a(n-1), 4)+2` -/
def P14683386412122866738.Spec : Prop :=
  ∀ n, (P14683386412122866738.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P4267109293086665017

`val(n, a(n-1)!)+2` with `a(0)=1, a(1)=2`
-/

namespace A089080.P4267109293086665017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.valuation n (Nat.factorial (a (n - 1))) + 2

end

end A089080.P4267109293086665017

namespace A089080

/-- `val(n, a(n-1)!)+2` -/
def P4267109293086665017.Spec : Prop :=
  ∀ n, (P4267109293086665017.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P9949230766739818644

`gcd(n%2, a(floor(n/2)))+1` with `a(0)=1`
-/

namespace A089080.P9949230766739818644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (n % 2) (a ⌊(n : ℚ) / 2⌋.toNat) + 1

end

end A089080.P9949230766739818644

namespace A089080

/-- `gcd(n%2, a(floor(n/2)))+1` -/
def P9949230766739818644.Spec : Prop :=
  ∀ n, (P9949230766739818644.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P15398705581947494042

`∑{e}[and(2*n, -(2*n)), #]+1`
-/

namespace A089080.P15398705581947494042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A089080.P15398705581947494042

namespace A089080

/-- `∑{e}[and(2*n, -(2*n)), #]+1` -/
def P15398705581947494042.Spec : Prop :=
  ∀ n, (P15398705581947494042.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P14815668221828238283

`∑{e}[or(2*n, -(2*n)), #]+1`
-/

namespace A089080.P14815668221828238283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A089080.P14815668221828238283

namespace A089080

/-- `∑{e}[or(2*n, -(2*n)), #]+1` -/
def P14815668221828238283.Spec : Prop :=
  ∀ n, (P14815668221828238283.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P7032697855364486270

`a(floor(n/2))+3-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A089080.P7032697855364486270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (3 - a (n - 1))

end

end A089080.P7032697855364486270

namespace A089080

/-- `a(floor(n/2))+3-a(n-1)` -/
def P7032697855364486270.Spec : Prop :=
  ∀ n, P7032697855364486270.a n = A089080 (n + 1)

end A089080

/-! ## A089080.P3739617099669818820

`3-(a(n-1)-a(floor(n/2)))` with `a(0)=1, a(1)=2`
-/

namespace A089080.P3739617099669818820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A089080.P3739617099669818820

namespace A089080

/-- `3-(a(n-1)-a(floor(n/2)))` -/
def P3739617099669818820.Spec : Prop :=
  ∀ n, P3739617099669818820.a n = A089080 (n + 1)

end A089080

/-! ## A089080.P7931064738033943007

`1+a(n/2*(1+(-1)^n)/2)` with `a(0)=1`
-/

namespace A089080.P7931064738033943007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (SequenceMachineLib.roundAway ((n : ℚ) / 2 * ((1 + (-1) ^ n : ℚ) / 2))).toNat

end

end A089080.P7931064738033943007

namespace A089080

/-- `1+a(n/2*(1+(-1)^n)/2)` -/
def P7931064738033943007.Spec : Prop :=
  ∀ n, (P7931064738033943007.a n : ℤ) = A089080 (n + 1)

end A089080

/-! ## A089080.P5254365039023930200

`abs(A123725(n))`
-/

namespace A089080.P5254365039023930200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

end

end A089080.P5254365039023930200

namespace A089080

/-- `abs(A123725(n))` -/
def P5254365039023930200.Spec : Prop :=
  ∀ n, P5254365039023930200.a n = A089080 (n + 1)

end A089080

/-! ## A089080.P15321994625008506654

`sqrt(A123726(2*n))`
-/

namespace A089080.P15321994625008506654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 (2 * n) : ℝ)

end

end A089080.P15321994625008506654

namespace A089080

/-- `sqrt(A123726(2*n))` -/
def P15321994625008506654.Spec : Prop :=
  ∀ n, P15321994625008506654.a n = (A089080 (n + 1) : ℝ)

end A089080

/-! ## A089080.P17839336451193002359

`val(A004277(n), 2)+1`
-/

namespace A089080.P17839336451193002359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 2 + 1

end

end A089080.P17839336451193002359

namespace A089080

/-- `val(A004277(n), 2)+1` -/
def P17839336451193002359.Spec : Prop :=
  ∀ n, (P17839336451193002359.a n : ℤ) = A089080 (n + 1)

end A089080

/-!
# A089081: 26th powers: a(n) = n^26.

The programs for A089081, the canonical program `A089081.P10163833369592836753` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089081 has offset 0).

The definition of A089081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^26` (program `A089081.P10163833369592836753`, by `A089081.P10163833369592836753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089081.P10163833369592836753

`n^26`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089081

/-- `n^26` -/
def P10163833369592836753.Spec : Prop :=
  ∀ n, (P10163833369592836753.a n : ℤ) = A089081 n

theorem P10163833369592836753.correct : P10163833369592836753.Spec := by
  intro n
  simp only [A089081]

end A089081

/-!
# A089083: T(n,k) = (floor(k*n/2) * ceiling(k*n/2))^2, triangular array read by rows, 1 <= k <= n.

The programs for A089083, the canonical program `A089083.P7511820489399649208` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089083 has offset 1).

The definition of A089083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(floor((col(n)+1)*(row(n)+1)/2)*ceil((col(n)+1)*(row(n)+1)/2))²` (program `A089083.P7511820489399649208`, by `A089083.P7511820489399649208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089083.P7511820489399649208

`(floor((col(n)+1)*(row(n)+1)/2)*ceil((col(n)+1)*(row(n)+1)/2))²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089083

/-- `(floor((col(n)+1)*(row(n)+1)/2)*ceil((col(n)+1)*(row(n)+1)/2))²` -/
def P7511820489399649208.Spec : Prop :=
  ∀ n, P7511820489399649208.a n = A089083 (n + 1)

theorem P7511820489399649208.correct : P7511820489399649208.Spec := by
  intro n
  simp only [A089083, Nat.add_sub_cancel]

end A089083

/-! ## A089083.P4625688915889659951

`floor((A075362(n+1)/2)²)²`
-/

namespace A089083.P4625688915889659951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A075362 (n + 1) : ℚ) / 2) ^ 2⌋ ^ 2

end

end A089083.P4625688915889659951

namespace A089083

/-- `floor((A075362(n+1)/2)²)²` -/
def P4625688915889659951.Spec : Prop :=
  ∀ n, P4625688915889659951.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P2907326356653840301

`A002620(A075362(n+1))²`
-/

namespace A089083.P2907326356653840301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A075362 (n + 1)).toNat ^ 2

end

end A089083.P2907326356653840301

namespace A089083

/-- `A002620(A075362(n+1))²` -/
def P2907326356653840301.Spec : Prop :=
  ∀ n, P2907326356653840301.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P17320911312666216892

`A083392(A223544(n+1))²`
-/

namespace A089083.P17320911312666216892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (A223544 (n + 1)).toNat ^ 2

end

end A089083.P17320911312666216892

namespace A089083

/-- `A083392(A223544(n+1))²` -/
def P17320911312666216892.Spec : Prop :=
  ∀ n, P17320911312666216892.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P11374920912320640493

`A002620(A223544(n+1)+1)²`
-/

namespace A089083.P11374920912320640493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A223544 (n + 1) + 1).toNat ^ 2

end

end A089083.P11374920912320640493

namespace A089083

/-- `A002620(A223544(n+1)+1)²` -/
def P11374920912320640493.Spec : Prop :=
  ∀ n, P11374920912320640493.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P13879511605249508087

`A002620(A162610(n+1)-A025581(n))²`
-/

namespace A089083.P13879511605249508087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A162610 (n + 1) - A025581 n).toNat ^ 2

end

end A089083.P13879511605249508087

namespace A089083

/-- `A002620(A162610(n+1)-A025581(n))²` -/
def P13879511605249508087.Spec : Prop :=
  ∀ n, P13879511605249508087.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P9425926325095079809

`A002620(A151890(n)-A144204(n+1))²`
-/

namespace A089083.P9425926325095079809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A151890 n - A144204 (n + 1)).toNat ^ 2

end

end A089083.P9425926325095079809

namespace A089083

/-- `A002620(A151890(n)-A144204(n+1))²` -/
def P9425926325095079809.Spec : Prop :=
  ∀ n, P9425926325095079809.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P3694831540685684233

`A002620(A144204(n+1)+A108872(n+1))²`
-/

namespace A089083.P3694831540685684233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A144204 (n + 1) + A108872 (n + 1)).toNat ^ 2

end

end A089083.P3694831540685684233

namespace A089083

/-- `A002620(A144204(n+1)+A108872(n+1))²` -/
def P3694831540685684233.Spec : Prop :=
  ∀ n, P3694831540685684233.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P17089393718542366366

`A002620(A002024(n+1)*A002260(n+1))²`
-/

namespace A089083.P17089393718542366366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002024 (n + 1) * A002260 (n + 1)).toNat ^ 2

end

end A089083.P17089393718542366366

namespace A089083

/-- `A002620(A002024(n+1)*A002260(n+1))²` -/
def P17089393718542366366.Spec : Prop :=
  ∀ n, P17089393718542366366.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P10000216317044314063

`A002620(A349520(2*n+1)*A349520(2*(n+1)))²`
-/

namespace A089083.P10000216317044314063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A349520 (2 * n + 1) * A349520 (2 * (n + 1))).toNat ^ 2

end

end A089083.P10000216317044314063

namespace A089083

/-- `A002620(A349520(2*n+1)*A349520(2*(n+1)))²` -/
def P10000216317044314063.Spec : Prop :=
  ∀ n, P10000216317044314063.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P6000968538889735987

`A030179(A075362(n+1))`
-/

namespace A089083.P6000968538889735987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (A075362 (n + 1)).toNat

end

end A089083.P6000968538889735987

namespace A089083

/-- `A030179(A075362(n+1))` -/
def P6000968538889735987.Spec : Prop :=
  ∀ n, P6000968538889735987.a n = A089083 (n + 1)

end A089083

/-! ## A089083.P12272121587007835491

`A030179(A002024(n+1)*A002260(n+1))`
-/

namespace A089083.P12272121587007835491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 (A002024 (n + 1) * A002260 (n + 1)).toNat

end

end A089083.P12272121587007835491

namespace A089083

/-- `A030179(A002024(n+1)*A002260(n+1))` -/
def P12272121587007835491.Spec : Prop :=
  ∀ n, P12272121587007835491.a n = A089083 (n + 1)

end A089083

/-!
# A089084: Numbers n such that abs ( (sum_m (m=1..n) d(m)) / n - log(n) - 2*gamma + 1) is a decreasing sequence, where d(m) is the number of divisors A000005(m) and gamma is Euler's constant A001620.

The programs for A089084, there is no canonical definition to state claims against.
-/

/-! ## A089084.P17181737635344954125

`A056813(A000267(n)*A041573(n))`
-/

namespace A089084.P17181737635344954125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A000267 n * A041573 n).toNat

end

end A089084.P17181737635344954125

/-! ## A089084.P15155251525664832105

`lt[A071297(n+1), 10]+1`
-/

namespace A089084.P15155251525664832105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A089084.P15155251525664832105

/-! ## A089084.P6031947630005897358

`record[A087039(A205001(n+1))]`
-/

namespace A089084.P6031947630005897358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A205001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089084.P6031947630005897358

/-! ## A089084.P9071450607105642932

`record[A020639(∑[A107652(n)!])]`
-/

namespace A089084.P9071450607105642932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A107652 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089084.P9071450607105642932

/-! ## A089084.P16489052714870694118

`record[A323244(A299481(n+1))+1]`
-/

namespace A089084.P16489052714870694118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (A299481 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089084.P16489052714870694118

/-!
# A089086: Greatest common divisor of n^2-5 and n^2+5.

The programs for A089086, the canonical program `A089086.P6836566577160355402` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089086 has offset 0).

The definition of A089086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089086.P6836566577160355402

`gcd(n+5, 10)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089086

/-- `gcd(n+5, 10)` -/
def P6836566577160355402.Spec : Prop :=
  ∀ n, (P6836566577160355402.a n : ℤ) = A089086 n

theorem P6836566577160355402.correct : P6836566577160355402.Spec := by
  intro n
  simp only [A089086]

end A089086

/-!
# A089087: Triangular array of coefficients multiplied by n! of polynomials in e. These give the expected number of trials needed for the sum of uniform random variables from the interval [0,1] to exceed n+1.

The programs for A089087, the canonical program `A089087.P14514903005039117442` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089087 has offset 0).

The definition of A089087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089087.P14514903005039117442

`(-1)^col(n)*row(n)!*(row(n)+1-col(n))^col(n)/col(n)!`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089087

/-- `(-1)^col(n)*row(n)!*(row(n)+1-col(n))^col(n)/col(n)!` -/
def P14514903005039117442.Spec : Prop :=
  ∀ n, P14514903005039117442.a n = (A089087 n : ℚ)

end A089087

/-! ## A089087.P15250469759594262875

`A130595(A112367(n))*A152818(A061579(n))`
-/

namespace A089087.P15250469759594262875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A112367 n).toNat * A152818 (A061579 n).toNat

end

end A089087.P15250469759594262875

namespace A089087

/-- `A130595(A112367(n))*A152818(A061579(n))` -/
def P15250469759594262875.Spec : Prop :=
  ∀ n, P15250469759594262875.a n = A089087 n

end A089087

/-! ## A089087.P3500519633481546473

`A062157(A002260(n+1))*A152818(A061579(n))`
-/

namespace A089087.P3500519633481546473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A152818 (A061579 n).toNat

end

end A089087.P3500519633481546473

namespace A089087

/-- `A062157(A002260(n+1))*A152818(A061579(n))` -/
def P3500519633481546473.Spec : Prop :=
  ∀ n, P3500519633481546473.a n = A089087 n

end A089087

/-! ## A089087.P11442798411617779152

`A336836(A002426(n))+A021009(n)`
-/

namespace A089087.P11442798411617779152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336836 (A002426 n).toNat + A021009 n

end

end A089087.P11442798411617779152

namespace A089087

/-- `A336836(A002426(n))+A021009(n)` -/
def P11442798411617779152.Spec : Prop :=
  ∀ n, P11442798411617779152.a n = A089087 n

end A089087

/-! ## A089087.P1131594150553919896

`A378036(A000108(n))+A021009(n)`
-/

namespace A089087.P1131594150553919896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (A000108 n).toNat + A021009 n

end

end A089087.P1131594150553919896

namespace A089087

/-- `A378036(A000108(n))+A021009(n)` -/
def P1131594150553919896.Spec : Prop :=
  ∀ n, P1131594150553919896.a n = A089087 n

end A089087

/-!
# A089088: a(0) = 1, a(1) = 2; for n > 1, a(n) = smallest positive number not already in sequence which has GCD > 1 with some earlier term.

The programs for A089088, there is no canonical definition to state claims against.
-/

/-! ## A089088.P11843169377338428542

`A251622(n+1)-A058276(A008279(n))`
-/

namespace A089088.P11843169377338428542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (n + 1) - A058276 (A008279 n).toNat

end

end A089088.P11843169377338428542

/-! ## A089088.P2052067100210258986

`A251622(n+1)-A102683(A210372(n))`
-/

namespace A089088.P2052067100210258986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (n + 1) - A102683 (A210372 n).toNat

end

end A089088.P2052067100210258986

/-! ## A089088.P10125351856316408250

`A251622(n+1)-A185284(A310025(n))`
-/

namespace A089088.P10125351856316408250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (n + 1) - A185284 (A310025 n).toNat

end

end A089088.P10125351856316408250

/-! ## A089088.P2211796326583939871

`A251622(n+1)-A289235(A247712(n))`
-/

namespace A089088.P2211796326583939871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (n + 1) - A289235 (A247712 n).toNat

end

end A089088.P2211796326583939871

/-! ## A089088.P839921321036175549

`A251622(n+1)-A185284(A008578(n+1))`
-/

namespace A089088.P839921321036175549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (n + 1) - A185284 (A008578 (n + 1)).toNat

end

end A089088.P839921321036175549

/-!
# A089089: Convoluted convolved Fibonacci numbers G_j^(2).

The programs for A089089, there is no canonical definition to state claims against.
-/

/-! ## A089089.P5589946098124871821

`A089098(n+1)-A079977(n)`
-/

namespace A089089.P5589946098124871821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1) - A079977 n

end

end A089089.P5589946098124871821

/-! ## A089089.P7724114077101332263

`A089098(n+1)-Δ[A103609(n+5)]`
-/

namespace A089089.P7724114077101332263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1) - (f1 (n + 1) - f1 n)

end

end A089089.P7724114077101332263

/-! ## A089089.P11032454051450005700

`A089098(n+1)-A000045(A027656(n))`
-/

namespace A089089.P11032454051450005700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1) - A000045 (A027656 n).toNat

end

end A089089.P11032454051450005700

/-! ## A089089.P9769587582578545192

`A089098(n+1)-A000045(A242112(3*n+2)-(n+1))`
-/

namespace A089089.P9769587582578545192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1) - A000045 (A242112 (3 * n + 2) - (n + 1 : ℤ)).toNat

end

end A089089.P9769587582578545192

/-! ## A089089.P927924806358442711

`A089098(n+1)-A000045(A131732(n)*A131734(3*(n+1)))`
-/

namespace A089089.P927924806358442711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (n + 1) - A000045 (A131732 n * A131734 (3 * (n + 1))).toNat

end

end A089089.P927924806358442711

/-! ## A089089.P7837943434063871741

`A001629(n+2)-A089098(n+1)`
-/

namespace A089089.P7837943434063871741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) - A089098 (n + 1)

end

end A089089.P7837943434063871741

/-! ## A089089.P4648588292170182464

`∑[∑[A006367(n)]]-A089098(n+1)`
-/

namespace A089089.P4648588292170182464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089098 (n + 1)

end

end A089089.P4648588292170182464

/-! ## A089089.P9784981443143522033

`A067418(∑[n])-A089098(n+1)`
-/

namespace A089089.P9784981443143522033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j) - A089098 (n + 1)

end

end A089089.P9784981443143522033

/-! ## A089089.P8278140071178143873

`record[A067418(n)]-A089098(n+1)`
-/

namespace A089089.P8278140071178143873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089098 (n + 1)

end

end A089089.P8278140071178143873

/-!
# A089090: a(n) is the smallest composite number coprime to n.

The programs for A089090, there is no canonical definition to state claims against.
-/

/-! ## A089090.P8039764880459484324

`A053669(n+1)²`
-/

namespace A089090.P8039764880459484324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) ^ 2

end

end A089090.P8039764880459484324

/-!
# A089091: a(n) is the smallest composite number coprime to n and n+1.

The programs for A089091, there is no canonical definition to state claims against.
-/

/-! ## A089091.P9544520972827071588

`A053670(n+1)²`
-/

namespace A089091.P9544520972827071588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 1) ^ 2

end

end A089091.P9544520972827071588

/-! ## A089091.P17600380721122634702

`A053670(n-log2(1/2))^2`
-/

namespace A089091.P17600380721122634702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A089091.P17600380721122634702

/-! ## A089091.P1716461951612431783

`A002620(2*A053670(n+1))`
-/

namespace A089091.P1716461951612431783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A053670 (n + 1)).toNat

end

end A089091.P1716461951612431783

/-! ## A089091.P15308579411316547598

`A053626(A053670(n+1)^2)`
-/

namespace A089091.P15308579411316547598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A053670 (n + 1) ^ 2).toNat

end

end A089091.P15308579411316547598

/-! ## A089091.P12752678856012083686

`∏{p}[A053670(n+1), #*A014963(#)]`
-/

namespace A089091.P12752678856012083686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A014963 p

end

end A089091.P12752678856012083686

/-! ## A089091.P3528648811016221290

`A053670(A000027(n+1))*A053670(n+1)`
-/

namespace A089091.P3528648811016221290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (A000027 (n + 1)).toNat * A053670 (n + 1)

end

end A089091.P3528648811016221290

/-! ## A089091.P13520291388449700267

`A284723(A069834(n+1))²`
-/

namespace A089091.P13520291388449700267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (A069834 (n + 1)).toNat ^ 2

end

end A089091.P13520291388449700267

/-! ## A089091.P12980909976022359831

`A284723(∑[n+1])²`
-/

namespace A089091.P12980909976022359831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284723 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A089091.P12980909976022359831

/-! ## A089091.P11693398917333794035

`A355001(∑[2*(n+1)])²`
-/

namespace A089091.P11693398917333794035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A089091.P11693398917333794035

/-! ## A089091.P323070383037493961

`A190911(∑[n+1])²`
-/

namespace A089091.P323070383037493961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190911 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A089091.P323070383037493961

/-! ## A089091.P1199428078472652974

`A053670(n+1)*A190911(A000217(n+1))`
-/

namespace A089091.P1199428078472652974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 1) * A190911 (A000217 (n + 1)).toNat

end

end A089091.P1199428078472652974

/-! ## A089091.P9212526546010715471

`A089090(A078636(n+1))`
-/

namespace A089091.P9212526546010715471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089090 (A078636 (n + 1)).toNat

end

end A089091.P9212526546010715471

/-! ## A089091.P17556851415631786839

`A089090(A083482(n+1))`
-/

namespace A089091.P17556851415631786839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089090 (A083482 (n + 1)).toNat

end

end A089091.P17556851415631786839

/-! ## A089091.P14035273118502398993

`A089090(∑[2*(n+1)])`
-/

namespace A089091.P14035273118502398993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A089091.P14035273118502398993

/-! ## A089091.P11996885868208044821

`A351566((2*n+3)²)²`
-/

namespace A089091.P11996885868208044821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 ((2 * n + 3) ^ 2) ^ 2

end

end A089091.P11996885868208044821

/-!
# A089092: Convoluted convolved Fibonacci numbers G_j^(5).

The programs for A089092, there is no canonical definition to state claims against.
-/

/-! ## A089092.P11525878840290747172

`record[A089106(n+1)-A089097(n+1)]`
-/

namespace A089092.P11525878840290747172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089106 (n + 1) - A089097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089092.P11525878840290747172

/-! ## A089092.P1356350743559444691

`record[A089106(n+2)%A089097(n+2)]`
-/

namespace A089092.P1356350743559444691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089106 (n + 2)) (A089097 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089092.P1356350743559444691

/-! ## A089092.P7940805426792145568

`A089106(2*n+1)-A089097(2*n+1)`
-/

namespace A089092.P7940805426792145568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089106 (2 * n + 1) - A089097 (2 * n + 1)

end

end A089092.P7940805426792145568

/-! ## A089092.P3567130783945489502

`A002266(A001873(n))`
-/

namespace A089092.P3567130783945489502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A001873 n).toNat

end

end A089092.P3567130783945489502

/-! ## A089092.P14539905425369327848

`A134119(A001873(n)+1)`
-/

namespace A089092.P14539905425369327848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A001873 n + 1).toNat

end

end A089092.P14539905425369327848

/-!
# A089093: Convoluted convolved Fibonacci numbers G_j^(6).

The programs for A089093, there is no canonical definition to state claims against.
-/

/-! ## A089093.P725657628065106781

`A089107(A052905(n+3))`
-/

namespace A089093.P725657628065106781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A052905 (n + 3)).toNat

end

end A089093.P725657628065106781

/-! ## A089093.P7547962348149823222

`A089107(A056119(n)+16)`
-/

namespace A089093.P7547962348149823222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A056119 n + 16).toNat

end

end A089093.P7547962348149823222

/-! ## A089093.P13050254677345025093

`A089107(eq[3, A219347(n)])`
-/

namespace A089093.P13050254677345025093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089093.P13050254677345025093

/-!
# A089094: Convoluted convolved Fibonacci numbers G_j^(7).

The programs for A089094, there is no canonical definition to state claims against.
-/

/-! ## A089094.P6079344190133017395

`round(A001875(n)%A038817(A000032(n+2)+1)/7)`
-/

namespace A089094.P6079344190133017395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A001875 n) (A038817 (A000032 (n + 2) + 1).toNat) : ℚ) / 7)

end

end A089094.P6079344190133017395

/-! ## A089094.P18404071641509499681

`A132270(A001875(n)+1)`
-/

namespace A089094.P18404071641509499681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A001875 n + 1).toNat

end

end A089094.P18404071641509499681

/-! ## A089094.P17147467290581351814

`A187185(A001875(n)+1)-1`
-/

namespace A089094.P17147467290581351814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A001875 n + 1).toNat - 1

end

end A089094.P17147467290581351814

/-!
# A089095: Convoluted convolved Fibonacci numbers G_j^(8).

The programs for A089095, there is no canonical definition to state claims against.
-/

/-! ## A089095.P1845864402584955967

`A105519(A228736(n+1))`
-/

namespace A089095.P1845864402584955967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A228736 (n + 1)).toNat

end

end A089095.P1845864402584955967

/-! ## A089095.P7696665260587144164

`A065718(A279557(n+4)-8)`
-/

namespace A089095.P7696665260587144164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A279557 (n + 4) - 8).toNat

end

end A089095.P7696665260587144164

/-!
# A089096: Convoluted convolved Fibonacci numbers G_j^(9).

The programs for A089096, there is no canonical definition to state claims against.
-/

/-! ## A089096.P5310927189819096357

`A105519(∑[A261383(n+2)])`
-/

namespace A089096.P5310927189819096357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089096.P5310927189819096357

/-!
# A089097: Convoluted convolved Fibonacci numbers G_j^(10).

The programs for A089097, there is no canonical definition to state claims against.
-/

/-! ## A089097.P13723856044610662254

`xor(A060019(A060005(n)), A325401(n))`
-/

namespace A089097.P13723856044610662254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060019 (A060005 n).toNat) (A325401 n)

end

end A089097.P13723856044610662254

/-! ## A089097.P15119566941749752712

`A000045(3*n)-A022328(A005649(n))`
-/

namespace A089097.P15119566941749752712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) - A022328 (A005649 n).toNat

end

end A089097.P15119566941749752712

/-!
# A089098: Sign twisted convoluted convolved Fibonacci numbers H_j^(2).

The programs for A089098, there is no canonical definition to state claims against.
-/

/-! ## A089098.P15115547206886615240

`A089089(n+1)+A079977(n)`
-/

namespace A089098.P15115547206886615240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (n + 1) + A079977 n

end

end A089098.P15115547206886615240

/-! ## A089098.P18329194638197260833

`A089089(n+1)+Δ[A103609(n+5)]`
-/

namespace A089098.P18329194638197260833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (n + 1) + (f1 (n + 1) - f1 n)

end

end A089098.P18329194638197260833

/-! ## A089098.P5426072636751227911

`A089089(n+1)+A000045(A027656(n))`
-/

namespace A089098.P5426072636751227911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (n + 1) + A000045 (A027656 n).toNat

end

end A089098.P5426072636751227911

/-! ## A089098.P2521260074505265240

`A089089(n+1)+A000045(A242112(3*n+2)-(n+1))`
-/

namespace A089098.P2521260074505265240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (n + 1) + A000045 (A242112 (3 * n + 2) - (n + 1 : ℤ)).toNat

end

end A089098.P2521260074505265240

/-! ## A089098.P7206929215177581248

`A089089(n+1)+A000045(A131732(n)*A131734(3*(n+1)))`
-/

namespace A089098.P7206929215177581248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (n + 1) + A000045 (A131732 n * A131734 (3 * (n + 1))).toNat

end

end A089098.P7206929215177581248

/-! ## A089098.P16961127198509977673

`A337009(∑[n+1]+2)`
-/

namespace A089098.P16961127198509977673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337009 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A089098.P16961127198509977673

/-! ## A089098.P10785737062564366093

`A067418(∑[n])-A089089(n+1)`
-/

namespace A089098.P10785737062564366093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (∑ j ∈ Finset.range (n + 1), f1 j) - A089089 (n + 1)

end

end A089098.P10785737062564366093

/-! ## A089098.P2331056924496359365

`record[A067418(n)]-A089089(n+1)`
-/

namespace A089098.P2331056924496359365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089089 (n + 1)

end

end A089098.P2331056924496359365

/-! ## A089098.P656602960355934408

`A067330(A000096(n))-A089089(n+1)`
-/

namespace A089098.P656602960355934408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000096 n).toNat - A089089 (n + 1)

end

end A089098.P656602960355934408

