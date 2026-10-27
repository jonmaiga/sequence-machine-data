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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343801: Total sum of the parts in all partitions counted by A339479(n).

The programs for A343801, there is no canonical definition to state claims against.
-/

/-! ## A343801.P5486398452145282377

`A059995(Δ[A002320(n)])`
-/

namespace A343801.P5486398452145282377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (f1 (n + 1) - f1 n).toNat

end

end A343801.P5486398452145282377

/-! ## A343801.P3366434425027360665

`A289122(A391516(n+1))`
-/

namespace A343801.P3366434425027360665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A391516 (n + 1)).toNat

end

end A343801.P3366434425027360665

/-!
# A343802: Least positive integer k such that Sum_{i=1..k} phi(i) >= 10^n.

The programs for A343802, there is no canonical definition to state claims against.
-/

/-! ## A343802.P18368262610500554962

`A090174(A090123(n+1))+A090170(2*n+1)`
-/

namespace A343802.P18368262610500554962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090174 (A090123 (n + 1)).toNat + A090170 (2 * n + 1)

end

end A343802.P18368262610500554962

/-! ## A343802.P13906824853809575782

`A090173(A090216(n+1))+A090170(2*n+1)`
-/

namespace A343802.P13906824853809575782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A090216 (n + 1)).toNat + A090170 (2 * n + 1)

end

end A343802.P13906824853809575782

/-!
# A343803: a(n) = Sum_{k=1..n} k * (number of divisors of n <= k).

The programs for A343803, there is no canonical definition to state claims against.
-/

/-! ## A343803.P1422800436819007918

`A143272(n+1)-A069153(n+1)`
-/

namespace A343803.P1422800436819007918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143272 (n + 1) - A069153 (n + 1)

end

end A343803.P1422800436819007918

/-! ## A343803.P9508965492139258671

`∑{d}[n+1, A049777(A000217(n)+#)]`
-/

namespace A343803.P9508965492139258671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049777 (A000217 n + (d : ℤ)).toNat

end

end A343803.P9508965492139258671

/-! ## A343803.P1404627145114720776

`∑{d}[n+1, A080956(#)+A000096(n)]`
-/

namespace A343803.P1404627145114720776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A080956 d + A000096 n)

end

end A343803.P1404627145114720776

/-! ## A343803.P8287974518702940841

`∑{d}[n+1, A141419(A000124(n+1)-#)]`
-/

namespace A343803.P8287974518702940841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A141419 (A000124 (n + 1) - (d : ℤ)).toNat

end

end A343803.P8287974518702940841

/-! ## A343803.P8992173710659097396

`∑{d}[n+1, A000217(n+1)-A161680(#)]`
-/

namespace A343803.P8992173710659097396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000217 (n + 1) - A161680 d)

end

end A343803.P8992173710659097396

/-! ## A343803.P5502863732514252550

`∑{d}[n+1, A161680(n+2)-A161680(#)]`
-/

namespace A343803.P5502863732514252550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A161680 (n + 2) - A161680 d)

end

end A343803.P5502863732514252550

/-! ## A343803.P16055273490878247383

`∑{d}[n+1, A000124(n+1)-A000124(#-1)]`
-/

namespace A343803.P16055273490878247383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000124 (n + 1) - A000124 (d - 1))

end

end A343803.P16055273490878247383

/-! ## A343803.P2436395759721627212

`∑{d}[n+1, A000217(n+1)-A000217(#-1)]`
-/

namespace A343803.P2436395759721627212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000217 (n + 1) - A000217 (d - 1))

end

end A343803.P2436395759721627212

/-! ## A343803.P15821688512195122007

`∑{d}[n+1, A152950(n+1)+n+1-A152950(#)]`
-/

namespace A343803.P15821688512195122007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A152950 (n + 1) + ((n + 1 : ℤ) - A152950 d))

end

end A343803.P15821688512195122007

/-! ## A343803.P10430588170359834314

`∑{d}[n+1, A000124(n+1)-A113582(A000096(#))]`
-/

namespace A343803.P10430588170359834314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000124 (n + 1) - A113582 (A000096 d).toNat)

end

end A343803.P10430588170359834314

/-!
# A343804: T(n, k) = Sum_{j=k..n} binomial(n, j)*E2(j, j-k), where E2 are the Eulerian numbers A201637. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A343804, there is no canonical definition to state claims against.
-/

/-! ## A343804.P2868097561077558600

`A277620(A080416(n))`
-/

namespace A343804.P2868097561077558600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (A080416 n).toNat

end

end A343804.P2868097561077558600

/-! ## A343804.P8903974001947405357

`A175808(A271705(n))`
-/

namespace A343804.P8903974001947405357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175808 (A271705 n).toNat

end

end A343804.P8903974001947405357

/-! ## A343804.P8551891565410305499

`A122644(A139382(n+1))`
-/

namespace A343804.P8551891565410305499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122644 (A139382 (n + 1)).toNat

end

end A343804.P8551891565410305499

/-! ## A343804.P7450436329529969297

`A342526(A058711(n+1))`
-/

namespace A343804.P7450436329529969297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A058711 (n + 1)).toNat

end

end A343804.P7450436329529969297

/-! ## A343804.P3393568939178802674

`A335467(A058711(n+1)+1)`
-/

namespace A343804.P3393568939178802674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (A058711 (n + 1) + 1).toNat

end

end A343804.P3393568939178802674

/-!
# A343805: T(n, k) = [x^k] n! [t^n] 1/(exp((V*(2 + V))/(4*t))*sqrt(1 + V)) where V = W(-2*t*x) and W denotes the Lambert function. Table read by rows, T(n, k) for 0 <= k <= n.

The programs for A343805, there is no canonical definition to state claims against.
-/

/-! ## A343805.P11470676783354583811

`A118168(A193601(n))`
-/

namespace A343805.P11470676783354583811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A193601 n).toNat

end

end A343805.P11470676783354583811

/-! ## A343805.P9779647066296022368

`A330636(A156825(n))`
-/

namespace A343805.P9779647066296022368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330636 (A156825 n).toNat

end

end A343805.P9779647066296022368

/-! ## A343805.P9800734206784456969

`A130043(A082169(n)+1)`
-/

namespace A343805.P9800734206784456969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130043 (A082169 n + 1).toNat

end

end A343805.P9800734206784456969

/-! ## A343805.P7769983625721714920

`A193596(n)+A091245(A193601(n))`
-/

namespace A343805.P7769983625721714920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193596 n + A091245 (A193601 n).toNat

end

end A343805.P7769983625721714920

/-!
# A343806: T(n, k) = [x^k] n! [t^n] 1/(exp((V*(2 + 2*t + V))/(4*t))*sqrt(1 + V)) where V = W(-2*t*x) and W denotes the Lambert function. Table read by rows, T(n, k) for 0 <= k <= n.

The programs for A343806, there is no canonical definition to state claims against.
-/

/-! ## A343806.P1453686285094684952

`A351356(A132950(n))+A113025(n)`
-/

namespace A343806.P1453686285094684952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (A132950 n).toNat + A113025 n

end

end A343806.P1453686285094684952

/-! ## A343806.P16004599916709392300

`A000196(A065077(n)*A087727(n))`
-/

namespace A343806.P16004599916709392300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A065077 n * A087727 n).toNat

end

end A343806.P16004599916709392300

/-! ## A343806.P11463706104340288478

`A132016(or(A101024(n), A113025(n)))`
-/

namespace A343806.P11463706104340288478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (Int.lor (A101024 n) (A113025 n)).toNat

end

end A343806.P11463706104340288478

/-! ## A343806.P11973299286130193022

`A132016(or(A113025(n), A136521(n)))`
-/

namespace A343806.P11973299286130193022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (Int.lor (A113025 n) (A136521 n)).toNat

end

end A343806.P11973299286130193022

/-! ## A343806.P8248035730037790592

`A048264(A064297(n+1)+A014473(n))`
-/

namespace A343806.P8248035730037790592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A064297 (n + 1) + A014473 n).toNat

end

end A343806.P8248035730037790592

/-!
# A343807: T(n, k) = [x^k] n! [t^n] 1/(exp((V*(2 - 2*t + V))/(4*t))*sqrt(1 + V)) where V = W(-2*t*x) and W denotes the Lambert function. Table read by rows, T(n, k) for 0 <= k <= n.

The programs for A343807, there is no canonical definition to state claims against.
-/

/-! ## A343807.P5006328531192286396

`and(A004043(n+8), A243667(A002260(n+1)))`
-/

namespace A343807.P5006328531192286396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004043 (n + 8)) (A243667 (A002260 (n + 1)).toNat)

end

end A343807.P5006328531192286396

/-!
# A343808: Partial sums of A062074.

The programs for A343808, the canonical program `A343808.P2407863213481378514` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343808 has offset 0).

The definition of A343808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343808.P2407863213481378514

`((4*n^3-6*n²+12*n-11)*3^(n+1)+33)/8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343808

/-- `((4*n^3-6*n²+12*n-11)*3^(n+1)+33)/8` -/
def P2407863213481378514.Spec : Prop :=
  ∀ n, P2407863213481378514.a n = (A343808 n : ℚ)

end A343808

/-! ## A343808.P13167124831676716252

`a(n-1)+3^n*n^3` with `a(0)=0`
-/

namespace A343808.P13167124831676716252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 ^ n * n ^ 3

end

end A343808.P13167124831676716252

namespace A343808

/-- `a(n-1)+3^n*n^3` -/
def P13167124831676716252.Spec : Prop :=
  ∀ n, (P13167124831676716252.a n : ℤ) = A343808 n

end A343808

/-! ## A343808.P2446514793525717316

`∑[A062074(n)]`
-/

namespace A343808.P2446514793525717316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343808.P2446514793525717316

namespace A343808

/-- `∑[A062074(n)]` -/
def P2446514793525717316.Spec : Prop :=
  ∀ n, P2446514793525717316.a n = A343808 n

end A343808

/-! ## A343808.P10998098182985925217

`∑[A168299(n)-1]`
-/

namespace A343808.P10998098182985925217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168299 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343808.P10998098182985925217

namespace A343808

/-- `∑[A168299(n)-1]` -/
def P10998098182985925217.Spec : Prop :=
  ∀ n, P10998098182985925217.a n = A343808 n

end A343808

/-! ## A343808.P3284516814516470170

`∑[3*A086603(n)]`
-/

namespace A343808.P3284516814516470170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A086603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343808.P3284516814516470170

namespace A343808

/-- `∑[3*A086603(n)]` -/
def P3284516814516470170.Spec : Prop :=
  ∀ n, P3284516814516470170.a n = A343808 n

end A343808

/-! ## A343808.P391139164867077804

`∑[n*A127960(n)]`
-/

namespace A343808.P391139164867077804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A127960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343808.P391139164867077804

namespace A343808

/-- `∑[n*A127960(n)]` -/
def P391139164867077804.Spec : Prop :=
  ∀ n, P391139164867077804.a n = A343808 n

end A343808

/-! ## A343808.P5508629190430846994

`∑[n²*A036290(n)]`
-/

namespace A343808.P5508629190430846994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A036290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343808.P5508629190430846994

namespace A343808

/-- `∑[n²*A036290(n)]` -/
def P5508629190430846994.Spec : Prop :=
  ∀ n, P5508629190430846994.a n = A343808 n

end A343808

/-!
# A343809: Divide the positive integers into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

The programs for A343809, the canonical program `A343809.P11687227892759460159` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343809 has offset 1).

The definition of A343809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343809.P11687227892759460159

`A114327(eq[1, A143536(n+1)])+1+n`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343809

/-- `A114327(eq[1, A143536(n+1)])+1+n` -/
def P11687227892759460159.Spec : Prop :=
  ∀ n, P11687227892759460159.a n = A343809 (n + 1)

theorem P11687227892759460159.correct : P11687227892759460159.Spec := by
  intro n
  simp only [A343809, Nat.add_sub_cancel]

end A343809

/-! ## A343809.P13762645180051083612

`A061395(p?[A084408(A038722(n+1))])`
-/

namespace A343809.P13762645180051083612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343809.P13762645180051083612

namespace A343809

/-- `A061395(p?[A084408(A038722(n+1))])` -/
def P13762645180051083612.Spec : Prop :=
  ∀ n, P13762645180051083612.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P16486080462867342930

`A000720(A344891(n+1))`
-/

namespace A343809.P16486080462867342930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A344891 (n + 1)).toNat

end

end A343809.P16486080462867342930

namespace A343809

/-- `A000720(A344891(n+1))` -/
def P16486080462867342930.Spec : Prop :=
  ∀ n, P16486080462867342930.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P7263481411073398768

`A061395(2*A344891(n+1))`
-/

namespace A343809.P7263481411073398768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A344891 (n + 1)).toNat

end

end A343809.P7263481411073398768

namespace A343809

/-- `A061395(2*A344891(n+1))` -/
def P7263481411073398768.Spec : Prop :=
  ∀ n, P7263481411073398768.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P15996267245958963507

`A003963(2*A344891(n+1))`
-/

namespace A343809.P15996267245958963507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A344891 (n + 1)).toNat

end

end A343809.P15996267245958963507

namespace A343809

/-- `A003963(2*A344891(n+1))` -/
def P15996267245958963507.Spec : Prop :=
  ∀ n, P15996267245958963507.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P12619422314076039655

`A003963(lcm(2, A344891(n+1)))`
-/

namespace A343809.P12619422314076039655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lcm 2 (A344891 (n + 1)))

end

end A343809.P12619422314076039655

namespace A343809

/-- `A003963(lcm(2, A344891(n+1)))` -/
def P12619422314076039655.Spec : Prop :=
  ∀ n, P12619422314076039655.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P11169677603067005580

`A350172(n+1)+1-A037125(n+1)`
-/

namespace A343809.P11169677603067005580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350172 (n + 1) + (1 - A037125 (n + 1))

end

end A343809.P11169677603067005580

namespace A343809

/-- `A350172(n+1)+1-A037125(n+1)` -/
def P11169677603067005580.Spec : Prop :=
  ∀ n, P11169677603067005580.a n = A343809 (n + 1)

end A343809

/-! ## A343809.P13662078129511758105

`A061395(A344891(n+1)²)`
-/

namespace A343809.P13662078129511758105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A344891 (n + 1) ^ 2).toNat

end

end A343809.P13662078129511758105

namespace A343809

/-- `A061395(A344891(n+1)²)` -/
def P13662078129511758105.Spec : Prop :=
  ∀ n, P13662078129511758105.a n = A343809 (n + 1)

end A343809

/-!
# A343810: Numbers that contain only the digits 0,4,8.

The programs for A343810, the canonical program `A343810.P16791698285145293433` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343810 has offset 1).

The definition of A343810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343810.P16791698285145293433

`4*A007089(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A343810

/-- `4*A007089(n)` -/
def P16791698285145293433.Spec : Prop :=
  ∀ n, P16791698285145293433.a n = A343810 (n + 1)

theorem P16791698285145293433.correct : P16791698285145293433.Spec := by
  intro n
  simp only [A343810, Nat.add_sub_cancel]

end A343810

/-! ## A343810.P10685120214820514865

`A007089(n)/(A020985(n)/2)²`
-/

namespace A343810.P10685120214820514865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) / ((A020985 n : ℚ) / 2) ^ 2

end

end A343810.P10685120214820514865

namespace A343810

/-- `A007089(n)/(A020985(n)/2)²` -/
def P10685120214820514865.Spec : Prop :=
  ∀ n, P10685120214820514865.a n = (A343810 (n + 1) : ℚ)

end A343810

/-! ## A343810.P6201048022952605825

`A007089(n)/(A065357(n)/2)²`
-/

namespace A343810.P6201048022952605825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) / ((A065357 n : ℚ) / 2) ^ 2

end

end A343810.P6201048022952605825

namespace A343810

/-- `A007089(n)/(A065357(n)/2)²` -/
def P6201048022952605825.Spec : Prop :=
  ∀ n, P6201048022952605825.a n = (A343810 (n + 1) : ℚ)

end A343810

/-! ## A343810.P10584555117592732475

`4*∪[A277964(n+1), A007088(n)]`
-/

namespace A343810.P10584555117592732475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P10584555117592732475

namespace A343810

/-- `4*∪[A277964(n+1), A007088(n)]` -/
def P10584555117592732475.Spec : Prop :=
  ∀ n, (P10584555117592732475.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P15352522162342464164

`4*∪[A277964(n+1), A109827(n)]`
-/

namespace A343810.P15352522162342464164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P15352522162342464164

namespace A343810

/-- `4*∪[A277964(n+1), A109827(n)]` -/
def P15352522162342464164.Spec : Prop :=
  ∀ n, (P15352522162342464164.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P17890757488251240478

`A007089(n)/(A008836(n+1)/2)²`
-/

namespace A343810.P17890757488251240478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) / ((A008836 (n + 1) : ℚ) / 2) ^ 2

end

end A343810.P17890757488251240478

namespace A343810

/-- `A007089(n)/(A008836(n+1)/2)²` -/
def P17890757488251240478.Spec : Prop :=
  ∀ n, P17890757488251240478.a n = (A343810 (n + 1) : ℚ)

end A343810

/-! ## A343810.P17021376863651440173

`A007089(n)/(A008683(A014963(n+1))/2)²`
-/

namespace A343810.P17021376863651440173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 n : ℚ) / ((A008683 (A014963 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A343810.P17021376863651440173

namespace A343810

/-- `A007089(n)/(A008683(A014963(n+1))/2)²` -/
def P17021376863651440173.Spec : Prop :=
  ∀ n, P17021376863651440173.a n = (A343810 (n + 1) : ℚ)

end A343810

/-! ## A343810.P14945454345613291803

`2*A024635(2*n)`
-/

namespace A343810.P14945454345613291803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024635 (2 * n)

end

end A343810.P14945454345613291803

namespace A343810

/-- `2*A024635(2*n)` -/
def P14945454345613291803.Spec : Prop :=
  ∀ n, P14945454345613291803.a n = A343810 (n + 1)

end A343810

/-! ## A343810.P10929483138231590020

`∩[A062015(n+1), A385293(n+1)]`
-/

namespace A343810.P10929483138231590020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P10929483138231590020

namespace A343810

/-- `∩[A062015(n+1), A385293(n+1)]` -/
def P10929483138231590020.Spec : Prop :=
  ∀ n, (P10929483138231590020.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P4774263009375528818

`4*A024651(3*n)/3`
-/

namespace A343810.P4774263009375528818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A024651 (3 * n) : ℚ) / 3)

end

end A343810.P4774263009375528818

namespace A343810

/-- `4*A024651(3*n)/3` -/
def P4774263009375528818.Spec : Prop :=
  ∀ n, P4774263009375528818.a n = (A343810 (n + 1) : ℚ)

end A343810

/-! ## A343810.P13692024193766251499

`4*A007090(A023717(n))`
-/

namespace A343810.P13692024193766251499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007090 (A023717 n).toNat

end

end A343810.P13692024193766251499

namespace A343810

/-- `4*A007090(A023717(n))` -/
def P13692024193766251499.Spec : Prop :=
  ∀ n, P13692024193766251499.a n = A343810 (n + 1)

end A343810

/-! ## A343810.P17522142100828815874

`4*A007090(eq[A059906(n), A292372(n)])`
-/

namespace A343810.P17522142100828815874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343810.P17522142100828815874

namespace A343810

/-- `4*A007090(eq[A059906(n), A292372(n)])` -/
def P17522142100828815874.Spec : Prop :=
  ∀ n, P17522142100828815874.a n = A343810 (n + 1)

end A343810

/-! ## A343810.P13406205124498084645

`∩[A385293(n+1), A061814(n)]`
-/

namespace A343810.P13406205124498084645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P13406205124498084645

namespace A343810

/-- `∩[A385293(n+1), A061814(n)]` -/
def P13406205124498084645.Spec : Prop :=
  ∀ n, (P13406205124498084645.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P11704337230405561767

`∩[2*A014263(n+1), A014263(n+1)]`
-/

namespace A343810.P11704337230405561767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P11704337230405561767

namespace A343810

/-- `∩[2*A014263(n+1), A014263(n+1)]` -/
def P11704337230405561767.Spec : Prop :=
  ∀ n, (P11704337230405561767.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P1860690762055412944

`∩[2*A169884(n+1), A169884(n+1)]`
-/

namespace A343810.P1860690762055412944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P1860690762055412944

namespace A343810

/-- `∩[2*A169884(n+1), A169884(n+1)]` -/
def P1860690762055412944.Spec : Prop :=
  ∀ n, (P1860690762055412944.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P18359571161582301108

`2*∩[A007091(2*n), A024644(2*n)]`
-/

namespace A343810.P18359571161582301108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024644 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P18359571161582301108

namespace A343810

/-- `2*∩[A007091(2*n), A024644(2*n)]` -/
def P18359571161582301108.Spec : Prop :=
  ∀ n, (P18359571161582301108.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P16683691447011120943

`2*∩[A007091(2*n), A024657(2*n)]`
-/

namespace A343810.P16683691447011120943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343810.P16683691447011120943

namespace A343810

/-- `2*∩[A007091(2*n), A024657(2*n)]` -/
def P16683691447011120943.Spec : Prop :=
  ∀ n, (P16683691447011120943.a n : ℤ) = A343810 (n + 1)

end A343810

/-! ## A343810.P737334732777286908

`4*A007092(A037454(n))`
-/

namespace A343810.P737334732777286908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007092 (A037454 n).toNat

end

end A343810.P737334732777286908

namespace A343810

/-- `4*A007092(A037454(n))` -/
def P737334732777286908.Spec : Prop :=
  ∀ n, P737334732777286908.a n = A343810 (n + 1)

end A343810

/-! ## A343810.P10708540029573303143

`2*2*A007093(A037455(n))`
-/

namespace A343810.P10708540029573303143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A007093 (A037455 n).toNat)

end

end A343810.P10708540029573303143

namespace A343810

/-- `2*2*A007093(A037455(n))` -/
def P10708540029573303143.Spec : Prop :=
  ∀ n, P10708540029573303143.a n = A343810 (n + 1)

end A343810

/-!
# A343811: Triangular numbers k such that every permutation of the digits of k is a triangular number.

The programs for A343811, there is no canonical definition to state claims against.
-/

/-! ## A343811.P1694773583157141668

`A352057(comp[8*n²])`
-/

namespace A343811.P1694773583157141668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A343811.P1694773583157141668

/-! ## A343811.P5867244387476537736

`C(∑[floor(A302792(n+1)^(n/3))], 2)`
-/

namespace A343811.P5867244387476537736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A302792 (n + 1) : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A343811.P5867244387476537736

/-! ## A343811.P11741649547277650540

`A061455(lcm(n+1, ((n+1)/∏{p}[n+1, #])²))`
-/

namespace A343811.P11741649547277650540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061455 (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)))

end

end A343811.P11741649547277650540

/-! ## A343811.P9761620900708588272

`A068149(A027584(n))`
-/

namespace A343811.P9761620900708588272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068149 (A027584 n).toNat

end

end A343811.P9761620900708588272

/-!
# A343813: Number of partitions of prime(n) containing at least one prime.

The programs for A343813, there is no canonical definition to state claims against.
-/

/-! ## A343813.P5658360923275994793

`A235945(A000040(n+1))`
-/

namespace A343813.P5658360923275994793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (A000040 (n + 1)).toNat

end

end A343813.P5658360923275994793

/-! ## A343813.P13242275004762661840

`A235945(Δ[A007504(n)])`
-/

namespace A343813.P13242275004762661840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (f1 (n + 1) - f1 n).toNat

end

end A343813.P13242275004762661840

/-! ## A343813.P6239848175005335215

`A235945(A008578(n+2))`
-/

namespace A343813.P6239848175005335215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (A008578 (n + 2)).toNat

end

end A343813.P6239848175005335215

/-! ## A343813.P1826975045762289220

`A235945(A182986(n+2))`
-/

namespace A343813.P1826975045762289220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (A182986 (n + 2)).toNat

end

end A343813.P1826975045762289220

/-! ## A343813.P8151490551163295290

`A235945(eq[1, A003415(n)])`
-/

namespace A343813.P8151490551163295290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343813.P8151490551163295290

/-! ## A343813.P252700708978216234

`A235945(eq[1, A302055(n)])`
-/

namespace A343813.P252700708978216234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343813.P252700708978216234

/-! ## A343813.P10340073997235848325

`A235945(record[A006530(n+2)])`
-/

namespace A343813.P10340073997235848325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343813.P10340073997235848325

/-! ## A343813.P4832743399184106120

`A235945(record[A014963(n+2)])`
-/

namespace A343813.P4832743399184106120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343813.P4832743399184106120

/-! ## A343813.P2219786879057324196

`A235945(record[A020639(n+2)])`
-/

namespace A343813.P2219786879057324196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343813.P2219786879057324196

/-! ## A343813.P12243518543445468443

`A235945(A007504(n+1)-A007504(n))`
-/

namespace A343813.P12243518543445468443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235945 (A007504 (n + 1) - A007504 n).toNat

end

end A343813.P12243518543445468443

/-!
# A343814: Primes in A343812.

The programs for A343814, there is no canonical definition to state claims against.
-/

/-! ## A343814.P14157818755232872136

`p?[A343812(n+1)]`
-/

namespace A343814.P14157818755232872136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P14157818755232872136

/-! ## A343814.P3260168906560897549

`or(1, p?[A343812(A028310(n))])`
-/

namespace A343814.P3260168906560897549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A343814.P3260168906560897549

/-! ## A343814.P11521192458185990939

`p?[A343812(A028310(n))-A000038(n)]`
-/

namespace A343814.P11521192458185990939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P11521192458185990939

/-! ## A343814.P14291003396826898966

`p?[A158388(n)*A343812(A028310(n))]`
-/

namespace A343814.P14291003396826898966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P14291003396826898966

/-! ## A343814.P18254958788236277210

`p?[A343812(A028310(n))]*A262681(n)`
-/

namespace A343814.P18254958788236277210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A262681 n

end

end A343814.P18254958788236277210

/-! ## A343814.P1517212217778006239

`p?[A343812(A028310(n))%A022146(n)]`
-/

namespace A343814.P1517212217778006239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343812 (A028310 n).toNat) (A022146 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P1517212217778006239

/-! ## A343814.P2452882077929917121

`lcm(p?[A343812(A028310(n))], A033999(n))`
-/

namespace A343814.P2452882077929917121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A343814.P2452882077929917121

/-! ## A343814.P17627935756201742029

`p?[A020985(n)²*A343812(A028310(n))]`
-/

namespace A343814.P17627935756201742029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P17627935756201742029

/-! ## A343814.P6489176030266459220

`p?[A087960(n)²*A343812(A028310(n))]`
-/

namespace A343814.P6489176030266459220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343814.P6489176030266459220

/-! ## A343814.P16760695233149761176

`p?[A343812(A028310(n))]%A004171(n)²`
-/

namespace A343814.P16760695233149761176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343812 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004171 n ^ 2)

end

end A343814.P16760695233149761176

/-!
# A343815: Cyclic numbers (A003277) which set a record for the gap to the next cyclic number.

The programs for A343815, there is no canonical definition to state claims against.
-/

/-! ## A343815.P12088930121289246340

`A006530(lcm(A000959(n+1), A060882(n)))`
-/

namespace A343815.P12088930121289246340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A000959 (n + 1)) (A060882 n))

end

end A343815.P12088930121289246340

/-! ## A343815.P14987011571099417396

`or(A007476(2*n), A164629(A045721(n)))`
-/

namespace A343815.P14987011571099417396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007476 (2 * n)) (A164629 (A045721 n).toNat)

end

end A343815.P14987011571099417396

/-!
# A343817: Refactorable numbers (A033950) which set a record for the gap to the next refactorable number.

The programs for A343817, there is no canonical definition to state claims against.
-/

/-! ## A343817.P9310836242490204686

`A290077(eq[A130396(n+1), A290077(n)])`
-/

namespace A343817.P9310836242490204686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343817.P9310836242490204686

/-!
# A343818: a(n) is the least number k such that k and k+1 both have n Fermi-Dirac factors (A064547).

The programs for A343818, there is no canonical definition to state claims against.
-/

/-! ## A343818.P1037064813412970023

`A333053(∑[A347590(n)+1])`
-/

namespace A343818.P1037064813412970023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347590 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343818.P1037064813412970023

/-!
# A343819: Numbers k such that k and k+1 have the same number of Fermi-Dirac factors (A064547).

The programs for A343819, the canonical program `A343819.P12164081537324373688` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343819 has offset 1).

The definition of A343819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343819.P12164081537324373688

`eq[A064547(n+1), A064547(n+2)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343819

/-- `eq[A064547(n+1), A064547(n+2)]+1` -/
def P12164081537324373688.Spec : Prop :=
  ∀ n, (P12164081537324373688.a n : ℤ) = A343819 (n + 1)

theorem P12164081537324373688.correct : P12164081537324373688.Spec := by
  intro n
  simp only [A343819, Nat.add_sub_cancel]

end A343819

/-! ## A343819.P11256017593962422898

`A020725(eq[A064547(n+1), A064547(n+2)])`
-/

namespace A343819.P11256017593962422898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343819.P11256017593962422898

namespace A343819

/-- `A020725(eq[A064547(n+1), A064547(n+2)])` -/
def P11256017593962422898.Spec : Prop :=
  ∀ n, P11256017593962422898.a n = A343819 (n + 1)

end A343819

/-! ## A343819.P5540358812378087814

`eq[A064547(n+1), A064547(A000038(n)+n)]`
-/

namespace A343819.P5540358812378087814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343819.P5540358812378087814

namespace A343819

/-- `eq[A064547(n+1), A064547(A000038(n)+n)]` -/
def P5540358812378087814.Spec : Prop :=
  ∀ n, (P5540358812378087814.a n : ℤ) = A343819 (n + 1)

end A343819

/-! ## A343819.P4191800184160538208

`A020725(eq[0, Δ[A037445(n+1)]])`
-/

namespace A343819.P4191800184160538208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343819.P4191800184160538208

namespace A343819

/-- `A020725(eq[0, Δ[A037445(n+1)]])` -/
def P4191800184160538208.Spec : Prop :=
  ∀ n, P4191800184160538208.a n = A343819 (n + 1)

end A343819

/-! ## A343819.P1091272923666167122

`eq[A037445(n+1), A037445(n+2)]+1`
-/

namespace A343819.P1091272923666167122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343819.P1091272923666167122

namespace A343819

/-- `eq[A037445(n+1), A037445(n+2)]+1` -/
def P1091272923666167122.Spec : Prop :=
  ∀ n, (P1091272923666167122.a n : ℤ) = A343819 (n + 1)

end A343819

/-!
# A343820: Number of partitions of 2n into powers of 2: p1 <= p2 <= ... <= p_k such that p_i <= 1 + Sum_{j=1..i-1} p_j.

The programs for A343820, there is no canonical definition to state claims against.
-/

/-! ## A343820.P16454384399396535094

`A000123(n)-A208571(A004277(n))`
-/

namespace A343820.P16454384399396535094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n - A208571 (A004277 n).toNat

end

end A343820.P16454384399396535094

/-! ## A343820.P10495308123204758666

`∑[A018819(n)]-A208571(A004277(n))`
-/

namespace A343820.P10495308123204758666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A208571 (A004277 n).toNat

end

end A343820.P10495308123204758666

/-! ## A343820.P8924707975526527978

`A018819(2*n)-A208571(A004277(n))`
-/

namespace A343820.P8924707975526527978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * n) - A208571 (A004277 n).toNat

end

end A343820.P8924707975526527978

/-! ## A343820.P1131035146806527855

`A307148(4*n+1)-A208571(A004277(n))`
-/

namespace A343820.P1131035146806527855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (4 * n + 1) - A208571 (A004277 n).toNat

end

end A343820.P1131035146806527855

/-! ## A343820.P1711915448085191442

`A018819(A004280(n+1))-A208571(A004280(n+1))`
-/

namespace A343820.P1711915448085191442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A004280 (n + 1)).toNat - A208571 (A004280 (n + 1)).toNat

end

end A343820.P1711915448085191442

/-!
# A343821: Numbers k such that the alternating group A_k is a Hurwitz group.

The programs for A343821, there is no canonical definition to state claims against.
-/

/-! ## A343821.P4323394154089231165

`comp[A343822(n+1)-1]+1`
-/

namespace A343821.P4323394154089231165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343822 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A343821.P4323394154089231165

/-!
# A343822: Numbers k such that the alternating group A_k is not a Hurwitz group.

The programs for A343822, there is no canonical definition to state claims against.
-/

/-! ## A343822.P17122858800738436001

`lt[A000021(n), A053624(A191711(n+1))]`
-/

namespace A343822.P17122858800738436001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (A191711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343822.P17122858800738436001

/-! ## A343822.P5737160821338953122

`lt[A339659(2*n), sqrt(n)]`
-/

namespace A343822.P5737160821338953122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A343822.P5737160821338953122

/-! ## A343822.P127932767589810549

`lt[A166861(n), A198532(n+1)]+1`
-/

namespace A343822.P127932767589810549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343822.P127932767589810549

/-! ## A343822.P3095823594648505130

`lt[A269303(n+3), A264090(n+1)]+1`
-/

namespace A343822.P3095823594648505130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343822.P3095823594648505130

/-! ## A343822.P1743766738097193560

`lt[A205706(A000700(3*(n+1))), A269690(n+1)]`
-/

namespace A343822.P1743766738097193560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205706 (A000700 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343822.P1743766738097193560

/-!
# A343823: Numbers k > 10 such that every permutation of the digits of k is congruent to 3 (mod 4).

The programs for A343823, there is no canonical definition to state claims against.
-/

/-! ## A343823.P2252773536814030256

`A005843(A036435(n+4))-A174813(n+4)`
-/

namespace A343823.P2252773536814030256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A036435 (n + 4)).toNat - A174813 (n + 4)

end

end A343823.P2252773536814030256

/-! ## A343823.P12126864052376156065

`lt[A010146(n+3), A010127(n*A007954(n)+1)]`
-/

namespace A343823.P12126864052376156065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343823.P12126864052376156065

/-! ## A343823.P17547969287461150675

`lt[A010146(n+3), A010132(n*A007954(n)+1)]`
-/

namespace A343823.P17547969287461150675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343823.P17547969287461150675

/-! ## A343823.P7037792653929314177

`lt[A010146(n+3), A010146(n*A007954(n)+1)]`
-/

namespace A343823.P7037792653929314177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 ((n : ℤ) * A007954 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343823.P7037792653929314177

/-! ## A343823.P1990762941744126710

`eq[-A131732(A098736(n)), A131732(n)]`
-/

namespace A343823.P1990762941744126710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131732 (A098736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343823.P1990762941744126710

/-!
# A343824: Sum of the elements in all pairs (d1, d2) of divisors of n such that d1<=d2, d1|n, d2|n, and d1 + d2 <= n.

The programs for A343824, the canonical program `A343824.P3633517651203966580` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343824 has offset 1).

The definition of A343824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343824.P3633517651203966580

`(∑{d}[n+1, #]-(n+1))*∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343824

/-- `(∑{d}[n+1, #]-(n+1))*∏{e}[n+1, #+1]` -/
def P3633517651203966580.Spec : Prop :=
  ∀ n, P3633517651203966580.a n = A343824 (n + 1)

theorem P3633517651203966580.correct : P3633517651203966580.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel]

end A343824

/-! ## A343824.P14950226296427812157

`∑{d}[n+1, #%(n+1)]*∏{e}[n+1, #+1]`
-/

namespace A343824.P14950226296427812157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d % (n + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A343824.P14950226296427812157

namespace A343824

/-- `∑{d}[n+1, #%(n+1)]*∏{e}[n+1, #+1]` -/
def P14950226296427812157.Spec : Prop :=
  ∀ n, (P14950226296427812157.a n : ℤ) = A343824 (n + 1)

end A343824

/-! ## A343824.P15214420809931998224

`(∑{d}[n+1, #]-(n+1))*∑{d}[n+1, gcd(n, #)]`
-/

namespace A343824.P15214420809931998224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) * ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ)

end

end A343824.P15214420809931998224

namespace A343824

/-- `(∑{d}[n+1, #]-(n+1))*∑{d}[n+1, gcd(n, #)]` -/
def P15214420809931998224.Spec : Prop :=
  ∀ n, P15214420809931998224.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P10526289892375366359

`(∑{d}[n+1, #]-(n+1))*∑{d}[n+1, ceil(1/#)]`
-/

namespace A343824.P10526289892375366359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) * (∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉)

end

end A343824.P10526289892375366359

namespace A343824

/-- `(∑{d}[n+1, #]-(n+1))*∑{d}[n+1, ceil(1/#)]` -/
def P10526289892375366359.Spec : Prop :=
  ∀ n, P10526289892375366359.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P12150383783762691041

`(∑{d}[n+1, #]-(n+1))*2^∑{e}[n+1, log2(#+1)]`
-/

namespace A343824.P12150383783762691041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p + 1 : ℝ))

end

end A343824.P12150383783762691041

namespace A343824

/-- `(∑{d}[n+1, #]-(n+1))*2^∑{e}[n+1, log2(#+1)]` -/
def P12150383783762691041.Spec : Prop :=
  ∀ n, P12150383783762691041.a n = (A343824 (n + 1) : ℝ)

end A343824

/-! ## A343824.P14472000598176048869

`∏{e}[n+1, #+1]*A001065(n+1)`
-/

namespace A343824.P14472000598176048869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A001065 (n + 1)

end

end A343824.P14472000598176048869

namespace A343824

/-- `∏{e}[n+1, #+1]*A001065(n+1)` -/
def P14472000598176048869.Spec : Prop :=
  ∀ n, P14472000598176048869.a n = A343824 (n + 1)

theorem P14472000598176048869.correct : P14472000598176048869.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P14472000598176048869.f1, A343824.P14472000598176048869.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P13381061804824808172

`(∑{d}[n+1, #]-(n+1))*A000005(n+1)`
-/

namespace A343824.P13381061804824808172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) * A000005 (n + 1)

end

end A343824.P13381061804824808172

namespace A343824

/-- `(∑{d}[n+1, #]-(n+1))*A000005(n+1)` -/
def P13381061804824808172.Spec : Prop :=
  ∀ n, P13381061804824808172.a n = A343824 (n + 1)

theorem P13381061804824808172.correct : P13381061804824808172.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P13381061804824808172.f1, A343824.P13381061804824808172.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P4751522420610392696

`∑{d}[n+1, A000203(lcm(#, n+1))-(n+1)]`
-/

namespace A343824.P4751522420610392696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 (Nat.lcm d (n + 1)) - (n + 1 : ℤ))

end

end A343824.P4751522420610392696

namespace A343824

/-- `∑{d}[n+1, A000203(lcm(#, n+1))-(n+1)]` -/
def P4751522420610392696.Spec : Prop :=
  ∀ n, P4751522420610392696.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P4622336601723498678

`∑{d}[n+1, A000203((n+1)%(n+1+#))-(n+1)]`
-/

namespace A343824.P4622336601723498678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 ((n + 1) % (n + 1 + d)) - (n + 1 : ℤ))

end

end A343824.P4622336601723498678

namespace A343824

/-- `∑{d}[n+1, A000203((n+1)%(n+1+#))-(n+1)]` -/
def P4622336601723498678.Spec : Prop :=
  ∀ n, P4622336601723498678.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P4492209561599250773

`Δ[A006218(n)]*A001065(n+1)`
-/

namespace A343824.P4492209561599250773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001065 (n + 1)

end

end A343824.P4492209561599250773

namespace A343824

/-- `Δ[A006218(n)]*A001065(n+1)` -/
def P4492209561599250773.Spec : Prop :=
  ∀ n, P4492209561599250773.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P10848100608989885883

`Δ[A054519(n)]*A001065(n+1)`
-/

namespace A343824.P10848100608989885883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001065 (n + 1)

end

end A343824.P10848100608989885883

namespace A343824

/-- `Δ[A054519(n)]*A001065(n+1)` -/
def P10848100608989885883.Spec : Prop :=
  ∀ n, P10848100608989885883.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P66949356740688714

`A064840(n+1)-A038040(n+1)`
-/

namespace A343824.P66949356740688714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A038040 (n + 1)

end

end A343824.P66949356740688714

namespace A343824

/-- `A064840(n+1)-A038040(n+1)` -/
def P66949356740688714.Spec : Prop :=
  ∀ n, P66949356740688714.a n = A343824 (n + 1)

theorem P66949356740688714.correct : P66949356740688714.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P66949356740688714.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A038040, A038040.P16512896840577774730.a, A064840, A064840.P1031066778155785146.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P1849025930748611748

`A337297(n+1)-A094471(n+1)`
-/

namespace A343824.P1849025930748611748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337297 (n + 1) - A094471 (n + 1)

end

end A343824.P1849025930748611748

namespace A343824

/-- `A337297(n+1)-A094471(n+1)` -/
def P1849025930748611748.Spec : Prop :=
  ∀ n, P1849025930748611748.a n = A343824 (n + 1)

theorem P1849025930748611748.correct : P1849025930748611748.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P1849025930748611748.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A094471, A094471.P10880822235094612413.a, A337297, A337297.P1022103926684106451.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P3639204865287472217

`A337360(n+1)-A152211(n+1)`
-/

namespace A343824.P3639204865287472217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337360 (n + 1) - A152211 (n + 1)

end

end A343824.P3639204865287472217

namespace A343824

/-- `A337360(n+1)-A152211(n+1)` -/
def P3639204865287472217.Spec : Prop :=
  ∀ n, P3639204865287472217.a n = A343824 (n + 1)

theorem P3639204865287472217.correct : P3639204865287472217.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P3639204865287472217.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A152211, A152211.P8934016512484736310.a, A337360, A337360.P11696731240538320852.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P9291185106034205827

`A000005(n+1)*A001065(n+1)`
-/

namespace A343824.P9291185106034205827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001065 (n + 1)

end

end A343824.P9291185106034205827

namespace A343824

/-- `A000005(n+1)*A001065(n+1)` -/
def P9291185106034205827.Spec : Prop :=
  ∀ n, P9291185106034205827.a n = A343824 (n + 1)

theorem P9291185106034205827.correct : P9291185106034205827.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P9291185106034205827.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P798609871940470265

`(A325765(n)+1)*A001065(n+1)`
-/

namespace A343824.P798609871940470265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325765 n + 1) * A001065 (n + 1)

end

end A343824.P798609871940470265

namespace A343824

/-- `(A325765(n)+1)*A001065(n+1)` -/
def P798609871940470265.Spec : Prop :=
  ∀ n, P798609871940470265.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P1529317634485727642

`A243473(n+1)*A388270(n+1)`
-/

namespace A343824.P1529317634485727642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1) * A388270 (n + 1)

end

end A343824.P1529317634485727642

namespace A343824

/-- `A243473(n+1)*A388270(n+1)` -/
def P1529317634485727642.Spec : Prop :=
  ∀ n, P1529317634485727642.a n = A343824 (n + 1)

end A343824

/-! ## A343824.P5685303730744429814

`A000005(n+1)/2*A091818(n+1)`
-/

namespace A343824.P5685303730744429814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A091818 (n + 1) : ℚ)

end

end A343824.P5685303730744429814

namespace A343824

/-- `A000005(n+1)/2*A091818(n+1)` -/
def P5685303730744429814.Spec : Prop :=
  ∀ n, P5685303730744429814.a n = (A343824 (n + 1) : ℚ)

theorem P5685303730744429814.correct : P5685303730744429814.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P5685303730744429814.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A000005, A000005.P16091521709108585461.a, A091818, A091818.P1536144604709334989.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P5435070791206323934

`(A237588(n+1)+n)*A000005(n+1)`
-/

namespace A343824.P5435070791206323934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + (n : ℤ)) * A000005 (n + 1)

end

end A343824.P5435070791206323934

namespace A343824

/-- `(A237588(n+1)+n)*A000005(n+1)` -/
def P5435070791206323934.Spec : Prop :=
  ∀ n, P5435070791206323934.a n = A343824 (n + 1)

theorem P5435070791206323934.correct : P5435070791206323934.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P5435070791206323934.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A000005, A000005.P16091521709108585461.a, A237588, A237588.P10590847318200798620.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-! ## A343824.P10853272094829977092

`(A158907(n+1)-n)*A001065(n+1)`
-/

namespace A343824.P10853272094829977092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158907 (n + 1) - (n : ℤ)) * A001065 (n + 1)

end

end A343824.P10853272094829977092

namespace A343824

/-- `(A158907(n+1)-n)*A001065(n+1)` -/
def P10853272094829977092.Spec : Prop :=
  ∀ n, P10853272094829977092.a n = A343824 (n + 1)

theorem P10853272094829977092.correct : P10853272094829977092.Spec := by
  intro n
  simp only [A343824, Nat.add_sub_cancel, A343824.P10853272094829977092.a, A343824.P3633517651203966580.f1, A343824.P3633517651203966580.f2, A343824.P3633517651203966580.a, A001065, A001065.P4097147489331274860.a, A158907, A158907.P7286143353781437512.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343824

/-!
# A343825: Table read by antidiagonals upward: T(n,k) is the least m such that there exists a sequence k = b_1 <= b_2 <= ... <= b_t = m such that no term appears n or more times and the product of the sequence is of the form c^n, where c is an integer; n >= 1 and k >= 0.

The programs for A343825, there is no canonical definition to state claims against.
-/

/-! ## A343825.P7354295139100968872

`A014963(A325238(3*(n+1)))*A316269(n+2)`
-/

namespace A343825.P7354295139100968872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A325238 (3 * (n + 1))).toNat * A316269 (n + 2)

end

end A343825.P7354295139100968872

/-! ## A343825.P6921505579426792284

`A124778(A074308(n))*A316269(n+2)`
-/

namespace A343825.P6921505579426792284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A074308 n).toNat * A316269 (n + 2)

end

end A343825.P6921505579426792284

/-! ## A343825.P558154232550754902

`A316269(n+2)*A347456(A124733(n+1))`
-/

namespace A343825.P558154232550754902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (n + 2) * A347456 (A124733 (n + 1)).toNat

end

end A343825.P558154232550754902

/-! ## A343825.P5250508999453527961

`A266227(A214049(n+1))*A316269(n+2)`
-/

namespace A343825.P5250508999453527961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A214049 (n + 1)).toNat * A316269 (n + 2)

end

end A343825.P5250508999453527961

/-! ## A343825.P4255112217982750552

`A316269(n+2)*A333254(A360965(2*n+3))`
-/

namespace A343825.P4255112217982750552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316269 (n + 2) * A333254 (A360965 (2 * n + 3)).toNat

end

end A343825.P4255112217982750552

/-!
# A343826: Numbers which are the product of two S-primes (A057948) in exactly one way.

The programs for A343826, there is no canonical definition to state claims against.
-/

/-! ## A343826.P16144491664002345651

`A054520(A302569(n+1))%A157428(3*n+4)`
-/

namespace A343826.P16144491664002345651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054520 (A302569 (n + 1)).toNat) (A157428 (3 * n + 4))

end

end A343826.P16144491664002345651

/-! ## A343826.P9409521455042454398

`∩[A054520(n+1), A075824(n+1)]`
-/

namespace A343826.P9409521455042454398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343826.P9409521455042454398

/-! ## A343826.P16451819968330452456

`A054520(A302569(n+1)%A004023(n+4))`
-/

namespace A343826.P16451819968330452456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054520 (Int.tmod (A302569 (n + 1)) (A004023 (n + 4))).toNat

end

end A343826.P16451819968330452456

/-!
# A343827: Numbers which are the product of two S-primes (A057948) in exactly two ways.

The programs for A343827, there is no canonical definition to state claims against.
-/

/-! ## A343827.P4560196358046590874

`filter[A057950(n+1), A355447(#)]`
-/

namespace A343827.P4560196358046590874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A343827.P4560196358046590874

/-! ## A343827.P18286383652823019

`filter[A057950(n+1), A359429(#)]`
-/

namespace A343827.P18286383652823019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A343827.P18286383652823019

/-! ## A343827.P3198926222618635825

`filter[A057950(n+1), A371084(#)]`
-/

namespace A343827.P3198926222618635825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A343827.P3198926222618635825

/-! ## A343827.P145312858167519681

`∩[A057950(n+1), A371083(n+1)]`
-/

namespace A343827.P145312858167519681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343827.P145312858167519681

/-! ## A343827.P17627867398065713754

`∩[A034046(n+1), A057950(n+1)]`
-/

namespace A343827.P17627867398065713754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343827.P17627867398065713754

/-! ## A343827.P17411255494345046796

`record[A105570(A057950(n+1))]`
-/

namespace A343827.P17411255494345046796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A057950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343827.P17411255494345046796

/-! ## A343827.P10808184919178791898

`filter[A057950(n+1), A087049(#)]`
-/

namespace A343827.P10808184919178791898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A343827.P10808184919178791898

/-! ## A343827.P12677180850296287844

`filter[A057950(n+1), A353470(#)]`
-/

namespace A343827.P12677180850296287844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A343827.P12677180850296287844

/-! ## A343827.P7993336487317282669

`filter[A057950(n+1), A353569(#)]`
-/

namespace A343827.P7993336487317282669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A343827.P7993336487317282669

/-! ## A343827.P3941962059567908261

`filter[A057950(n+1), A353626(#)]`
-/

namespace A343827.P3941962059567908261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A343827.P3941962059567908261

/-!
# A343828: Numbers which are the product of two S-primes (A057948) in exactly three ways.

The programs for A343828, there is no canonical definition to state claims against.
-/

/-! ## A343828.P8612206281802085958

`∩[A046390(n+1), A057949(n+1)]`
-/

namespace A343828.P8612206281802085958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343828.P8612206281802085958

/-! ## A343828.P11524986193929871052

`∩[A046390(n+1), A057950(n+1)]`
-/

namespace A343828.P11524986193929871052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343828.P11524986193929871052

/-! ## A343828.P11263261663697223858

`∩[A057949(n+1), A378717(n+1)]`
-/

namespace A343828.P11263261663697223858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343828.P11263261663697223858

/-! ## A343828.P16056341912554693843

`∩[A057950(n+1), A378717(n+1)]`
-/

namespace A343828.P16056341912554693843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343828.P16056341912554693843

/-!
# A343830: a(n) = numerator of (1/e) * Sum_{a_1>=1, a_2>=1, ... , a_n>=1} a_1 * a_2 * ... * a_n / (a_1 + a_2 + ... + a_n)!.

The programs for A343830, there is no canonical definition to state claims against.
-/

/-! ## A343830.P5808351961456853169

`A006530(A343832(n))`
-/

namespace A343830.P5808351961456853169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A343832 n).toNat

end

end A343830.P5808351961456853169

/-!
# A343831: a(n) = denominator of (1/e) * Sum_{a_1>=1, a_2>=1, ... , a_n>=1} a_1 * a_2 * ... * a_n / (a_1 + a_2 + ... + a_n)!.

The programs for A343831, there is no canonical definition to state claims against.
-/

/-! ## A343831.P11038711433746774602

`A070788(n+1)!/Δ[A088485(n+1)]`
-/

namespace A343831.P11038711433746774602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A070788 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A343831.P11038711433746774602

/-!
# A343832: a(n) = Sum_{k=0..n} k! * binomial(n,k) * binomial(2*n+1,k).

The programs for A343832, there is no canonical definition to state claims against.
-/

/-! ## A343832.P8178617495167402032

`A176120(∑[a(n-1)+4])` with `a(0)=1, a(1)=6`
-/

namespace A343832.P8178617495167402032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343832.P8178617495167402032

/-! ## A343832.P16902260639146942627

`A176120(A056220(n+1))`
-/

namespace A343832.P16902260639146942627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A056220 (n + 1)).toNat

end

end A343832.P16902260639146942627

/-! ## A343832.P7945403572624578931

`A293985(A090288(n)+1)`
-/

namespace A343832.P7945403572624578931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A090288 n + 1).toNat

end

end A343832.P7945403572624578931

/-! ## A343832.P498351739605157785

`A293985(A132209(n+1))`
-/

namespace A343832.P498351739605157785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A132209 (n + 1)).toNat

end

end A343832.P498351739605157785

/-! ## A343832.P9552773531132142026

`A293985(A142463(n+1))`
-/

namespace A343832.P9552773531132142026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A142463 (n + 1)).toNat

end

end A343832.P9552773531132142026

/-!
# A343833: Prime numbers of the form floor((j/7)*10^k) where 1 <= j <= 6 and k >= 1.

The programs for A343833, there is no canonical definition to state claims against.
-/

/-! ## A343833.P15746234800549221854

`∩[A038611(n+1), A343915(n)]`
-/

namespace A343833.P15746234800549221854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343833.P15746234800549221854

/-! ## A343833.P4599355909263039656

`p?[A343915(n)]`
-/

namespace A343833.P4599355909263039656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343833.P4599355909263039656

/-! ## A343833.P16925100338401311067

`filter[A343915(n), A010051(#)]`
-/

namespace A343833.P16925100338401311067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A343833.P16925100338401311067

/-! ## A343833.P9468978978787625104

`filter[A343915(n), A324823(#)]`
-/

namespace A343833.P9468978978787625104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324823 (f1 j).toNat = 1) n)

end

end A343833.P9468978978787625104

/-!
# A343834: Primes with digits in nondecreasing order, only primes, and with sum of digits also a prime.

The programs for A343834, there is no canonical definition to state claims against.
-/

/-! ## A343834.P8038114019450937882

`∩[A028864(n+1), A062088(n+1)]`
-/

namespace A343834.P8038114019450937882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343834.P8038114019450937882

/-! ## A343834.P16667285327587935326

`∩[A062088(n+1), A362678(n+1)]`
-/

namespace A343834.P16667285327587935326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343834.P16667285327587935326

/-! ## A343834.P13939757004331691414

`∩[A032524(n+1), A062088(n+1)]`
-/

namespace A343834.P13939757004331691414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343834.P13939757004331691414

/-! ## A343834.P16215761252865216802

`∩[A062088(n+1), A190221(n+1)]`
-/

namespace A343834.P16215761252865216802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343834.P16215761252865216802

/-! ## A343834.P16859902716614595683

`∩[A009994(n+1), A062088(n+1)]`
-/

namespace A343834.P16859902716614595683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343834.P16859902716614595683

/-!
# A343836: Array T(n, k), n, k > 0, read by antidiagonals; the balanced ternary representation of T(n, k) is obtained by adding componentwise (i.e., without carries) the digits in the balanced ternary representations of n and of k.

The programs for A343836, there is no canonical definition to state claims against.
-/

/-! ## A343836.P6863986346651588984

`A331886(n)-A053839(A118190(n))`
-/

namespace A343836.P6863986346651588984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331886 n - A053839 (A118190 n).toNat

end

end A343836.P6863986346651588984

/-! ## A343836.P5182946700816256709

`A002024(n+1)-A137163(A195159(n))`
-/

namespace A343836.P5182946700816256709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A137163 (A195159 n).toNat

end

end A343836.P5182946700816256709

/-! ## A343836.P6179363716382663926

`A003056(n)+1-A137163(A195159(n))`
-/

namespace A343836.P6179363716382663926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A137163 (A195159 n).toNat)

end

end A343836.P6179363716382663926

/-!
# A343839: Semi-one numbers: Positive integers k such that exactly half of the integers 1..k have a 1 in their decimal expansion.

The programs for A343839, there is no canonical definition to state claims against.
-/

/-! ## A343839.P12373192274898643278

`A344636(n+1)-A073097(A344636(n+5))`
-/

namespace A343839.P12373192274898643278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344636 (n + 1) - A073097 (A344636 (n + 5)).toNat

end

end A343839.P12373192274898643278

/-! ## A343839.P826361952599264314

`A344636(n+1)+A344617(A115435(n+1))`
-/

namespace A343839.P826361952599264314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344636 (n + 1) + A344617 (A115435 (n + 1)).toNat

end

end A343839.P826361952599264314

/-! ## A343839.P12321636029062570173

`A344636(n+1)-A106400(A343815(n+1))`
-/

namespace A343839.P12321636029062570173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344636 (n + 1) - A106400 (A343815 (n + 1)).toNat

end

end A343839.P12321636029062570173

/-!
# A343841: a(n) = Sum{k=0..n} (-1)^(n-k)*binomial(n, k)*Stirling2(n, k).

The programs for A343841, there is no canonical definition to state claims against.
-/

/-! ## A343841.P490897542511601452

`A174859(∑[n]+n)`
-/

namespace A343841.P490897542511601452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174859 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A343841.P490897542511601452

/-! ## A343841.P8510855311366258212

`A174859(A000096(n))+char[10]`
-/

namespace A343841.P8510855311366258212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174859 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343841.P8510855311366258212

/-! ## A343841.P6220079246983975892

`A326547(n)+A174859(A000096(n))`
-/

namespace A343841.P6220079246983975892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A174859 (A000096 n).toNat

end

end A343841.P6220079246983975892

/-! ## A343841.P4425228439574733669

`A174859(A000096(n))^A286334(n)`
-/

namespace A343841.P4425228439574733669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174859 (A000096 n).toNat : ℚ) ^ (A286334 n : ℤ)

end

end A343841.P4425228439574733669

/-! ## A343841.P14729859681628244244

`or(A000007(n), A174859(A000096(n)))`
-/

namespace A343841.P14729859681628244244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A174859 (A000096 n).toNat)

end

end A343841.P14729859681628244244

/-!
# A343842: Series expansion of 1/sqrt(8*x^2 + 1), even powers only.

The programs for A343842, the canonical program `A343842.P221225612940849452` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343842 has offset 0).

The definition of A343842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343842.P221225612940849452

`4*(1-2*n)*a(n-1)/n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343842

/-- `4*(1-2*n)*a(n-1)/n` -/
def P221225612940849452.Spec : Prop :=
  ∀ n, P221225612940849452.a n = (A343842 n : ℚ)

end A343842

/-! ## A343842.P3161806733203881841

`C(2*n, n)*(-2)^n`
-/

namespace A343842.P3161806733203881841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * (-2) ^ n

end

end A343842.P3161806733203881841

namespace A343842

/-- `C(2*n, n)*(-2)^n` -/
def P3161806733203881841.Spec : Prop :=
  ∀ n, P3161806733203881841.a n = A343842 n

end A343842

/-! ## A343842.P2708030298986454228

`(4/n-8)*a(n-1)` with `a(0)=1`
-/

namespace A343842.P2708030298986454228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n : ℚ) - 8) * a (n - 1)

end

end A343842.P2708030298986454228

namespace A343842

/-- `(4/n-8)*a(n-1)` -/
def P2708030298986454228.Spec : Prop :=
  ∀ n, P2708030298986454228.a n = (A343842 n : ℚ)

end A343842

/-! ## A343842.P17112251749946627053

`(-2)^n*A000984(n)`
-/

namespace A343842.P17112251749946627053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A000984 n

end

end A343842.P17112251749946627053

namespace A343842

/-- `(-2)^n*A000984(n)` -/
def P17112251749946627053.Spec : Prop :=
  ∀ n, P17112251749946627053.a n = A343842 n

end A343842

/-! ## A343842.P71577342942057953

`(n+1)*A114193(∑[n])`
-/

namespace A343842.P71577342942057953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343842.P71577342942057953

namespace A343842

/-- `(n+1)*A114193(∑[n])` -/
def P71577342942057953.Spec : Prop :=
  ∀ n, P71577342942057953.a n = A343842 n

end A343842

/-! ## A343842.P5274575781720874661

`2^n*A128057(2*n)`
-/

namespace A343842.P5274575781720874661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128057 (2 * n)

end

end A343842.P5274575781720874661

namespace A343842

/-- `2^n*A128057(2*n)` -/
def P5274575781720874661.Spec : Prop :=
  ∀ n, P5274575781720874661.a n = A343842 n

end A343842

/-! ## A343842.P10868465969997959680

`(-2)^n*record[A081668(n)]`
-/

namespace A343842.P10868465969997959680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343842.P10868465969997959680

namespace A343842

/-- `(-2)^n*record[A081668(n)]` -/
def P10868465969997959680.Spec : Prop :=
  ∀ n, P10868465969997959680.a n = A343842 n

end A343842

/-! ## A343842.P4194558387622138948

`(-2)^n*record[A126869(n)]`
-/

namespace A343842.P4194558387622138948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343842.P4194558387622138948

namespace A343842

/-- `(-2)^n*record[A126869(n)]` -/
def P4194558387622138948.Spec : Prop :=
  ∀ n, P4194558387622138948.a n = A343842 n

end A343842

/-! ## A343842.P14362626198662918755

`(-2)^n*A001405(2*n)`
-/

namespace A343842.P14362626198662918755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A001405 (2 * n)

end

end A343842.P14362626198662918755

namespace A343842

/-- `(-2)^n*A001405(2*n)` -/
def P14362626198662918755.Spec : Prop :=
  ∀ n, P14362626198662918755.a n = A343842 n

end A343842

/-! ## A343842.P11388344012659027920

`(-2)^n*A210736(Δ[n²])`
-/

namespace A343842.P11388344012659027920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A210736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343842.P11388344012659027920

namespace A343842

/-- `(-2)^n*A210736(Δ[n²])` -/
def P11388344012659027920.Spec : Prop :=
  ∀ n, P11388344012659027920.a n = A343842 n

end A343842

/-! ## A343842.P8204385150910470536

`(n+1)*2^n*A168491(n)`
-/

namespace A343842.P8204385150910470536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℤ) * A168491 n

end

end A343842.P8204385150910470536

namespace A343842

/-- `(n+1)*2^n*A168491(n)` -/
def P8204385150910470536.Spec : Prop :=
  ∀ n, P8204385150910470536.a n = A343842 n

end A343842

/-! ## A343842.P10048103733390678488

`(n+1)*(-2)^n*A000108(n)`
-/

namespace A343842.P10048103733390678488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((-2) ^ n * A000108 n)

end

end A343842.P10048103733390678488

namespace A343842

/-- `(n+1)*(-2)^n*A000108(n)` -/
def P10048103733390678488.Spec : Prop :=
  ∀ n, P10048103733390678488.a n = A343842 n

end A343842

/-! ## A343842.P15747024669884189889

`A033999(n)*A059304(n)`
-/

namespace A343842.P15747024669884189889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A059304 n

end

end A343842.P15747024669884189889

namespace A343842

/-- `A033999(n)*A059304(n)` -/
def P15747024669884189889.Spec : Prop :=
  ∀ n, P15747024669884189889.a n = A343842 n

end A343842

/-! ## A343842.P14874153799975200034

`A000984(n)*A122803(n)`
-/

namespace A343842.P14874153799975200034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A122803 n

end

end A343842.P14874153799975200034

namespace A343842

/-- `A000984(n)*A122803(n)` -/
def P14874153799975200034.Spec : Prop :=
  ∀ n, P14874153799975200034.a n = A343842 n

end A343842

/-! ## A343842.P7974182766947846961

`A110556(n)*A151821(n+1)`
-/

namespace A343842.P7974182766947846961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n * A151821 (n + 1)

end

end A343842.P7974182766947846961

namespace A343842

/-- `A110556(n)*A151821(n+1)` -/
def P7974182766947846961.Spec : Prop :=
  ∀ n, P7974182766947846961.a n = A343842 n

end A343842

/-! ## A343842.P9029329496179987046

`A059304(n)/A033999(n+2)`
-/

namespace A343842.P9029329496179987046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059304 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A343842.P9029329496179987046

namespace A343842

/-- `A059304(n)/A033999(n+2)` -/
def P9029329496179987046.Spec : Prop :=
  ∀ n, P9029329496179987046.a n = (A343842 n : ℚ)

end A343842

/-! ## A343842.P3874043247872106160

`A122803(n)*A126930(2*n)`
-/

namespace A343842.P3874043247872106160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A126930 (2 * n)

end

end A343842.P3874043247872106160

namespace A343842

/-- `A122803(n)*A126930(2*n)` -/
def P3874043247872106160.Spec : Prop :=
  ∀ n, P3874043247872106160.a n = A343842 n

end A343842

/-! ## A343842.P18282005576122601493

`(n+1)*A000108(n)*Δ[A084247(n)]`
-/

namespace A343842.P18282005576122601493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * (f1 (n + 1) - f1 n)

end

end A343842.P18282005576122601493

namespace A343842

/-- `(n+1)*A000108(n)*Δ[A084247(n)]` -/
def P18282005576122601493.Spec : Prop :=
  ∀ n, P18282005576122601493.a n = A343842 n

end A343842

/-! ## A343842.P16710816410009805481

`A001405(2*n)*A117575(2*n+1)`
-/

namespace A343842.P16710816410009805481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A117575 (2 * n + 1)

end

end A343842.P16710816410009805481

namespace A343842

/-- `A001405(2*n)*A117575(2*n+1)` -/
def P16710816410009805481.Spec : Prop :=
  ∀ n, P16710816410009805481.a n = A343842 n

end A343842

/-! ## A343842.P8311725248050078902

`(A037952(2*n+1)-A037952(2*n))*A123344(n+1)`
-/

namespace A343842.P8311725248050078902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037952 (2 * n + 1) - A037952 (2 * n)) * A123344 (n + 1)

end

end A343842.P8311725248050078902

namespace A343842

/-- `(A037952(2*n+1)-A037952(2*n))*A123344(n+1)` -/
def P8311725248050078902.Spec : Prop :=
  ∀ n, P8311725248050078902.a n = A343842 n

end A343842

/-!
# A343843: a(n) = Sum_{k=0..n} (-1)^k*binomial(n, k)*A000831(k).

The programs for A343843, there is no canonical definition to state claims against.
-/

/-! ## A343843.P1899478458592309105

`A117437(n)-2*A084098(n)`
-/

namespace A343843.P1899478458592309105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117437 n - 2 * A084098 n

end

end A343843.P1899478458592309105

/-! ## A343843.P3444273343508855773

`2*A117437(n)-A000834(n)`
-/

namespace A343843.P3444273343508855773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117437 n - A000834 n

end

end A343843.P3444273343508855773

/-! ## A343843.P799222652926309529

`A000834(n)-4*A084098(n)`
-/

namespace A343843.P799222652926309529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000834 n - 4 * A084098 n

end

end A343843.P799222652926309529

/-! ## A343843.P6439885113947433580

`A005843(A117437(n)-A084098(n))-A117437(n)`
-/

namespace A343843.P6439885113947433580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A117437 n - A084098 n).toNat - A117437 n

end

end A343843.P6439885113947433580

/-!
# A343844: Optimal lower bounds for the permanent of 312-pattern avoiding 0-1 matrices.

The programs for A343844, there is no canonical definition to state claims against.
-/

/-! ## A343844.P6857708374206976314

`∪[2^n, (n+5)!]`
-/

namespace A343844.P6857708374206976314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A343844.P6857708374206976314

/-! ## A343844.P16172830116907281837

`2^n-and(8, n+1)`
-/

namespace A343844.P16172830116907281837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.land 8 (n + 1) : ℤ)

end

end A343844.P16172830116907281837

/-! ## A343844.P17106118948212531091

`∪[C((2*n)², n), 2^n]`
-/

namespace A343844.P17106118948212531091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n) ^ 2) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A343844.P17106118948212531091

/-! ## A343844.P13584720400265009681

`∪[2^n, Δ[5^(2*n+1)]]`
-/

namespace A343844.P13584720400265009681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343844.P13584720400265009681

/-!
# A343845: a(n) = Sum_{k=0..floor(n/2)} A109449(n-k, k).

The programs for A343845, there is no canonical definition to state claims against.
-/

/-! ## A343845.P3928228146649075548

`A091226(A125273(n)+A000108(n))`
-/

namespace A343845.P3928228146649075548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A125273 n + A000108 n).toNat

end

end A343845.P3928228146649075548

/-!
# A343846: a(n) = binomial(2*n, n)*2^n*|Euler(n, 1/2) - Euler(n, 0)|.

The programs for A343846, there is no canonical definition to state claims against.
-/

/-! ## A343846.P7624460957747308410

`A109449(A046092(n))-A000007(n)`
-/

namespace A343846.P7624460957747308410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A046092 n).toNat - A000007 n

end

end A343846.P7624460957747308410

/-! ## A343846.P16047420290120325855

`A000111(n)*A126869(A004277(n))`
-/

namespace A343846.P16047420290120325855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A126869 (A004277 n).toNat

end

end A343846.P16047420290120325855

/-! ## A343846.P6146570118196831237

`A000984(n)*A258829(A000124(n))`
-/

namespace A343846.P6146570118196831237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A258829 (A000124 n).toNat

end

end A343846.P6146570118196831237

/-! ## A343846.P11671111805082567770

`lcm(A004273(n), A109449(A046092(n)))`
-/

namespace A343846.P11671111805082567770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004273 n) (A109449 (A046092 n).toNat)

end

end A343846.P11671111805082567770

/-! ## A343846.P10614876177182978169

`A000111(n)*A000984(n)-A018843(n)`
-/

namespace A343846.P10614876177182978169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n * A000984 n - A018843 n

end

end A343846.P10614876177182978169

/-!
# A343847: T(n, k) = (n - k)! * [x^(n-k)] exp(k*x/(1 - x))/(1 - x). Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A343847, there is no canonical definition to state claims against.
-/

/-! ## A343847.P13701111838625808670

`A289192(∑[2*n]%comp[∑[n]])`
-/

namespace A343847.P13701111838625808670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A343847.P13701111838625808670

/-! ## A343847.P9907203316378087398

`A289192(∑[char[∑[n]]]²-(n+1))`
-/

namespace A343847.P9907203316378087398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A343847.P9907203316378087398

/-! ## A343847.P6650476028775350306

`and(-1, A289192(A061579(n)))`
-/

namespace A343847.P6650476028775350306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A289192 (A061579 n).toNat)

end

end A343847.P6650476028775350306

/-! ## A343847.P7761867624629496087

`gcd(A000038(n), A289192(A061579(n)))`
-/

namespace A343847.P7761867624629496087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A289192 (A061579 n).toNat)

end

end A343847.P7761867624629496087

/-! ## A343847.P10653040996256488819

`A007318(C(2, n))*A289192(A061579(n))`
-/

namespace A343847.P10653040996256488819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A289192 (A061579 n).toNat

end

end A343847.P10653040996256488819

/-! ## A343847.P17875167755345094155

`A289192(A061579(n))^(A000040(n+1)%2)`
-/

namespace A343847.P17875167755345094155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289192 (A061579 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A343847.P17875167755345094155

/-! ## A343847.P6092224662940066837

`A007318(∑[n])*A289192(A038722(n+2))`
-/

namespace A343847.P6092224662940066837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A289192 (A038722 (n + 2)).toNat

end

end A343847.P6092224662940066837

/-!
# A343848: a(n) = Sum_{k = 0..n} (n - k)! LaguerreL(n - k, -k).

The programs for A343848, there is no canonical definition to state claims against.
-/

/-! ## A343848.P15585947781380948553

`∑[A302492(A199875(n))]`
-/

namespace A343848.P15585947781380948553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A199875 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343848.P15585947781380948553

/-! ## A343848.P2618281138685064632

`A289494(2*A007047(n))`
-/

namespace A343848.P2618281138685064632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (2 * A007047 n).toNat

end

end A343848.P2618281138685064632

/-!
# A343849: a(n) = Sum_{k = 0..n} n! * LaguerreL(n, -k).

The programs for A343849, there is no canonical definition to state claims against.
-/

/-! ## A343849.P6704218266388989322

`A028310(A065920(n)+A000165(n))`
-/

namespace A343849.P6704218266388989322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A065920 n + A000165 n).toNat

end

end A343849.P6704218266388989322

/-!
# A343850: Integer part of the area of an irregular hexagon, formed by the regular overlap of two regular pentagons each of side length n.

The programs for A343850, the canonical program `A343850.P12068198282639319983` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343850 has offset 1).

The definition of A343850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343850.P12068198282639319983

`floor(2*(n+1)²*cos(π/10)*(1+sin(π/10)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343850

/-- `floor(2*(n+1)²*cos(π/10)*(1+sin(π/10)))` -/
def P12068198282639319983.Spec : Prop :=
  ∀ n, P12068198282639319983.a n = A343850 (n + 1)

theorem P12068198282639319983.correct : P12068198282639319983.Spec := by
  intro n
  simp only [A343850, Nat.add_sub_cancel]

end A343850

/-! ## A343850.P2592502290644684486

`∑[A063206(n+1)]-A118685(A192804(n))`
-/

namespace A343850.P2592502290644684486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118685 (A192804 n).toNat

end

end A343850.P2592502290644684486

namespace A343850

/-- `∑[A063206(n+1)]-A118685(A192804(n))` -/
def P2592502290644684486.Spec : Prop :=
  ∀ n, P2592502290644684486.a n = A343850 (n + 1)

end A343850

/-! ## A343850.P14534326725690673438

`A070939(A001523(2*n))+A000566(n+1)`
-/

namespace A343850.P14534326725690673438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A001523 (2 * n)).toNat + A000566 (n + 1)

end

end A343850.P14534326725690673438

namespace A343850

/-- `A070939(A001523(2*n))+A000566(n+1)` -/
def P14534326725690673438.Spec : Prop :=
  ∀ n, P14534326725690673438.a n = A343850 (n + 1)

end A343850

/-! ## A343850.P17025114651163430347

`A179184(A103293(n))+A152738(2*(n+1))`
-/

namespace A343850.P17025114651163430347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A103293 n).toNat + A152738 (2 * (n + 1))

end

end A343850.P17025114651163430347

namespace A343850

/-- `A179184(A103293(n))+A152738(2*(n+1))` -/
def P17025114651163430347.Spec : Prop :=
  ∀ n, P17025114651163430347.a n = A343850 (n + 1)

end A343850

/-! ## A343850.P3439851961003654314

`A195014(2*n+1)+A001221(A270913(n))`
-/

namespace A343850.P3439851961003654314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195014 (2 * n + 1) + A001221 (A270913 n).toNat

end

end A343850.P3439851961003654314

namespace A343850

/-- `A195014(2*n+1)+A001221(A270913(n))` -/
def P3439851961003654314.Spec : Prop :=
  ∀ n, P3439851961003654314.a n = A343850 (n + 1)

end A343850

/-!
# A343853: Irregular triangle read by rows: the n-th row gives the row indices of the matrix of 1..n^2 filled successively back and forth along antidiagonals.

The programs for A343853, there is no canonical definition to state claims against.
-/

/-! ## A343853.P9794393098727102075

`A277892(50*A257692(n+1))`
-/

namespace A343853.P9794393098727102075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (50 * A257692 (n + 1)).toNat

end

end A343853.P9794393098727102075

/-! ## A343853.P12986108583111290549

`A096492(∑[A265332(A111314(n))])`
-/

namespace A343853.P12986108583111290549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A111314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343853.P12986108583111290549

/-! ## A343853.P3389685658587924899

`A093320(A244832(n+1)-∏{p}[n, 3%#-2])`
-/

namespace A343853.P3389685658587924899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093320 (A244832 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), (((3 % p : ℕ) : ℤ) - 2)).toNat

end

end A343853.P3389685658587924899

/-! ## A343853.P14101495007327738523

`A003983(∑[A302244(A005898(n))])`
-/

namespace A343853.P14101495007327738523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A005898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343853.P14101495007327738523

/-! ## A343853.P14290011906408531901

`A124767(A002145(n+1)^A047988(n+2))`
-/

namespace A343853.P14290011906408531901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (SequenceMachineLib.roundAway ((A002145 (n + 1) : ℚ) ^ (A047988 (n + 2) : ℤ))).toNat

end

end A343853.P14290011906408531901

/-!
# A343854: Irregular triangle read by rows: the n-th row gives the column indices of the matrix of 1..n^2 filled successively back and forth along antidiagonals.

The programs for A343854, there is no canonical definition to state claims against.
-/

/-! ## A343854.P7399804471709583686

`val(A000040(A181669(2*n+1)+A070939(n))+1, 2)`
-/

namespace A343854.P7399804471709583686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A181669 (2 * n + 1) + A070939 n).toNat + 1).toNat 2

end

end A343854.P7399804471709583686

/-! ## A343854.P6541716117074988826

`A080237(A109919(n+2))`
-/

namespace A343854.P6541716117074988826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A109919 (n + 2)).toNat

end

end A343854.P6541716117074988826

/-! ## A343854.P13538984513961757828

`A001221(or(A108050(n+1), A224210(n+1)))`
-/

namespace A343854.P13538984513961757828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A108050 (n + 1)) (A224210 (n + 1))).toNat

end

end A343854.P13538984513961757828

/-! ## A343854.P17057278486832990229

`A001222(or(A078197(n), A126068(n)))`
-/

namespace A343854.P17057278486832990229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A078197 n) (A126068 n)).toNat

end

end A343854.P17057278486832990229

/-!
# A343855: Numbers whose second digit is not zero and such that removing either the first or last digit leaves a square number.

The programs for A343855, there is no canonical definition to state claims against.
-/

/-! ## A343855.P4623524190785713356

`record[A004719(A244283(n+2))]`
-/

namespace A343855.P4623524190785713356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A244283 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343855.P4623524190785713356

/-! ## A343855.P4303385216719962878

`filter[A244283(n+1), A168046(#)]`
-/

namespace A343855.P4303385216719962878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A343855.P4303385216719962878

/-! ## A343855.P12273700769380917108

`∩[A052382(n+1), A244283(n+1)]`
-/

namespace A343855.P12273700769380917108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343855.P12273700769380917108

/-! ## A343855.P15177930670536938151

`∩[A039118(n+1), A244283(n+1)]`
-/

namespace A343855.P15177930670536938151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343855.P15177930670536938151

/-! ## A343855.P13890480148563918232

`∩[A244283(n+1), A357474(n+1)]`
-/

namespace A343855.P13890480148563918232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343855.P13890480148563918232

/-!
# A343856: Irregular table read by rows; the first row is [1]; to obtain the next row, replace each odd-indexed term u with (u, u), and each even-indexed term v with (2*v).

The programs for A343856, there is no canonical definition to state claims against.
-/

/-! ## A343856.P18061177316045039366

`Δ[A343857(n)]`
-/

namespace A343856.P18061177316045039366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343856.P18061177316045039366

/-! ## A343856.P12757993309387904280

`A343857(n+1)-A343857(n)`
-/

namespace A343856.P12757993309387904280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343857 (n + 1) - A343857 n

end

end A343856.P12757993309387904280

/-! ## A343856.P5162689607769380175

`A343857(A000007(n)+1+n)%(A343857(n)+1)+1`
-/

namespace A343856.P5162689607769380175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343857 (A000007 n + 1 + (n : ℤ)).toNat) (A343857 n + 1) + 1

end

end A343856.P5162689607769380175

/-! ## A343856.P13700146873439310689

`∏{e}[A001519(A066628(n+2))², #]`
-/

namespace A343856.P13700146873439310689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A066628 (n + 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A343856.P13700146873439310689

/-!
# A343857: Partial sums of A343856.

The programs for A343857, there is no canonical definition to state claims against.
-/

/-! ## A343857.P17103731154519103978

`∑[A343856(n+1)]-A343856(n+1)`
-/

namespace A343857.P17103731154519103978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A343856 (n + 1)

end

end A343857.P17103731154519103978

/-! ## A343857.P11385343345680817095

`lt[A346705(n), A001511(n+1)²]`
-/

namespace A343857.P11385343345680817095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343857.P11385343345680817095

/-! ## A343857.P6075508156189744236

`lt[A346705(n), A000290(val(n+1, 2)+1)]`
-/

namespace A343857.P6075508156189744236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343857.P6075508156189744236

/-! ## A343857.P4026614102772916859

`lt[A178605(A243499(n)), A001157(n+1)]`
-/

namespace A343857.P4026614102772916859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178605 (A243499 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343857.P4026614102772916859

/-! ## A343857.P10407359701632480344

`lt[A143823(A322050(n+2)), A060229(n+1)]`
-/

namespace A343857.P10407359701632480344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (A322050 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343857.P10407359701632480344

/-!
# A343858: Square array T(m,n), read by ascending antidiagonals. Let f(k) = k/2 if k is even, otherwise ((2*n+1)*k+2*r+1)/2, r is the smallest integer greater than -1, where m = f^j(m) for j > 0 exists and is determined in A345228, T(m,n) is the smallest number reached in the cyclic trajectory of m = f^j(m). f^j(m) means j times recursion into f(m).

The programs for A343858, there is no canonical definition to state claims against.
-/

/-! ## A343858.P15402613266033198598

`A030101(A002262(n))%A182043(n+2)`
-/

namespace A343858.P15402613266033198598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (A002262 n).toNat) (A182043 (n + 2))

end

end A343858.P15402613266033198598

/-! ## A343858.P15088001224977475711

`A030101(A025668(n+1))%A182043(n+2)`
-/

namespace A343858.P15088001224977475711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 (A025668 (n + 1)).toNat) (A182043 (n + 2))

end

end A343858.P15088001224977475711

/-! ## A343858.P37923874749574513

`and(A030101(A002262(n)), A138329(n+1))`
-/

namespace A343858.P37923874749574513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030101 (A002262 n).toNat) (A138329 (n + 1))

end

end A343858.P37923874749574513

/-! ## A343858.P11930372901356811199

`gcd(A002262(n), A082495(A267629(n+1)))`
-/

namespace A343858.P11930372901356811199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A082495 (A267629 (n + 1)).toNat)

end

end A343858.P11930372901356811199

/-! ## A343858.P10336728497526665278

`A033873(A003106(3*n+4))%A016116(A002260(n+1))`
-/

namespace A343858.P10336728497526665278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033873 (A003106 (3 * n + 4)).toNat) (A016116 (A002260 (n + 1)).toNat)

end

end A343858.P10336728497526665278

/-!
# A343859: Partial sums of the primes excluding 3.

The programs for A343859, the canonical program `A343859.P4309510753267781368` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343859 has offset 1).

The definition of A343859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343859.P4309510753267781368

`A007504(n+2)-3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343859

/-- `A007504(n+2)-3` -/
def P4309510753267781368.Spec : Prop :=
  ∀ n, P4309510753267781368.a n = A343859 (n + 1)

theorem P4309510753267781368.correct : P4309510753267781368.Spec := by
  intro n
  simp only [A343859, Nat.add_sub_cancel]

end A343859

/-! ## A343859.P8664792335309586747

`∑[p?[2*n+1]]-1`
-/

namespace A343859.P8664792335309586747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A343859.P8664792335309586747

namespace A343859

/-- `∑[p?[2*n+1]]-1` -/
def P8664792335309586747.Spec : Prop :=
  ∀ n, P8664792335309586747.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P4114771166157197148

`∑[p?[a(n-2)+3]]` with `a(0)=1, a(1)=2`
-/

namespace A343859.P4114771166157197148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P4114771166157197148

namespace A343859

/-- `∑[p?[a(n-2)+3]]` -/
def P4114771166157197148.Spec : Prop :=
  ∀ n, (P4114771166157197148.a n : ℤ) = A343859 (n + 1)

end A343859

/-! ## A343859.P7415868596565029353

`abs(1-∑[p?[n+1+n]])`
-/

namespace A343859.P7415868596565029353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A343859.P7415868596565029353

namespace A343859

/-- `abs(1-∑[p?[n+1+n]])` -/
def P7415868596565029353.Spec : Prop :=
  ∀ n, P7415868596565029353.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P3794120874403015650

`∑[p?[floor(n/2+n+1)]]`
-/

namespace A343859.P3794120874403015650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 + (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P3794120874403015650

namespace A343859

/-- `∑[p?[floor(n/2+n+1)]]` -/
def P3794120874403015650.Spec : Prop :=
  ∀ n, P3794120874403015650.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P13142058967055974382

`p?[2*n+1]+a(n-1)` with `a(0)=2`
-/

namespace A343859.P13142058967055974382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A343859.P13142058967055974382

namespace A343859

/-- `p?[2*n+1]+a(n-1)` -/
def P13142058967055974382.Spec : Prop :=
  ∀ n, (P13142058967055974382.a n : ℤ) = A343859 (n + 1)

end A343859

/-! ## A343859.P16011819645694759249

`∑[A045344(n+1)]`
-/

namespace A343859.P16011819645694759249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P16011819645694759249

namespace A343859

/-- `∑[A045344(n+1)]` -/
def P16011819645694759249.Spec : Prop :=
  ∀ n, P16011819645694759249.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P2093257524015847501

`A071148(n+1)-1`
-/

namespace A343859.P2093257524015847501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1) - 1

end

end A343859.P2093257524015847501

namespace A343859

/-- `A071148(n+1)-1` -/
def P2093257524015847501.Spec : Prop :=
  ∀ n, P2093257524015847501.a n = A343859 (n + 1)

theorem P2093257524015847501.correct : P2093257524015847501.Spec := by
  intro n
  simp only [A343859, Nat.add_sub_cancel, A343859.P2093257524015847501.a, A343859.P4309510753267781368.a, A007504, A007504.P14310834286015847203.a, A071148, A071148.P13630786703162267389.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343859

/-! ## A343859.P7835202773658267220

`∑[A140475(n+1)]+1`
-/

namespace A343859.P7835202773658267220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A343859.P7835202773658267220

namespace A343859

/-- `∑[A140475(n+1)]+1` -/
def P7835202773658267220.Spec : Prop :=
  ∀ n, P7835202773658267220.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P4595308509958350794

`∑[A165972(n+1)+1]`
-/

namespace A343859.P4595308509958350794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P4595308509958350794

namespace A343859

/-- `∑[A165972(n+1)+1]` -/
def P4595308509958350794.Spec : Prop :=
  ∀ n, P4595308509958350794.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P11590157368066485276

`∑[A065091(n+1)]-1`
-/

namespace A343859.P11590157368066485276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A343859.P11590157368066485276

namespace A343859

/-- `∑[A065091(n+1)]-1` -/
def P11590157368066485276.Spec : Prop :=
  ∀ n, P11590157368066485276.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P5861810393161745388

`∑[A135731(n+1)-1]`
-/

namespace A343859.P5861810393161745388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P5861810393161745388

namespace A343859

/-- `∑[A135731(n+1)-1]` -/
def P5861810393161745388.Spec : Prop :=
  ∀ n, P5861810393161745388.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P17732723408703145059

`∑[A156037(n+2)+1]`
-/

namespace A343859.P17732723408703145059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343859.P17732723408703145059

namespace A343859

/-- `∑[A156037(n+2)+1]` -/
def P17732723408703145059.Spec : Prop :=
  ∀ n, P17732723408703145059.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P6986159201392732848

`A215848(n)+a(n-1)` with `a(0)=2`
-/

namespace A343859.P6986159201392732848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A215848 n + a (n - 1)

end

end A343859.P6986159201392732848

namespace A343859

/-- `A215848(n)+a(n-1)` -/
def P6986159201392732848.Spec : Prop :=
  ∀ n, P6986159201392732848.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P1766522626795523918

`A237589(n+2)-2`
-/

namespace A343859.P1766522626795523918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 2) - 2

end

end A343859.P1766522626795523918

namespace A343859

/-- `A237589(n+2)-2` -/
def P1766522626795523918.Spec : Prop :=
  ∀ n, P1766522626795523918.a n = A343859 (n + 1)

theorem P1766522626795523918.correct : P1766522626795523918.Spec := by
  intro n
  simp only [A343859, Nat.add_sub_cancel, A343859.P1766522626795523918.a, A343859.P4309510753267781368.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343859

/-! ## A343859.P8373429490549534124

`∑[A000040(n+2)]-1`
-/

namespace A343859.P8373429490549534124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A343859.P8373429490549534124

namespace A343859

/-- `∑[A000040(n+2)]-1` -/
def P8373429490549534124.Spec : Prop :=
  ∀ n, P8373429490549534124.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P4708046349033109067

`∑[A006005(n+2)]-1`
-/

namespace A343859.P4708046349033109067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A343859.P4708046349033109067

namespace A343859

/-- `∑[A006005(n+2)]-1` -/
def P4708046349033109067.Spec : Prop :=
  ∀ n, P4708046349033109067.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P18000964303462656627

`Δ[A014148(n+1)]-3`
-/

namespace A343859.P18000964303462656627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A343859.P18000964303462656627

namespace A343859

/-- `Δ[A014148(n+1)]-3` -/
def P18000964303462656627.Spec : Prop :=
  ∀ n, P18000964303462656627.a n = A343859 (n + 1)

end A343859

/-! ## A343859.P10991047727484331138

`A101301(n+2)+n-1`
-/

namespace A343859.P10991047727484331138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 2) + ((n : ℤ) - 1)

end

end A343859.P10991047727484331138

namespace A343859

/-- `A101301(n+2)+n-1` -/
def P10991047727484331138.Spec : Prop :=
  ∀ n, P10991047727484331138.a n = A343859 (n + 1)

theorem P10991047727484331138.correct : P10991047727484331138.Spec := by
  intro n
  simp only [A343859, Nat.add_sub_cancel, A343859.P10991047727484331138.a, A343859.P4309510753267781368.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343859

/-! ## A343859.P4637001002443777075

`A103976(n+2)+2*n+1`
-/

namespace A343859.P4637001002443777075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 2) + (2 * n + 1 : ℤ)

end

end A343859.P4637001002443777075

namespace A343859

/-- `A103976(n+2)+2*n+1` -/
def P4637001002443777075.Spec : Prop :=
  ∀ n, P4637001002443777075.a n = A343859 (n + 1)

end A343859

/-!
# A343860: For the numbers k that can be expressed as k = w+x = y*z with w*x = (y+z)^2 where w, x, y, and z are all positive integers, this sequence gives the corresponding values of y+z.

The programs for A343860, there is no canonical definition to state claims against.
-/

/-! ## A343860.P14186878802211602478

`sqrt(A057442(n+1))`
-/

namespace A343860.P14186878802211602478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057442 (n + 1) : ℝ)

end

end A343860.P14186878802211602478

/-! ## A343860.P8778672733511568822

`root(A057442(n+1), 2)*A007318(∑[n])`
-/

namespace A343860.P8778672733511568822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057442 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A343860.P8778672733511568822

/-! ## A343860.P15220571210855568097

`root(A057442(n+1), 2%A057369(n+1))`
-/

namespace A343860.P15220571210855568097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057442 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A057369 (n + 1)) : ℝ))

end

end A343860.P15220571210855568097

/-! ## A343860.P11562632356447938105

`root(A057442(n+1), 2)%A000041(n+10)`
-/

namespace A343860.P11562632356447938105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A057442 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 10))

end

end A343860.P11562632356447938105

/-!
# A343861: Coefficient triangle of generalized Laguerre polynomials n!*L(n,n,x) (rising powers of x).

The programs for A343861, the canonical program `A343861.P9571632417045054495` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343861 has offset 0).

The definition of A343861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343861.P9571632417045054495

`(-1)^col(n)*row(n)!*C(2*row(n), row(n)-col(n))/col(n)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343861

/-- `(-1)^col(n)*row(n)!*C(2*row(n), row(n)-col(n))/col(n)!` -/
def P9571632417045054495.Spec : Prop :=
  ∀ n, P9571632417045054495.a n = (A343861 n : ℚ)

end A343861

/-! ## A343861.P11198195455536348191

`(-1)^col(n)*(2*row(n))!*C(row(n), col(n))/(col(n)+row(n))!`
-/

namespace A343861.P11198195455536348191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n * (Nat.factorial (2 * SequenceMachineLib.triRow n) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n) : ℚ)

end

end A343861.P11198195455536348191

namespace A343861

/-- `(-1)^col(n)*(2*row(n))!*C(row(n), col(n))/(col(n)+row(n))!` -/
def P11198195455536348191.Spec : Prop :=
  ∀ n, P11198195455536348191.a n = (A343861 n : ℚ)

end A343861

/-! ## A343861.P16454549693945676163

`A021009(n)/A008459(n)*A110608(n)`
-/

namespace A343861.P16454549693945676163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A008459 n : ℚ) * (A110608 n : ℚ)

end

end A343861.P16454549693945676163

namespace A343861

/-- `A021009(n)/A008459(n)*A110608(n)` -/
def P16454549693945676163.Spec : Prop :=
  ∀ n, P16454549693945676163.a n = (A343861 n : ℚ)

end A343861

/-!
# A343863: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = (n!)^k * Sum_{j=1..n} (1/j!)^k.

The programs for A343863, the canonical program `A343863.P15416828852499650423` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343863 has offset 0).

The definition of A343863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343863.P15416828852499650423

`col(n)^(row(n)-col(n))*T(n-1,k-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343863

/-- `col(n)^(row(n)-col(n))*T(n-1,k-1)+1` -/
def P15416828852499650423.Spec : Prop :=
  ∀ n, P15416828852499650423.a n = (A343863 n : ℚ)

end A343863

/-! ## A343863.P11719520449940171498

`A000005(A059268(n)^A355614(n))`
-/

namespace A343863.P11719520449940171498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A355614 n : ℤ))).toNat

end

end A343863.P11719520449940171498

namespace A343863

/-- `A000005(A059268(n)^A355614(n))` -/
def P11719520449940171498.Spec : Prop :=
  ∀ n, P11719520449940171498.a n = A343863 n

end A343863

/-! ## A343863.P10083829587023487576

`A286552(A141660(n+1)%A091100(n+1))`
-/

namespace A343863.P10083829587023487576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (Int.tmod (A141660 (n + 1)) (A091100 (n + 1))).toNat

end

end A343863.P10083829587023487576

namespace A343863

/-- `A286552(A141660(n+1)%A091100(n+1))` -/
def P10083829587023487576.Spec : Prop :=
  ∀ n, P10083829587023487576.a n = A343863 n

end A343863

/-! ## A343863.P15610050386198317980

`A286552(A141660(n+1)-A010894(3*n))`
-/

namespace A343863.P15610050386198317980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (A141660 (n + 1) - A010894 (3 * n + 21)).toNat

end

end A343863.P15610050386198317980

namespace A343863

/-- `A286552(A141660(n+1)-A010894(3*n))` -/
def P15610050386198317980.Spec : Prop :=
  ∀ n, P15610050386198317980.a n = A343863 n

end A343863

/-! ## A343863.P9556181228772588175

`A112329(A304855(n+5)^A025650(n+1))`
-/

namespace A343863.P9556181228772588175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (SequenceMachineLib.roundAway ((A304855 (n + 5) : ℚ) ^ (A025650 (n + 1) : ℤ))).toNat

end

end A343863.P9556181228772588175

namespace A343863

/-- `A112329(A304855(n+5)^A025650(n+1))` -/
def P9556181228772588175.Spec : Prop :=
  ∀ n, P9556181228772588175.a n = A343863 n

end A343863

/-!
# A343865: Number of lattice points for which polar coordinates (r,theta) exist such that (0 <= r <= theta <= n).

The programs for A343865, there is no canonical definition to state claims against.
-/

/-! ## A343865.P18352096966943858161

`A352208(n+1)+val(A372654(n+1), 2)`
-/

namespace A343865.P18352096966943858161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352208 (n + 1) + (SequenceMachineLib.valuation (A372654 (n + 1)).toNat 2 : ℤ)

end

end A343865.P18352096966943858161

/-! ## A343865.P11939532548949709160

`A352208(n+1)+A327127(A124730(n))`
-/

namespace A343865.P11939532548949709160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352208 (n + 1) + A327127 (A124730 n).toNat

end

end A343865.P11939532548949709160

/-! ## A343865.P868743077064381978

`A352208(n+1)+A007949(A352197(n+1))`
-/

namespace A343865.P868743077064381978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352208 (n + 1) + A007949 (A352197 (n + 1)).toNat

end

end A343865.P868743077064381978

/-!
# A343866: Number of inequivalent cyclic diagonal Latin squares of order 2n+1 up to rotations, reflections and permutation of symbols.

The programs for A343866, there is no canonical definition to state claims against.
-/

/-! ## A343866.P3951133853650141324

`A143227(A009963(n))*A341585(n)`
-/

namespace A343866.P3951133853650141324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143227 (A009963 n).toNat * A341585 n

end

end A343866.P3951133853650141324

/-! ## A343866.P5810249870482831211

`A341585(n)*A351106(A111669(n))`
-/

namespace A343866.P5810249870482831211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341585 n * A351106 (A111669 n).toNat

end

end A343866.P5810249870482831211

/-! ## A343866.P3277626280466389569

`A190783(A215292(n+1))*A341585(n)`
-/

namespace A343866.P3277626280466389569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190783 (A215292 (n + 1)).toNat * A341585 n

end

end A343866.P3277626280466389569

/-! ## A343866.P10231797221246290105

`A212180(A004126(n+4))*A341585(n)`
-/

namespace A343866.P10231797221246290105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212180 (A004126 (n + 4)).toNat * A341585 n

end

end A343866.P10231797221246290105

/-! ## A343866.P11980954387363305717

`lcm(A341585(n), A344618(A008292(n+1)))`
-/

namespace A343866.P11980954387363305717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A341585 n) (A344618 (A008292 (n + 1)).toNat)

end

end A343866.P11980954387363305717

/-!
# A343868: Number of semicyclic Latin squares of order n with the first row in ascending order.

The programs for A343868, there is no canonical definition to state claims against.
-/

/-! ## A343868.P2791008713956525744

`A004526((∑[6*a(n-2)-a(n-4)]-1)²)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A343868.P2791008713956525744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3, 5] fun n f1 =>
  6 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2).toNat

end

end A343868.P2791008713956525744

/-! ## A343868.P2723266298687488503

`A004526(A216134(abs(1-n))²)`
-/

namespace A343868.P2723266298687488503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A216134 |1 - (n : ℤ)|.toNat ^ 2).toNat

end

end A343868.P2723266298687488503

/-! ## A343868.P4274004400238294247

`A004526((A079496(n)-A216134(n))²)`
-/

namespace A343868.P4274004400238294247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A079496 n - A216134 n) ^ 2).toNat

end

end A343868.P4274004400238294247

/-!
# A343869: Number of unlabeled nonseparable (or 2-connected) planar graphs with n edges.

The programs for A343869, there is no canonical definition to state claims against.
-/

/-! ## A343869.P6705977796529147729

`A010355(n+1)-A025457(A148294(n))`
-/

namespace A343869.P6705977796529147729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010355 (n + 1) - A025457 (A148294 n).toNat

end

end A343869.P6705977796529147729

/-! ## A343869.P2586850235761874706

`A010355(n+1)-A054923(A304887(n))`
-/

namespace A343869.P2586850235761874706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010355 (n + 1) - A054923 (A304887 n).toNat

end

end A343869.P2586850235761874706

/-! ## A343869.P7901797518895223334

`A010355(n+1)-A325678(A324093(n+1))`
-/

namespace A343869.P7901797518895223334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010355 (n + 1) - A325678 (A324093 (n + 1)).toNat

end

end A343869.P7901797518895223334

/-! ## A343869.P10927966133926479016

`A273190(A215252(n)+A052551(n))`
-/

namespace A343869.P10927966133926479016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A215252 n + A052551 n).toNat

end

end A343869.P10927966133926479016

/-! ## A343869.P3196116205765509835

`A273190(A181344(n+1)+A026531(n))`
-/

namespace A343869.P3196116205765509835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A181344 (n + 1) + A026531 n).toNat

end

end A343869.P3196116205765509835

/-!
# A343870: Triangle read by rows: T(n,k) is the number of unlabeled nonseparable (or 2-connected) planar graphs with n edges and k nodes (n >= 1, 2 <= k <= n + 1).

The programs for A343870, there is no canonical definition to state claims against.
-/

/-! ## A343870.P4184932278637328151

`A339070(n+1)+A178798(A174448(n))`
-/

namespace A343870.P4184932278637328151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) + A178798 (A174448 n).toNat

end

end A343870.P4184932278637328151

/-! ## A343870.P3150218027799887961

`A339070(n+1)+A178798(A109223(n))`
-/

namespace A343870.P3150218027799887961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) + A178798 (A109223 n).toNat

end

end A343870.P3150218027799887961

/-! ## A343870.P6936993456319115269

`A339070(n+1)-A001878(A331927(n))`
-/

namespace A343870.P6936993456319115269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) - A001878 (A331927 n).toNat

end

end A343870.P6936993456319115269

/-! ## A343870.P7528361993246422971

`A339070(n+1)-A025456(A010894(n))`
-/

namespace A343870.P7528361993246422971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) - A025456 (A010894 (n + 21)).toNat

end

end A343870.P7528361993246422971

/-! ## A343870.P16063104859721828118

`A339070(n+1)-A025469(A016778(n))`
-/

namespace A343870.P16063104859721828118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (n + 1) - A025469 (A016778 n).toNat

end

end A343870.P16063104859721828118

/-!
# A343871: Number of labeled 3-connected planar graphs with n edges.

The programs for A343871, there is no canonical definition to state claims against.
-/

/-! ## A343871.P15623410965610246225

`A220077(n+1)*A321865(A355380(n))`
-/

namespace A343871.P15623410965610246225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220077 (n + 1) * A321865 (A355380 n).toNat

end

end A343871.P15623410965610246225

/-!
# A343872: Number of planar graphs with n edges and no isolated nodes.

The programs for A343872, there is no canonical definition to state claims against.
-/

/-! ## A343872.P16823563734606099165

`A000664(n)-A198317(A004695(n))`
-/

namespace A343872.P16823563734606099165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 n - A198317 (A004695 n).toNat

end

end A343872.P16823563734606099165

/-! ## A343872.P5921973834127303870

`∑[A005368(n)]-A198317(A004695(n))`
-/

namespace A343872.P5921973834127303870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A198317 (A004695 n).toNat

end

end A343872.P5921973834127303870

/-! ## A343872.P11359856861716496725

`A000664(n)-A240850(A181735(2*n+3))`
-/

namespace A343872.P11359856861716496725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 n - A240850 (A181735 (2 * n + 3)).toNat

end

end A343872.P11359856861716496725

/-! ## A343872.P2319454221225180738

`A000664(n)-A288167(n^4+1)`
-/

namespace A343872.P2319454221225180738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 n - A288167 (n ^ 4 + 1)

end

end A343872.P2319454221225180738

/-! ## A343872.P11409492657723207612

`A016389(A002995(n))+A000664(n)`
-/

namespace A343872.P11409492657723207612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A002995 n).toNat + A000664 n

end

end A343872.P11409492657723207612

/-!
# A343873: Triangle read by rows: T(n,k) is the number of unlabeled connected planar graphs with n edges and k nodes (n >= 0, 1 <= k <= n + 1).

The programs for A343873, there is no canonical definition to state claims against.
-/

/-! ## A343873.P9761485147790214380

`A054923(n)-A025469(A253566(n+1))`
-/

namespace A343873.P9761485147790214380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n - A025469 (A253566 (n + 1)).toNat

end

end A343873.P9761485147790214380

/-! ## A343873.P4619817266140222091

`A054923(n)-val(A372287(2*(n+2)), 5)`
-/

namespace A343873.P4619817266140222091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n - (SequenceMachineLib.valuation (A372287 (2 * (n + 2))).toNat 5 : ℤ)

end

end A343873.P4619817266140222091

/-! ## A343873.P4366218768639355001

`A054923(n)-A178798(A080934(n))`
-/

namespace A343873.P4366218768639355001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n - A178798 (A080934 n).toNat

end

end A343873.P4366218768639355001

/-! ## A343873.P8679083902719435131

`A054923(n)-A102683(A306100(n))`
-/

namespace A343873.P8679083902719435131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 n - A102683 (A306100 n).toNat

end

end A343873.P8679083902719435131

/-!
# A343874: Array read by antidiagonals: T(n,k) is the number of n X n nonnegative integer matrices with sum of elements equal to k, up to rotational symmetry.

The programs for A343874, there is no canonical definition to state claims against.
-/

/-! ## A343874.P1046261292712331533

`A098987(A270882(n))`
-/

namespace A343874.P1046261292712331533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098987 (A270882 n).toNat

end

end A343874.P1046261292712331533

/-! ## A343874.P11654603317031929834

`A330957(A269945(n))`
-/

namespace A343874.P11654603317031929834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A269945 n).toNat

end

end A343874.P11654603317031929834

/-! ## A343874.P4266092050905905848

`A102396(A131689(n)²)`
-/

namespace A343874.P4266092050905905848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102396 (A131689 n ^ 2).toNat

end

end A343874.P4266092050905905848

/-! ## A343874.P14402993129237912808

`A347552(A335461(n+1))`
-/

namespace A343874.P14402993129237912808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (A335461 (n + 1)).toNat

end

end A343874.P14402993129237912808

/-! ## A343874.P6095206984016230815

`A105150(A266493(n+2))`
-/

namespace A343874.P6095206984016230815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105150 (A266493 (n + 2)).toNat

end

end A343874.P6095206984016230815

/-!
# A343875: Array read by antidiagonals: T(n,k) is the number of n X n nonnegative integer matrices with sum of elements equal to k, up to rotations and reflections.

The programs for A343875, there is no canonical definition to state claims against.
-/

/-! ## A343875.P10706136777972979031

`A029837(A335093(A343874(n)))`
-/

namespace A343875.P10706136777972979031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A335093 (A343874 n).toNat).toNat

end

end A343875.P10706136777972979031

/-! ## A343875.P16697743022010890220

`A024786(A097805(n)+1)%A155949(n+1)`
-/

namespace A343875.P16697743022010890220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024786 (A097805 n + 1).toNat) (A155949 (n + 1))

end

end A343875.P16697743022010890220

/-! ## A343875.P17758408949833278310

`A307319(A058710(n))`
-/

namespace A343875.P17758408949833278310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (A058710 n).toNat

end

end A343875.P17758408949833278310

/-! ## A343875.P1081797022012399919

`A267825(A281891(n))`
-/

namespace A343875.P1081797022012399919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267825 (A281891 n).toNat

end

end A343875.P1081797022012399919

/-! ## A343875.P2539115764372525856

`A087116(A304334(n+1))`
-/

namespace A343875.P2539115764372525856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A304334 (n + 1)).toNat

end

end A343875.P2539115764372525856

/-!
# A343876: a(n) = n * Sum_{d|n} d^mu(d).

The programs for A343876, the canonical program `A343876.P1859207970509647468` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343876 has offset 1).

The definition of A343876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343876.P7564346274087672576

`∑{d}[n+1, (n+1)*#^A008683(#)]`
-/

namespace A343876.P7564346274087672576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) * (d : ℚ) ^ (A008683 d : ℤ)

end

end A343876.P7564346274087672576

namespace A343876

/-- `∑{d}[n+1, (n+1)*#^A008683(#)]` -/
def P7564346274087672576.Spec : Prop :=
  ∀ n, P7564346274087672576.a n = (A343876 (n + 1) : ℚ)

end A343876

/-! ## A343876.P1859207970509647468

`∑{d}[n+1, (n+1)/#^A157657(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343876

/-- `∑{d}[n+1, (n+1)/#^A157657(#)]` -/
def P1859207970509647468.Spec : Prop :=
  ∀ n, P1859207970509647468.a n = (A343876 (n + 1) : ℚ)

end A343876

/-!
# A343877: Number of pairs (d1, d2) of divisors of n such that d1<d2, d1|n, d2|n, and d1 + d2 <= n.

The programs for A343877, the canonical program `A343877.P7620220508476975172` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343877 has offset 1).

The definition of A343877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343877.P7620220508476975172

`1/2*A000005(n+1)²-3/2*A000005(n+1)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343877

/-- `1/2*A000005(n+1)²-3/2*A000005(n+1)+1` -/
def P7620220508476975172.Spec : Prop :=
  ∀ n, P7620220508476975172.a n = (A343877 (n + 1) : ℚ)

end A343877

/-! ## A343877.P13944836314623850345

`C(∑{d}[n+1, floor(atan(#))], 2)`
-/

namespace A343877.P13944836314623850345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋).toNat 2

end

end A343877.P13944836314623850345

namespace A343877

/-- `C(∑{d}[n+1, floor(atan(#))], 2)` -/
def P13944836314623850345.Spec : Prop :=
  ∀ n, (P13944836314623850345.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P12222112837066977796

`C(∑{d}[n+1, n²%#], 2)`
-/

namespace A343877.P12222112837066977796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d) 2

end

end A343877.P12222112837066977796

namespace A343877

/-- `C(∑{d}[n+1, n²%#], 2)` -/
def P12222112837066977796.Spec : Prop :=
  ∀ n, (P12222112837066977796.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P17647648285055621065

`C(log2(∏{d}[n+1, ceil(atan(#))]), 2)`
-/

namespace A343877.P17647648285055621065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ : ℤ) : ℝ))).toNat 2

end

end A343877.P17647648285055621065

namespace A343877

/-- `C(log2(∏{d}[n+1, ceil(atan(#))]), 2)` -/
def P17647648285055621065.Spec : Prop :=
  ∀ n, (P17647648285055621065.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P5265006982958679924

`C(∏{e}[n+1, #+1]-1, 2)`
-/

namespace A343877.P5265006982958679924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1).toNat 2

end

end A343877.P5265006982958679924

namespace A343877

/-- `C(∏{e}[n+1, #+1]-1, 2)` -/
def P5265006982958679924.Spec : Prop :=
  ∀ n, (P5265006982958679924.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P1457321307694910637

`C(∑{d}[n+1, gcd(n, #)]-1, 2)`
-/

namespace A343877.P1457321307694910637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - 1).toNat 2

end

end A343877.P1457321307694910637

namespace A343877

/-- `C(∑{d}[n+1, gcd(n, #)]-1, 2)` -/
def P1457321307694910637.Spec : Prop :=
  ∀ n, (P1457321307694910637.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P4994262968831844880

`C(round(∑{d}[n+1, root(#, 2*n+1)])-1, 2)`
-/

namespace A343877.P4994262968831844880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (2 * n + 1 : ℝ))) - 1).toNat 2

end

end A343877.P4994262968831844880

namespace A343877

/-- `C(round(∑{d}[n+1, root(#, 2*n+1)])-1, 2)` -/
def P4994262968831844880.Spec : Prop :=
  ∀ n, (P4994262968831844880.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P18088557722729027864

`C(A325765(n), 2)`
-/

namespace A343877.P18088557722729027864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325765 n).toNat 2

end

end A343877.P18088557722729027864

namespace A343877

/-- `C(A325765(n), 2)` -/
def P18088557722729027864.Spec : Prop :=
  ∀ n, (P18088557722729027864.a n : ℤ) = A343877 (n + 1)

end A343877

/-! ## A343877.P5432334125703422228

`C(A032741(n+1), 2)`
-/

namespace A343877.P5432334125703422228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032741 (n + 1)).toNat 2

end

end A343877.P5432334125703422228

namespace A343877

/-- `C(A032741(n+1), 2)` -/
def P5432334125703422228.Spec : Prop :=
  ∀ n, (P5432334125703422228.a n : ℤ) = A343877 (n + 1)

end A343877

/-!
# A343878: a(n) is the least k such that A342585(k) = n.

The programs for A343878, there is no canonical definition to state claims against.
-/

/-! ## A343878.P17065598489864705072

`A164953(A005246(n))+A048247(n)`
-/

namespace A343878.P17065598489864705072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164953 (A005246 n).toNat + A048247 n

end

end A343878.P17065598489864705072

/-! ## A343878.P70392204180957476

`or(A185284(A085227(n)), A347305(n+1))`
-/

namespace A343878.P70392204180957476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A085227 n).toNat) (A347305 (n + 1))

end

end A343878.P70392204180957476

/-! ## A343878.P3312730368088371512

`or(A333210(A121654(n)), A347305(n+1))`
-/

namespace A343878.P3312730368088371512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A333210 (A121654 n).toNat) (A347305 (n + 1))

end

end A343878.P3312730368088371512

/-! ## A343878.P9932464961531868856

`A164953(A005246(n))+eq[0, A226460(n)]`
-/

namespace A343878.P9932464961531868856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164953 (A005246 n).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A343878.P9932464961531868856

/-! ## A343878.P15600710917988459199

`or(A309107(A171862(n+1)), A347305(n+1))`
-/

namespace A343878.P15600710917988459199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309107 (A171862 (n + 1)).toNat) (A347305 (n + 1))

end

end A343878.P15600710917988459199

/-!
# A343879: Number of pairs (d1, d2) of divisors of n such that d1<d2, d1|n, d2|n, d1|d2 and d1 + d2 <= n.

The programs for A343879, there is no canonical definition to state claims against.
-/

/-! ## A343879.P9793102061278505989

`∑{d}[n+1, A070824(#)]`
-/

namespace A343879.P9793102061278505989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070824 d

end

end A343879.P9793102061278505989

/-! ## A343879.P5699050886891851561

`Δ[A333885(round(acot(n)+n))]`
-/

namespace A343879.P5699050886891851561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333885 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343879.P5699050886891851561

/-! ## A343879.P13129492410668471664

`Δ[A333885(abs(1-n)+1)]`
-/

namespace A343879.P13129492410668471664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333885 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343879.P13129492410668471664

/-! ## A343879.P6300342840946035304

`∑{d}[n+1, A000005(#)-2]+1`
-/

namespace A343879.P6300342840946035304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000005 d - 2) + 1

end

end A343879.P6300342840946035304

/-! ## A343879.P17294009883772586689

`∑{d}[n+1, A032741(#%(n+1))]`
-/

namespace A343879.P17294009883772586689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 (d % (n + 1))

end

end A343879.P17294009883772586689

/-! ## A343879.P13336089379623696178

`∑{d}[n+1, A289207(A000005(#))]`
-/

namespace A343879.P13336089379623696178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A289207 (A000005 d).toNat

end

end A343879.P13336089379623696178

/-! ## A343879.P2570349839750189408

`A200221(n+1)+A070824(n+1)`
-/

namespace A343879.P2570349839750189408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (n + 1) + A070824 (n + 1)

end

end A343879.P2570349839750189408

/-! ## A343879.P7991944325525127397

`A007425(n+1)-A114003(n+1)`
-/

namespace A343879.P7991944325525127397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) - A114003 (n + 1)

end

end A343879.P7991944325525127397

/-! ## A343879.P15373902430709798232

`A238952(n+1)+1-A000005(n+1)`
-/

namespace A343879.P15373902430709798232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (n + 1) + (1 - A000005 (n + 1))

end

end A343879.P15373902430709798232

/-!
# A343880: Positions of 0's in A342585.

The programs for A343880, there is no canonical definition to state claims against.
-/

/-! ## A343880.P772041468067241185

`∑[A347299(n+1)]`
-/

namespace A343880.P772041468067241185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343880.P772041468067241185

/-! ## A343880.P5066009240012208188

`A347299(root(n², 2)+1)+a(n-1)` with `a(0)=1`
-/

namespace A343880.P5066009240012208188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347299 (SequenceMachineLib.roundAway ((n ^ 2 : ℝ) ^ (1 / (2 : ℝ)) + 1)).toNat + a (n - 1)

end

end A343880.P5066009240012208188

/-! ## A343880.P3062806884296860043

`a(n-1)+A057427(n)*A347299(n+1)` with `a(0)=1`
-/

namespace A343880.P3062806884296860043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A347299 (n + 1)

end

end A343880.P3062806884296860043

/-! ## A343880.P9354237840139418553

`a(n-1)+A347299(n+1)%A167499(n)` with `a(0)=1`
-/

namespace A343880.P9354237840139418553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A347299 (n + 1)) (A167499 n)

end

end A343880.P9354237840139418553

/-! ## A343880.P9730877888062954446

`∑[A347299(A328399(2*n))%A167499(n)]`
-/

namespace A343880.P9730877888062954446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347299 (A328399 (2 * n)).toNat) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343880.P9730877888062954446

/-! ## A343880.P7579540325617039986

`A233583(A347299(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A343880.P7579540325617039986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 (A347299 (n + 1) + 1).toNat + a (n - 1)

end

end A343880.P7579540325617039986

/-! ## A343880.P15943277937478895391

`eq[0, A342585(n+1)]+1`
-/

namespace A343880.P15943277937478895391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343880.P15943277937478895391

/-! ## A343880.P10987053439166625839

`record[gcd(A000027(n+1), A342585(n+1))]`
-/

namespace A343880.P10987053439166625839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A342585 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343880.P10987053439166625839

/-! ## A343880.P10447429914287844562

`eq[A000007(n), A342585(A028310(n))]`
-/

namespace A343880.P10447429914287844562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343880.P10447429914287844562

/-! ## A343880.P11737084845799841072

`eq[A000038(n), A342585(A028310(n))]`
-/

namespace A343880.P11737084845799841072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343880.P11737084845799841072

/-!
# A343882: Triangular array read by rows: T(n,k) is the number of transitive relations on n labeled nodes with exactly k connected components.

The programs for A343882, there is no canonical definition to state claims against.
-/

/-! ## A343882.P14049054398128756374

`A334821(A334778(n))-A255740(n+1)`
-/

namespace A343882.P14049054398128756374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334821 (A334778 n).toNat - A255740 (n + 1)

end

end A343882.P14049054398128756374

/-! ## A343882.P13326497428938724297

`A002487(C(A222029(n), A344084(n+1)))`
-/

namespace A343882.P13326497428938724297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.choose (A222029 n).toNat (A344084 (n + 1)).toNat)

end

end A343882.P13326497428938724297

/-!
# A343884: Expansion of e.g.f. exp( x/(1-x)^2 ) / (1-x)^2.

The programs for A343884, there is no canonical definition to state claims against.
-/

/-! ## A343884.P13834912053926833392

`A361616(∑[n+3])`
-/

namespace A343884.P13834912053926833392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343884.P13834912053926833392

/-! ## A343884.P11503364837541199917

`record[A361616(n)/A013609(n+3)]`
-/

namespace A343884.P11503364837541199917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361616 n : ℚ) / (A013609 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343884.P11503364837541199917

/-!
# A343885: a(n) = a(n-1) - a(n-2) + a(n-3) + a(n-4), with a(1) = a(2) = a(3) = a(4) = 1.

The programs for A343885, the canonical program `A343885.P887640869059184422` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343885 has offset 1).

The definition of A343885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+a(n-3)+a(n-4)` (program `A343885.P887640869059184422`, by `A343885.P887640869059184422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343885.P887640869059184422

`a(n-1)-a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343885

/-- `a(n-1)-a(n-2)+a(n-3)+a(n-4)` -/
def P887640869059184422.Spec : Prop :=
  ∀ n, P887640869059184422.a n = A343885 (n + 1)

theorem P887640869059184422.correct : P887640869059184422.Spec := by
  intro n
  simp only [A343885, Nat.add_sub_cancel]

end A343885

/-! ## A343885.P17337722783885576641

`2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A343885.P17337722783885576641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  2 * a (n - 4) + a (n - 5)

end

end A343885.P17337722783885576641

namespace A343885

/-- `2*a(n-4)+a(n-5)` -/
def P17337722783885576641.Spec : Prop :=
  ∀ n, (P17337722783885576641.a n : ℤ) = A343885 (n + 1)

end A343885

/-! ## A343885.P14348204129336304421

`a(n-4)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A343885.P14348204129336304421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  a (n - 4) + (a (n - 4) + a (n - 5))

end

end A343885.P14348204129336304421

namespace A343885

/-- `a(n-4)+a(n-4)+a(n-5)` -/
def P14348204129336304421.Spec : Prop :=
  ∀ n, (P14348204129336304421.a n : ℤ) = A343885 (n + 1)

end A343885

/-! ## A343885.P7859958898737713571

`a(n-1)-(a(n-2)-a(n-3)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A343885.P7859958898737713571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) - a (n - 4))

end

end A343885.P7859958898737713571

namespace A343885

/-- `a(n-1)-(a(n-2)-a(n-3)-a(n-4))` -/
def P7859958898737713571.Spec : Prop :=
  ∀ n, P7859958898737713571.a n = A343885 (n + 1)

theorem P7859958898737713571.correct : P7859958898737713571.Spec := by
  intro n
  simp only [A343885, Nat.add_sub_cancel, A343885.P7859958898737713571.a, A343885.P887640869059184422.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A343885

/-! ## A343885.P754279544263127734

`ogf((1+x^2)/(1-x+x^2-x^3-x^4))`
-/

namespace A343885.P754279544263127734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 1, -1, -1] n

end

end A343885.P754279544263127734

namespace A343885

/-- `ogf((1+x^2)/(1-x+x^2-x^3-x^4))` -/
def P754279544263127734.Spec : Prop :=
  ∀ n, P754279544263127734.a n = A343885 (n + 1)

end A343885

/-!
# A343887: a(1) = 1. Thereafter if a(n) is a novel term, a(n+1) = number of prior terms > a(n). If a(n) has been seen already, a(n+1) = a(n) + smallest prior term (which, once used, cannot be used again).

The programs for A343887, there is no canonical definition to state claims against.
-/

/-! ## A343887.P6163477886898892621

`A141169(record[A225179(A066485(n+1))])`
-/

namespace A343887.P6163477886898892621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225179 (A066485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343887.P6163477886898892621

/-! ## A343887.P1869816537839032972

`A141169(A104324(A020732(n+2)))`
-/

namespace A343887.P1869816537839032972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A104324 (A020732 (n + 2)).toNat).toNat

end

end A343887.P1869816537839032972

/-! ## A343887.P16391317034165845218

`A141169(lt[A274133(n+1), A188866(n+1)])`
-/

namespace A343887.P16391317034165845218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343887.P16391317034165845218

/-! ## A343887.P6806932440921215375

`A141169(A091536(n+1)+n+5)`
-/

namespace A343887.P6806932440921215375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A091536 (n + 1) + (n + 5 : ℤ)).toNat

end

end A343887.P6806932440921215375

/-! ## A343887.P1628829596052386060

`A007895(A246522(n+4)²)`
-/

namespace A343887.P1628829596052386060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A246522 (n + 4) ^ 2).toNat

end

end A343887.P1628829596052386060

/-!
# A343888: Smallest positive integer such that the decimal representations of a(n) and of a(n)+9n (both without leading zeros) are permutations of each other.

The programs for A343888, there is no canonical definition to state claims against.
-/

/-! ## A343888.P7361655277982494701

`A029742(A061805(n+2))`
-/

namespace A343888.P7361655277982494701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (A061805 (n + 2)).toNat

end

end A343888.P7361655277982494701

/-! ## A343888.P442219434985285988

`A329448(A107070(n+2))`
-/

namespace A343888.P442219434985285988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329448 (A107070 (n + 2)).toNat

end

end A343888.P442219434985285988

/-! ## A343888.P6087046597714031455

`A359983(A078188(n+2))`
-/

namespace A343888.P6087046597714031455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (A078188 (n + 2)).toNat

end

end A343888.P6087046597714031455

/-! ## A343888.P8601357048070508738

`A085890(A085904(n+1))+11`
-/

namespace A343888.P8601357048070508738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085890 (A085904 (n + 1)).toNat + 11

end

end A343888.P8601357048070508738

/-! ## A343888.P11871758262682509385

`A239217(A239138(n+2))+10`
-/

namespace A343888.P11871758262682509385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A239138 (n + 2)).toNat + 10

end

end A343888.P11871758262682509385

/-!
# A343889: Integer k of the pairs (k, m) ordered by m with 1 < k < m such that k has the same prime divisors as m, and, k+1 has the same prime divisors as m+1.

The programs for A343889, there is no canonical definition to state claims against.
-/

/-! ## A343889.P12069549613354252156

`A343101(Δ[n²])`
-/

namespace A343889.P12069549613354252156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343889.P12069549613354252156

/-! ## A343889.P11042656838724302433

`or(2, A343101(2*n+1))`
-/

namespace A343889.P11042656838724302433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A343101 (2 * n + 1))

end

end A343889.P11042656838724302433

/-! ## A343889.P17463782136107272386

`and(-1, A343101(A005408(n)))`
-/

namespace A343889.P17463782136107272386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343101 (A005408 n).toNat)

end

end A343889.P17463782136107272386

/-! ## A343889.P5221907288743783209

`A000027(A343101(2*n+1))`
-/

namespace A343889.P5221907288743783209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A343101 (2 * n + 1)).toNat

end

end A343889.P5221907288743783209

/-! ## A343889.P14367082068449484548

`A343101(2*n+1)%A061184(n)`
-/

namespace A343889.P14367082068449484548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343101 (2 * n + 1)) (A061184 n)

end

end A343889.P14367082068449484548

/-!
# A343890: Coefficient triangle of generalized Laguerre polynomials n!*L(n,n+1,x) (rising powers of x).

The programs for A343890, the canonical program `A343890.P2883393544285969652` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343890 has offset 0).

The definition of A343890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343890.P2883393544285969652

`(-1)^col(n)*row(n)!*C(2*row(n)+1, row(n)-col(n))/col(n)!`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343890

/-- `(-1)^col(n)*row(n)!*C(2*row(n)+1, row(n)-col(n))/col(n)!` -/
def P2883393544285969652.Spec : Prop :=
  ∀ n, P2883393544285969652.a n = (A343890 n : ℚ)

end A343890

/-! ## A343890.P9140900718904969438

`(-1)^col(n)*(2*row(n)+1)!*C(row(n), col(n))/(col(n)+row(n)+1)!`
-/

namespace A343890.P9140900718904969438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n * (Nat.factorial (2 * SequenceMachineLib.triRow n + 1) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n + 1) : ℚ)

end

end A343890.P9140900718904969438

namespace A343890

/-- `(-1)^col(n)*(2*row(n)+1)!*C(row(n), col(n))/(col(n)+row(n)+1)!` -/
def P9140900718904969438.Spec : Prop :=
  ∀ n, P9140900718904969438.a n = (A343890 n : ℚ)

end A343890

/-!
# A343892: Side b of integer-sided primitive triangles (a, b, c) where side a is the harmonic mean of the 2 other sides b and c, i.e., 2/a = 1/b + 1/c with b < a < c.

The programs for A343892, there is no canonical definition to state claims against.
-/

/-! ## A343892.P15797500127394927464

`A343894(n+1)-(A343893(n+1)+A020883(n+1))`
-/

namespace A343892.P15797500127394927464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - (A343893 (n + 1) + A020883 (n + 1))

end

end A343892.P15797500127394927464

/-! ## A343892.P16815529487120903892

`A343891(3*n+2)`
-/

namespace A343892.P16815529487120903892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (3 * n + 2)

end

end A343892.P16815529487120903892

/-! ## A343892.P637192541618913334

`A343891(A016789(n))%A020886(n+1)`
-/

namespace A343892.P637192541618913334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343891 (A016789 n).toNat) (A020886 (n + 1))

end

end A343892.P637192541618913334

/-! ## A343892.P16884076881259906372

`A343891(A016789(n))+floor(A011751(n)/5)`
-/

namespace A343892.P16884076881259906372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (A016789 n).toNat + ⌊(A011751 n : ℚ) / 5⌋

end

end A343892.P16884076881259906372

/-! ## A343892.P9904010221892647354

`A343891(A016789(n))%A029591(n)`
-/

namespace A343892.P9904010221892647354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343891 (A016789 n).toNat) (A029591 n)

end

end A343892.P9904010221892647354

/-! ## A343892.P60624249940975194

`A343893(n+1)-A112656(n+1)`
-/

namespace A343892.P60624249940975194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - A112656 (n + 1)

end

end A343892.P60624249940975194

/-! ## A343892.P6241428141934668997

`A020883(n+1)+A113482(n+1)-A343893(n+1)`
-/

namespace A343892.P6241428141934668997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) + (A113482 (n + 1) - A343893 (n + 1))

end

end A343892.P6241428141934668997

/-! ## A343892.P9098748146791428306

`A024354(n+1)+A113482(n+1)-A343893(n+1)`
-/

namespace A343892.P9098748146791428306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + (A113482 (n + 1) - A343893 (n + 1))

end

end A343892.P9098748146791428306

/-!
# A343893: Side c of integer-sided primitive triangles (a, b, c) where side a is the harmonic mean of the 2 other sides b and c, i.e., 2/a = 1/b + 1/c with b < a < c.

The programs for A343893, there is no canonical definition to state claims against.
-/

/-! ## A343893.P1556033810424822943

`A343894(n+1)-(A343892(n+1)+A020883(n+1))`
-/

namespace A343893.P1556033810424822943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - (A343892 (n + 1) + A020883 (n + 1))

end

end A343893.P1556033810424822943

/-! ## A343893.P9239038797800608360

`A343891(3*(n+1))`
-/

namespace A343893.P9239038797800608360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (3 * (n + 1))

end

end A343893.P9239038797800608360

/-! ## A343893.P2920501999883603353

`A343891(A008585(n+1))%A345819(n+1)`
-/

namespace A343893.P2920501999883603353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343891 (A008585 (n + 1)).toNat) (A345819 (n + 1))

end

end A343893.P2920501999883603353

/-! ## A343893.P10681569316964966358

`A343892(n+1)+A112656(n+1)`
-/

namespace A343893.P10681569316964966358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343892 (n + 1) + A112656 (n + 1)

end

end A343893.P10681569316964966358

/-! ## A343893.P16926700190492302635

`A020883(n+1)+A113482(n+1)-A343892(n+1)`
-/

namespace A343893.P16926700190492302635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) + (A113482 (n + 1) - A343892 (n + 1))

end

end A343893.P16926700190492302635

/-! ## A343893.P1500223851526425953

`A024354(n+1)+A113482(n+1)-A343892(n+1)`
-/

namespace A343893.P1500223851526425953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (n + 1) + (A113482 (n + 1) - A343892 (n + 1))

end

end A343893.P1500223851526425953

/-!
# A343894: Perimeters of integer-sided primitive triangles (a, b, c) where side a is the harmonic mean of the 2 other sides b and c, i.e., 2/a = 1/b + 1/c with b < a < c. The triples (a, b, c) are listed in increasing order of side a, and if sides a coincide, in increasing order of side b.

The programs for A343894, there is no canonical definition to state claims against.
-/

/-! ## A343894.P1045474567843403665

`A020883(n+1)+A343892(n+1)+A343893(n+1)`
-/

namespace A343894.P1045474567843403665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) + A343892 (n + 1) + A343893 (n + 1)

end

end A343894.P1045474567843403665

/-! ## A343894.P17052277048373898505

`A113482(n+1)+2*A020883(n+1)`
-/

namespace A343894.P17052277048373898505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113482 (n + 1) + 2 * A020883 (n + 1)

end

end A343894.P17052277048373898505

/-! ## A343894.P6776416136980564351

`A113482(n+1)+2*A024354(n+1)`
-/

namespace A343894.P6776416136980564351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113482 (n + 1) + 2 * A024354 (n + 1)

end

end A343894.P6776416136980564351

/-! ## A343894.P4834799115648098066

`A113482(n+1)+A004277(A020883(n+1))`
-/

namespace A343894.P4834799115648098066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113482 (n + 1) + A004277 (A020883 (n + 1)).toNat

end

end A343894.P4834799115648098066

/-! ## A343894.P16054036807262468138

`A113482(n+1)+A005843(A024354(n+1))`
-/

namespace A343894.P16054036807262468138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113482 (n + 1) + A005843 (A024354 (n + 1)).toNat

end

end A343894.P16054036807262468138

/-! ## A343894.P3297373143861818046

`A020883(n+1)+A113482(n+1)+A024354(n+1)`
-/

namespace A343894.P3297373143861818046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) + (A113482 (n + 1) + A024354 (n + 1))

end

end A343894.P3297373143861818046

/-!
# A343895: Perimeters of integer-sided primitive triangles (a, b, c) where side a is the harmonic mean of the two other sides b and c, i.e., 2/a = 1/b + 1/c with b < a.

The programs for A343895, there is no canonical definition to state claims against.
-/

/-! ## A343895.P15644442519184982691

`A343894(A160086(n)+A032559(n+1))`
-/

namespace A343895.P15644442519184982691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (A160086 n + A032559 (n + 1)).toNat

end

end A343895.P15644442519184982691

/-! ## A343895.P6361128795142380010

`A343894(n+1)-A075224(A291700(n))`
-/

namespace A343895.P6361128795142380010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - A075224 (A291700 n).toNat

end

end A343895.P6361128795142380010

/-! ## A343895.P11907051058645838411

`A343894(A032559(n+1))-A075224(n+1)`
-/

namespace A343895.P11907051058645838411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (A032559 (n + 1)).toNat - A075224 (n + 1)

end

end A343895.P11907051058645838411

/-! ## A343895.P422655492997842945

`A343894(n+1)-A007496(A283920(n+1))`
-/

namespace A343895.P422655492997842945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - A007496 (A283920 (n + 1)).toNat

end

end A343895.P422655492997842945

/-!
# A343896: a(n) = Sum_{k=0..n} (-1)^(n-k) * k! * binomial(n,k) * binomial(2*n+1,k).

The programs for A343896, there is no canonical definition to state claims against.
-/

/-! ## A343896.P1017229936292175078

`A126917(A266897(∑[n]))`
-/

namespace A343896.P1017229936292175078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A266897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A343896.P1017229936292175078

