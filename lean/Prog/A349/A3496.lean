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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
# A349600: E.g.f. satisfies: A(x)^A(x) = 1 + x*A(x)^2.

The programs for A349600, there is no canonical definition to state claims against.
-/

/-! ## A349600.P18324659087054366428

`A255906(n)-A085268(A035341(n))`
-/

namespace A349600.P18324659087054366428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255906 n - A085268 ((A035341 n).toNat + 32)

end

end A349600.P18324659087054366428

/-! ## A349600.P14514878985372351479

`A043276(A081187(n))-A292298(n)`
-/

namespace A349600.P14514878985372351479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A081187 n).toNat - A292298 n

end

end A349600.P14514878985372351479

/-!
# A349601: E.g.f. satisfies: A(x) * log(A(x)) = exp(x*A(x)^2) - 1.

The programs for A349601, there is no canonical definition to state claims against.
-/

/-! ## A349601.P7756802049317777895

`A023991(∑[round(sqrt(n))]!)`
-/

namespace A349601.P7756802049317777895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023991 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A349601.P7756802049317777895

/-!
# A349602: E.g.f. satisfies: A(x) * log(A(x)) = 1 - exp(-x*A(x)^2).

The programs for A349602, there is no canonical definition to state claims against.
-/

/-! ## A349602.P11221500668183240669

`A000120(A053486(n))-A120050(n)`
-/

namespace A349602.P11221500668183240669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053486 n).toNat - A120050 n

end

end A349602.P11221500668183240669

/-! ## A349602.P6710496045289534715

`A036378(n)-A052128(A121675(n))²+1`
-/

namespace A349602.P6710496045289534715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A052128 (A121675 n).toNat ^ 2 + 1

end

end A349602.P6710496045289534715

/-!
# A349603: a(n) = Sum_{k=0..n} binomial(n,k) * A000108(k) * k^(n-k).

The programs for A349603, there is no canonical definition to state claims against.
-/

/-! ## A349603.P2250500911606135029

`A008616(13*A108442(n))`
-/

namespace A349603.P2250500911606135029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (13 * A108442 n).toNat

end

end A349603.P2250500911606135029

/-! ## A349603.P1519905732724492310

`A008616(lcm(13, A108442(n)))`
-/

namespace A349603.P1519905732724492310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm 13 (A108442 n))

end

end A349603.P1519905732724492310

/-!
# A349605: Decimal expansion of the probability that the intersection of a cube with random plane that passes through its center is a hexagon.

The programs for A349605, there is no canonical definition to state claims against.
-/

/-! ## A349605.P7366007764695568429

`9-A394805(n)`
-/

namespace A349605.P7366007764695568429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A394805 n

end

end A349605.P7366007764695568429

/-!
# A349606: Dirichlet convolution of the binary digital sum function (A000120) with itself.

The programs for A349606, the canonical program `A349606.P7513340450088457348` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349606 has offset 1).

The definition of A349606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349606.P7513340450088457348

`∑{d}[n+1, A000120(#)*A000120((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349606

/-- `∑{d}[n+1, A000120(#)*A000120((n+1)/#)]` -/
def P7513340450088457348.Spec : Prop :=
  ∀ n, P7513340450088457348.a n = A349606 (n + 1)

theorem P7513340450088457348.correct : P7513340450088457348.Spec := by
  intro n
  simp only [A349606, Nat.add_sub_cancel]

end A349606

/-! ## A349606.P8651779915101963633

`∑{d}[n+1, A093653(#)*A297115((n+1)/#)]`
-/

namespace A349606.P8651779915101963633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093653 d * A297115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349606.P8651779915101963633

namespace A349606

/-- `∑{d}[n+1, A093653(#)*A297115((n+1)/#)]` -/
def P8651779915101963633.Spec : Prop :=
  ∀ n, P8651779915101963633.a n = A349606 (n + 1)

end A349606

/-! ## A349606.P8765438237356618761

`A000120(A187829(n+1))*A001616(n+1)`
-/

namespace A349606.P8765438237356618761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A187829 (n + 1)).toNat * A001616 (n + 1)

end

end A349606.P8765438237356618761

namespace A349606

/-- `A000120(A187829(n+1))*A001616(n+1)` -/
def P8765438237356618761.Spec : Prop :=
  ∀ n, P8765438237356618761.a n = A349606 (n + 1)

end A349606

/-!
# A349607: a(n) is the number of divisors of the n-th superabundant number (A004394).

The programs for A349607, there is no canonical definition to state claims against.
-/

/-! ## A349607.P9641439532765807296

`A000005(A004394(n+1))`
-/

namespace A349607.P9641439532765807296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004394 (n + 1)).toNat

end

end A349607.P9641439532765807296

/-! ## A349607.P18304939275537431555

`A146288(A293635(n+1))`
-/

namespace A349607.P18304939275537431555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (A293635 (n + 1)).toNat

end

end A349607.P18304939275537431555

/-! ## A349607.P9001413410744904871

`∏{e}[A166981(n+1), #+1]`
-/

namespace A349607.P9001413410744904871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A349607.P9001413410744904871

/-! ## A349607.P3606787864091300396

`∑{d}[A004394(n+1), gcd(#, A000040(n+1))]`
-/

namespace A349607.P3606787864091300396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A349607.P3606787864091300396

/-! ## A349607.P18405775524314741323

`-∑{d}[A004394(A000027(n+1)), or(#, -1)]`
-/

namespace A349607.P18405775524314741323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n).natAbs, Int.lor (d : ℤ) (-1))

end

end A349607.P18405775524314741323

/-!
# A349608: a(n) is the number of divisors of the n-th highly abundant number (A002093).

The programs for A349608, there is no canonical definition to state claims against.
-/

/-! ## A349608.P11500616627860287928

`A000005(A002093(n+1))`
-/

namespace A349608.P11500616627860287928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002093 (n + 1)).toNat

end

end A349608.P11500616627860287928

/-! ## A349608.P15482259026259576501

`∑{d}[A002093(n+1), gcd(#, A075580(n))]`
-/

namespace A349608.P15482259026259576501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A075580 n)

end

end A349608.P15482259026259576501

/-! ## A349608.P16424084925418740937

`∑{d}[A002093(n+1), A002262(val(#, 5))!]`
-/

namespace A349608.P16424084925418740937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A002262 (SequenceMachineLib.valuation d 5)).toNat

end

end A349608.P16424084925418740937

/-! ## A349608.P7109525786412733833

`∑{d}[A002093(n+1), ceil(#/A181561(n+1))]`
-/

namespace A349608.P7109525786412733833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈(d : ℚ) / (A181561 (n + 1) : ℚ)⌉

end

end A349608.P7109525786412733833

/-! ## A349608.P1136961170549136797

`∑{d}[A002093(n+1), ceil(#/A181562(n+1))]`
-/

namespace A349608.P1136961170549136797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈(d : ℚ) / (A181562 (n + 1) : ℚ)⌉

end

end A349608.P1136961170549136797

/-! ## A349608.P18202950138145341680

`∑{d}[A002093(n+1), #^A008683(54*(n+1))]`
-/

namespace A349608.P18202950138145341680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A008683 (54 * (n + 1)) : ℤ)

end

end A349608.P18202950138145341680

/-! ## A349608.P17982184078607451416

`∑{d}[A002093(n+1), A049419(A006530(#))]`
-/

namespace A349608.P17982184078607451416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049419 (A006530 d).toNat

end

end A349608.P17982184078607451416

/-! ## A349608.P5760107048307757791

`∑{d}[A002093(n+1), A122261(A000010(#))]`
-/

namespace A349608.P5760107048307757791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A122261 (A000010 d).toNat

end

end A349608.P5760107048307757791

/-! ## A349608.P16548710698072787851

`A341879(A034885(n+1))`
-/

namespace A349608.P16548710698072787851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (A034885 (n + 1)).toNat

end

end A349608.P16548710698072787851

/-!
# A349609: Number of solutions to x^2 + y^2 <= n^2, where x, y are positive odd integers.

The programs for A349609, there is no canonical definition to state claims against.
-/

/-! ## A349609.P8310900909318323197

`A053415(n)/4`
-/

namespace A349609.P8310900909318323197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 n : ℚ) / 4

end

end A349609.P8310900909318323197

/-! ## A349609.P5644264076333796066

`A110657(A053415(n))`
-/

namespace A349609.P5644264076333796066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A053415 n).toNat

end

end A349609.P5644264076333796066

/-! ## A349609.P8968205641498874950

`A026922(A076141(n)+A053415(n))`
-/

namespace A349609.P8968205641498874950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A076141 n + A053415 n).toNat

end

end A349609.P8968205641498874950

/-! ## A349609.P9345013725238672048

`A026922(xor(A053415(n), A076141(n)))`
-/

namespace A349609.P9345013725238672048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (Int.xor (A053415 n) (A076141 n)).toNat

end

end A349609.P9345013725238672048

/-! ## A349609.P2274407161234393786

`A002265(A053415(n)+1)`
-/

namespace A349609.P2274407161234393786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053415 n + 1).toNat

end

end A349609.P2274407161234393786

/-! ## A349609.P11350481110339240887

`A008624(A053415(n)+1)`
-/

namespace A349609.P11350481110339240887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A053415 n + 1).toNat

end

end A349609.P11350481110339240887

/-! ## A349609.P12981377694754556604

`A025480(A053415(n)+1)`
-/

namespace A349609.P12981377694754556604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053415 n + 1).toNat

end

end A349609.P12981377694754556604

/-! ## A349609.P10623934482270481175

`A059169(A053415(n)+1)`
-/

namespace A349609.P10623934482270481175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A053415 n + 1).toNat

end

end A349609.P10623934482270481175

/-! ## A349609.P1301053505239140159

`A008624(or(1, A053415(n)))`
-/

namespace A349609.P1301053505239140159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 1 (A053415 n)).toNat

end

end A349609.P1301053505239140159

/-! ## A349609.P6830938710442941435

`A025480(or(1, A053415(n)))`
-/

namespace A349609.P6830938710442941435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 1 (A053415 n)).toNat

end

end A349609.P6830938710442941435

/-!
# A349610: Number of solutions to x^2 + y^2 + z^2 <= n^2, where x, y, z are positive odd integers.

The programs for A349610, there is no canonical definition to state claims against.
-/

/-! ## A349610.P11845630708769441764

`A053596(n)/8`
-/

namespace A349610.P11845630708769441764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053596 n : ℚ) / 8

end

end A349610.P11845630708769441764

/-! ## A349610.P12583003939022077092

`A372512(n²)`
-/

namespace A349610.P12583003939022077092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372512 (n ^ 2)

end

end A349610.P12583003939022077092

/-! ## A349610.P13941280668248214401

`A006085(A053596(n))`
-/

namespace A349610.P13941280668248214401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A053596 n).toNat

end

end A349610.P13941280668248214401

/-!
# A349611: Number of solutions to x^2 + y^2 + z^2 + w^2 <= n^2, where x, y, z, w are positive odd integers.

The programs for A349611, there is no canonical definition to state claims against.
-/

/-! ## A349611.P16609623219313306318

`A372613(n²)`
-/

namespace A349611.P16609623219313306318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372613 (n ^ 2)

end

end A349611.P16609623219313306318

/-!
# A349612: Dirichlet convolution of A342001 [{arithmetic derivative of n}/A003557(n)] with A325126 [Dirichlet inverse of rad(n)].

The programs for A349612, the canonical program `A349612.P9375249722541774064` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349612 has offset 1).

The definition of A349612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349612.P9375249722541774064

`∑{d}[A349394(n+1), A125131(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349612

/-- `∑{d}[A349394(n+1), A125131(#)]` -/
def P9375249722541774064.Spec : Prop :=
  ∀ n, P9375249722541774064.a n = A349612 (n + 1)

theorem P9375249722541774064.correct : P9375249722541774064.Spec := by
  intro n
  simp only [A349612, Nat.add_sub_cancel]

end A349612

/-! ## A349612.P6606642947305169393

`∑{d}[A048671(n+1)%(n+1), A125131(#)]`
-/

namespace A349612.P6606642947305169393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048671 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A349612.P6606642947305169393

namespace A349612

/-- `∑{d}[A048671(n+1)%(n+1), A125131(#)]` -/
def P6606642947305169393.Spec : Prop :=
  ∀ n, P6606642947305169393.a n = A349612 (n + 1)

end A349612

/-! ## A349612.P10541119462574331648

`∑{d}[A205959(n+1)%(n+1), A125131(#)]`
-/

namespace A349612.P10541119462574331648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205959 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A349612.P10541119462574331648

namespace A349612

/-- `∑{d}[A205959(n+1)%(n+1), A125131(#)]` -/
def P10541119462574331648.Spec : Prop :=
  ∀ n, P10541119462574331648.a n = A349612 (n + 1)

end A349612

/-! ## A349612.P1440815249950404818

`∑{d}[n+1, A125131(#)*A346485((n+1)/#)]`
-/

namespace A349612.P1440815249950404818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125131 d * A346485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349612.P1440815249950404818

namespace A349612

/-- `∑{d}[n+1, A125131(#)*A346485((n+1)/#)]` -/
def P1440815249950404818.Spec : Prop :=
  ∀ n, P1440815249950404818.a n = A349612 (n + 1)

end A349612

/-! ## A349612.P3649238786465828594

`∑{d}[n+1, A325126(#)*A342001((n+1)/#)]`
-/

namespace A349612.P3649238786465828594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A325126 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349612.P3649238786465828594

namespace A349612

/-- `∑{d}[n+1, A325126(#)*A342001((n+1)/#)]` -/
def P3649238786465828594.Spec : Prop :=
  ∀ n, P3649238786465828594.a n = A349612 (n + 1)

end A349612

/-! ## A349612.P10701681631416169396

`∑{d}[∑{p}[A014963(n+1), (n+1)/#], A125131(#)]`
-/

namespace A349612.P10701681631416169396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (n + 1 : ℚ) / (p : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A125131 d

end

end A349612.P10701681631416169396

namespace A349612

/-- `∑{d}[∑{p}[A014963(n+1), (n+1)/#], A125131(#)]` -/
def P10701681631416169396.Spec : Prop :=
  ∀ n, P10701681631416169396.a n = A349612 (n + 1)

end A349612

/-! ## A349612.P4012829874748281347

`∑{d}[A052126(n+1), A069513(n+1)*A125131(#)]`
-/

namespace A349612.P4012829874748281347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 (n + 1) * A125131 d

end

end A349612.P4012829874748281347

namespace A349612

/-- `∑{d}[A052126(n+1), A069513(n+1)*A125131(#)]` -/
def P4012829874748281347.Spec : Prop :=
  ∀ n, P4012829874748281347.a n = A349612 (n + 1)

end A349612

/-!
# A349613: Dirichlet convolution of A064413 (EKG-permutation) with the Dirichlet inverse of its inverse permutation.

The programs for A349613, there is no canonical definition to state claims against.
-/

/-! ## A349613.P329916929426953934

`A349615(n+1)-A349614(n+1)`
-/

namespace A349613.P329916929426953934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349615 (n + 1) - A349614 (n + 1)

end

end A349613.P329916929426953934

/-! ## A349613.P3421031373910838485

`∑{d}[n+1, A064413(#)*A323411((n+1)/#)]`
-/

namespace A349613.P3421031373910838485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064413 d * A323411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349613.P3421031373910838485

/-! ## A349613.P3655474599844508503

`A349615(n+1)-∑{d}[n+1, A064664(#)*A349400((n+1)/#)]`
-/

namespace A349613.P3655474599844508503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349615 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A064664 d * A349400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349613.P3655474599844508503

/-!
# A349614: Dirichlet convolution of A064664 (the inverse permutation of EKG-permutation, A064413) with the Dirichlet inverse of A064413.

The programs for A349614, there is no canonical definition to state claims against.
-/

/-! ## A349614.P10792491918828246661

`A349615(n+1)-A349613(n+1)`
-/

namespace A349614.P10792491918828246661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349615 (n + 1) - A349613 (n + 1)

end

end A349614.P10792491918828246661

/-! ## A349614.P14772477549864468656

`∑{d}[n+1, A064664(#)*A349400((n+1)/#)]`
-/

namespace A349614.P14772477549864468656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064664 d * A349400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349614.P14772477549864468656

/-! ## A349614.P13188437892600419402

`A349615(n+1)-∑{d}[n+1, A064413(#)*A323411((n+1)/#)]`
-/

namespace A349614.P13188437892600419402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349615 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A064413 d * A323411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349614.P13188437892600419402

/-!
# A349615: a(n) = A349613(n) + A349614(n).

The programs for A349615, there is no canonical definition to state claims against.
-/

/-! ## A349615.P14910311925068408783

`A349613(n+1)+A349614(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349615.P14910311925068408783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349613 (n + 1) + A349614 (n + 1)

end

end A349615.P14910311925068408783

/-! ## A349615.P6517009222490392377

`A349614(n+1)+∑{d}[n+1, A064413(#)*A323411((n+1)/#)]`
-/

namespace A349615.P6517009222490392377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349614 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A064413 d * A323411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349615.P6517009222490392377

/-! ## A349615.P3513270683428081537

`A349613(n+1)+∑{d}[n+1, A064664(#)*A349400((n+1)/#)]`
-/

namespace A349615.P3513270683428081537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349613 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A064664 d * A349400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349615.P3513270683428081537

/-!
# A349616: Dirichlet convolution of A000027 (the identity function) with the Dirichlet inverse of the inverse permutation of EKG-permutation.

The programs for A349616, there is no canonical definition to state claims against.
-/

/-! ## A349616.P14443021389774385799

`∑{d}[n+1, #*A323411((n+1)/#)]`
-/

namespace A349616.P14443021389774385799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349616.P14443021389774385799

/-!
# A349617: Dirichlet convolution of A064664 (the inverse permutation of EKG-permutation) with A055615 (Dirichlet inverse of n).

The programs for A349617, there is no canonical definition to state claims against.
-/

/-! ## A349617.P17450919389462928059

`∑{d}[n+1, A055615(#)*A064664((n+1)/#)]`
-/

namespace A349617.P17450919389462928059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A064664 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349617.P17450919389462928059

/-! ## A349617.P1816471039899982562

`∑{d}[n+1, A023900(#)*A304526((n+1)/#)]`
-/

namespace A349617.P1816471039899982562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A304526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349617.P1816471039899982562

/-!
# A349618: Dirichlet convolution of arithmetic derivative with A325126 [Dirichlet inverse of rad(n)].

The programs for A349618, the canonical program `A349618.P12586933095763914751` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349618 has offset 1).

The definition of A349618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349618.P12586933095763914751

`∑{d}[n+1, A003415(#)*A325126((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349618

/-- `∑{d}[n+1, A003415(#)*A325126((n+1)/#)]` -/
def P12586933095763914751.Spec : Prop :=
  ∀ n, P12586933095763914751.a n = A349618 (n + 1)

theorem P12586933095763914751.correct : P12586933095763914751.Spec := by
  intro n
  simp only [A349618, Nat.add_sub_cancel]

end A349618

/-! ## A349618.P2919404688717500179

`∑{d}[n+1, A125131(#)*A300251((n+1)/#)]`
-/

namespace A349618.P2919404688717500179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125131 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349618.P2919404688717500179

namespace A349618

/-- `∑{d}[n+1, A125131(#)*A300251((n+1)/#)]` -/
def P2919404688717500179.Spec : Prop :=
  ∀ n, P2919404688717500179.a n = A349618 (n + 1)

end A349618

/-! ## A349618.P4623464268927558346

`A337267(n)%A285711(A337256(n+1))`
-/

namespace A349618.P4623464268927558346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337267 n) (A285711 (A337256 (n + 1)).toNat)

end

end A349618.P4623464268927558346

namespace A349618

/-- `A337267(n)%A285711(A337256(n+1))` -/
def P4623464268927558346.Spec : Prop :=
  ∀ n, P4623464268927558346.a n = A349618 (n + 1)

end A349618

/-! ## A349618.P6337192163376656347

`A003871(A322819(n+1))%A028233(n+1)`
-/

namespace A349618.P6337192163376656347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003871 (A322819 (n + 1)).toNat) (A028233 (n + 1))

end

end A349618.P6337192163376656347

namespace A349618

/-- `A003871(A322819(n+1))%A028233(n+1)` -/
def P6337192163376656347.Spec : Prop :=
  ∀ n, P6337192163376656347.a n = A349618 (n + 1)

end A349618

/-! ## A349618.P3369270111373511269

`A175948(or(A290079(n), A324193(n+1)))%(n+1)`
-/

namespace A349618.P3369270111373511269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175948 (Int.lor (A290079 n) (A324193 (n + 1))).toNat) (n + 1 : ℤ)

end

end A349618.P3369270111373511269

namespace A349618

/-- `A175948(or(A290079(n), A324193(n+1)))%(n+1)` -/
def P3369270111373511269.Spec : Prop :=
  ∀ n, P3369270111373511269.a n = A349618 (n + 1)

end A349618

/-!
# A349619: Dirichlet convolution of A003415 with the Dirichlet inverse of A003557.

The programs for A349619, the canonical program `A349619.P1624698776533687815` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349619 has offset 1).

The definition of A349619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349619.P1624698776533687815

`∑{d}[n+1, A003415(#)*A349340((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349619

/-- `∑{d}[n+1, A003415(#)*A349340((n+1)/#)]` -/
def P1624698776533687815.Spec : Prop :=
  ∀ n, P1624698776533687815.a n = A349619 (n + 1)

theorem P1624698776533687815.correct : P1624698776533687815.Spec := by
  intro n
  simp only [A349619, Nat.add_sub_cancel]

end A349619

/-! ## A349619.P11826735773790693524

`∑{d}[n+1, A003958(#)*A349394((n+1)/#)]`
-/

namespace A349619.P11826735773790693524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349619.P11826735773790693524

namespace A349619

/-- `∑{d}[n+1, A003958(#)*A349394((n+1)/#)]` -/
def P11826735773790693524.Spec : Prop :=
  ∀ n, P11826735773790693524.a n = A349619 (n + 1)

end A349619

/-! ## A349619.P827203439090193309

`∑{d}[n+1, A055615(#)*A349133((n+1)/#)]`
-/

namespace A349619.P827203439090193309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349619.P827203439090193309

namespace A349619

/-- `∑{d}[n+1, A055615(#)*A349133((n+1)/#)]` -/
def P827203439090193309.Spec : Prop :=
  ∀ n, P827203439090193309.a n = A349619 (n + 1)

end A349619

/-! ## A349619.P14499352437828151232

`A322582(n+1)-A335520(A087560(n+1))`
-/

namespace A349619.P14499352437828151232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) - A335520 (A087560 (n + 1)).toNat

end

end A349619.P14499352437828151232

namespace A349619

/-- `A322582(n+1)-A335520(A087560(n+1))` -/
def P14499352437828151232.Spec : Prop :=
  ∀ n, P14499352437828151232.a n = A349619 (n + 1)

end A349619

/-! ## A349619.P9574169496617340310

`A068063(A300251(n+1)²)`
-/

namespace A349619.P9574169496617340310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A300251 (n + 1) ^ 2).toNat

end

end A349619.P9574169496617340310

namespace A349619

/-- `A068063(A300251(n+1)²)` -/
def P9574169496617340310.Spec : Prop :=
  ∀ n, P9574169496617340310.a n = A349619 (n + 1)

end A349619

/-!
# A349620: Dirichlet convolution of A003415 with the Dirichlet inverse of A003958.

The programs for A349620, the canonical program `A349620.P4260540541308422829` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349620 has offset 1).

The definition of A349620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349620.P12001485141313226256

`∑{d}[n+1, A003415(#)*A097945((n+1)/#)]`
-/

namespace A349620.P12001485141313226256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P12001485141313226256

namespace A349620

/-- `∑{d}[n+1, A003415(#)*A097945((n+1)/#)]` -/
def P12001485141313226256.Spec : Prop :=
  ∀ n, P12001485141313226256.a n = A349620 (n + 1)

end A349620

/-! ## A349620.P4260540541308422829

`∑{d}[n+1, A003557(#)*A349394((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349620

/-- `∑{d}[n+1, A003557(#)*A349394((n+1)/#)]` -/
def P4260540541308422829.Spec : Prop :=
  ∀ n, P4260540541308422829.a n = A349620 (n + 1)

theorem P4260540541308422829.correct : P4260540541308422829.Spec := by
  intro n
  simp only [A349620, Nat.add_sub_cancel]

end A349620

/-! ## A349620.P850414078051120513

`∑{d}[n+1, A276833(#)*A300251((n+1)/#)]`
-/

namespace A349620.P850414078051120513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276833 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P850414078051120513

namespace A349620

/-- `∑{d}[n+1, A276833(#)*A300251((n+1)/#)]` -/
def P850414078051120513.Spec : Prop :=
  ∀ n, P850414078051120513.a n = A349620 (n + 1)

end A349620

/-! ## A349620.P1206058512273147136

`∑{d}[n+1, A319684(#)*A341635((n+1)/#)]`
-/

namespace A349620.P1206058512273147136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319684 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P1206058512273147136

namespace A349620

/-- `∑{d}[n+1, A319684(#)*A341635((n+1)/#)]` -/
def P1206058512273147136.Spec : Prop :=
  ∀ n, P1206058512273147136.a n = A349620 (n + 1)

end A349620

/-! ## A349620.P17554858567088648199

`∑{d}[n+1, A349356(#)*A349621((n+1)/#)]`
-/

namespace A349620.P17554858567088648199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349356 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349620.P17554858567088648199

namespace A349620

/-- `∑{d}[n+1, A349356(#)*A349621((n+1)/#)]` -/
def P17554858567088648199.Spec : Prop :=
  ∀ n, P17554858567088648199.a n = A349620 (n + 1)

end A349620

/-!
# A349621: Dirichlet convolution of A003415 with the Dirichlet inverse of A003959.

The programs for A349621, the canonical program `A349621.P11464347812441813831` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349621 has offset 1).

The definition of A349621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349621.P11464347812441813831

`∑{d}[n+1, A003415(#)*A063441((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349621

/-- `∑{d}[n+1, A003415(#)*A063441((n+1)/#)]` -/
def P11464347812441813831.Spec : Prop :=
  ∀ n, P11464347812441813831.a n = A349621 (n + 1)

theorem P11464347812441813831.correct : P11464347812441813831.Spec := by
  intro n
  simp only [A349621, Nat.add_sub_cancel]

end A349621

/-! ## A349621.P7519890565802390492

`∑{d}[n+1, A062953(#)*A300251((n+1)/#)]`
-/

namespace A349621.P7519890565802390492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062953 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349621.P7519890565802390492

namespace A349621

/-- `∑{d}[n+1, A062953(#)*A300251((n+1)/#)]` -/
def P7519890565802390492.Spec : Prop :=
  ∀ n, P7519890565802390492.a n = A349621 (n + 1)

end A349621

/-! ## A349621.P14799536538026868272

`∑{d}[n+1, A349355(#)*A349620((n+1)/#)]`
-/

namespace A349621.P14799536538026868272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349355 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349621.P14799536538026868272

namespace A349621

/-- `∑{d}[n+1, A349355(#)*A349620((n+1)/#)]` -/
def P14799536538026868272.Spec : Prop :=
  ∀ n, P14799536538026868272.a n = A349621 (n + 1)

end A349621

/-!
# A349622: Numbers k for which 2k-1 can be obtained with successive prime shifts towards larger primes (by iterating A003961, starting from k).

The programs for A349622, there is no canonical definition to state claims against.
-/

/-! ## A349622.P7962820272343379512

`eq[A137502(2*n+1), A137502(n+1)]+1`
-/

namespace A349622.P7962820272343379512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349622.P7962820272343379512

/-! ## A349622.P1829109644675554870

`eq[A246277(2*n+1), A246277(n+1)]+1`
-/

namespace A349622.P1829109644675554870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349622.P1829109644675554870

/-! ## A349622.P17679060610972840136

`eq[A322993(2*n+1), A322993(n+1)]+1`
-/

namespace A349622.P17679060610972840136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349622.P17679060610972840136

/-! ## A349622.P4597545515781066387

`eq[A324118(2*n+1), A324118(n+1)]+1`
-/

namespace A349622.P4597545515781066387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349622.P4597545515781066387

/-! ## A349622.P1863172598532670103

`eq[A348717(2*n+1), A348717(n+1)]+1`
-/

namespace A349622.P1863172598532670103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A349622.P1863172598532670103

/-!
# A349623: Dirichlet inverse of A326042, where A326042(n) = A064989(sigma(A003961(n))).

The programs for A349623, there is no canonical definition to state claims against.
-/

/-! ## A349623.P4987358859058192777

`∑{d}[n+1, A055615(#)*A349625((n+1)/#)]`
-/

namespace A349623.P4987358859058192777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349623.P4987358859058192777

/-!
# A349624: Dirichlet convolution of A326042 with A055615 (Dirichlet inverse of n), where A326042(n) = A064989(sigma(A003961(n))).

The programs for A349624, the canonical program `A349624.P9806452003791796394` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349624 has offset 1).

The definition of A349624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349624.P2048068454056478585

`∑{d}[n+1, A023900(#)*A349626((n+1)/#)]`
-/

namespace A349624.P2048068454056478585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349624.P2048068454056478585

namespace A349624

/-- `∑{d}[n+1, A023900(#)*A349626((n+1)/#)]` -/
def P2048068454056478585.Spec : Prop :=
  ∀ n, P2048068454056478585.a n = A349624 (n + 1)

end A349624

/-! ## A349624.P9806452003791796394

`∑{d}[n+1, A055615(#)*A326042((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349624

/-- `∑{d}[n+1, A055615(#)*A326042((n+1)/#)]` -/
def P9806452003791796394.Spec : Prop :=
  ∀ n, P9806452003791796394.a n = A349624 (n + 1)

theorem P9806452003791796394.correct : P9806452003791796394.Spec := by
  intro n
  simp only [A349624, Nat.add_sub_cancel]

end A349624

/-!
# A349625: Dirichlet convolution of A000027 (identity function) with the Dirichlet inverse of A326042, where A326042(n) = A064989(sigma(A003961(n))).

The programs for A349625, there is no canonical definition to state claims against.
-/

/-! ## A349625.P4028687938776155495

`∑{d}[n+1, #*A349623((n+1)/#)]`
-/

namespace A349625.P4028687938776155495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349625.P4028687938776155495

/-!
# A349626: Möbius transform of A326042, where A326042(n) = A064989(sigma(A003961(n))).

The programs for A349626, the canonical program `A349626.P15541726286806720928` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349626 has offset 1).

The definition of A349626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349626.P15541726286806720928

`∑{d}[n+1, A008683(#)*A326042((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349626

/-- `∑{d}[n+1, A008683(#)*A326042((n+1)/#)]` -/
def P15541726286806720928.Spec : Prop :=
  ∀ n, P15541726286806720928.a n = A349626 (n + 1)

theorem P15541726286806720928.correct : P15541726286806720928.Spec := by
  intro n
  simp only [A349626, Nat.add_sub_cancel]

end A349626

/-! ## A349626.P5329606352401965883

`∑{d}[n+1, A000010(#)*A349624((n+1)/#)]`
-/

namespace A349626.P5329606352401965883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349626.P5329606352401965883

namespace A349626

/-- `∑{d}[n+1, A000010(#)*A349624((n+1)/#)]` -/
def P5329606352401965883.Spec : Prop :=
  ∀ n, P5329606352401965883.a n = A349626 (n + 1)

end A349626

/-!
# A349627: Numerators of the Möbius transform of ratio A003961(n)/sigma(n).

The programs for A349627, there is no canonical definition to state claims against.
-/

/-! ## A349627.P4821364508631364110

`xor(∑[(-1)^(n%3)], A004198(A279556(n)))`
-/

namespace A349627.P4821364508631364110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A004198 (A279556 n).toNat)

end

end A349627.P4821364508631364110

/-!
# A349629: Numerators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

The programs for A349629, the canonical program `A349629.P6415063026675190056` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349629 has offset 1).

The definition of A349629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349629.P6415063026675190056

`A046692(n+1)/gcd(n+1, A046692(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349629

/-- `A046692(n+1)/gcd(n+1, A046692(n+1))` -/
def P6415063026675190056.Spec : Prop :=
  ∀ n, P6415063026675190056.a n = (A349629 (n + 1) : ℚ)

end A349629

/-! ## A349629.P5498404412726291026

`A046692(n+1)/gcd(A046692(n+1), A131738(n))`
-/

namespace A349629.P5498404412726291026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℚ) / (Int.gcd (A046692 (n + 1)) (A131738 n) : ℚ)

end

end A349629.P5498404412726291026

namespace A349629

/-- `A046692(n+1)/gcd(A046692(n+1), A131738(n))` -/
def P5498404412726291026.Spec : Prop :=
  ∀ n, P5498404412726291026.a n = (A349629 (n + 1) : ℚ)

end A349629

/-! ## A349629.P10659784157415605524

`lcm(A046692(n+1), A061019(n+1))/A061019(n+1)`
-/

namespace A349629.P10659784157415605524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A046692 (n + 1)) (A061019 (n + 1)) : ℚ) / (A061019 (n + 1) : ℚ)

end

end A349629.P10659784157415605524

namespace A349629

/-- `lcm(A046692(n+1), A061019(n+1))/A061019(n+1)` -/
def P10659784157415605524.Spec : Prop :=
  ∀ n, P10659784157415605524.a n = (A349629 (n + 1) : ℚ)

end A349629

/-!
# A349630: Denominators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

The programs for A349630, the canonical program `A349630.P15265834467087415735` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349630 has offset 1).

The definition of A349630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349630.P15265834467087415735

`(n+1)/gcd(n+1, A046692(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A349630

/-- `(n+1)/gcd(n+1, A046692(n+1))` -/
def P15265834467087415735.Spec : Prop :=
  ∀ n, P15265834467087415735.a n = (A349630 (n + 1) : ℚ)

end A349630

/-! ## A349630.P2342613444319694123

`(n+1)/gcd(A046692(n+1), A131738(n))`
-/

namespace A349630.P2342613444319694123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A046692 (n + 1)) (A131738 n) : ℚ)

end

end A349630.P2342613444319694123

namespace A349630

/-- `(n+1)/gcd(A046692(n+1), A131738(n))` -/
def P2342613444319694123.Spec : Prop :=
  ∀ n, P2342613444319694123.a n = (A349630 (n + 1) : ℚ)

end A349630

/-! ## A349630.P12707078011055231613

`A056554(A193551(n+1))/A056554(A009194(n+1))`
-/

namespace A349630.P12707078011055231613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056554 (A193551 (n + 1)).toNat : ℚ) / (A056554 (A009194 (n + 1)).toNat : ℚ)

end

end A349630.P12707078011055231613

namespace A349630

/-- `A056554(A193551(n+1))/A056554(A009194(n+1))` -/
def P12707078011055231613.Spec : Prop :=
  ∀ n, P12707078011055231613.a n = (A349630 (n + 1) : ℚ)

end A349630

/-! ## A349630.P10918089891417325237

`A055231((n+1)/∏{p}[n+1, #^val(n+1, #²)]*∑{d}[n+1, #]²)`
-/

namespace A349630.P10918089891417325237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) * (((∑ d ∈ Nat.divisors (f2 n), d) ^ 2 : ℕ) : ℚ))).toNat

end

end A349630.P10918089891417325237

namespace A349630

/-- `A055231((n+1)/∏{p}[n+1, #^val(n+1, #²)]*∑{d}[n+1, #]²)` -/
def P10918089891417325237.Spec : Prop :=
  ∀ n, P10918089891417325237.a n = A349630 (n + 1)

end A349630

/-! ## A349630.P15207677243280585436

`A055231(A019554(n+1)*A072861(n+1))`
-/

namespace A349630.P15207677243280585436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A019554 (n + 1) * A072861 (n + 1)).toNat

end

end A349630.P15207677243280585436

namespace A349630

/-- `A055231(A019554(n+1)*A072861(n+1))` -/
def P15207677243280585436.Spec : Prop :=
  ∀ n, P15207677243280585436.a n = A349630 (n + 1)

end A349630

/-!
# A349631: Dirichlet convolution of A003961 with A346479, which is Dirichlet inverse of A250469.

The programs for A349631, there is no canonical definition to state claims against.
-/

/-! ## A349631.P3096008727489058361

`∑{d}[n+1, A003961(#)*A346479((n+1)/#)]`
-/

namespace A349631.P3096008727489058361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A346479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349631.P3096008727489058361

/-! ## A349631.P2206592933327573325

`A000038(A147875(n))-A349632(n+1)`
-/

namespace A349631.P2206592933327573325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A147875 n).toNat - A349632 (n + 1)

end

end A349631.P2206592933327573325

/-! ## A349631.P1424661951645304279

`A000096(A151934(n))-A349632(n+1)`
-/

namespace A349631.P1424661951645304279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A151934 n).toNat - A349632 (n + 1)

end

end A349631.P1424661951645304279

/-! ## A349631.P13979928113407858582

`A000096(A151935(n))-A349632(n+1)`
-/

namespace A349631.P13979928113407858582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A151935 n).toNat - A349632 (n + 1)

end

end A349631.P13979928113407858582

/-! ## A349631.P2802766196335866725

`A000038(A273365(n))-A349632(n+1)`
-/

namespace A349631.P2802766196335866725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A273365 n).toNat - A349632 (n + 1)

end

end A349631.P2802766196335866725

/-! ## A349631.P15583431068712110038

`A000038(A323622(n))-A349632(n+1)`
-/

namespace A349631.P15583431068712110038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A323622 n).toNat - A349632 (n + 1)

end

end A349631.P15583431068712110038

/-! ## A349631.P12045289075180579966

`A007423(A238256(n+1))-A349632(n+1)`
-/

namespace A349631.P12045289075180579966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A238256 (n + 1)).toNat - A349632 (n + 1)

end

end A349631.P12045289075180579966

/-! ## A349631.P18063133751379226613

`A134824(A349622(n+1))*A349632(n+1)`
-/

namespace A349631.P18063133751379226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A349622 (n + 1)).toNat * A349632 (n + 1)

end

end A349631.P18063133751379226613

/-! ## A349631.P4707875940137032947

`A069517(A061802(n))-A349632(n+1)`
-/

namespace A349631.P4707875940137032947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A061802 n).toNat - A349632 (n + 1)

end

end A349631.P4707875940137032947

/-! ## A349631.P5717386674417346798

`A130706(A087089(n+1))-A349632(n+1)`
-/

namespace A349631.P5717386674417346798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A087089 (n + 1)).toNat - A349632 (n + 1)

end

end A349631.P5717386674417346798

/-!
# A349632: Dirichlet convolution of A250469 with A346234, which is Dirichlet inverse of A003961.

The programs for A349632, there is no canonical definition to state claims against.
-/

/-! ## A349632.P4697543341919494564

`∑{d}[n+1, A347376(#)*A378220((n+1)/#)]`
-/

namespace A349632.P4697543341919494564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347376 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349632.P4697543341919494564

/-! ## A349632.P14763200617386944017

`∑{d}[n+1, A250469(#)*A346234((n+1)/#)]`
-/

namespace A349632.P14763200617386944017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A250469 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349632.P14763200617386944017

/-! ## A349632.P898619425308194020

`A000038(A147875(n))-A349631(n+1)`
-/

namespace A349632.P898619425308194020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A147875 n).toNat - A349631 (n + 1)

end

end A349632.P898619425308194020

/-! ## A349632.P7196944848426502988

`A005843(A151935(n))-A349631(n+1)`
-/

namespace A349632.P7196944848426502988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151935 n).toNat - A349631 (n + 1)

end

end A349632.P7196944848426502988

/-! ## A349632.P10868234697454437974

`A000038(A273365(n))-A349631(n+1)`
-/

namespace A349632.P10868234697454437974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A273365 n).toNat - A349631 (n + 1)

end

end A349632.P10868234697454437974

/-! ## A349632.P8336801906579000427

`A000038(A323622(n))-A349631(n+1)`
-/

namespace A349632.P8336801906579000427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A323622 n).toNat - A349631 (n + 1)

end

end A349632.P8336801906579000427

/-! ## A349632.P578834123725905937

`A008683(A238256(n+1))*A349631(n+1)`
-/

namespace A349632.P578834123725905937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A238256 (n + 1)).toNat * A349631 (n + 1)

end

end A349632.P578834123725905937

/-! ## A349632.P5281541651767539730

`A090039(2*A151935(n))-A349631(n+1)`
-/

namespace A349632.P5281541651767539730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090039 (2 * A151935 n).toNat - A349631 (n + 1)

end

end A349632.P5281541651767539730

/-! ## A349632.P672718897387126139

`A000038(A325202(n+1))-A349631(n+1)`
-/

namespace A349632.P672718897387126139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A325202 (n + 1)).toNat - A349631 (n + 1)

end

end A349632.P672718897387126139

/-! ## A349632.P9624088282486420177

`A000038(A126006(n))-A349631(n+1)`
-/

namespace A349632.P9624088282486420177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A126006 n).toNat - A349631 (n + 1)

end

end A349632.P9624088282486420177

/-!
# A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

The programs for A349633, the canonical program `A349633.P10035930798907062347` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349633 has offset 1).

The definition of A349633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349633

/-- `lcm(n+1, A349387(n+1))/(n+1)` -/
def P10035930798907062347.Spec : Prop :=
  ∀ n, P10035930798907062347.a n = (A349633 (n + 1) : ℚ)

end A349633

/-! ## A349633.P7040738630668436076

`A349387(n+1)/gcd(A131738(n), A349387(n+1))`
-/

namespace A349633.P7040738630668436076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349387 (n + 1) : ℚ) / (Int.gcd (A131738 n) (A349387 (n + 1)) : ℚ)

end

end A349633.P7040738630668436076

namespace A349633

/-- `A349387(n+1)/gcd(A131738(n), A349387(n+1))` -/
def P7040738630668436076.Spec : Prop :=
  ∀ n, P7040738630668436076.a n = (A349633 (n + 1) : ℚ)

end A349633

/-! ## A349633.P1758536107785096747

`A003557(A066838(n+1)*A349387(n+1))`
-/

namespace A349633.P1758536107785096747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A066838 (n + 1) * A349387 (n + 1)).toNat

end

end A349633.P1758536107785096747

namespace A349633

/-- `A003557(A066838(n+1)*A349387(n+1))` -/
def P1758536107785096747.Spec : Prop :=
  ∀ n, P1758536107785096747.a n = A349633 (n + 1)

end A349633

/-! ## A349633.P13832264225700074126

`gcd(A034334(A171435(n+1)), A349387(n+1))`
-/

namespace A349633.P13832264225700074126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034334 (A171435 (n + 1)).toNat) (A349387 (n + 1))

end

end A349633.P13832264225700074126

namespace A349633

/-- `gcd(A034334(A171435(n+1)), A349387(n+1))` -/
def P13832264225700074126.Spec : Prop :=
  ∀ n, (P13832264225700074126.a n : ℤ) = A349633 (n + 1)

end A349633

/-! ## A349633.P11535614976229536395

`gcd(A056448(A283989(n)), A349387(n+1))`
-/

namespace A349633.P11535614976229536395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056448 (A283989 n).toNat) (A349387 (n + 1))

end

end A349633.P11535614976229536395

namespace A349633

/-- `gcd(A056448(A283989(n)), A349387(n+1))` -/
def P11535614976229536395.Spec : Prop :=
  ∀ n, (P11535614976229536395.a n : ℤ) = A349633 (n + 1)

end A349633

/-!
# A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

The programs for A349634, the canonical program `A349634.P1580182829586287684` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349634 has offset 1).

The definition of A349634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349634

/-- `(n+1)/gcd(n+1, A349387(n+1))` -/
def P1580182829586287684.Spec : Prop :=
  ∀ n, P1580182829586287684.a n = (A349634 (n + 1) : ℚ)

end A349634

/-! ## A349634.P14880483111210876927

`lcm(A000027(n+1), A349387(n+1))/A349387(n+1)`
-/

namespace A349634.P14880483111210876927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A349387 (n + 1)) : ℚ) / (A349387 (n + 1) : ℚ)

end

end A349634.P14880483111210876927

namespace A349634

/-- `lcm(A000027(n+1), A349387(n+1))/A349387(n+1)` -/
def P14880483111210876927.Spec : Prop :=
  ∀ n, P14880483111210876927.a n = (A349634 (n + 1) : ℚ)

end A349634

/-! ## A349634.P11554449677489116866

`A198067(A128325(n))*A319677(n+1)`
-/

namespace A349634.P11554449677489116866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198067 (A128325 n).toNat * A319677 (n + 1)

end

end A349634.P11554449677489116866

namespace A349634

/-- `A198067(A128325(n))*A319677(n+1)` -/
def P11554449677489116866.Spec : Prop :=
  ∀ n, P11554449677489116866.a n = A349634 (n + 1)

end A349634

/-! ## A349634.P4368845847317352239

`A319677(A009262(n+1)%A094427(n+1))`
-/

namespace A349634.P4368845847317352239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (Int.tmod (A009262 (n + 1)) (A094427 (n + 1))).toNat

end

end A349634.P4368845847317352239

namespace A349634

/-- `A319677(A009262(n+1)%A094427(n+1))` -/
def P4368845847317352239.Spec : Prop :=
  ∀ n, P4368845847317352239.a n = A349634 (n + 1)

end A349634

/-! ## A349634.P12159692872162670645

`A284378(A260897(2*(n+1)))*A319677(n+1)`
-/

namespace A349634.P12159692872162670645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284378 (A260897 (2 * (n + 1))).toNat * A319677 (n + 1)

end

end A349634.P12159692872162670645

namespace A349634

/-- `A284378(A260897(2*(n+1)))*A319677(n+1)` -/
def P12159692872162670645.Spec : Prop :=
  ∀ n, P12159692872162670645.a n = A349634 (n + 1)

end A349634

/-!
# A349636: Primes that remain prime when a single "1" digit is inserted between any two adjacent digits.

The programs for A349636, there is no canonical definition to state claims against.
-/

/-! ## A349636.P6946516530502034501

`p?[A304246(n+9)]`
-/

namespace A349636.P6946516530502034501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349636.P6946516530502034501

/-! ## A349636.P14648303277114263986

`record[A014963(A304246(n+11))]`
-/

namespace A349636.P14648303277114263986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A304246 (n + 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349636.P14648303277114263986

/-! ## A349636.P18417632242219612270

`∩[A059500(n+1), A304246(n+1)]`
-/

namespace A349636.P18417632242219612270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349636.P18417632242219612270

/-! ## A349636.P5984429498607393326

`∩[A164318(n+1), A304246(n+1)]`
-/

namespace A349636.P5984429498607393326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349636.P5984429498607393326

/-!
# A349638: Primes of the form (2^a+1)*(3^b+1)-1 with a, b >= 0.

The programs for A349638, there is no canonical definition to state claims against.
-/

/-! ## A349638.P9267381224109797852

`record[p?[A094727(A132065(n+1))]]`
-/

namespace A349638.P9267381224109797852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A132065 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349638.P9267381224109797852

/-! ## A349638.P2214172219010337078

`p?[A340855(∑[A070966(n+1)])]`
-/

namespace A349638.P2214172219010337078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340855 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349638.P2214172219010337078

/-! ## A349638.P11185919903552562122

`p?[A340855(∑[A257977(n+1)])]`
-/

namespace A349638.P11185919903552562122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257977 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340855 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349638.P11185919903552562122

/-! ## A349638.P10752566966039511886

`p?[∑[A000005(A098524(2*n))]]`
-/

namespace A349638.P10752566966039511886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A098524 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349638.P10752566966039511886

/-!
# A349640: a(n) = Sum_{k=0..n} binomial(n,k) * A000108(k) * k!.

The programs for A349640, there is no canonical definition to state claims against.
-/

/-! ## A349640.P16292467308616603225

`∑[A052143(n)]/(n+1)`
-/

namespace A349640.P16292467308616603225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052143 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A349640.P16292467308616603225

/-! ## A349640.P7264784772375203337

`A224500(n+1)/(n+1)`
-/

namespace A349640.P7264784772375203337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224500 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A349640.P7264784772375203337

/-! ## A349640.P12911294442168038119

`record[A185946(n)]/(n+1)`
-/

namespace A349640.P12911294442168038119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185946 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A349640.P12911294442168038119

/-! ## A349640.P11761160796798680633

`record[A185946(n)/A007318(n)]`
-/

namespace A349640.P11761160796798680633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185946 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349640.P11761160796798680633

/-! ## A349640.P6983739698520092513

`record[A185946(n)/A144304(n)]`
-/

namespace A349640.P6983739698520092513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185946 n : ℚ) / (A144304 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349640.P6983739698520092513

/-!
# A349642: Smallest prime such that the next n prime gaps are in arithmetic progression.

The programs for A349642, there is no canonical definition to state claims against.
-/

/-! ## A349642.P9692376784259933977

`A348927(n^A022307(n))`
-/

namespace A349642.P9692376784259933977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348927 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A022307 n : ℤ))).toNat

end

end A349642.P9692376784259933977

/-! ## A349642.P10275714210404150267

`A348927(C(n, A022307(n)))`
-/

namespace A349642.P10275714210404150267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348927 (Nat.choose n (A022307 n).toNat)

end

end A349642.P10275714210404150267

/-! ## A349642.P13237109168710836751

`p?[A158939(A233583(n+1))]`
-/

namespace A349642.P13237109168710836751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158939 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349642.P13237109168710836751

/-! ## A349642.P15766834517350969074

`A348927(n^A333525(n+1))`
-/

namespace A349642.P15766834517350969074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348927 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A333525 (n + 1) : ℤ))).toNat

end

end A349642.P15766834517350969074

/-!
# A349643: Smallest prime p = prime(k) such that the n-th difference of (prime(k), ..., prime(k+n)) is zero.

The programs for A349643, there is no canonical definition to state claims against.
-/

/-! ## A349643.P7170501574793167054

`A000040(A376678(n+2))`
-/

namespace A349643.P7170501574793167054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A376678 (n + 2)).toNat

end

end A349643.P7170501574793167054

/-! ## A349643.P11542036492272253256

`A008578(A376678(n+2)+1)`
-/

namespace A349643.P11542036492272253256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A376678 (n + 2) + 1).toNat

end

end A349643.P11542036492272253256

/-! ## A349643.P2733920122816738083

`A065091(A376678(n+2)-1)`
-/

namespace A349643.P2733920122816738083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A376678 (n + 2) - 1).toNat

end

end A349643.P2733920122816738083

/-!
# A349647: Nonnegative integers which produce a record minimum MD5 hash.

The programs for A349647, there is no canonical definition to state claims against.
-/

/-! ## A349647.P6379800420498683020

`A230037(A024065(n)+n)`
-/

namespace A349647.P6379800420498683020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230037 (A024065 n + (n : ℤ)).toNat

end

end A349647.P6379800420498683020

/-! ## A349647.P17111778355780483625

`A130514(record[Δ[A130461(n)]])`
-/

namespace A349647.P17111778355780483625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130461 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130514 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349647.P17111778355780483625

/-!
# A349648: Expansion of g.f.: Catalan(x)/Catalan(-x).

The programs for A349648, there is no canonical definition to state claims against.
-/

/-! ## A349648.P13651816442160652057

`A172311(∑{d}[n+1, 2^(#-1)]-A161208(n))`
-/

namespace A349648.P13651816442160652057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (A161208 n : ℚ))).toNat

end

end A349648.P13651816442160652057

/-! ## A349648.P12110374230631512389

`A140117(A071332(n+1))-A301570(n)`
-/

namespace A349648.P12110374230631512389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140117 (A071332 (n + 1)).toNat - A301570 n

end

end A349648.P12110374230631512389

/-!
# A349649: Discriminants of real quadratic fields whose fundamental unit has norm 1.

The programs for A349649, there is no canonical definition to state claims against.
-/

/-! ## A349649.P6230266250263644894

`∩[comp[A226696(n+1)], A003658(n+4)]`
-/

namespace A349649.P6230266250263644894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A349649.P6230266250263644894

/-! ## A349649.P7176093523834906453

`filter[A097270(n+1), A290098(#)]`
-/

namespace A349649.P7176093523834906453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A349649.P7176093523834906453

/-! ## A349649.P13105666172917307522

`filter[A350864(n+2), A290098(#)]`
-/

namespace A349649.P13105666172917307522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A349649.P13105666172917307522

/-! ## A349649.P7418532859875859762

`∩[A003658(n+1), A097270(n+1)]`
-/

namespace A349649.P7418532859875859762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349649.P7418532859875859762

/-! ## A349649.P13094518728051875328

`∩[A072902(n+1), A097270(n+1)]`
-/

namespace A349649.P13094518728051875328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349649.P13094518728051875328

/-!
# A349650: E.g.f. satisfies: A(x)^(A(x)^2) = 1 + x.

The programs for A349650, there is no canonical definition to state claims against.
-/

/-! ## A349650.P15040529094929745329

`A010738(n)*A160408(A005773(n))`
-/

namespace A349650.P15040529094929745329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010738 n * A160408 (A005773 n).toNat

end

end A349650.P15040529094929745329

/-!
# A349652: E.g.f. satisfies: A(x)^(A(x)^2) = 1/(1 - x).

The programs for A349652, there is no canonical definition to state claims against.
-/

/-! ## A349652.P11536332643245247370

`A117442(A117463(n!-1))`
-/

namespace A349652.P11536332643245247370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117442 (A117463 (Nat.factorial n - 1)).toNat

end

end A349652.P11536332643245247370

/-!
# A349654: E.g.f. satisfies: A(x)^2 * log(A(x)) = exp(x) - 1.

The programs for A349654, there is no canonical definition to state claims against.
-/

/-! ## A349654.P1665567217683580913

`A130195(A192655(∑[n]))`
-/

namespace A349654.P1665567217683580913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130195 (A192655 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A349654.P1665567217683580913

/-!
# A349656: E.g.f. satisfies: A(x)^2 * log(A(x)) = 1 - exp(-x).

The programs for A349656, there is no canonical definition to state claims against.
-/

/-! ## A349656.P18306261228957551336

`A239455(A060313(n+1))-A052714(n)`
-/

namespace A349656.P18306261228957551336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 (A060313 (n + 1)).toNat - A052714 n

end

end A349656.P18306261228957551336

/-!
# A349657: E.g.f. satisfies: A(x)^3 * log(A(x)) = 1 - exp(-x).

The programs for A349657, there is no canonical definition to state claims against.
-/

/-! ## A349657.P2992098936969234579

`A341724(A001105(n))-A000332(n)`
-/

namespace A349657.P2992098936969234579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341724 (A001105 n).toNat - A000332 n

end

end A349657.P2992098936969234579

/-!
# A349658: Number of nonrefactorable divisors of n.

The programs for A349658, the canonical program `A349658.P4827521432200241691` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349658 has offset 1).

The definition of A349658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A336041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349658.P4827521432200241691

`A000005(n+1)-A336041(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A349658

/-- `A000005(n+1)-A336041(n+1)` -/
def P4827521432200241691.Spec : Prop :=
  ∀ n, P4827521432200241691.a n = A349658 (n + 1)

theorem P4827521432200241691.correct : P4827521432200241691.Spec := by
  intro n
  simp only [A349658, Nat.add_sub_cancel]

end A349658

/-! ## A349658.P13363922172653699121

`A349322(n+1)-A335182(n+1)`
-/

namespace A349658.P13363922172653699121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1) - A335182 (n + 1)

end

end A349658.P13363922172653699121

namespace A349658

/-- `A349322(n+1)-A335182(n+1)` -/
def P13363922172653699121.Spec : Prop :=
  ∀ n, P13363922172653699121.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P13383593347408971537

`∑{d}[n+1, A368625(#)]`
-/

namespace A349658.P13383593347408971537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A368625 d

end

end A349658.P13383593347408971537

namespace A349658

/-- `∑{d}[n+1, A368625(#)]` -/
def P13383593347408971537.Spec : Prop :=
  ∀ n, P13383593347408971537.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P7294201945855421848

`Δ[A006218(n)]-A336041(n+1)`
-/

namespace A349658.P7294201945855421848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A336041 (n + 1)

end

end A349658.P7294201945855421848

namespace A349658

/-- `Δ[A006218(n)]-A336041(n+1)` -/
def P7294201945855421848.Spec : Prop :=
  ∀ n, P7294201945855421848.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P2497616753938879069

`A087990(n+1)+A087991(n+1)-A336041(n+1)`
-/

namespace A349658.P2497616753938879069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A336041 (n + 1))

end

end A349658.P2497616753938879069

namespace A349658

/-- `A087990(n+1)+A087991(n+1)-A336041(n+1)` -/
def P2497616753938879069.Spec : Prop :=
  ∀ n, P2497616753938879069.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P6622753517569544684

`A195150(n+1)+A195155(n+1)-A336041(n+1)`
-/

namespace A349658.P6622753517569544684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A336041 (n + 1))

end

end A349658.P6622753517569544684

namespace A349658

/-- `A195150(n+1)+A195155(n+1)-A336041(n+1)` -/
def P6622753517569544684.Spec : Prop :=
  ∀ n, P6622753517569544684.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P5269352155255269201

`A324826(n+1)+A324827(n+1)-A336041(n+1)`
-/

namespace A349658.P5269352155255269201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A336041 (n + 1))

end

end A349658.P5269352155255269201

namespace A349658

/-- `A324826(n+1)+A324827(n+1)-A336041(n+1)` -/
def P5269352155255269201.Spec : Prop :=
  ∀ n, P5269352155255269201.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P8864550122858456646

`A353351(n+1)+A353352(n+1)-A336041(n+1)`
-/

namespace A349658.P8864550122858456646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A336041 (n + 1))

end

end A349658.P8864550122858456646

namespace A349658

/-- `A353351(n+1)+A353352(n+1)-A336041(n+1)` -/
def P8864550122858456646.Spec : Prop :=
  ∀ n, P8864550122858456646.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P7788937033600657868

`A353361(n+1)+A353362(n+1)-A336041(n+1)`
-/

namespace A349658.P7788937033600657868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A336041 (n + 1))

end

end A349658.P7788937033600657868

namespace A349658

/-- `A353361(n+1)+A353362(n+1)-A336041(n+1)` -/
def P7788937033600657868.Spec : Prop :=
  ∀ n, P7788937033600657868.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P16147576923119886414

`A353371(n+1)+A353372(n+1)-A336041(n+1)`
-/

namespace A349658.P16147576923119886414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A336041 (n + 1))

end

end A349658.P16147576923119886414

namespace A349658

/-- `A353371(n+1)+A353372(n+1)-A336041(n+1)` -/
def P16147576923119886414.Spec : Prop :=
  ∀ n, P16147576923119886414.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P15720634377529029464

`A353375(n+1)+A353376(n+1)-A336041(n+1)`
-/

namespace A349658.P15720634377529029464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A336041 (n + 1))

end

end A349658.P15720634377529029464

namespace A349658

/-- `A353375(n+1)+A353376(n+1)-A336041(n+1)` -/
def P15720634377529029464.Spec : Prop :=
  ∀ n, P15720634377529029464.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P11453000715421284345

`A001227(n+1)*A001511(n+1)-A336041(n+1)`
-/

namespace A349658.P11453000715421284345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A336041 (n + 1)

end

end A349658.P11453000715421284345

namespace A349658

/-- `A001227(n+1)*A001511(n+1)-A336041(n+1)` -/
def P11453000715421284345.Spec : Prop :=
  ∀ n, P11453000715421284345.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P5484434920599371955

`∑{d}[n+1, A057427(#)]-A336041(n+1)`
-/

namespace A349658.P5484434920599371955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A336041 (n + 1)

end

end A349658.P5484434920599371955

namespace A349658

/-- `∑{d}[n+1, A057427(#)]-A336041(n+1)` -/
def P5484434920599371955.Spec : Prop :=
  ∀ n, P5484434920599371955.a n = A349658 (n + 1)

end A349658

/-! ## A349658.P7894005938455406139

`A001227(A045965(n+1))-A336041(n+1)`
-/

namespace A349658.P7894005938455406139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A045965 (n + 1)).toNat - A336041 (n + 1)

end

end A349658.P7894005938455406139

namespace A349658

/-- `A001227(A045965(n+1))-A336041(n+1)` -/
def P7894005938455406139.Spec : Prop :=
  ∀ n, P7894005938455406139.a n = A349658 (n + 1)

end A349658

/-!
# A349659: Sum of the nonrefactorable divisors of n.

The programs for A349659, the canonical program `A349659.P4651749158989321582` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349659 has offset 1).

The definition of A349659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335182, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349659.P4651749158989321582

`A000203(n+1)-A335182(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349659

/-- `A000203(n+1)-A335182(n+1)` -/
def P4651749158989321582.Spec : Prop :=
  ∀ n, P4651749158989321582.a n = A349659 (n + 1)

theorem P4651749158989321582.correct : P4651749158989321582.Spec := by
  intro n
  simp only [A349659, Nat.add_sub_cancel]

end A349659

/-! ## A349659.P7261516002311540207

`∑{d}[n+1, #*A368625(#)]`
-/

namespace A349659.P7261516002311540207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A368625 d

end

end A349659.P7261516002311540207

namespace A349659

/-- `∑{d}[n+1, #*A368625(#)]` -/
def P7261516002311540207.Spec : Prop :=
  ∀ n, P7261516002311540207.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P7689572712548289908

`∑{d}[n+1, and(#, A336040(#)-1)]`
-/

namespace A349659.P7689572712548289908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) (A336040 d - 1)

end

end A349659.P7689572712548289908

namespace A349659

/-- `∑{d}[n+1, and(#, A336040(#)-1)]` -/
def P7689572712548289908.Spec : Prop :=
  ∀ n, P7689572712548289908.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P15404728548306765363

`∑{d}[n+1, #%lcm(#, A000005(#))]`
-/

namespace A349659.P15404728548306765363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Int.lcm (d : ℤ) (A000005 d)

end

end A349659.P15404728548306765363

namespace A349659

/-- `∑{d}[n+1, #%lcm(#, A000005(#))]` -/
def P15404728548306765363.Spec : Prop :=
  ∀ n, (P15404728548306765363.a n : ℤ) = A349659 (n + 1)

end A349659

/-! ## A349659.P938514663464148168

`Δ[A160664(n)]-A335182(n+1)`
-/

namespace A349659.P938514663464148168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A335182 (n + 1)

end

end A349659.P938514663464148168

namespace A349659

/-- `Δ[A160664(n)]-A335182(n+1)` -/
def P938514663464148168.Spec : Prop :=
  ∀ n, P938514663464148168.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P6504050689762768771

`abs(Δ[A330725(n)])-A335182(n+1)`
-/

namespace A349659.P6504050689762768771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A335182 (n + 1)

end

end A349659.P6504050689762768771

namespace A349659

/-- `abs(Δ[A330725(n)])-A335182(n+1)` -/
def P6504050689762768771.Spec : Prop :=
  ∀ n, P6504050689762768771.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P11574210025469220306

`A245092(Δ[n²])-A335182(n+1)`
-/

namespace A349659.P11574210025469220306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A335182 (n + 1)

end

end A349659.P11574210025469220306

namespace A349659

/-- `A245092(Δ[n²])-A335182(n+1)` -/
def P11574210025469220306.Spec : Prop :=
  ∀ n, P11574210025469220306.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P11643356600735481158

`abs(A143348(n+1))-A335182(n+1)`
-/

namespace A349659.P11643356600735481158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A335182 (n + 1)

end

end A349659.P11643356600735481158

namespace A349659

/-- `abs(A143348(n+1))-A335182(n+1)` -/
def P11643356600735481158.Spec : Prop :=
  ∀ n, P11643356600735481158.a n = A349659 (n + 1)

end A349659

/-! ## A349659.P610967267127089928

`sqrt(A072861(n+1))-A335182(n+1)`
-/

namespace A349659.P610967267127089928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A335182 (n + 1) : ℝ)

end

end A349659.P610967267127089928

namespace A349659

/-- `sqrt(A072861(n+1))-A335182(n+1)` -/
def P610967267127089928.Spec : Prop :=
  ∀ n, P610967267127089928.a n = (A349659 (n + 1) : ℝ)

end A349659

/-! ## A349659.P9450178548281993167

`A074400(n+1)/2-A335182(n+1)`
-/

namespace A349659.P9450178548281993167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A335182 (n + 1) : ℚ)

end

end A349659.P9450178548281993167

namespace A349659

/-- `A074400(n+1)/2-A335182(n+1)` -/
def P9450178548281993167.Spec : Prop :=
  ∀ n, P9450178548281993167.a n = (A349659 (n + 1) : ℚ)

end A349659

/-!
# A349660: Numbers which are the sum of a prime and the square of the next prime.

The programs for A349660, the canonical program `A349660.P9981326327431548497` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349660 has offset 1).

The definition of A349660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349660.P9981326327431548497

`A000040(n+1)+A001248(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349660

/-- `A000040(n+1)+A001248(n+2)` -/
def P9981326327431548497.Spec : Prop :=
  ∀ n, P9981326327431548497.a n = A349660 (n + 1)

theorem P9981326327431548497.correct : P9981326327431548497.Spec := by
  intro n
  simp only [A349660, Nat.add_sub_cancel]

end A349660

/-! ## A349660.P3243791795883440778

`A001043(n+1)+A036689(n+2)`
-/

namespace A349660.P3243791795883440778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A036689 (n + 2)

end

end A349660.P3243791795883440778

namespace A349660

/-- `A001043(n+1)+A036689(n+2)` -/
def P3243791795883440778.Spec : Prop :=
  ∀ n, P3243791795883440778.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P14106546679555155192

`A036690(n+2)-A001223(n+1)`
-/

namespace A349660.P14106546679555155192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 2) - A001223 (n + 1)

end

end A349660.P14106546679555155192

namespace A349660

/-- `A036690(n+2)-A001223(n+1)` -/
def P14106546679555155192.Spec : Prop :=
  ∀ n, P14106546679555155192.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P7391535435414493892

`A069482(n+1)+A036690(n+1)`
-/

namespace A349660.P7391535435414493892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + A036690 (n + 1)

end

end A349660.P7391535435414493892

namespace A349660

/-- `A069482(n+1)+A036690(n+1)` -/
def P7391535435414493892.Spec : Prop :=
  ∀ n, P7391535435414493892.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P6759400419640475297

`A261465(n+1)+A100484(n+1)`
-/

namespace A349660.P6759400419640475297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) + A100484 (n + 1)

end

end A349660.P6759400419640475297

namespace A349660

/-- `A261465(n+1)+A100484(n+1)` -/
def P6759400419640475297.Spec : Prop :=
  ∀ n, P6759400419640475297.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P2681429113613744877

`A066872(n+2)+A006093(n+1)`
-/

namespace A349660.P2681429113613744877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 2) + A006093 (n + 1)

end

end A349660.P2681429113613744877

namespace A349660

/-- `A066872(n+2)+A006093(n+1)` -/
def P2681429113613744877.Spec : Prop :=
  ∀ n, P2681429113613744877.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P3723368893319809951

`A069484(n+1)-A036689(n+1)`
-/

namespace A349660.P3723368893319809951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A036689 (n + 1)

end

end A349660.P3723368893319809951

namespace A349660

/-- `A069484(n+1)-A036689(n+1)` -/
def P3723368893319809951.Spec : Prop :=
  ∀ n, P3723368893319809951.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P10933912655465766116

`A143928(n+1)-A261465(n+1)`
-/

namespace A349660.P10933912655465766116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143928 (n + 1) - A261465 (n + 1)

end

end A349660.P10933912655465766116

namespace A349660

/-- `A143928(n+1)-A261465(n+1)` -/
def P10933912655465766116.Spec : Prop :=
  ∀ n, P10933912655465766116.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P14173093884905896876

`A367335(n+1)-A210497(n+1)`
-/

namespace A349660.P14173093884905896876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367335 (n + 1) - A210497 (n + 1)

end

end A349660.P14173093884905896876

namespace A349660

/-- `A367335(n+1)-A210497(n+1)` -/
def P14173093884905896876.Spec : Prop :=
  ∀ n, P14173093884905896876.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P15105214382011803502

`Δ[A007504(n)]+A065091(n+1)²`
-/

namespace A349660.P15105214382011803502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A065091 (n + 1) ^ 2

end

end A349660.P15105214382011803502

namespace A349660

/-- `Δ[A007504(n)]+A065091(n+1)²` -/
def P15105214382011803502.Spec : Prop :=
  ∀ n, P15105214382011803502.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P10116885582146948544

`A000040(n+1)+A065091(n+1)²`
-/

namespace A349660.P10116885582146948544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A065091 (n + 1) ^ 2

end

end A349660.P10116885582146948544

namespace A349660

/-- `A000040(n+1)+A065091(n+1)²` -/
def P10116885582146948544.Spec : Prop :=
  ∀ n, P10116885582146948544.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P15840170116673841567

`A261465(n+1)+2*A000040(n+1)`
-/

namespace A349660.P15840170116673841567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) + 2 * A000040 (n + 1)

end

end A349660.P15840170116673841567

namespace A349660

/-- `A261465(n+1)+2*A000040(n+1)` -/
def P15840170116673841567.Spec : Prop :=
  ∀ n, P15840170116673841567.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P9055143071311608327

`A000040(n+1)+A048852(n+1)+A006094(n+1)`
-/

namespace A349660.P9055143071311608327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A048852 (n + 1) + A006094 (n + 1))

end

end A349660.P9055143071311608327

namespace A349660

/-- `A000040(n+1)+A048852(n+1)+A006094(n+1)` -/
def P9055143071311608327.Spec : Prop :=
  ∀ n, P9055143071311608327.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P6579315842136727479

`A069482(n+1)+A069484(n+1)-A261465(n+1)`
-/

namespace A349660.P6579315842136727479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) + (A069484 (n + 1) - A261465 (n + 1))

end

end A349660.P6579315842136727479

namespace A349660

/-- `A069482(n+1)+A069484(n+1)-A261465(n+1)` -/
def P6579315842136727479.Spec : Prop :=
  ∀ n, P6579315842136727479.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P6610017673112419463

`A036690(n+1)+A001043(n+1)*A001223(n+1)`
-/

namespace A349660.P6610017673112419463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + A001043 (n + 1) * A001223 (n + 1)

end

end A349660.P6610017673112419463

namespace A349660

/-- `A036690(n+1)+A001043(n+1)*A001223(n+1)` -/
def P6610017673112419463.Spec : Prop :=
  ∀ n, P6610017673112419463.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P8702265305401803683

`Δ[A024450(n+1)+A007504(n)]`
-/

namespace A349660.P8702265305401803683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349660.P8702265305401803683

namespace A349660

/-- `Δ[A024450(n+1)+A007504(n)]` -/
def P8702265305401803683.Spec : Prop :=
  ∀ n, P8702265305401803683.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P7896037673651898680

`A084920(n+2)+A008864(n+1)`
-/

namespace A349660.P7896037673651898680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 2) + A008864 (n + 1)

end

end A349660.P7896037673651898680

namespace A349660

/-- `A084920(n+2)+A008864(n+1)` -/
def P7896037673651898680.Spec : Prop :=
  ∀ n, P7896037673651898680.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P14402687730708918080

`A052147(n+1)+A049001(n+2)`
-/

namespace A349660.P14402687730708918080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A049001 (n + 2)

end

end A349660.P14402687730708918080

namespace A349660

/-- `A052147(n+1)+A049001(n+2)` -/
def P14402687730708918080.Spec : Prop :=
  ∀ n, P14402687730708918080.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P3697379777948219034

`A175221(n+1)+A166010(n+2)`
-/

namespace A349660.P3697379777948219034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A166010 (n + 2)

end

end A349660.P3697379777948219034

namespace A349660

/-- `A175221(n+1)+A166010(n+2)` -/
def P3697379777948219034.Spec : Prop :=
  ∀ n, P3697379777948219034.a n = A349660 (n + 1)

end A349660

/-! ## A349660.P10326412741393646278

`A008578(n+2)+A001248(n+2)`
-/

namespace A349660.P10326412741393646278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A001248 (n + 2)

end

end A349660.P10326412741393646278

namespace A349660

/-- `A008578(n+2)+A001248(n+2)` -/
def P10326412741393646278.Spec : Prop :=
  ∀ n, P10326412741393646278.a n = A349660 (n + 1)

end A349660

/-!
# A349661: Number of ways to write n as x^4 + y^2 + (z^2 + 4^w)/2 with x,y,z,w nonnegative integers.

The programs for A349661, there is no canonical definition to state claims against.
-/

/-! ## A349661.P6928944338103244290

`A350012(4*(n+1))`
-/

namespace A349661.P6928944338103244290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350012 (4 * (n + 1))

end

end A349661.P6928944338103244290

/-!
# A349662: a(n) is the number of squares strictly between n^2 and n^3.

The programs for A349662, the canonical program `A349662.P6895351482226976908` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349662 has offset 0).

The definition of A349662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349662.P9226533801977074231

`ceil(sqrt(n^3))-floor(atan(n)+n)`
-/

namespace A349662.P9226533801977074231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉ - ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

end

end A349662.P9226533801977074231

namespace A349662

/-- `ceil(sqrt(n^3))-floor(atan(n)+n)` -/
def P9226533801977074231.Spec : Prop :=
  ∀ n, P9226533801977074231.a n = A349662 n

end A349662

/-! ## A349662.P11005696230575511225

`ceil(sqrt(n^3)-n)-floor(atan(n))`
-/

namespace A349662.P11005696230575511225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ) - (n : ℝ)⌉ - ⌊Real.arctan (n : ℝ)⌋

end

end A349662.P11005696230575511225

namespace A349662

/-- `ceil(sqrt(n^3)-n)-floor(atan(n))` -/
def P11005696230575511225.Spec : Prop :=
  ∀ n, P11005696230575511225.a n = A349662 n

end A349662

/-! ## A349662.P6815294106037541555

`floor(n*(sqrt(n)-1))-char[(n+2)²]`
-/

namespace A349662.P6815294106037541555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (n : ℝ) - 1)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A349662.P6815294106037541555

namespace A349662

/-- `floor(n*(sqrt(n)-1))-char[(n+2)²]` -/
def P6815294106037541555.Spec : Prop :=
  ∀ n, P6815294106037541555.a n = A349662 n

end A349662

/-! ## A349662.P6895351482226976908

`(n²-n)%(A084535(n)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349662

/-- `(n²-n)%(A084535(n)+1)` -/
def P6895351482226976908.Spec : Prop :=
  ∀ n, P6895351482226976908.a n = A349662 n

theorem P6895351482226976908.correct : P6895351482226976908.Spec := by
  intro n
  simp only [A349662]

end A349662

/-! ## A349662.P15629853108424932550

`abs(A184985(n+1)-ceil(sqrt(n^3)))`
-/

namespace A349662.P15629853108424932550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184985 (n + 1) - ⌈Real.sqrt (n ^ 3 : ℝ)⌉|

end

end A349662.P15629853108424932550

namespace A349662

/-- `abs(A184985(n+1)-ceil(sqrt(n^3)))` -/
def P15629853108424932550.Spec : Prop :=
  ∀ n, P15629853108424932550.a n = A349662 n

end A349662

/-! ## A349662.P333665595646152943

`(A185549(n)-(n+1))%A000041(n)`
-/

namespace A349662.P333665595646152943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185549 n - (n + 1 : ℤ)) (A000041 n)

end

end A349662.P333665595646152943

namespace A349662

/-- `(A185549(n)-(n+1))%A000041(n)` -/
def P333665595646152943.Spec : Prop :=
  ∀ n, P333665595646152943.a n = A349662 n

end A349662

/-! ## A349662.P7721088629156353242

`floor(A004273(A185549(n)-n)/2)`
-/

namespace A349662.P7721088629156353242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 (A185549 n - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A349662.P7721088629156353242

namespace A349662

/-- `floor(A004273(A185549(n)-n)/2)` -/
def P7721088629156353242.Spec : Prop :=
  ∀ n, P7721088629156353242.a n = A349662 n

end A349662

/-! ## A349662.P6237249285977490628

`(ceil(n*sqrt(n))-(n+1))%A026702(n)`
-/

namespace A349662.P6237249285977490628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ - (n + 1 : ℤ)) (A026702 n)

end

end A349662.P6237249285977490628

namespace A349662

/-- `(ceil(n*sqrt(n))-(n+1))%A026702(n)` -/
def P6237249285977490628.Spec : Prop :=
  ∀ n, P6237249285977490628.a n = A349662 n

end A349662

/-!
# A349664: a(n) is the number of solutions for n^4 = z^2 - x^2 with {z,x} >= 1.

The programs for A349664, the canonical program `A349664.P7684518333172414269` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349664 has offset 1).

The definition of A349664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349664.P7684518333172414269

`A046079((n+1)²)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349664

/-- `A046079((n+1)²)` -/
def P7684518333172414269.Spec : Prop :=
  ∀ n, P7684518333172414269.a n = A349664 (n + 1)

theorem P7684518333172414269.correct : P7684518333172414269.Spec := by
  intro n
  simp only [A349664, Nat.add_sub_cancel]

end A349664

/-! ## A349664.P12335498874975393748

`A046079(Δ[A153056(n)])%(2*n+1)`
-/

namespace A349664.P12335498874975393748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (f1 (n + 1) - f1 n).toNat) (2 * n + 1 : ℤ)

end

end A349664.P12335498874975393748

namespace A349664

/-- `A046079(Δ[A153056(n)])%(2*n+1)` -/
def P12335498874975393748.Spec : Prop :=
  ∀ n, P12335498874975393748.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P10390601536949992547

`A046079(A000290(n+1))%A000203(n+1)`
-/

namespace A349664.P10390601536949992547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (A000290 (n + 1)).toNat) (A000203 (n + 1))

end

end A349664.P10390601536949992547

namespace A349664

/-- `A046079(A000290(n+1))%A000203(n+1)` -/
def P10390601536949992547.Spec : Prop :=
  ∀ n, P10390601536949992547.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P17062630155232849290

`A176835(∑[A016825(n)])-1`
-/

namespace A349664.P17062630155232849290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A349664.P17062630155232849290

namespace A349664

/-- `A176835(∑[A016825(n)])-1` -/
def P17062630155232849290.Spec : Prop :=
  ∀ n, P17062630155232849290.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P15119607716781335465

`∑{d}[A097272((n+1)²), A024361(#)]`
-/

namespace A349664.P15119607716781335465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A349664.P15119607716781335465

namespace A349664

/-- `∑{d}[A097272((n+1)²), A024361(#)]` -/
def P15119607716781335465.Spec : Prop :=
  ∀ n, P15119607716781335465.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P8862117863210217694

`∑{d}[A131738(n)², A024361(#)]`
-/

namespace A349664.P8862117863210217694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A349664.P8862117863210217694

namespace A349664

/-- `∑{d}[A131738(n)², A024361(#)]` -/
def P8862117863210217694.Spec : Prop :=
  ∀ n, P8862117863210217694.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P6917045761481917639

`sqrt(A221837((n+1)²))`
-/

namespace A349664.P6917045761481917639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A221837 ((n + 1) ^ 2) : ℝ)

end

end A349664.P6917045761481917639

namespace A349664

/-- `sqrt(A221837((n+1)²))` -/
def P6917045761481917639.Spec : Prop :=
  ∀ n, P6917045761481917639.a n = (A349664 (n + 1) : ℝ)

end A349664

/-! ## A349664.P3371534064379465462

`floor(sqrt(A221838((n+1)²)))`
-/

namespace A349664.P3371534064379465462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A221838 ((n + 1) ^ 2))

end

end A349664.P3371534064379465462

namespace A349664

/-- `floor(sqrt(A221838((n+1)²)))` -/
def P3371534064379465462.Spec : Prop :=
  ∀ n, P3371534064379465462.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P17949234422642685555

`A063647(A129194(n+1))`
-/

namespace A349664.P17949234422642685555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A129194 (n + 1)).toNat

end

end A349664.P17949234422642685555

namespace A349664

/-- `A063647(A129194(n+1))` -/
def P17949234422642685555.Spec : Prop :=
  ∀ n, P17949234422642685555.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P1456639306029149266

`A000194(A221838((n+1)²))`
-/

namespace A349664.P1456639306029149266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A221838 ((n + 1) ^ 2)).toNat

end

end A349664.P1456639306029149266

namespace A349664

/-- `A000194(A221838((n+1)²))` -/
def P1456639306029149266.Spec : Prop :=
  ∀ n, P1456639306029149266.a n = A349664 (n + 1)

end A349664

/-! ## A349664.P8673600193564970811

`A046081((n+1)²)-A046080((n+1)²)`
-/

namespace A349664.P8673600193564970811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 ((n + 1) ^ 2) - A046080 ((n + 1) ^ 2)

end

end A349664.P8673600193564970811

namespace A349664

/-- `A046081((n+1)²)-A046080((n+1)²)` -/
def P8673600193564970811.Spec : Prop :=
  ∀ n, P8673600193564970811.a n = A349664 (n + 1)

end A349664

/-!
# A349665: Record terms of A349664.

The programs for A349665, there is no canonical definition to state claims against.
-/

/-! ## A349665.P13004645355006556397

`record[A349664(n+1)]`
-/

namespace A349665.P13004645355006556397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349665.P13004645355006556397

/-! ## A349665.P15151962699447526474

`record[A046079((n+1)²)]`
-/

namespace A349665.P15151962699447526474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349665.P15151962699447526474

/-! ## A349665.P10480437567411909762

`record[A046079(A000290(n+1))%A000203(n+1)]`
-/

namespace A349665.P10480437567411909762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046079 (A000290 (n + 1)).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349665.P10480437567411909762

/-! ## A349665.P2828076617213627061

`record[A063647(A129194(n+1))]`
-/

namespace A349665.P2828076617213627061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A129194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349665.P2828076617213627061

/-! ## A349665.P16998361539734584023

`record[A000194(A221838((n+1)²))]`
-/

namespace A349665.P16998361539734584023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A221838 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349665.P16998361539734584023

/-!
# A349666: Primes of the form 4*k+3 that are still a prime of the form 4*k+3 after 2 Collatz steps.

The programs for A349666, the canonical program `A349666.P14459113287289377070` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349666 has offset 1).

The definition of A349666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349666.P14459113287289377070

`∩[A001132(n+1), A034934(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349666

/-- `∩[A001132(n+1), A034934(n+1)]` -/
def P14459113287289377070.Spec : Prop :=
  ∀ n, (P14459113287289377070.a n : ℤ) = A349666 (n + 1)

theorem P14459113287289377070.correct : P14459113287289377070.Spec := by
  intro n
  simp only [A349666, Nat.add_sub_cancel]

end A349666

/-! ## A349666.P14858929787030790800

`∩[A003628(n+1), A034934(n+1)]`
-/

namespace A349666.P14858929787030790800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P14858929787030790800

namespace A349666

/-- `∩[A003628(n+1), A034934(n+1)]` -/
def P14858929787030790800.Spec : Prop :=
  ∀ n, (P14858929787030790800.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P3497931376572136301

`∩[A007522(n+1), A034934(n+1)]`
-/

namespace A349666.P3497931376572136301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P3497931376572136301

namespace A349666

/-- `∩[A007522(n+1), A034934(n+1)]` -/
def P3497931376572136301.Spec : Prop :=
  ∀ n, (P3497931376572136301.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P7213960322032287034

`∩[A014663(n+1), A034934(n+1)]`
-/

namespace A349666.P7213960322032287034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P7213960322032287034

namespace A349666

/-- `∩[A014663(n+1), A034934(n+1)]` -/
def P7213960322032287034.Spec : Prop :=
  ∀ n, (P7213960322032287034.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P13558607217818004467

`∩[A034934(n+1), A038873(n+1)]`
-/

namespace A349666.P13558607217818004467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P13558607217818004467

namespace A349666

/-- `∩[A034934(n+1), A038873(n+1)]` -/
def P13558607217818004467.Spec : Prop :=
  ∀ n, (P13558607217818004467.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P14643631025192488548

`∩[A034934(n+1), A040098(n+1)]`
-/

namespace A349666.P14643631025192488548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P14643631025192488548

namespace A349666

/-- `∩[A034934(n+1), A040098(n+1)]` -/
def P14643631025192488548.Spec : Prop :=
  ∀ n, (P14643631025192488548.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P12136864207765610464

`∩[A034934(n+1), A045315(n+1)]`
-/

namespace A349666.P12136864207765610464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P12136864207765610464

namespace A349666

/-- `∩[A034934(n+1), A045315(n+1)]` -/
def P12136864207765610464.Spec : Prop :=
  ∀ n, (P12136864207765610464.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P13405907763533232946

`∩[A034934(n+1), A045355(n+1)]`
-/

namespace A349666.P13405907763533232946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P13405907763533232946

namespace A349666

/-- `∩[A034934(n+1), A045355(n+1)]` -/
def P13405907763533232946.Spec : Prop :=
  ∀ n, (P13405907763533232946.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P11823114402172324579

`∩[A034934(n+1), A045382(n+1)]`
-/

namespace A349666.P11823114402172324579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P11823114402172324579

namespace A349666

/-- `∩[A034934(n+1), A045382(n+1)]` -/
def P11823114402172324579.Spec : Prop :=
  ∀ n, (P11823114402172324579.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P8168968172175980505

`∩[A034934(n+1), A055673(n+1)]`
-/

namespace A349666.P8168968172175980505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P8168968172175980505

namespace A349666

/-- `∩[A034934(n+1), A055673(n+1)]` -/
def P8168968172175980505.Spec : Prop :=
  ∀ n, (P8168968172175980505.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P275782531967633903

`∩[A034934(n+1), A094712(n+1)]`
-/

namespace A349666.P275782531967633903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P275782531967633903

namespace A349666

/-- `∩[A034934(n+1), A094712(n+1)]` -/
def P275782531967633903.Spec : Prop :=
  ∀ n, (P275782531967633903.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P1253312612783476296

`∩[A034934(n+1), A216690(n+1)]`
-/

namespace A349666.P1253312612783476296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P1253312612783476296

namespace A349666

/-- `∩[A034934(n+1), A216690(n+1)]` -/
def P1253312612783476296.Spec : Prop :=
  ∀ n, (P1253312612783476296.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P15513759472109305612

`∩[A034934(n+1), A216735(n+1)]`
-/

namespace A349666.P15513759472109305612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P15513759472109305612

namespace A349666

/-- `∩[A034934(n+1), A216735(n+1)]` -/
def P15513759472109305612.Spec : Prop :=
  ∀ n, (P15513759472109305612.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P18217962715870950449

`∩[A034934(n+1), A216739(n+1)]`
-/

namespace A349666.P18217962715870950449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P18217962715870950449

namespace A349666

/-- `∩[A034934(n+1), A216739(n+1)]` -/
def P18217962715870950449.Spec : Prop :=
  ∀ n, (P18217962715870950449.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P12495964738981496154

`∩[A034934(n+1), A045352(n+1)]`
-/

namespace A349666.P12495964738981496154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P12495964738981496154

namespace A349666

/-- `∩[A034934(n+1), A045352(n+1)]` -/
def P12495964738981496154.Spec : Prop :=
  ∀ n, (P12495964738981496154.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P12695139924797961520

`∩[A034934(n+1), A045442(n+1)]`
-/

namespace A349666.P12695139924797961520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P12695139924797961520

namespace A349666

/-- `∩[A034934(n+1), A045442(n+1)]` -/
def P12695139924797961520.Spec : Prop :=
  ∀ n, (P12695139924797961520.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P5736453270179002462

`∩[A034934(n+1), A216747(n+1)]`
-/

namespace A349666.P5736453270179002462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P5736453270179002462

namespace A349666

/-- `∩[A034934(n+1), A216747(n+1)]` -/
def P5736453270179002462.Spec : Prop :=
  ∀ n, (P5736453270179002462.a n : ℤ) = A349666 (n + 1)

end A349666

/-! ## A349666.P9160235135744910081

`p?[A004771(A167057(n+1))]`
-/

namespace A349666.P9160235135744910081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A167057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349666.P9160235135744910081

namespace A349666

/-- `p?[A004771(A167057(n+1))]` -/
def P9160235135744910081.Spec : Prop :=
  ∀ n, P9160235135744910081.a n = A349666 (n + 1)

end A349666

/-!
# A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

The programs for A349667, the canonical program `A349667.P3842805946856830097` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349667 has offset 1).

The definition of A349667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349667

/-- `p?[(4*n+1)*A318451(3*n+1)]` -/
def P3842805946856830097.Spec : Prop :=
  ∀ n, P3842805946856830097.a n = A349667 (n + 1)

theorem P3842805946856830097.correct : P3842805946856830097.Spec := by
  intro n
  simp only [A349667, Nat.add_sub_cancel]

end A349667

/-! ## A349667.P15106580489005043023

`p?[A087436(A087444(n+1))*A087445(n+1)]`
-/

namespace A349667.P15106580489005043023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A087444 (n + 1)).toNat * A087445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P15106580489005043023

namespace A349667

/-- `p?[A087436(A087444(n+1))*A087445(n+1)]` -/
def P15106580489005043023.Spec : Prop :=
  ∀ n, P15106580489005043023.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P2732155098388271789

`p?[A010051(A067745(n+1))+4*n]`
-/

namespace A349667.P2732155098388271789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A067745 (n + 1)).toNat + (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P2732155098388271789

namespace A349667

/-- `p?[A010051(A067745(n+1))+4*n]` -/
def P2732155098388271789.Spec : Prop :=
  ∀ n, P2732155098388271789.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P15865755618838412149

`p?[A004773(A038550(n+1))]`
-/

namespace A349667.P15865755618838412149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A038550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P15865755618838412149

namespace A349667

/-- `p?[A004773(A038550(n+1))]` -/
def P15865755618838412149.Spec : Prop :=
  ∀ n, P15865755618838412149.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P18259408726766341478

`p?[A004773(A093641(n+5))]`
-/

namespace A349667.P18259408726766341478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A093641 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P18259408726766341478

namespace A349667

/-- `p?[A004773(A093641(n+5))]` -/
def P18259408726766341478.Spec : Prop :=
  ∀ n, P18259408726766341478.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P8868505065175016540

`p?[A004773(n)*A069283(n)]`
-/

namespace A349667.P8868505065175016540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n * A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P8868505065175016540

namespace A349667

/-- `p?[A004773(n)*A069283(n)]` -/
def P8868505065175016540.Spec : Prop :=
  ∀ n, P8868505065175016540.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P5679030244401911968

`p?[(A002264(n)+n)*A069283(n)]`
-/

namespace A349667.P5679030244401911968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + (n : ℤ)) * A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P5679030244401911968

namespace A349667

/-- `p?[(A002264(n)+n)*A069283(n)]` -/
def P5679030244401911968.Spec : Prop :=
  ∀ n, P5679030244401911968.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P10059468885048045518

`p?[A005408(n)*A325166(A016789(n))]`
-/

namespace A349667.P10059468885048045518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A325166 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P10059468885048045518

namespace A349667

/-- `p?[A005408(n)*A325166(A016789(n))]` -/
def P10059468885048045518.Spec : Prop :=
  ∀ n, P10059468885048045518.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P12250108980698363435

`p?[A026215(A100368(n+1))]`
-/

namespace A349667.P12250108980698363435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (A100368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P12250108980698363435

namespace A349667

/-- `p?[A026215(A100368(n+1))]` -/
def P12250108980698363435.Spec : Prop :=
  ∀ n, P12250108980698363435.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P6988107055371701745

`p?[A026215(2*A038550(n+1))]`
-/

namespace A349667.P6988107055371701745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (2 * A038550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P6988107055371701745

namespace A349667

/-- `p?[A026215(2*A038550(n+1))]` -/
def P6988107055371701745.Spec : Prop :=
  ∀ n, P6988107055371701745.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P9408518692339388017

`p?[A026215(n+1)*A325166(n+1)]`
-/

namespace A349667.P9408518692339388017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (n + 1) * A325166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P9408518692339388017

namespace A349667

/-- `p?[A026215(n+1)*A325166(n+1)]` -/
def P9408518692339388017.Spec : Prop :=
  ∀ n, P9408518692339388017.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P17346765388931534891

`p?[A026142(A100368(n+2))]`
-/

namespace A349667.P17346765388931534891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A100368 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P17346765388931534891

namespace A349667

/-- `p?[A026142(A100368(n+2))]` -/
def P17346765388931534891.Spec : Prop :=
  ∀ n, P17346765388931534891.a n = A349667 (n + 1)

end A349667

/-! ## A349667.P16981827619727791847

`p?[A002264(4*n)*A069283(n)]`
-/

namespace A349667.P16981827619727791847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (4 * n) * A069283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P16981827619727791847

namespace A349667

/-- `p?[A002264(4*n)*A069283(n)]` -/
def P16981827619727791847.Spec : Prop :=
  ∀ n, P16981827619727791847.a n = A349667 (n + 1)

end A349667

/-!
# A349668: a(n) is the n-th safe prime reduced mod n.

The programs for A349668, the canonical program `A349668.P12887909393031099828` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349668 has offset 1).

The definition of A349668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349668.P12887909393031099828

`A005385(n+1)%(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349668

/-- `A005385(n+1)%(n+1)` -/
def P12887909393031099828.Spec : Prop :=
  ∀ n, P12887909393031099828.a n = A349668 (n + 1)

theorem P12887909393031099828.correct : P12887909393031099828.Spec := by
  intro n
  simp only [A349668, Nat.add_sub_cancel]

end A349668

/-! ## A349668.P3133844545390479912

`(A077065(n+1)+1)%(n+1)`
-/

namespace A349668.P3133844545390479912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077065 (n + 1) + 1) (n + 1 : ℤ)

end

end A349668.P3133844545390479912

namespace A349668

/-- `(A077065(n+1)+1)%(n+1)` -/
def P3133844545390479912.Spec : Prop :=
  ∀ n, P3133844545390479912.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P8763459181571858474

`(2*A005384(n+1)+1)%(n+1)`
-/

namespace A349668.P8763459181571858474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A005384 (n + 1) + 1) (n + 1 : ℤ)

end

end A349668.P8763459181571858474

namespace A349668

/-- `(2*A005384(n+1)+1)%(n+1)` -/
def P8763459181571858474.Spec : Prop :=
  ∀ n, P8763459181571858474.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P10367205288556089403

`(A176045(n+1)+A005384(n+1))%(n+1)`
-/

namespace A349668.P10367205288556089403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176045 (n + 1) + A005384 (n + 1)) (n + 1 : ℤ)

end

end A349668.P10367205288556089403

namespace A349668

/-- `(A176045(n+1)+A005384(n+1))%(n+1)` -/
def P10367205288556089403.Spec : Prop :=
  ∀ n, P10367205288556089403.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P12580009980525752157

`(A156592(n+1)/A005384(n+1))%(n+1)`
-/

namespace A349668.P12580009980525752157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156592 (n + 1) : ℚ) / (A005384 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A349668.P12580009980525752157

namespace A349668

/-- `(A156592(n+1)/A005384(n+1))%(n+1)` -/
def P12580009980525752157.Spec : Prop :=
  ∀ n, P12580009980525752157.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P16883883546177140727

`(A156592(n+1)/(A176045(n+1)-1))%(n+1)`
-/

namespace A349668.P16883883546177140727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156592 (n + 1) : ℚ) / (A176045 (n + 1) - 1 : ℚ))) (n + 1 : ℤ)

end

end A349668.P16883883546177140727

namespace A349668

/-- `(A156592(n+1)/(A176045(n+1)-1))%(n+1)` -/
def P16883883546177140727.Spec : Prop :=
  ∀ n, P16883883546177140727.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P2959521984531839628

`A079148(n+3)%(n+1)`
-/

namespace A349668.P2959521984531839628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079148 (n + 3)) (n + 1 : ℤ)

end

end A349668.P2959521984531839628

namespace A349668

/-- `A079148(n+3)%(n+1)` -/
def P2959521984531839628.Spec : Prop :=
  ∀ n, P2959521984531839628.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P8832220993706580850

`p?[A065966(n+1)]%(n+1)`
-/

namespace A349668.P8832220993706580850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349668.P8832220993706580850

namespace A349668

/-- `p?[A065966(n+1)]%(n+1)` -/
def P8832220993706580850.Spec : Prop :=
  ∀ n, P8832220993706580850.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P16705879706807658723

`record[A023590(n+1)]%(n+1)`
-/

namespace A349668.P16705879706807658723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349668.P16705879706807658723

namespace A349668

/-- `record[A023590(n+1)]%(n+1)` -/
def P16705879706807658723.Spec : Prop :=
  ∀ n, P16705879706807658723.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P3262734899139845305

`record[A023592(n+1)]%(n+1)`
-/

namespace A349668.P3262734899139845305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349668.P3262734899139845305

namespace A349668

/-- `record[A023592(n+1)]%(n+1)` -/
def P3262734899139845305.Spec : Prop :=
  ∀ n, P3262734899139845305.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P15113387191240885433

`p?[A072055(n+1)]%(n+1)`
-/

namespace A349668.P15113387191240885433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349668.P15113387191240885433

namespace A349668

/-- `p?[A072055(n+1)]%(n+1)` -/
def P15113387191240885433.Spec : Prop :=
  ∀ n, P15113387191240885433.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P964746925957839307

`p?[2*A000040(n+1)+1]%(n+1)`
-/

namespace A349668.P964746925957839307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349668.P964746925957839307

namespace A349668

/-- `p?[2*A000040(n+1)+1]%(n+1)` -/
def P964746925957839307.Spec : Prop :=
  ∀ n, P964746925957839307.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P13801097333008372007

`A023590(A072192(n+1))%(n+1)`
-/

namespace A349668.P13801097333008372007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023590 (A072192 (n + 1)).toNat) (n + 1 : ℤ)

end

end A349668.P13801097333008372007

namespace A349668

/-- `A023590(A072192(n+1))%(n+1)` -/
def P13801097333008372007.Spec : Prop :=
  ∀ n, P13801097333008372007.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P9262069206957911143

`A023592(A072192(n+1))%A000463(A005408(n))`
-/

namespace A349668.P9262069206957911143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023592 (A072192 (n + 1)).toNat) (A000463 (A005408 n).toNat)

end

end A349668.P9262069206957911143

namespace A349668

/-- `A023592(A072192(n+1))%A000463(A005408(n))` -/
def P9262069206957911143.Spec : Prop :=
  ∀ n, P9262069206957911143.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P5113023199936057134

`A070846(A005384(n+1))%(n+1)`
-/

namespace A349668.P5113023199936057134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070846 (A005384 (n + 1)).toNat) (n + 1 : ℤ)

end

end A349668.P5113023199936057134

namespace A349668

/-- `A070846(A005384(n+1))%(n+1)` -/
def P5113023199936057134.Spec : Prop :=
  ∀ n, P5113023199936057134.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P14260759018125420265

`A151800(A077065(n+1))%(n+1)`
-/

namespace A349668.P14260759018125420265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A077065 (n + 1)).toNat) (n + 1 : ℤ)

end

end A349668.P14260759018125420265

namespace A349668

/-- `A151800(A077065(n+1))%(n+1)` -/
def P14260759018125420265.Spec : Prop :=
  ∀ n, P14260759018125420265.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P16582483270269425530

`record[A020639(2*A000040(n+1)+1)]%(n+1)`
-/

namespace A349668.P16582483270269425530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349668.P16582483270269425530

namespace A349668

/-- `record[A020639(2*A000040(n+1)+1)]%(n+1)` -/
def P16582483270269425530.Spec : Prop :=
  ∀ n, P16582483270269425530.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P7238187178414501221

`record[A006530(A072055(n+1))]%A000027(n+1)`
-/

namespace A349668.P7238187178414501221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000027 (n + 1))

end

end A349668.P7238187178414501221

namespace A349668

/-- `record[A006530(A072055(n+1))]%A000027(n+1)` -/
def P7238187178414501221.Spec : Prop :=
  ∀ n, P7238187178414501221.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P18423171822490014318

`record[A006530(A000040(n+1)+A000040(n+1)+1)]%(n+1)`
-/

namespace A349668.P18423171822490014318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349668.P18423171822490014318

namespace A349668

/-- `record[A006530(A000040(n+1)+A000040(n+1)+1)]%(n+1)` -/
def P18423171822490014318.Spec : Prop :=
  ∀ n, P18423171822490014318.a n = A349668 (n + 1)

end A349668

/-! ## A349668.P13855195513243761095

`A006530(A194593(n+2))%(n+1)`
-/

namespace A349668.P13855195513243761095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A194593 (n + 2)).toNat) (n + 1 : ℤ)

end

end A349668.P13855195513243761095

namespace A349668

/-- `A006530(A194593(n+2))%(n+1)` -/
def P13855195513243761095.Spec : Prop :=
  ∀ n, P13855195513243761095.a n = A349668 (n + 1)

end A349668

/-!
# A349669: a(n) is the n-th Sophie Germain prime reduced mod n.

The programs for A349669, the canonical program `A349669.P12956614078268560054` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349669 has offset 1).

The definition of A349669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349669.P12956614078268560054

`A005384(n+1)%(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349669

/-- `A005384(n+1)%(n+1)` -/
def P12956614078268560054.Spec : Prop :=
  ∀ n, P12956614078268560054.a n = A349669 (n + 1)

theorem P12956614078268560054.correct : P12956614078268560054.Spec := by
  intro n
  simp only [A349669, Nat.add_sub_cancel]

end A349669

/-! ## A349669.P7234389749734843669

`floor(A005385(n+1)/2)%(n+1)`
-/

namespace A349669.P7234389749734843669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A005385 (n + 1) : ℚ) / 2⌋ (n + 1 : ℤ)

end

end A349669.P7234389749734843669

namespace A349669

/-- `floor(A005385(n+1)/2)%(n+1)` -/
def P7234389749734843669.Spec : Prop :=
  ∀ n, P7234389749734843669.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P3380355381139480738

`(A005385(n+1)%A176045(n+1))%(n+1)`
-/

namespace A349669.P3380355381139480738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A005385 (n + 1)) (A176045 (n + 1))) (n + 1 : ℤ)

end

end A349669.P3380355381139480738

namespace A349669

/-- `(A005385(n+1)%A176045(n+1))%(n+1)` -/
def P3380355381139480738.Spec : Prop :=
  ∀ n, P3380355381139480738.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P7210397951842391832

`(A156592(n+1)%A077065(n+1))%(n+1)`
-/

namespace A349669.P7210397951842391832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A156592 (n + 1)) (A077065 (n + 1))) (n + 1 : ℤ)

end

end A349669.P7210397951842391832

namespace A349669

/-- `(A156592(n+1)%A077065(n+1))%(n+1)` -/
def P7210397951842391832.Spec : Prop :=
  ∀ n, P7210397951842391832.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P7088143556655747487

`A004524(A005385(n+1)%A103517(n))`
-/

namespace A349669.P7088143556655747487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.tmod (A005385 (n + 1)) (A103517 n)).toNat

end

end A349669.P7088143556655747487

namespace A349669

/-- `A004524(A005385(n+1)%A103517(n))` -/
def P7088143556655747487.Spec : Prop :=
  ∀ n, P7088143556655747487.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P14298909944769583107

`A004525(A077065(n+1)%A103517(n))`
-/

namespace A349669.P14298909944769583107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A077065 (n + 1)) (A103517 n)).toNat

end

end A349669.P14298909944769583107

namespace A349669

/-- `A004525(A077065(n+1)%A103517(n))` -/
def P14298909944769583107.Spec : Prop :=
  ∀ n, P14298909944769583107.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P10430282451895075859

`((p?[A072055(n+1)]-1)/2)%(n+1)`
-/

namespace A349669.P10430282451895075859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2)) (n + 1 : ℤ)

end

end A349669.P10430282451895075859

namespace A349669

/-- `((p?[A072055(n+1)]-1)/2)%(n+1)` -/
def P10430282451895075859.Spec : Prop :=
  ∀ n, P10430282451895075859.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P17670399370542093813

`A000040(A072192(n+1))%(n+1)`
-/

namespace A349669.P17670399370542093813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A072192 (n + 1)).toNat) (n + 1 : ℤ)

end

end A349669.P17670399370542093813

namespace A349669

/-- `A000040(A072192(n+1))%(n+1)` -/
def P17670399370542093813.Spec : Prop :=
  ∀ n, P17670399370542093813.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P150636167472473186

`p?[A054639(n+1)]%(n+1)`
-/

namespace A349669.P150636167472473186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P150636167472473186

namespace A349669

/-- `p?[A054639(n+1)]%(n+1)` -/
def P150636167472473186.Spec : Prop :=
  ∀ n, P150636167472473186.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P18196771057046001475

`p?[A005097(n+1)]%(n+1)`
-/

namespace A349669.P18196771057046001475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P18196771057046001475

namespace A349669

/-- `p?[A005097(n+1)]%(n+1)` -/
def P18196771057046001475.Spec : Prop :=
  ∀ n, P18196771057046001475.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P16845604700765384318

`p?[A130290(n+1)]%(n+1)`
-/

namespace A349669.P16845604700765384318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P16845604700765384318

namespace A349669

/-- `p?[A130290(n+1)]%(n+1)` -/
def P16845604700765384318.Spec : Prop :=
  ∀ n, P16845604700765384318.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P4797081538008817782

`p?[floor(A000040(n+1)/2)]%(n+1)`
-/

namespace A349669.P4797081538008817782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P4797081538008817782

namespace A349669

/-- `p?[floor(A000040(n+1)/2)]%(n+1)` -/
def P4797081538008817782.Spec : Prop :=
  ∀ n, P4797081538008817782.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P1217381756713006859

`p?[n*A001222(2*n+1)]%(n+1)`
-/

namespace A349669.P1217381756713006859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P1217381756713006859

namespace A349669

/-- `p?[n*A001222(2*n+1)]%(n+1)` -/
def P1217381756713006859.Spec : Prop :=
  ∀ n, P1217381756713006859.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P16502464944752018954

`p?[A020639(2*n+1)-(n+1)]%(n+1)`
-/

namespace A349669.P16502464944752018954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (n + 1 : ℤ)

end

end A349669.P16502464944752018954

namespace A349669

/-- `p?[A020639(2*n+1)-(n+1)]%(n+1)` -/
def P16502464944752018954.Spec : Prop :=
  ∀ n, P16502464944752018954.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P16568479989756444357

`record[A006530(A000010(n+3))]%(n+1)`
-/

namespace A349669.P16568479989756444357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349669.P16568479989756444357

namespace A349669

/-- `record[A006530(A000010(n+3))]%(n+1)` -/
def P16568479989756444357.Spec : Prop :=
  ∀ n, P16568479989756444357.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P4107510357674786651

`A006530(A005385(n+1)-1)%(n+1)`
-/

namespace A349669.P4107510357674786651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A005385 (n + 1) - 1).toNat) (n + 1 : ℤ)

end

end A349669.P4107510357674786651

namespace A349669

/-- `A006530(A005385(n+1)-1)%(n+1)` -/
def P4107510357674786651.Spec : Prop :=
  ∀ n, P4107510357674786651.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P18083738097714678055

`A006530(xor(1, A005385(n+1)))%(n+1)`
-/

namespace A349669.P18083738097714678055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (Int.xor 1 (A005385 (n + 1))).toNat) (n + 1 : ℤ)

end

end A349669.P18083738097714678055

namespace A349669

/-- `A006530(xor(1, A005385(n+1)))%(n+1)` -/
def P18083738097714678055.Spec : Prop :=
  ∀ n, P18083738097714678055.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P9424632998091759379

`record[A006530(A000040(n+2)-1)]%(n+1)`
-/

namespace A349669.P9424632998091759379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349669.P9424632998091759379

namespace A349669

/-- `record[A006530(A000040(n+2)-1)]%(n+1)` -/
def P9424632998091759379.Spec : Prop :=
  ∀ n, P9424632998091759379.a n = A349669 (n + 1)

end A349669

/-! ## A349669.P17338376402137449663

`record[A006530(xor(1, A000040(n+2)))]%(n+1)`
-/

namespace A349669.P17338376402137449663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A000040 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A349669.P17338376402137449663

namespace A349669

/-- `record[A006530(xor(1, A000040(n+2)))]%(n+1)` -/
def P17338376402137449663.Spec : Prop :=
  ∀ n, P17338376402137449663.a n = A349669 (n + 1)

end A349669

/-!
# A349670: Number of iterations x -> (x-1)/2 needed to get 1, 2 or a composite number, when starting with prime(n).

The programs for A349670, there is no canonical definition to state claims against.
-/

/-! ## A349670.P609849076534384878

`val(A292596(record[A162753(n)])+1, 2)`
-/

namespace A349670.P609849076534384878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1).toNat 2

end

end A349670.P609849076534384878

/-! ## A349670.P3593934527171601622

`A089309(A292596(record[A162753(n)]))`
-/

namespace A349670.P3593934527171601622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A292596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A349670.P3593934527171601622

/-! ## A349670.P13241574737051289464

`A089309(A292596(p?[A001057(n)]))`
-/

namespace A349670.P13241574737051289464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A292596 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A349670.P13241574737051289464

/-! ## A349670.P3118817484636365434

`A089309(A292596(p?[A064429(n)]))`
-/

namespace A349670.P3118817484636365434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A292596 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A349670.P3118817484636365434

/-! ## A349670.P4742655247965909119

`A089309(A292596(p?[A061397(n+1)]))`
-/

namespace A349670.P4742655247965909119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A292596 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A349670.P4742655247965909119

/-!
# A349671: Number of iterations x -> (x+1)/2 needed to get 2 or a composite number, when starting with prime(n).

The programs for A349671, there is no canonical definition to state claims against.
-/

/-! ## A349671.P8142229144619308372

`gcd(A172237(A261294(n+1)), A276711(n+1))`
-/

namespace A349671.P8142229144619308372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172237 (A261294 (n + 1)).toNat) (A276711 (n + 1))

end

end A349671.P8142229144619308372

/-! ## A349671.P13156343826571818533

`A051903(∑[A025586(A141310(n))²])`
-/

namespace A349671.P13156343826571818533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A141310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349671.P13156343826571818533

/-! ## A349671.P12009723099298683348

`A357181(A000040(n+1)-A054348(2*n+3))`
-/

namespace A349671.P12009723099298683348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357181 (A000040 (n + 1) - A054348 (2 * n + 3)).toNat

end

end A349671.P12009723099298683348

/-! ## A349671.P7901707810953132975

`A007814(or(A006093(n+1), A156552(2*n+3)))`
-/

namespace A349671.P7901707810953132975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (A006093 (n + 1)) (A156552 (2 * n + 3))).toNat

end

end A349671.P7901707810953132975

/-! ## A349671.P11166736941185798662

`gcd(A363944(n+1), A363944(A046657(n+2)))`
-/

namespace A349671.P11166736941185798662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A363944 (n + 1)) (A363944 (A046657 (n + 2)).toNat)

end

end A349671.P11166736941185798662

/-!
# A349675: a(n) is the number of attainable partitions of n.

The programs for A349675, there is no canonical definition to state claims against.
-/

/-! ## A349675.P6992687769675747803

`A302835(floor(n/2))`
-/

namespace A349675.P6992687769675747803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 ⌊(n : ℚ) / 2⌋.toNat

end

end A349675.P6992687769675747803

/-! ## A349675.P14370164603399857266

`or(char[1], A302835(A004526(n)))`
-/

namespace A349675.P14370164603399857266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302835 (A004526 n).toNat)

end

end A349675.P14370164603399857266

/-! ## A349675.P8384898522357177126

`A007318(C(2, n))*A302835(A004526(n))`
-/

namespace A349675.P8384898522357177126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302835 (A004526 n).toNat

end

end A349675.P8384898522357177126

/-! ## A349675.P5454779116711756098

`A302835(A004526(n))^A014963(C(2, n)!)`
-/

namespace A349675.P5454779116711756098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302835 (A004526 n).toNat : ℚ) ^ (A014963 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A349675.P5454779116711756098

/-! ## A349675.P3671816678043472698

`A302835(A004526(n))+A008683(9*(n+1))`
-/

namespace A349675.P3671816678043472698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 (A004526 n).toNat + A008683 (9 * (n + 1))

end

end A349675.P3671816678043472698

/-! ## A349675.P15856152778627551806

`or(char[1], A302835(A008615(3*n)))`
-/

namespace A349675.P15856152778627551806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302835 (A008615 (3 * n)).toNat)

end

end A349675.P15856152778627551806

/-! ## A349675.P4429562669756374391

`A302835(A004526(n))%∑[A000032(n)]`
-/

namespace A349675.P4429562669756374391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302835 (A004526 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349675.P4429562669756374391

/-! ## A349675.P11735061024814943559

`∑{d}[A302835(A004526(n)), A000010(#)]`
-/

namespace A349675.P11735061024814943559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A349675.P11735061024814943559

/-! ## A349675.P7080349545968957138

`A302835(A004526(n))^A014963(∑[n+1])`
-/

namespace A349675.P7080349545968957138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302835 (A004526 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A349675.P7080349545968957138

/-! ## A349675.P12256336356515870697

`∏{d}[A302835(A004526(n)), A014963(#)]`
-/

namespace A349675.P12256336356515870697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302835 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A349675.P12256336356515870697

/-!
# A349676: Iterated Pillai's arithmetical function: a(1) = 2, for n >= 2, a(n) = A018804(a(n-1)).

The programs for A349676, the canonical program `A349676.P6432705211347796036` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349676 has offset 1).

The definition of A349676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349676.P6432705211347796036

`A018804(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349676

/-- `A018804(a(n-1))` -/
def P6432705211347796036.Spec : Prop :=
  ∀ n, P6432705211347796036.a n = A349676 (n + 1)

theorem P6432705211347796036.correct : P6432705211347796036.Spec := by
  intro n
  simp only [A349676, Nat.add_sub_cancel]

end A349676

/-! ## A349676.P821270198301973102

`A062803(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A349676.P821270198301973102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A062803 (a (n - 1)).toNat

end

end A349676.P821270198301973102

namespace A349676

/-- `A062803(a(n-1))` -/
def P821270198301973102.Spec : Prop :=
  ∀ n, P821270198301973102.a n = A349676 (n + 1)

end A349676

/-! ## A349676.P11605484499311317455

`A255655(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A349676.P11605484499311317455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A255655 (a (n - 1)).toNat

end

end A349676.P11605484499311317455

namespace A349676

/-- `A255655(a(n-1))` -/
def P11605484499311317455.Spec : Prop :=
  ∀ n, P11605484499311317455.a n = A349676 (n + 1)

end A349676

/-! ## A349676.P10204641516314672522

`A332794(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A349676.P10204641516314672522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A332794 (a (n - 1)).toNat

end

end A349676.P10204641516314672522

namespace A349676

/-- `A332794(a(n-1))` -/
def P10204641516314672522.Spec : Prop :=
  ∀ n, P10204641516314672522.a n = A349676 (n + 1)

end A349676

/-! ## A349676.P4070703787388702577

`A344372(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A349676.P4070703787388702577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A344372 (a (n - 1)).toNat

end

end A349676.P4070703787388702577

namespace A349676

/-- `A344372(a(n-1))` -/
def P4070703787388702577.Spec : Prop :=
  ∀ n, P4070703787388702577.a n = A349676 (n + 1)

end A349676

/-!
# A349678: Primes p such that the multiplicative order of 2 modulo k is odd, where k is the largest odd divisor of p - 1.

The programs for A349678, there is no canonical definition to state claims against.
-/

/-! ## A349678.P8936042301985539462

`p?[(n+2)*A000035(A007733(n+1))]`
-/

namespace A349678.P8936042301985539462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000035 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349678.P8936042301985539462

/-! ## A349678.P16611086368811022750

`p?[(n+2)*A001511(A007739(n+1))]`
-/

namespace A349678.P16611086368811022750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001511 (A007739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349678.P16611086368811022750

/-! ## A349678.P18201352210580426690

`record[A006530(n+2)*A000035(A007733(n+1))]`
-/

namespace A349678.P18201352210580426690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A000035 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349678.P18201352210580426690

/-! ## A349678.P3098327232920305752

`record[A014963(n+2)*A000035(A007733(n+1))]`
-/

namespace A349678.P3098327232920305752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A000035 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349678.P3098327232920305752

/-! ## A349678.P5152277544190228238

`record[A020639(n+2)*A000035(A007733(n+1))]`
-/

namespace A349678.P5152277544190228238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A000035 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349678.P5152277544190228238

/-!
# A349679: a(n) = n*(n+1)/2 - (n-2)*phi(n)/2 for n >= 2, with a(1)=1.

The programs for A349679, the canonical program `A349679.P14975392500775805578` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349679 has offset 1).

The definition of A349679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A067392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349679.P14975392500775805578

`A000010(n+1)+A067392(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A349679

/-- `A000010(n+1)+A067392(n+1)` -/
def P14975392500775805578.Spec : Prop :=
  ∀ n, P14975392500775805578.a n = A349679 (n + 1)

theorem P14975392500775805578.correct : P14975392500775805578.Spec := by
  intro n
  simp only [A349679, Nat.add_sub_cancel]

end A349679

/-! ## A349679.P7962709793929753503

`∑[n+2]-A345091(n+1)`
-/

namespace A349679.P7962709793929753503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A345091 (n + 1)

end

end A349679.P7962709793929753503

namespace A349679

/-- `∑[n+2]-A345091(n+1)` -/
def P7962709793929753503.Spec : Prop :=
  ∀ n, P7962709793929753503.a n = A349679 (n + 1)

end A349679

/-! ## A349679.P12089517695852024693

`ceil(((A051953(n+1)+3)*(n-1)+5)/2)`
-/

namespace A349679.P12089517695852024693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A051953 (n + 1) + 3) * ((n : ℤ) - 1) + 5 : ℚ) / 2⌉

end

end A349679.P12089517695852024693

namespace A349679

/-- `ceil(((A051953(n+1)+3)*(n-1)+5)/2)` -/
def P12089517695852024693.Spec : Prop :=
  ∀ n, P12089517695852024693.a n = A349679 (n + 1)

end A349679

/-! ## A349679.P124599901156367348

`A345892(n+1)-A308473(n+1)`
-/

namespace A349679.P124599901156367348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345892 (n + 1) - A308473 (n + 1)

end

end A349679.P124599901156367348

namespace A349679

/-- `A345892(n+1)-A308473(n+1)` -/
def P124599901156367348.Spec : Prop :=
  ∀ n, P124599901156367348.a n = A349679 (n + 1)

end A349679

/-! ## A349679.P14447844864462223215

`A067392(n+1)+n+1-A051953(n+1)`
-/

namespace A349679.P14447844864462223215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) + ((n + 1 : ℤ) - A051953 (n + 1))

end

end A349679.P14447844864462223215

namespace A349679

/-- `A067392(n+1)+n+1-A051953(n+1)` -/
def P14447844864462223215.Spec : Prop :=
  ∀ n, P14447844864462223215.a n = A349679 (n + 1)

end A349679

/-! ## A349679.P11944500457118495015

`A000010(n+1)+∑[n+1]-A023896(n+1)`
-/

namespace A349679.P11944500457118495015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A023896 (n + 1))

end

end A349679.P11944500457118495015

namespace A349679

/-- `A000010(n+1)+∑[n+1]-A023896(n+1)` -/
def P11944500457118495015.Spec : Prop :=
  ∀ n, P11944500457118495015.a n = A349679 (n + 1)

end A349679

/-! ## A349679.P15105164888328226018

`A002088(n+1)+A067392(n+1)-A002088(n)`
-/

namespace A349679.P15105164888328226018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A067392 (n + 1) - A002088 n)

end

end A349679.P15105164888328226018

namespace A349679

/-- `A002088(n+1)+A067392(n+1)-A002088(n)` -/
def P15105164888328226018.Spec : Prop :=
  ∀ n, P15105164888328226018.a n = A349679 (n + 1)

end A349679

/-!
# A349680: a(n) = Sum_{k=1..n} (n-k)^c(n/k), where c(n) = 1 - ceiling(n) + floor(n).

The programs for A349680, the canonical program `A349680.P840987634916672054` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349680 has offset 1).

The definition of A349680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349680.P840987634916672054

`n+1+n*A000005(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349680

/-- `n+1+n*A000005(n+1)-A000203(n+1)` -/
def P840987634916672054.Spec : Prop :=
  ∀ n, P840987634916672054.a n = A349680 (n + 1)

theorem P840987634916672054.correct : P840987634916672054.Spec := by
  intro n
  simp only [A349680, Nat.add_sub_cancel]

end A349680

/-! ## A349680.P16389928157666732890

`∑{d}[n+1, n-#]+n+1`
-/

namespace A349680.P16389928157666732890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ)) + (n + 1 : ℤ)

end

end A349680.P16389928157666732890

namespace A349680

/-- `∑{d}[n+1, n-#]+n+1` -/
def P16389928157666732890.Spec : Prop :=
  ∀ n, P16389928157666732890.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P9321771379217192000

`∑{d}[n+1, A000010(#)+n-#]`
-/

namespace A349680.P9321771379217192000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + ((n : ℤ) - (d : ℤ)))

end

end A349680.P9321771379217192000

namespace A349680

/-- `∑{d}[n+1, A000010(#)+n-#]` -/
def P9321771379217192000.Spec : Prop :=
  ∀ n, P9321771379217192000.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P10277223100836349180

`A094471(n+1)+A049820(n+1)`
-/

namespace A349680.P10277223100836349180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) + A049820 (n + 1)

end

end A349680.P10277223100836349180

namespace A349680

/-- `A094471(n+1)+A049820(n+1)` -/
def P10277223100836349180.Spec : Prop :=
  ∀ n, P10277223100836349180.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P15074657827446136295

`A038040(n+1)-A163163(n+1)`
-/

namespace A349680.P15074657827446136295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A163163 (n + 1)

end

end A349680.P15074657827446136295

namespace A349680

/-- `A038040(n+1)-A163163(n+1)` -/
def P15074657827446136295.Spec : Prop :=
  ∀ n, P15074657827446136295.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P4719220810606126935

`A081307(n+1)-A134156(n+1)`
-/

namespace A349680.P4719220810606126935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A134156 (n + 1)

end

end A349680.P4719220810606126935

namespace A349680

/-- `A081307(n+1)-A134156(n+1)` -/
def P4719220810606126935.Spec : Prop :=
  ∀ n, P4719220810606126935.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P1204407199635981123

`A345741(n+1)-A000203(n+1)`
-/

namespace A349680.P1204407199635981123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345741 (n + 1) - A000203 (n + 1)

end

end A349680.P1204407199635981123

namespace A349680

/-- `A345741(n+1)-A000203(n+1)` -/
def P1204407199635981123.Spec : Prop :=
  ∀ n, P1204407199635981123.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P2232743154025611532

`n*Δ[A006218(n)]-A001065(n+1)`
-/

namespace A349680.P2232743154025611532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A001065 (n + 1)

end

end A349680.P2232743154025611532

namespace A349680

/-- `n*Δ[A006218(n)]-A001065(n+1)` -/
def P2232743154025611532.Spec : Prop :=
  ∀ n, P2232743154025611532.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P8424053976421814709

`n*Δ[A054519(n)]-A001065(n+1)`
-/

namespace A349680.P8424053976421814709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A001065 (n + 1)

end

end A349680.P8424053976421814709

namespace A349680

/-- `n*Δ[A054519(n)]-A001065(n+1)` -/
def P8424053976421814709.Spec : Prop :=
  ∀ n, P8424053976421814709.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P5603214359203589110

`n*A000005(n+1)-A001065(n+1)`
-/

namespace A349680.P5603214359203589110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000005 (n + 1) - A001065 (n + 1)

end

end A349680.P5603214359203589110

namespace A349680

/-- `n*A000005(n+1)-A001065(n+1)` -/
def P5603214359203589110.Spec : Prop :=
  ∀ n, P5603214359203589110.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P15859388695990175000

`A049820(n+1)+A161680(n+1)-A362625(n+1)`
-/

namespace A349680.P15859388695990175000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A161680 (n + 1) - A362625 (n + 1))

end

end A349680.P15859388695990175000

namespace A349680

/-- `A049820(n+1)+A161680(n+1)-A362625(n+1)` -/
def P15859388695990175000.Spec : Prop :=
  ∀ n, P15859388695990175000.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P9569113574183353240

`A000203(n+1)+A350801(n+1)-A000005(n+1)`
-/

namespace A349680.P9569113574183353240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A350801 (n + 1) - A000005 (n + 1))

end

end A349680.P9569113574183353240

namespace A349680

/-- `A000203(n+1)+A350801(n+1)-A000005(n+1)` -/
def P9569113574183353240.Spec : Prop :=
  ∀ n, P9569113574183353240.a n = A349680 (n + 1)

end A349680

/-! ## A349680.P15602747073392224254

`n*A320111(2*(n+1))-A319699(2*(n+1))`
-/

namespace A349680.P15602747073392224254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A320111 (2 * (n + 1)) - A319699 (2 * (n + 1))

end

end A349680.P15602747073392224254

namespace A349680

/-- `n*A320111(2*(n+1))-A319699(2*(n+1))` -/
def P15602747073392224254.Spec : Prop :=
  ∀ n, P15602747073392224254.a n = A349680 (n + 1)

end A349680

/-!
# A349682: a(n) = A000292(6*n + 1) where A000292 are the tetrahedral numbers.

The programs for A349682, the canonical program `A349682.P2633105582033685271` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349682 has offset 0).

The definition of A349682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000292(6*n+1)` (program `A349682.P2633105582033685271`, by `A349682.P2633105582033685271.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349682.P9574724631513103609

`n*(n*(36*n+36)+11)+1`
-/

namespace A349682.P9574724631513103609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (36 * n + 36) + 11) + 1

end

end A349682.P9574724631513103609

namespace A349682

/-- `n*(n*(36*n+36)+11)+1` -/
def P9574724631513103609.Spec : Prop :=
  ∀ n, (P9574724631513103609.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P2633105582033685271

`A000292(6*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A349682

/-- `A000292(6*n+1)` -/
def P2633105582033685271.Spec : Prop :=
  ∀ n, P2633105582033685271.a n = A349682 n

theorem P2633105582033685271.correct : P2633105582033685271.Spec := by
  intro n
  simp only [A349682]

end A349682

/-! ## A349682.P11262173057998661348

`C(6*n+3, 3)`
-/

namespace A349682.P11262173057998661348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n + 3) 3

end

end A349682.P11262173057998661348

namespace A349682

/-- `C(6*n+3, 3)` -/
def P11262173057998661348.Spec : Prop :=
  ∀ n, (P11262173057998661348.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P14931412211460109352

`record[C(3*xor(1, n), 3)]`
-/

namespace A349682.P14931412211460109352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * Nat.xor 1 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349682.P14931412211460109352

namespace A349682

/-- `record[C(3*xor(1, n), 3)]` -/
def P14931412211460109352.Spec : Prop :=
  ∀ n, (P14931412211460109352.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P3764684603503924647

`record[C(n+3, lcm(6, n))]`
-/

namespace A349682.P3764684603503924647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (Nat.lcm 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349682.P3764684603503924647

namespace A349682

/-- `record[C(n+3, lcm(6, n))]` -/
def P3764684603503924647.Spec : Prop :=
  ∀ n, (P3764684603503924647.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P4414977637153046941

`record[C(3*n, 3*n%2)]`
-/

namespace A349682.P4414977637153046941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) (3 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349682.P4414977637153046941

namespace A349682

/-- `record[C(3*n, 3*n%2)]` -/
def P4414977637153046941.Spec : Prop :=
  ∀ n, (P4414977637153046941.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P1288701844989458899

`record[C(3*or(1, n), 3*n)]`
-/

namespace A349682.P1288701844989458899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * Nat.lor 1 n) (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349682.P1288701844989458899

namespace A349682

/-- `record[C(3*or(1, n), 3*n)]` -/
def P1288701844989458899.Spec : Prop :=
  ∀ n, (P1288701844989458899.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P258040968875775066

`Δ[n²]*A272399(n+1)`
-/

namespace A349682.P258040968875775066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A272399 (n + 1)

end

end A349682.P258040968875775066

namespace A349682

/-- `Δ[n²]*A272399(n+1)` -/
def P258040968875775066.Spec : Prop :=
  ∀ n, P258040968875775066.a n = A349682 n

end A349682

/-! ## A349682.P15234314866080570007

`A014641(n)*A016777(n)`
-/

namespace A349682.P15234314866080570007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n * A016777 n

end

end A349682.P15234314866080570007

namespace A349682

/-- `A014641(n)*A016777(n)` -/
def P15234314866080570007.Spec : Prop :=
  ∀ n, P15234314866080570007.a n = A349682 n

end A349682

/-! ## A349682.P16191236170728184891

`A016921(n)*A033570(n)`
-/

namespace A349682.P16191236170728184891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A033570 n

end

end A349682.P16191236170728184891

namespace A349682

/-- `A016921(n)*A033570(n)` -/
def P16191236170728184891.Spec : Prop :=
  ∀ n, P16191236170728184891.a n = A349682 n

end A349682

/-! ## A349682.P10508560562340898866

`(A008585(n)+1)*A014641(n)`
-/

namespace A349682.P10508560562340898866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + 1) * A014641 n

end

end A349682.P10508560562340898866

namespace A349682

/-- `(A008585(n)+1)*A014641(n)` -/
def P10508560562340898866.Spec : Prop :=
  ∀ n, P10508560562340898866.a n = A349682 n

end A349682

/-! ## A349682.P17665425703780532967

`lcm(A157142(n), A272399(n+1))`
-/

namespace A349682.P17665425703780532967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157142 n) (A272399 (n + 1))

end

end A349682.P17665425703780532967

namespace A349682

/-- `lcm(A157142(n), A272399(n+1))` -/
def P17665425703780532967.Spec : Prop :=
  ∀ n, (P17665425703780532967.a n : ℤ) = A349682 n

end A349682

/-! ## A349682.P1242941564953311426

`(A016813(n)-n)*A014641(n)`
-/

namespace A349682.P1242941564953311426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016813 n - (n : ℤ)) * A014641 n

end

end A349682.P1242941564953311426

namespace A349682

/-- `(A016813(n)-n)*A014641(n)` -/
def P1242941564953311426.Spec : Prop :=
  ∀ n, P1242941564953311426.a n = A349682 n

end A349682

/-! ## A349682.P15156722865396617267

`A016777(2*n)*A033570(n)`
-/

namespace A349682.P15156722865396617267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n) * A033570 n

end

end A349682.P15156722865396617267

namespace A349682

/-- `A016777(2*n)*A033570(n)` -/
def P15156722865396617267.Spec : Prop :=
  ∀ n, P15156722865396617267.a n = A349682 n

end A349682

/-! ## A349682.P3550910863965044047

`A006566(Δ[n²])`
-/

namespace A349682.P3550910863965044047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A349682.P3550910863965044047

namespace A349682

/-- `A006566(Δ[n²])` -/
def P3550910863965044047.Spec : Prop :=
  ∀ n, P3550910863965044047.a n = A349682 n

end A349682

/-! ## A349682.P3536209638732006617

`A061495(2*n)/6`
-/

namespace A349682.P3536209638732006617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061495 (2 * n) : ℚ) / 6

end

end A349682.P3536209638732006617

namespace A349682

/-- `A061495(2*n)/6` -/
def P3536209638732006617.Spec : Prop :=
  ∀ n, P3536209638732006617.a n = (A349682 n : ℚ)

end A349682

/-! ## A349682.P11493809643719536308

`A192790(2*n+1)/4`
-/

namespace A349682.P11493809643719536308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192790 (2 * n + 1) : ℚ) / 4

end

end A349682.P11493809643719536308

namespace A349682

/-- `A192790(2*n+1)/4` -/
def P11493809643719536308.Spec : Prop :=
  ∀ n, P11493809643719536308.a n = (A349682 n : ℚ)

end A349682

/-! ## A349682.P4274994346971173170

`A054776(2*n+1)/6`
-/

namespace A349682.P4274994346971173170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054776 (2 * n + 1) : ℚ) / 6

end

end A349682.P4274994346971173170

namespace A349682

/-- `A054776(2*n+1)/6` -/
def P4274994346971173170.Spec : Prop :=
  ∀ n, P4274994346971173170.a n = (A349682 n : ℚ)

end A349682

/-! ## A349682.P13709103885764548319

`Δ[n²]*A060544(2*n+1)`
-/

namespace A349682.P13709103885764548319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A060544 (2 * n + 1)

end

end A349682.P13709103885764548319

namespace A349682

/-- `Δ[n²]*A060544(2*n+1)` -/
def P13709103885764548319.Spec : Prop :=
  ∀ n, P13709103885764548319.a n = A349682 n

end A349682

/-!
# A349683: E.g.f. satisfies: log(A(x)) = exp(x*A(x)^3) - 1.

The programs for A349683, there is no canonical definition to state claims against.
-/

/-! ## A349683.P194409349189091068

`A033061(A325190(n)+A008548(n))`
-/

namespace A349683.P194409349189091068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033061 (A325190 n + A008548 n).toNat

end

end A349683.P194409349189091068

/-!
# A349684: E.g.f. satisfies: log(A(x)) = 1 - exp(-x*A(x)^3).

The programs for A349684, there is no canonical definition to state claims against.
-/

/-! ## A349684.P1180100612192225085

`A331270(∑[n+1]^(n-1))`
-/

namespace A349684.P1180100612192225085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331270 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A349684.P1180100612192225085

/-!
# A349685: Irregular triangle read by rows: the n-th row contains the elements in the continued fraction of the abundancy index of n.

The programs for A349685, there is no canonical definition to state claims against.
-/

/-! ## A349685.P11063837985247771166

`gcd(A029931(n), A244748(A005578(n)))`
-/

namespace A349685.P11063837985247771166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029931 n) (A244748 (A005578 n).toNat)

end

end A349685.P11063837985247771166

/-! ## A349685.P11437890142833313498

`A352248(A352248(2*n+1)+A352203(n+1))`
-/

namespace A349685.P11437890142833313498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352248 (A352248 (2 * n + 1) + A352203 (n + 1)).toNat

end

end A349685.P11437890142833313498

/-! ## A349685.P15935881287948937469

`gcd(A025694(A102429(n)), A078935(n+1))`
-/

namespace A349685.P15935881287948937469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025694 (A102429 n).toNat) (A078935 (n + 1))

end

end A349685.P15935881287948937469

/-! ## A349685.P15432482406836808333

`gcd(A007112(n+1), A306805(A316983(n)))`
-/

namespace A349685.P15432482406836808333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007112 (n + 1)) (A306805 (A316983 n).toNat)

end

end A349685.P15432482406836808333

/-! ## A349685.P7718987676281873584

`A211261(A354130(n)+A205847(2*n+3))`
-/

namespace A349685.P7718987676281873584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (A354130 n + A205847 (2 * n + 3)).toNat

end

end A349685.P7718987676281873584

/-!
# A349686: Numbers k such that the continued fraction of the abundancy index of k contains a single distinct element.

The programs for A349686, there is no canonical definition to state claims against.
-/

/-! ## A349686.P17775563714979532279

`∑{d}[n+1, #]*A217317(A140529(n))`
-/

namespace A349686.P17775563714979532279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A217317 (A140529 n).toNat

end

end A349686.P17775563714979532279

/-! ## A349686.P3635859011146386066

`A000203(n+1)*A050430(A164300(n))`
-/

namespace A349686.P3635859011146386066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A050430 (A164300 n).toNat

end

end A349686.P3635859011146386066

/-!
# A349691: a(n) is the least number k such that the continued fraction of the abundancy index of k contains n elements that are all distinct, or -1 if no such k exists.

The programs for A349691, there is no canonical definition to state claims against.
-/

/-! ## A349691.P14597231295628014628

`xor((7^n-1)/2, A013597((11^n+9)/10))`
-/

namespace A349691.P14597231295628014628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((7 ^ n : ℤ) - 1 : ℚ) / 2)) (A013597 (SequenceMachineLib.roundAway ((11 ^ n + 9 : ℚ) / 10)).toNat)

end

end A349691.P14597231295628014628

/-!
# A349692: Dirichlet convolution of the gcd-sum function (A018804) with itself.

The programs for A349692, the canonical program `A349692.P606356036147903569` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349692 has offset 1).

The definition of A349692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349692.P606356036147903569

`∑{d}[n+1, A018804(#)*A018804((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349692

/-- `∑{d}[n+1, A018804(#)*A018804((n+1)/#)]` -/
def P606356036147903569.Spec : Prop :=
  ∀ n, P606356036147903569.a n = A349692 (n + 1)

theorem P606356036147903569.correct : P606356036147903569.Spec := by
  intro n
  simp only [A349692, Nat.add_sub_cancel]

end A349692

/-! ## A349692.P16683555694614968946

`∑{d}[n+1, A029935(#)*A038040((n+1)/#)]`
-/

namespace A349692.P16683555694614968946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P16683555694614968946

namespace A349692

/-- `∑{d}[n+1, A029935(#)*A038040((n+1)/#)]` -/
def P16683555694614968946.Spec : Prop :=
  ∀ n, P16683555694614968946.a n = A349692 (n + 1)

end A349692

/-! ## A349692.P15236069000616191025

`∑{d}[n+1, A007432(#)*A174466((n+1)/#)]`
-/

namespace A349692.P15236069000616191025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P15236069000616191025

namespace A349692

/-- `∑{d}[n+1, A007432(#)*A174466((n+1)/#)]` -/
def P15236069000616191025.Spec : Prop :=
  ∀ n, P15236069000616191025.a n = A349692 (n + 1)

end A349692

/-! ## A349692.P1910136756074120159

`∑{d}[n+1, A060640(#)*A143275((n+1)/#)]`
-/

namespace A349692.P1910136756074120159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P1910136756074120159

namespace A349692

/-- `∑{d}[n+1, A060640(#)*A143275((n+1)/#)]` -/
def P1910136756074120159.Spec : Prop :=
  ∀ n, P1910136756074120159.a n = A349692 (n + 1)

end A349692

/-! ## A349692.P12990033701209317042

`∑{d}[n+1, A000203(#)*A344683((n+1)/#)]`
-/

namespace A349692.P12990033701209317042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P12990033701209317042

namespace A349692

/-- `∑{d}[n+1, A000203(#)*A344683((n+1)/#)]` -/
def P12990033701209317042.Spec : Prop :=
  ∀ n, P12990033701209317042.a n = A349692 (n + 1)

end A349692

/-! ## A349692.P6630871007425296038

`∑{d}[n+1, A000010(#)*A390258((n+1)/#)]`
-/

namespace A349692.P6630871007425296038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349692.P6630871007425296038

namespace A349692

/-- `∑{d}[n+1, A000010(#)*A390258((n+1)/#)]` -/
def P6630871007425296038.Spec : Prop :=
  ∀ n, P6630871007425296038.a n = A349692 (n + 1)

end A349692

/-!
# A349693: Dirichlet convolution of the ruler function (A001511) with itself.

The programs for A349693, the canonical program `A349693.P1618582373112485882` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349693 has offset 1).

The definition of A349693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372784, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349693.P1618582373112485882

`1/3*A115364(n+1)*A372784(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349693

/-- `1/3*A115364(n+1)*A372784(n+1)` -/
def P1618582373112485882.Spec : Prop :=
  ∀ n, P1618582373112485882.a n = (A349693 (n + 1) : ℚ)

end A349693

/-! ## A349693.P18148723601879814565

`A001227(n+1)*A000292(A001511(n+1))`
-/

namespace A349693.P18148723601879814565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A000292 (A001511 (n + 1)).toNat

end

end A349693.P18148723601879814565

namespace A349693

/-- `A001227(n+1)*A000292(A001511(n+1))` -/
def P18148723601879814565.Spec : Prop :=
  ∀ n, P18148723601879814565.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P12874231630292264395

`1/6*A090739(n+1)*A085058(n)*A000005(n+1)`
-/

namespace A349693.P12874231630292264395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A090739 (n + 1) : ℚ) * (A085058 n : ℚ) * (A000005 (n + 1) : ℚ)

end

end A349693.P12874231630292264395

namespace A349693

/-- `1/6*A090739(n+1)*A085058(n)*A000005(n+1)` -/
def P12874231630292264395.Spec : Prop :=
  ∀ n, P12874231630292264395.a n = (A349693 (n + 1) : ℚ)

end A349693

/-! ## A349693.P17327776118714166519

`1/6*A001511(n+1)*A090739(n+1)*A099777(n+1)`
-/

namespace A349693.P17327776118714166519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A001511 (n + 1) : ℚ) * (A090739 (n + 1) : ℚ) * (A099777 (n + 1) : ℚ)

end

end A349693.P17327776118714166519

namespace A349693

/-- `1/6*A001511(n+1)*A090739(n+1)*A099777(n+1)` -/
def P17327776118714166519.Spec : Prop :=
  ∀ n, P17327776118714166519.a n = (A349693 (n + 1) : ℚ)

end A349693

/-! ## A349693.P8056134426787186154

`∑{d}[n+1, A115364(#)]`
-/

namespace A349693.P8056134426787186154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115364 d

end

end A349693.P8056134426787186154

namespace A349693

/-- `∑{d}[n+1, A115364(#)]` -/
def P8056134426787186154.Spec : Prop :=
  ∀ n, P8056134426787186154.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P8348699535440771544

`∑{d}[n+1, A000217(val(#, 2)+1)]`
-/

namespace A349693.P8348699535440771544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (SequenceMachineLib.valuation d 2 + 1)

end

end A349693.P8348699535440771544

namespace A349693

/-- `∑{d}[n+1, A000217(val(#, 2)+1)]` -/
def P8348699535440771544.Spec : Prop :=
  ∀ n, P8348699535440771544.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P16858869559408627859

`∑{d}[n+1, A000217(A001511(#))]`
-/

namespace A349693.P16858869559408627859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (A001511 d).toNat

end

end A349693.P16858869559408627859

namespace A349693

/-- `∑{d}[n+1, A000217(A001511(#))]` -/
def P16858869559408627859.Spec : Prop :=
  ∀ n, P16858869559408627859.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P10882245364856997849

`∑{d}[n+1, A025747(A007814(#))]`
-/

namespace A349693.P10882245364856997849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025747 (A007814 d).toNat

end

end A349693.P10882245364856997849

namespace A349693

/-- `∑{d}[n+1, A025747(A007814(#))]` -/
def P10882245364856997849.Spec : Prop :=
  ∀ n, P10882245364856997849.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P9046655697200486206

`∑{d}[n+1, A000217(val(A005843(#), 2))]`
-/

namespace A349693.P9046655697200486206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (SequenceMachineLib.valuation (A005843 d).toNat 2)

end

end A349693.P9046655697200486206

namespace A349693

/-- `∑{d}[n+1, A000217(val(A005843(#), 2))]` -/
def P9046655697200486206.Spec : Prop :=
  ∀ n, P9046655697200486206.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P5690125018197201417

`∑{d}[n+1, A001511(#)*A001511((n+1)/#)]`
-/

namespace A349693.P5690125018197201417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A001511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P5690125018197201417

namespace A349693

/-- `∑{d}[n+1, A001511(#)*A001511((n+1)/#)]` -/
def P5690125018197201417.Spec : Prop :=
  ∀ n, P5690125018197201417.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P7626123001408064129

`∑{d}[n+1, A000005(#)*A104117((n+1)/#)]`
-/

namespace A349693.P7626123001408064129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A104117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P7626123001408064129

namespace A349693

/-- `∑{d}[n+1, A000005(#)*A104117((n+1)/#)]` -/
def P7626123001408064129.Spec : Prop :=
  ∀ n, P7626123001408064129.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P11799068358045402145

`∑{d}[n+1, A038712(#)*A087810((n+1)/#)]`
-/

namespace A349693.P11799068358045402145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A087810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P11799068358045402145

namespace A349693

/-- `∑{d}[n+1, A038712(#)*A087810((n+1)/#)]` -/
def P11799068358045402145.Spec : Prop :=
  ∀ n, P11799068358045402145.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P9602669806689764446

`∑{d}[n+1, A001227(#)*A129502((n+1)/#)]`
-/

namespace A349693.P9602669806689764446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A129502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P9602669806689764446

namespace A349693

/-- `∑{d}[n+1, A001227(#)*A129502((n+1)/#)]` -/
def P9602669806689764446.Spec : Prop :=
  ∀ n, P9602669806689764446.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P10268588288515655221

`∑{d}[n+1, A007425(#)*A209635((n+1)/#)]`
-/

namespace A349693.P10268588288515655221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P10268588288515655221

namespace A349693

/-- `∑{d}[n+1, A007425(#)*A209635((n+1)/#)]` -/
def P10268588288515655221.Spec : Prop :=
  ∀ n, P10268588288515655221.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P1331581896821121589

`∑{d}[n+1, A133700(#)*A317673((n+1)/#)]`
-/

namespace A349693.P1331581896821121589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A317673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P1331581896821121589

namespace A349693

/-- `∑{d}[n+1, A133700(#)*A317673((n+1)/#)]` -/
def P1331581896821121589.Spec : Prop :=
  ∀ n, P1331581896821121589.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P18376297129224750089

`∑{d}[n+1, A037227(#)*A115362((n+1)/#-1)]`
-/

namespace A349693.P18376297129224750089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037227 d * A115362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A349693.P18376297129224750089

namespace A349693

/-- `∑{d}[n+1, A037227(#)*A115362((n+1)/#-1)]` -/
def P18376297129224750089.Spec : Prop :=
  ∀ n, P18376297129224750089.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P5974957979837799369

`∑{d}[n+1, A036987(#-1)*A129628((n+1)/#)]`
-/

namespace A349693.P5974957979837799369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349693.P5974957979837799369

namespace A349693

/-- `∑{d}[n+1, A036987(#-1)*A129628((n+1)/#)]` -/
def P5974957979837799369.Spec : Prop :=
  ∀ n, P5974957979837799369.a n = A349693 (n + 1)

end A349693

/-! ## A349693.P17512387942377410863

`A000005(n+1)*A007426(n+1)/A328486(n+1)`
-/

namespace A349693.P17512387942377410863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A007426 (n + 1) : ℚ) / (A328486 (n + 1) : ℚ)

end

end A349693.P17512387942377410863

namespace A349693

/-- `A000005(n+1)*A007426(n+1)/A328486(n+1)` -/
def P17512387942377410863.Spec : Prop :=
  ∀ n, P17512387942377410863.a n = (A349693 (n + 1) : ℚ)

end A349693

/-!
# A349694: Dirichlet convolution of the squarefree kernel function (A007947) with itself.

The programs for A349694, the canonical program `A349694.P3388148621130702801` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349694 has offset 1).

The definition of A349694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349694.P7726461969704319111

`∑{d}[n+1, A007947((n+1)/#)*A007947(#)]`
-/

namespace A349694.P7726461969704319111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A007947 d

end

end A349694.P7726461969704319111

namespace A349694

/-- `∑{d}[n+1, A007947((n+1)/#)*A007947(#)]` -/
def P7726461969704319111.Spec : Prop :=
  ∀ n, P7726461969704319111.a n = A349694 (n + 1)

end A349694

/-! ## A349694.P3388148621130702801

`∑{d}[n+1, A345264(#)*A380163((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A349694

/-- `∑{d}[n+1, A345264(#)*A380163((n+1)/#)]` -/
def P3388148621130702801.Spec : Prop :=
  ∀ n, P3388148621130702801.a n = A349694 (n + 1)

theorem P3388148621130702801.correct : P3388148621130702801.Spec := by
  intro n
  simp only [A349694, Nat.add_sub_cancel]

end A349694

/-!
# A349695: a(n) = (2n^2 - n + 2) * (2n)! / ((n + 1) * (n + 2) * n!^2).

The programs for A349695, the canonical program `A349695.P3902058662622338113` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349695 has offset 1).

The definition of A349695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349695.P12279918359893598224

`A000108(n+1)*(2*(n+1)²-(n+1)+2)/(n+3)`
-/

namespace A349695.P12279918359893598224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) * ((2 * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2) : ℚ) / (n + 3 : ℚ)

end

end A349695.P12279918359893598224

namespace A349695

/-- `A000108(n+1)*(2*(n+1)²-(n+1)+2)/(n+3)` -/
def P12279918359893598224.Spec : Prop :=
  ∀ n, P12279918359893598224.a n = (A349695 (n + 1) : ℚ)

end A349695

/-! ## A349695.P3902058662622338113

`(2*(n+1)²-(n+1)+2)*(2*(n+1))!/((n+2)*(n+3)*(n+1)!²)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349695

/-- `(2*(n+1)²-(n+1)+2)*(2*(n+1))!/((n+2)*(n+3)*(n+1)!²)` -/
def P3902058662622338113.Spec : Prop :=
  ∀ n, P3902058662622338113.a n = (A349695 (n + 1) : ℚ)

end A349695

/-! ## A349695.P9960618126014423608

`∏[4-2/(n+1)]/2-Δ[-A246434(n+1)]`
-/

namespace A349695.P9960618126014423608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246434 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (f2 (n + 1) - f2 n : ℚ)

end

end A349695.P9960618126014423608

namespace A349695

/-- `∏[4-2/(n+1)]/2-Δ[-A246434(n+1)]` -/
def P9960618126014423608.Spec : Prop :=
  ∀ n, P9960618126014423608.a n = (A349695 (n + 1) : ℚ)

end A349695

/-! ## A349695.P7772609802324680284

`Δ[n*∏[2*(2*n+1)/(n+2)]]-A037952(2*(n+1))`
-/

namespace A349695.P7772609802324680284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A037952 (2 * (n + 1)) : ℚ)

end

end A349695.P7772609802324680284

namespace A349695

/-- `Δ[n*∏[2*(2*n+1)/(n+2)]]-A037952(2*(n+1))` -/
def P7772609802324680284.Spec : Prop :=
  ∀ n, P7772609802324680284.a n = (A349695 (n + 1) : ℚ)

end A349695

/-! ## A349695.P12576152736790949178

`A265612(n)+A001700(n)`
-/

namespace A349695.P12576152736790949178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + A001700 n

end

end A349695.P12576152736790949178

namespace A349695

/-- `A265612(n)+A001700(n)` -/
def P12576152736790949178.Spec : Prop :=
  ∀ n, P12576152736790949178.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P3979343983931428691

`∑[A265612(n)+A071721(n)]`
-/

namespace A349695.P3979343983931428691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349695.P3979343983931428691

namespace A349695

/-- `∑[A265612(n)+A071721(n)]` -/
def P3979343983931428691.Spec : Prop :=
  ∀ n, P3979343983931428691.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P16777137466846423022

`A002054(n+1)-A099376(n)`
-/

namespace A349695.P16777137466846423022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) - A099376 n

end

end A349695.P16777137466846423022

namespace A349695

/-- `A002054(n+1)-A099376(n)` -/
def P16777137466846423022.Spec : Prop :=
  ∀ n, P16777137466846423022.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P3305112580671536191

`∑[A026012(n)]+n*A099376(n)`
-/

namespace A349695.P3305112580671536191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A099376 n

end

end A349695.P3305112580671536191

namespace A349695

/-- `∑[A026012(n)]+n*A099376(n)` -/
def P3305112580671536191.Spec : Prop :=
  ∀ n, P3305112580671536191.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P18318971742534455493

`A121686(n+1)-A000108(n+1)`
-/

namespace A349695.P18318971742534455493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121686 (n + 1) - A000108 (n + 1)

end

end A349695.P18318971742534455493

namespace A349695

/-- `A121686(n+1)-A000108(n+1)` -/
def P18318971742534455493.Spec : Prop :=
  ∀ n, P18318971742534455493.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P839673166877619836

`A028329(n+1)-A000782(n+2)`
-/

namespace A349695.P839673166877619836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 (n + 1) - A000782 (n + 2)

end

end A349695.P839673166877619836

namespace A349695

/-- `A028329(n+1)-A000782(n+2)` -/
def P839673166877619836.Spec : Prop :=
  ∀ n, P839673166877619836.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P16297804806584083330

`A265612(n)+A001405(2*n+1)`
-/

namespace A349695.P16297804806584083330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + A001405 (2 * n + 1)

end

end A349695.P16297804806584083330

namespace A349695

/-- `A265612(n)+A001405(2*n+1)` -/
def P16297804806584083330.Spec : Prop :=
  ∀ n, P16297804806584083330.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P14341425881125400779

`A121686(n+1)-A099364(2*n)`
-/

namespace A349695.P14341425881125400779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121686 (n + 1) - A099364 (2 * n)

end

end A349695.P14341425881125400779

namespace A349695

/-- `A121686(n+1)-A099364(2*n)` -/
def P14341425881125400779.Spec : Prop :=
  ∀ n, P14341425881125400779.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P90300515041019646

`A214955(n+1)-2*A099376(n)`
-/

namespace A349695.P90300515041019646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214955 (n + 1) - 2 * A099376 n

end

end A349695.P90300515041019646

namespace A349695

/-- `A214955(n+1)-2*A099376(n)` -/
def P90300515041019646.Spec : Prop :=
  ∀ n, P90300515041019646.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P1862196144121003378

`A001700(n+1)-2*A000245(n+1)`
-/

namespace A349695.P1862196144121003378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) - 2 * A000245 (n + 1)

end

end A349695.P1862196144121003378

namespace A349695

/-- `A001700(n+1)-2*A000245(n+1)` -/
def P1862196144121003378.Spec : Prop :=
  ∀ n, P1862196144121003378.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P521127292965824750

`A246434(n+2)+2*A000108(n+1)`
-/

namespace A349695.P521127292965824750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 2) + 2 * A000108 (n + 1)

end

end A349695.P521127292965824750

namespace A349695

/-- `A246434(n+2)+2*A000108(n+1)` -/
def P521127292965824750.Spec : Prop :=
  ∀ n, P521127292965824750.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P9934166895934132352

`2*A344191(n+1)-A000108(n+1)`
-/

namespace A349695.P9934166895934132352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344191 (n + 1) - A000108 (n + 1)

end

end A349695.P9934166895934132352

namespace A349695

/-- `2*A344191(n+1)-A000108(n+1)` -/
def P9934166895934132352.Spec : Prop :=
  ∀ n, P9934166895934132352.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P2768705680645693680

`A001700(n+1)+Δ[A099364(2*n+1)]`
-/

namespace A349695.P2768705680645693680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) + (f1 (n + 1) - f1 n)

end

end A349695.P2768705680645693680

namespace A349695

/-- `A001700(n+1)+Δ[A099364(2*n+1)]` -/
def P2768705680645693680.Spec : Prop :=
  ∀ n, P2768705680645693680.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P15705561818042465969

`A121686(n+1)+A014137(n)-A014137(n+1)`
-/

namespace A349695.P15705561818042465969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121686 (n + 1) + (A014137 n - A014137 (n + 1))

end

end A349695.P15705561818042465969

namespace A349695

/-- `A121686(n+1)+A014137(n)-A014137(n+1)` -/
def P15705561818042465969.Spec : Prop :=
  ∀ n, P15705561818042465969.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P8793318290089127739

`A121686(n+1)+A014138(n)-A014138(n+1)`
-/

namespace A349695.P8793318290089127739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121686 (n + 1) + (A014138 n - A014138 (n + 1))

end

end A349695.P8793318290089127739

namespace A349695

/-- `A121686(n+1)+A014138(n)-A014138(n+1)` -/
def P8793318290089127739.Spec : Prop :=
  ∀ n, P8793318290089127739.a n = A349695 (n + 1)

end A349695

/-! ## A349695.P4041619679866486597

`A000108(n+1)+A024483(n+3)-A162551(n+1)`
-/

namespace A349695.P4041619679866486597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A024483 (n + 3) - A162551 (n + 1))

end

end A349695.P4041619679866486597

namespace A349695

/-- `A000108(n+1)+A024483(n+3)-A162551(n+1)` -/
def P4041619679866486597.Spec : Prop :=
  ∀ n, P4041619679866486597.a n = A349695 (n + 1)

end A349695

/-!
# A349696: Smallest number in a set of three consecutive triangular numbers each with three prime factors (counted with multiplicity).

The programs for A349696, there is no canonical definition to state claims against.
-/

/-! ## A349696.P261034385744737190

`A000217(A255200(n+1))`
-/

namespace A349696.P261034385744737190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A255200 (n + 1)).toNat

end

end A349696.P261034385744737190

/-! ## A349696.P9146990221958685813

`A000096(A255200(n+1)-1)+1`
-/

namespace A349696.P9146990221958685813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A255200 (n + 1) - 1).toNat + 1

end

end A349696.P9146990221958685813

/-! ## A349696.P15196172921556591896

`A000124(A255200(n+1))-A325470(3*n+1)`
-/

namespace A349696.P15196172921556591896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A255200 (n + 1)).toNat - A325470 (3 * n + 1)

end

end A349696.P15196172921556591896

/-! ## A349696.P18154060837536193372

`∪[A161680(A255200(n+1)+1), A348185(n+1)]`
-/

namespace A349696.P18154060837536193372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A255200 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349696.P18154060837536193372

/-! ## A349696.P1326610165339653669

`∪[A253145(A255200(n+1)-1), A348185(n+6)]`
-/

namespace A349696.P1326610165339653669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A255200 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348185 (n + 6)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A349696.P1326610165339653669

