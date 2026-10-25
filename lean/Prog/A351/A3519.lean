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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A351900: a(n) is the smallest positive integer not the sum of one or more nonzero powers of p_0, p_1, ..., p_n, where p_0 = 1 and p_n = prime(n) for n >= 1.

The programs for A351900, there is no canonical definition to state claims against.
-/

/-! ## A351900.P14666983684865846434

`A331535(p?[A077442(n)])`
-/

namespace A351900.P14666983684865846434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A351900.P14666983684865846434

/-!
# A351901: Number of permutations of [n] having at least one repeated cycle length.

The programs for A351901, there is no canonical definition to state claims against.
-/

/-! ## A351901.P4503951633942707831

`A000142(n)-A007838(n)`
-/

namespace A351901.P4503951633942707831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A007838 n

end

end A351901.P4503951633942707831

/-! ## A351901.P3344495251121002678

`Δ[A003422(n)]-A007838(n)`
-/

namespace A351901.P3344495251121002678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007838 n

end

end A351901.P3344495251121002678

/-! ## A351901.P14354544335417179583

`∏[A000007(n)+n]-A007838(n)`
-/

namespace A351901.P14354544335417179583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A007838 n

end

end A351901.P14354544335417179583

/-! ## A351901.P11911494684277273853

`A129177(A000125(n))-A007838(n)`
-/

namespace A351901.P11911494684277273853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A000125 n).toNat - A007838 n

end

end A351901.P11911494684277273853

/-! ## A351901.P11543210160670060750

`A000142(n)-A129177(A180415(n+1))`
-/

namespace A351901.P11543210160670060750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A129177 (A180415 (n + 1)).toNat

end

end A351901.P11543210160670060750

/-! ## A351901.P16214664165430389850

`A000142(n)-A129177(A000125(n)+n)`
-/

namespace A351901.P16214664165430389850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A129177 (A000125 n + (n : ℤ)).toNat

end

end A351901.P16214664165430389850

/-! ## A351901.P17217606017723110875

`A129177(A000125(n))-A129177(A180415(n+1))`
-/

namespace A351901.P17217606017723110875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A000125 n).toNat - A129177 (A180415 (n + 1)).toNat

end

end A351901.P17217606017723110875

/-!
# A351902: Number of ways to write n as w^2 + x^2 + y^2 + z^2 + 3*x*y*z, where w is a positive integer, and x,y,z are nonnegative integers with x <= y <= z.

The programs for A351902, there is no canonical definition to state claims against.
-/

/-! ## A351902.P7766742905220485474

`∑{e}[A285542(n+1)+A105812(n+3)+1, #]`
-/

namespace A351902.P7766742905220485474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285542 (n + 1) + A105812 (n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A351902.P7766742905220485474

/-! ## A351902.P992454160491258027

`A043562(A284610(3*n+1)+A178403(n+1))`
-/

namespace A351902.P992454160491258027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A284610 (3 * n + 1) + A178403 (n + 1)).toNat

end

end A351902.P992454160491258027

/-!
# A351905: Expansion of e.g.f. exp(x * (1 - x^3)).

The programs for A351905, there is no canonical definition to state claims against.
-/

/-! ## A351905.P6809176714294164245

`A190875(n)-A005843(A052762(n))`
-/

namespace A351905.P6809176714294164245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190875 n - A005843 (A052762 n).toNat

end

end A351905.P6809176714294164245

/-! ## A351905.P10102051095495134070

`or(1, A293018(A073790(n)))`
-/

namespace A351905.P10102051095495134070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293018 (A073790 n).toNat)

end

end A351905.P10102051095495134070

/-! ## A351905.P17269412978585130961

`or(1, A293018(A098755(n)))`
-/

namespace A351905.P17269412978585130961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293018 (A098755 n).toNat)

end

end A351905.P17269412978585130961

/-! ## A351905.P1199445691700639368

`or(A287378(n)!, A293018(n))`
-/

namespace A351905.P1199445691700639368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A287378 n).toNat : ℤ) (A293018 n)

end

end A351905.P1199445691700639368

/-! ## A351905.P14099414694495087853

`or(A348810(n)!, A293018(n))`
-/

namespace A351905.P14099414694495087853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A348810 n).toNat : ℤ) (A293018 n)

end

end A351905.P14099414694495087853

/-!
# A351906: Expansion of e.g.f. exp(x * (1 - x^4)).

The programs for A351906, there is no canonical definition to state claims against.
-/

/-! ## A351906.P4258579081487934838

`2-A005408(5*12*C(n, 5))`
-/

namespace A351906.P4258579081487934838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005408 (5 * (12 * Nat.choose n 5))

end

end A351906.P4258579081487934838

/-! ## A351906.P16510284986670514821

`2-A267881(5*12*C(n, 5))`
-/

namespace A351906.P16510284986670514821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267881 (5 * (12 * Nat.choose n 5))

end

end A351906.P16510284986670514821

/-! ## A351906.P12757578623218076177

`A009531(2*6*10*C(n, 5))+1`
-/

namespace A351906.P12757578623218076177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * (6 * (10 * Nat.choose n 5))) + 1

end

end A351906.P12757578623218076177

/-! ## A351906.P14690954015365102926

`1-A245092(2*6*10*C(n, 5))`
-/

namespace A351906.P14690954015365102926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A245092 (2 * (6 * (10 * Nat.choose n 5)))

end

end A351906.P14690954015365102926

/-! ## A351906.P4321809721896490195

`3-A004443(2*6*10*C(n, 5))`
-/

namespace A351906.P4321809721896490195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A004443 (2 * (6 * (10 * Nat.choose n 5)))

end

end A351906.P4321809721896490195

/-!
# A351907: Number of prime quadruples p < q < r < prime(n) in arithmetic progression.

The programs for A351907, there is no canonical definition to state claims against.
-/

/-! ## A351907.P8739186535277510630

`Δ[A351908(C(2, n)+n)]`
-/

namespace A351907.P8739186535277510630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351907.P8739186535277510630

/-! ## A351907.P15570540181539283096

`Δ[A351908(round(acot(n)+n))]`
-/

namespace A351907.P15570540181539283096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351907.P15570540181539283096

/-! ## A351907.P2243477516939390700

`Δ[A351908(n^floor(atan(n)))]`
-/

namespace A351907.P2243477516939390700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351907.P2243477516939390700

/-! ## A351907.P700741398678856825

`Δ[A351908(abs(1-n)+1)]`
-/

namespace A351907.P700741398678856825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351907.P700741398678856825

/-! ## A351907.P16913108609695033876

`abs(Δ[A351908(A028310(n))])`
-/

namespace A351907.P16913108609695033876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A351907.P16913108609695033876

/-! ## A351907.P15943757841029732891

`Δ[A351908(A028310(n))]%A008579(n)`
-/

namespace A351907.P15943757841029732891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A008579 n)

end

end A351907.P15943757841029732891

/-! ## A351907.P437374970355471508

`Δ[A351908(A028310(n))%A016900(n)]`
-/

namespace A351907.P437374970355471508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351908 (A028310 n).toNat) (A016900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351907.P437374970355471508

/-! ## A351907.P5906606990886272859

`A351908(n+1)-A351908(A028310(n))`
-/

namespace A351907.P5906606990886272859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (n + 1) - A351908 (A028310 n).toNat

end

end A351907.P5906606990886272859

/-! ## A351907.P14315341016087765160

`A351908(n+1)-A351908(A000007(n)+n)`
-/

namespace A351907.P14315341016087765160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351908 (n + 1) - A351908 (A000007 n + (n : ℤ)).toNat

end

end A351907.P14315341016087765160

/-!
# A351908: Number of prime quadruples p < q < r < s in arithmetic progression with all members less than or equal to prime(n).

The programs for A351908, there is no canonical definition to state claims against.
-/

/-! ## A351908.P7020023881921244437

`∑[A351907(n+1)]`
-/

namespace A351908.P7020023881921244437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351908.P7020023881921244437

/-! ## A351908.P14968819572168143331

`A351907(n+1)+A094382(A008578(n+1))`
-/

namespace A351908.P14968819572168143331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351907 (n + 1) + A094382 (A008578 (n + 1)).toNat

end

end A351908.P14968819572168143331

/-! ## A351908.P16493835488554244992

`A094382(p?[xor(1, n)])`
-/

namespace A351908.P16493835488554244992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A351908.P16493835488554244992

/-! ## A351908.P18329843577562545557

`A094382(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A351908.P18329843577562545557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A351908.P18329843577562545557

/-! ## A351908.P7401437771173952900

`A094382(A390240(n))`
-/

namespace A351908.P7401437771173952900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (A390240 n).toNat

end

end A351908.P7401437771173952900

/-!
# A351911: a(n) is the least integer m such that every m-element subset of {1,2,3,...,n} contains two nonempty and disjoint subsets whose sums are equal.

The programs for A351911, the canonical program `A351911.P15690135084485346349` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351911 has offset 3).

The definition of A351911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351911.P15690135084485346349

`1+A201052(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351911

/-- `1+A201052(n+3)` -/
def P15690135084485346349.Spec : Prop :=
  ∀ n, P15690135084485346349.a n = A351911 (n + 3)

theorem P15690135084485346349.correct : P15690135084485346349.Spec := by
  intro n
  simp only [A351911, Nat.add_sub_cancel]

end A351911

/-! ## A351911.P3754739230325175291

`A327008(A037259(n+1))`
-/

namespace A351911.P3754739230325175291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327008 (A037259 (n + 1)).toNat

end

end A351911.P3754739230325175291

namespace A351911

/-- `A327008(A037259(n+1))` -/
def P3754739230325175291.Spec : Prop :=
  ∀ n, P3754739230325175291.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P13134144295786378844

`A081604(A105170(n+1)+A002378(n+2))`
-/

namespace A351911.P13134144295786378844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A105170 (n + 1) + A002378 (n + 2)).toNat

end

end A351911.P13134144295786378844

namespace A351911

/-- `A081604(A105170(n+1)+A002378(n+2))` -/
def P13134144295786378844.Spec : Prop :=
  ∀ n, P13134144295786378844.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P11856422843386509166

`A072643(A183136(n+5)+A072645(2*n+1))`
-/

namespace A351911.P11856422843386509166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A183136 (n + 5) + A072645 (2 * n + 1)).toNat

end

end A351911.P11856422843386509166

namespace A351911

/-- `A072643(A183136(n+5)+A072645(2*n+1))` -/
def P11856422843386509166.Spec : Prop :=
  ∀ n, P11856422843386509166.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P2776990686031516946

`A070939(A335465(n)+A001358(n+1))`
-/

namespace A351911.P2776990686031516946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A335465 n + A001358 (n + 1)).toNat

end

end A351911.P2776990686031516946

namespace A351911

/-- `A070939(A335465(n)+A001358(n+1))` -/
def P2776990686031516946.Spec : Prop :=
  ∀ n, P2776990686031516946.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P428941105467113040

`A070939(A389197(n+1))%A376598(n+1)`
-/

namespace A351911.P428941105467113040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A389197 (n + 1)).toNat) (A376598 (n + 1))

end

end A351911.P428941105467113040

namespace A351911

/-- `A070939(A389197(n+1))%A376598(n+1)` -/
def P428941105467113040.Spec : Prop :=
  ∀ n, P428941105467113040.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P14439871748716014458

`A070939(A325044(n+3)+A159615(n+1))`
-/

namespace A351911.P14439871748716014458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A325044 (n + 3) + A159615 (n + 1)).toNat

end

end A351911.P14439871748716014458

namespace A351911

/-- `A070939(A325044(n+3)+A159615(n+1))` -/
def P14439871748716014458.Spec : Prop :=
  ∀ n, P14439871748716014458.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P13232774682652689205

`A070939(A333943(n+1)+A328594(n+5))`
-/

namespace A351911.P13232774682652689205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A333943 (n + 1) + A328594 (n + 5)).toNat

end

end A351911.P13232774682652689205

namespace A351911

/-- `A070939(A333943(n+1)+A328594(n+5))` -/
def P13232774682652689205.Spec : Prop :=
  ∀ n, P13232774682652689205.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P2050552153486028290

`A070939(A334967(n+3)+A091242(n+2))`
-/

namespace A351911.P2050552153486028290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A334967 (n + 3) + A091242 (n + 2)).toNat

end

end A351911.P2050552153486028290

namespace A351911

/-- `A070939(A334967(n+3)+A091242(n+2))` -/
def P2050552153486028290.Spec : Prop :=
  ∀ n, P2050552153486028290.a n = A351911 (n + 3)

end A351911

/-! ## A351911.P15573616365239664290

`ceil(log2(A363464(n+1)))`
-/

namespace A351911.P15573616365239664290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A363464 (n + 1) : ℝ)⌉

end

end A351911.P15573616365239664290

namespace A351911

/-- `ceil(log2(A363464(n+1)))` -/
def P15573616365239664290.Spec : Prop :=
  ∀ n, P15573616365239664290.a n = A351911 (n + 3)

end A351911

/-!
# A351912: Period of binary representation of 1/n, or 0 if 1/n terminates.

The programs for A351912, there is no canonical definition to state claims against.
-/

/-! ## A351912.P7931647271012741178

`ceil(sqrt(A007733(n+1)²-1))`
-/

namespace A351912.P7931647271012741178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A007733 (n + 1) ^ 2 - 1 : ℝ)⌉

end

end A351912.P7931647271012741178

/-! ## A351912.P3952866478754745417

`round(sqrt(A066799(∑[n+2])²-1))`
-/

namespace A351912.P3952866478754745417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A066799 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1 : ℝ))

end

end A351912.P3952866478754745417

/-! ## A351912.P12015132252583946294

`round(sqrt(A007733(2*(n+1))²-1))`
-/

namespace A351912.P12015132252583946294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007733 (2 * (n + 1)) ^ 2 - 1 : ℝ))

end

end A351912.P12015132252583946294

/-! ## A351912.P7091022074663611543

`A024222((n+1)/2^val(n+1, 2))`
-/

namespace A351912.P7091022074663611543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A351912.P7091022074663611543

/-! ## A351912.P8579854111758744672

`ceil(sqrt(2*C(A007733(2*n+2), 2)))`
-/

namespace A351912.P8579854111758744672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * Nat.choose (A007733 (2 * n + 2)).toNat 2 : ℝ)⌉

end

end A351912.P8579854111758744672

/-! ## A351912.P7828508125400336430

`A024222((n+1)/(or(n, n+1)-n))`
-/

namespace A351912.P7828508125400336430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A351912.P7828508125400336430

/-! ## A351912.P14357656679918866809

`A024222((n+1)/xor(n, or(n, n+1)))`
-/

namespace A351912.P14357656679918866809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A351912.P14357656679918866809

/-! ## A351912.P7849576560178127515

`A024222((n+1)*2^-val(n+1, 2))`
-/

namespace A351912.P7849576560178127515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A351912.P7849576560178127515

/-! ## A351912.P13225951626703144062

`A024222((n+1)/and(n+1, -(n+1)))`
-/

namespace A351912.P13225951626703144062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A351912.P13225951626703144062

/-! ## A351912.P17612550570172858637

`A024222((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A351912.P17612550570172858637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A351912.P17612550570172858637

/-!
# A351915: Number of polynomials of degree n over GF(2) in which the degrees of all distinct irreducible factors are distinct.

The programs for A351915, there is no canonical definition to state claims against.
-/

/-! ## A351915.P15129569961372102038

`A383471(n)+A333768(A335472(n))`
-/

namespace A351915.P15129569961372102038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383471 n + A333768 (A335472 n).toNat

end

end A351915.P15129569961372102038

/-! ## A351915.P17473197906103679881

`A218867(A005384(n+1))+A008618(A168596(n))`
-/

namespace A351915.P17473197906103679881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218867 (A005384 (n + 1)).toNat + A008618 (A168596 n).toNat

end

end A351915.P17473197906103679881

/-! ## A351915.P18135379381863941798

`A080595(A176962(n))`
-/

namespace A351915.P18135379381863941798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A176962 n).toNat

end

end A351915.P18135379381863941798

/-! ## A351915.P17329484004879216638

`A172471(A360168(n))`
-/

namespace A351915.P17329484004879216638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A360168 n).toNat

end

end A351915.P17329484004879216638

/-! ## A351915.P12572150358184658379

`A177849(A250605(n+1))`
-/

namespace A351915.P12572150358184658379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A250605 (n + 1)).toNat

end

end A351915.P12572150358184658379

/-!
# A351916: a(1) = a(2) = 1; for n >= 2, a(n+1) = (a(n)^7 + 1)/a(n-1).

The programs for A351916, there is no canonical definition to state claims against.
-/

/-! ## A351916.P15906018192729167385

`(a(n-1)^7+1)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A351916.P15906018192729167385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) ^ 7 + 1) / a (n - 2)

end

end A351916.P15906018192729167385

/-!
# A351917: G.f. A(x) = lim_{n->infinity} F(n), where F(0) = 1, F(n) = ( F(n-1)^n + (n*x)^n )^(1/n) for n = 1,2,3,...

The programs for A351917, there is no canonical definition to state claims against.
-/

/-! ## A351917.P14648697231068621544

`A296357(2*A185183(n))`
-/

namespace A351917.P14648697231068621544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (2 * A185183 n).toNat

end

end A351917.P14648697231068621544

/-! ## A351917.P13916196998534123647

`A008620(round(sqrt(A357479(2*n))))`
-/

namespace A351917.P13916196998534123647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.roundAway (Real.sqrt (A357479 (2 * n) : ℝ))).toNat

end

end A351917.P13916196998534123647

/-!
# A351918: G.f. A(x) satisfies: [x^n] (1 + n*x - A(x))^(2*n+1) = 0, for n > 0.

The programs for A351918, there is no canonical definition to state claims against.
-/

/-! ## A351918.P13719843590129126580

`A114871(A145112(∑[n]))`
-/

namespace A351918.P13719843590129126580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (A145112 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351918.P13719843590129126580

/-!
# A351919: E.g.f. A(x) satisfies: Sum_{k=0..n} [x^k/k!] 1/A(x)^(n+1-k) = 0 for n > 0.

The programs for A351919, there is no canonical definition to state claims against.
-/

/-! ## A351919.P17679714981470917246

`A008617(A000111(n)*(3*n+4))`
-/

namespace A351919.P17679714981470917246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A000111 n * (3 * n + 4 : ℤ)).toNat

end

end A351919.P17679714981470917246

/-! ## A351919.P7502577931981594491

`A008617(abs(A346838(n))*(3*n+4))`
-/

namespace A351919.P7502577931981594491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (|A346838 n| * (3 * n + 4 : ℤ)).toNat

end

end A351919.P7502577931981594491

/-! ## A351919.P7202883727586528395

`A008617((3*n+4)*A109449(∑[n]))`
-/

namespace A351919.P7202883727586528395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 ((3 * n + 4 : ℤ) * A109449 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351919.P7202883727586528395

/-!
# A351920: E.g.f. A(x) satisfies: A(x/A(x)) = A(x) / (A(x) - x*A(x)').

The programs for A351920, there is no canonical definition to state claims against.
-/

/-! ## A351920.P12717424935172781674

`xor(-a(and(n, n-1)), A319759(2*(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A351920.P12717424935172781674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (-a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (A319759 (2 * (n + 1)))

end

end A351920.P12717424935172781674

/-!
# A351923: Number of ordered pairs of positive integers (s,t), s,t <= n, such that (s^t) | n.

The programs for A351923, the canonical program `A351923.P5900735276508586646` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351923 has offset 1).

The definition of A351923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309891, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351923.P5900735276508586646

`A309891(n+1)+n+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A351923

/-- `A309891(n+1)+n+1` -/
def P5900735276508586646.Spec : Prop :=
  ∀ n, P5900735276508586646.a n = A351923 (n + 1)

theorem P5900735276508586646.correct : P5900735276508586646.Spec := by
  intro n
  simp only [A351923, Nat.add_sub_cancel]

end A351923

/-! ## A351923.P13020849238606761705

`A169594(n+1)+n`
-/

namespace A351923.P13020849238606761705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (n + 1) + (n : ℤ)

end

end A351923.P13020849238606761705

namespace A351923

/-- `A169594(n+1)+n` -/
def P13020849238606761705.Spec : Prop :=
  ∀ n, P13020849238606761705.a n = A351923 (n + 1)

theorem P13020849238606761705.correct : P13020849238606761705.Spec := by
  intro n
  simp only [A351923, Nat.add_sub_cancel, A351923.P13020849238606761705.a, A351923.P5900735276508586646.a, A169594, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A309891, A309891.P3186262545884816110.a, A089723, A089723.P9953764260173719197.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351923

/-! ## A351923.P10265319163325696951

`∑{d}[n+1, A089723(#)]+n`
-/

namespace A351923.P10265319163325696951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089723 d + (n : ℤ)

end

end A351923.P10265319163325696951

namespace A351923

/-- `∑{d}[n+1, A089723(#)]+n` -/
def P10265319163325696951.Spec : Prop :=
  ∀ n, P10265319163325696951.a n = A351923 (n + 1)

theorem P10265319163325696951.correct : P10265319163325696951.Spec := by
  intro n
  simp only [A351923, Nat.add_sub_cancel, A351923.P10265319163325696951.f1, A351923.P10265319163325696951.a, A351923.P5900735276508586646.a, A089723, A089723.P9953764260173719197.a, A309891, A309891.P3186262545884816110.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A169594, A169594.P8490939100282389348.f1, A169594.P8490939100282389348.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351923

/-! ## A351923.P4082624524934974649

`A342929(A101296(n+1))+n`
-/

namespace A351923.P4082624524934974649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342929 (A101296 (n + 1)).toNat + (n : ℤ)

end

end A351923.P4082624524934974649

namespace A351923

/-- `A342929(A101296(n+1))+n` -/
def P4082624524934974649.Spec : Prop :=
  ∀ n, P4082624524934974649.a n = A351923 (n + 1)

end A351923

/-! ## A351923.P17353449969696350027

`∑{d}[n+1, A000005(A253641(#))]+n`
-/

namespace A351923.P17353449969696350027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (A253641 d).toNat + (n : ℤ)

end

end A351923.P17353449969696350027

namespace A351923

/-- `∑{d}[n+1, A000005(A253641(#))]+n` -/
def P17353449969696350027.Spec : Prop :=
  ∀ n, P17353449969696350027.a n = A351923 (n + 1)

end A351923

/-! ## A351923.P12184718523361196542

`A334739(A087560(n+1))+1+n`
-/

namespace A351923.P12184718523361196542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334739 (A087560 (n + 1)).toNat + 1 + (n : ℤ)

end

end A351923.P12184718523361196542

namespace A351923

/-- `A334739(A087560(n+1))+1+n` -/
def P12184718523361196542.Spec : Prop :=
  ∀ n, P12184718523361196542.a n = A351923 (n + 1)

end A351923

/-! ## A351923.P7214130015386936061

`A056239(A293514(n+1))+1+n`
-/

namespace A351923.P7214130015386936061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A293514 (n + 1)).toNat + 1 + (n : ℤ)

end

end A351923.P7214130015386936061

namespace A351923

/-- `A056239(A293514(n+1))+1+n` -/
def P7214130015386936061.Spec : Prop :=
  ∀ n, P7214130015386936061.a n = A351923 (n + 1)

end A351923

/-!
# A351924: The number of vertices on a diagonal of a regular 2n-gon when all its vertices are connected by lines and where the diagonal passes through the center of the 2n-gon.

The programs for A351924, there is no canonical definition to state claims against.
-/

/-! ## A351924.P4495928600034885688

`lt[A087133(A087135(n+2)), A087165(2*n+5)]`
-/

namespace A351924.P4495928600034885688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (A087135 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087165 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351924.P4495928600034885688

/-! ## A351924.P13637457563564355987

`A089401(∪[A339036(2*(n+2)), A002244(3*(n+1))])`
-/

namespace A351924.P13637457563564355987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339036 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002244 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A351924.P13637457563564355987

/-! ## A351924.P11810329689597457927

`A162294(n+1)-gcd(A079356(n+2), A353430(2*n+3))`
-/

namespace A351924.P11810329689597457927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162294 (n + 1) - (Int.gcd (A079356 (n + 2)) (A353430 (2 * n + 3)) : ℤ)

end

end A351924.P11810329689597457927

/-!
# A351925: Squares which are the concatenation of two primes.

The programs for A351925, there is no canonical definition to state claims against.
-/

/-! ## A351925.P14558362618437497312

`∩[A121609(n+1), n²]`
-/

namespace A351925.P14558362618437497312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A351925.P14558362618437497312

/-! ## A351925.P8680754912875109522

`∩[A225135(n+1), A121609(n+1)]`
-/

namespace A351925.P8680754912875109522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351925.P8680754912875109522

/-! ## A351925.P11086480414081949407

`∩[A106582(n+1), n²]`
-/

namespace A351925.P11086480414081949407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A351925.P11086480414081949407

/-! ## A351925.P3099629995925695810

`∩[A000290(n), A106582(n+1)]`
-/

namespace A351925.P3099629995925695810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351925.P3099629995925695810

/-! ## A351925.P14940039173254988309

`∩[A225135(n+1), A106582(n+1)]`
-/

namespace A351925.P14940039173254988309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351925.P14940039173254988309

/-!
# A351926: a(n) = Sum_{d|n, p|n, (p^d)|n, p prime} p.

The programs for A351926, there is no canonical definition to state claims against.
-/

/-! ## A351926.P5257834933669119303

`A087960((n+1)*Δ[n^3])+∑{p}[n+1, #]+1`
-/

namespace A351926.P5257834933669119303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + ((∑ p ∈ Nat.primeFactors (f2 n), p + 1 : ℕ) : ℤ)

end

end A351926.P5257834933669119303

/-! ## A351926.P2801247867450382226

`A345310(n+1)%A187550(n+1)`
-/

namespace A351926.P2801247867450382226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345310 (n + 1)) (A187550 (n + 1 + 65))

end

end A351926.P2801247867450382226

/-! ## A351926.P11100351578697933524

`A010673(A134171(n+1))+∑{p}[n+1, #]`
-/

namespace A351926.P11100351578697933524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A134171 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A351926.P11100351578697933524

/-! ## A351926.P16866707657382617511

`∑{p}[n+1, #*val(n+1, #)]-A078771(A187829(n+1))`
-/

namespace A351926.P16866707657382617511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - A078771 (A187829 (n + 1)).toNat

end

end A351926.P16866707657382617511

/-! ## A351926.P4920538966725014085

`A345303(n+1)/A046643(A046630(n))`
-/

namespace A351926.P4920538966725014085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345303 (n + 1) : ℚ) / (A046643 (A046630 n).toNat : ℚ)

end

end A351926.P4920538966725014085

/-!
# A351929: Expansion of e.g.f. exp(x - x^3/6).

The programs for A351929, the canonical program `A351929.P14404470183204653642` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351929 has offset 0).

The definition of A351929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351929.P14404470183204653642

`a(n-1)-C(n-1, 2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A351929

/-- `a(n-1)-C(n-1, 2)*a(n-3)` -/
def P14404470183204653642.Spec : Prop :=
  ∀ n, P14404470183204653642.a n = A351929 n

theorem P14404470183204653642.correct : P14404470183204653642.Spec := by
  intro n
  simp only [A351929]

end A351929

/-! ## A351929.P11030339556394335963

`A362302(∑[n+2]-1)`
-/

namespace A351929.P11030339556394335963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A351929.P11030339556394335963

namespace A351929

/-- `A362302(∑[n+2]-1)` -/
def P11030339556394335963.Spec : Prop :=
  ∀ n, P11030339556394335963.a n = A351929 n

end A351929

/-! ## A351929.P3852573392121931675

`A362302(A034856(n+1))+C(A055642(n), 5)`
-/

namespace A351929.P3852573392121931675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A034856 (n + 1)).toNat + (Nat.choose (A055642 n).toNat 5 : ℤ)

end

end A351929.P3852573392121931675

namespace A351929

/-- `A362302(A034856(n+1))+C(A055642(n), 5)` -/
def P3852573392121931675.Spec : Prop :=
  ∀ n, P3852573392121931675.a n = A351929 n

end A351929

/-! ## A351929.P6762643644620720300

`A362302(A034856(n+1))+A000035(2*(n+2))`
-/

namespace A351929.P6762643644620720300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A034856 (n + 1)).toNat + A000035 (2 * (n + 2))

end

end A351929.P6762643644620720300

namespace A351929

/-- `A362302(A034856(n+1))+A000035(2*(n+2))` -/
def P6762643644620720300.Spec : Prop :=
  ∀ n, P6762643644620720300.a n = A351929 n

end A351929

/-! ## A351929.P1313161522291917658

`A362302(A034856(n+1))/(2-A006519(2*n+5))`
-/

namespace A351929.P1313161522291917658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362302 (A034856 (n + 1)).toNat : ℚ) / (2 - A006519 (2 * n + 5) : ℚ)

end

end A351929.P1313161522291917658

namespace A351929

/-- `A362302(A034856(n+1))/(2-A006519(2*n+5))` -/
def P1313161522291917658.Spec : Prop :=
  ∀ n, P1313161522291917658.a n = (A351929 n : ℚ)

end A351929

/-! ## A351929.P11826142733726434742

`A362302(A034856(n+1))+A280639(A322351(n+1))`
-/

namespace A351929.P11826142733726434742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A034856 (n + 1)).toNat + A280639 (A322351 (n + 1)).toNat

end

end A351929.P11826142733726434742

namespace A351929

/-- `A362302(A034856(n+1))+A280639(A322351(n+1))` -/
def P11826142733726434742.Spec : Prop :=
  ∀ n, P11826142733726434742.a n = A351929 n

end A351929

/-! ## A351929.P12316716980881146693

`A362302(A034856(n+1))%(2*A357154(n))`
-/

namespace A351929.P12316716980881146693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362302 (A034856 (n + 1)).toNat) (2 * A357154 n)

end

end A351929.P12316716980881146693

namespace A351929

/-- `A362302(A034856(n+1))%(2*A357154(n))` -/
def P12316716980881146693.Spec : Prop :=
  ∀ n, P12316716980881146693.a n = A351929 n

end A351929

/-!
# A351930: Expansion of e.g.f. exp(x - x^4/24).

The programs for A351930, the canonical program `A351930.P8490410005937881530` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351930 has offset 0).

The definition of A351930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351930.P8490410005937881530

`a(n-1)-C(n-1, 3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A351930

/-- `a(n-1)-C(n-1, 3)*a(n-4)` -/
def P8490410005937881530.Spec : Prop :=
  ∀ n, P8490410005937881530.a n = A351930 n

theorem P8490410005937881530.correct : P8490410005937881530.Spec := by
  intro n
  simp only [A351930]

end A351930

/-! ## A351930.P5642786989046921825

`1-C(n, 4)/A344651(C(n, 4))`
-/

namespace A351930.P5642786989046921825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 4 : ℚ) / (A344651 (Nat.choose n 4) : ℚ)

end

end A351930.P5642786989046921825

namespace A351930

/-- `1-C(n, 4)/A344651(C(n, 4))` -/
def P5642786989046921825.Spec : Prop :=
  ∀ n, P5642786989046921825.a n = (A351930 n : ℚ)

end A351930

/-! ## A351930.P5519594602595029725

`1-C(floor(log2(A323357(2*(n+1)))), 4)`
-/

namespace A351930.P5519594602595029725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (Nat.log 2 (A323357 (2 * (n + 1))).toNat) 4 : ℤ)

end

end A351930.P5519594602595029725

namespace A351930

/-- `1-C(floor(log2(A323357(2*(n+1)))), 4)` -/
def P5519594602595029725.Spec : Prop :=
  ∀ n, P5519594602595029725.a n = A351930 n

end A351930

/-! ## A351930.P14641728683212136085

`1-A346752(A073790(n))`
-/

namespace A351930.P14641728683212136085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346752 (A073790 n).toNat

end

end A351930.P14641728683212136085

namespace A351930

/-- `1-A346752(A073790(n))` -/
def P14641728683212136085.Spec : Prop :=
  ∀ n, P14641728683212136085.a n = A351930 n

end A351930

/-! ## A351930.P13770567039171112470

`1-A346752(A098755(n))`
-/

namespace A351930.P13770567039171112470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A346752 (A098755 n).toNat

end

end A351930.P13770567039171112470

namespace A351930

/-- `1-A346752(A098755(n))` -/
def P13770567039171112470.Spec : Prop :=
  ∀ n, P13770567039171112470.a n = A351930 n

end A351930

/-!
# A351931: Expansion of e.g.f. exp(x - x^5/120).

The programs for A351931, the canonical program `A351931.P4581366867110578014` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351931 has offset 0).

The definition of A351931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351931.P4581366867110578014

`a(n-1)-C(n-1, 4)*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A351931

/-- `a(n-1)-C(n-1, 4)*a(n-5)` -/
def P4581366867110578014.Spec : Prop :=
  ∀ n, P4581366867110578014.a n = A351931 n

theorem P4581366867110578014.correct : P4581366867110578014.Spec := by
  intro n
  simp only [A351931]

end A351931

/-! ## A351931.P6226255373961249242

`A289306(n-A059995(A062399(n)))`
-/

namespace A351931.P6226255373961249242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289306 ((n : ℤ) - A059995 (A062399 n).toNat).toNat

end

end A351931.P6226255373961249242

namespace A351931

/-- `A289306(n-A059995(A062399(n)))` -/
def P6226255373961249242.Spec : Prop :=
  ∀ n, P6226255373961249242.a n = A351931 n

end A351931

/-! ## A351931.P7312385080584840196

`A289306(A062399(n))/A063014(n)`
-/

namespace A351931.P7312385080584840196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289306 (A062399 n).toNat : ℚ) / (A063014 n : ℚ)

end

end A351931.P7312385080584840196

namespace A351931

/-- `A289306(A062399(n))/A063014(n)` -/
def P7312385080584840196.Spec : Prop :=
  ∀ n, P7312385080584840196.a n = (A351931 n : ℚ)

end A351931

/-! ## A351931.P1535008627893620591

`A289306(A062399(n))/A348290(n)`
-/

namespace A351931.P1535008627893620591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289306 (A062399 n).toNat : ℚ) / (A348290 n : ℚ)

end

end A351931.P1535008627893620591

namespace A351931

/-- `A289306(A062399(n))/A348290(n)` -/
def P1535008627893620591.Spec : Prop :=
  ∀ n, P1535008627893620591.a n = (A351931 n : ℚ)

end A351931

/-! ## A351931.P12374804539880787292

`A289306(n)/A307668(A143573(n))`
-/

namespace A351931.P12374804539880787292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289306 n : ℚ) / (A307668 (A143573 n).toNat : ℚ)

end

end A351931.P12374804539880787292

namespace A351931

/-- `A289306(n)/A307668(A143573(n))` -/
def P12374804539880787292.Spec : Prop :=
  ∀ n, P12374804539880787292.a n = (A351931 n : ℚ)

end A351931

/-!
# A351932: Number of set partitions of [n] such that block sizes are either 1 or 4.

The programs for A351932, the canonical program `A351932.P13334305106192349873` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351932 has offset 0).

The definition of A351932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351932.P13334305106192349873

`a(n-1)+C(n-1, 3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A351932

/-- `a(n-1)+C(n-1, 3)*a(n-4)` -/
def P13334305106192349873.Spec : Prop :=
  ∀ n, (P13334305106192349873.a n : ℤ) = A351932 n

theorem P13334305106192349873.correct : P13334305106192349873.Spec := by
  intro n
  simp only [A351932]

end A351932

/-! ## A351932.P5120618719535538194

`A038572(∑{d}[70*C(n, 8)+2*C(n, 4)+1, #])`
-/

namespace A351932.P5120618719535538194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A351932.P5120618719535538194

namespace A351932

/-- `A038572(∑{d}[70*C(n, 8)+2*C(n, 4)+1, #])` -/
def P5120618719535538194.Spec : Prop :=
  ∀ n, P5120618719535538194.a n = A351932 n

end A351932

/-! ## A351932.P2906852858920534989

`A000217(70*C(n, 8)+2*C(n, 4)+1)/(70*C(n, 8)+2*C(n, 4)+1)`
-/

namespace A351932.P2906852858920534989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1) : ℚ) / (70 * Nat.choose n 8 + 2 * Nat.choose n 4 + 1 : ℚ)

end

end A351932.P2906852858920534989

namespace A351932

/-- `A000217(70*C(n, 8)+2*C(n, 4)+1)/(70*C(n, 8)+2*C(n, 4)+1)` -/
def P2906852858920534989.Spec : Prop :=
  ∀ n, P2906852858920534989.a n = (A351932 n : ℚ)

end A351932

/-! ## A351932.P11739399707588782049

`A145392(A341705(n))`
-/

namespace A351932.P11739399707588782049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145392 (A341705 n).toNat

end

end A351932.P11739399707588782049

namespace A351932

/-- `A145392(A341705(n))` -/
def P11739399707588782049.Spec : Prop :=
  ∀ n, P11739399707588782049.a n = A351932 n

end A351932

/-! ## A351932.P7838124716749286843

`A126760(A000704(n)+1)`
-/

namespace A351932.P7838124716749286843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A000704 n + 1).toNat

end

end A351932.P7838124716749286843

namespace A351932

/-- `A126760(A000704(n)+1)` -/
def P7838124716749286843.Spec : Prop :=
  ∀ n, P7838124716749286843.a n = A351932 n

end A351932

/-!
# A351933: Expansion of e.g.f. exp(x / (1 - x^2/2)).

The programs for A351933, there is no canonical definition to state claims against.
-/

/-! ## A351933.P10470222846958051685

`A081753(A088688(n)²)`
-/

namespace A351933.P10470222846958051685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A088688 n ^ 2).toNat

end

end A351933.P10470222846958051685

/-! ## A351933.P13357756250584082345

`A110658(3*A107595(n))`
-/

namespace A351933.P13357756250584082345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (3 * A107595 n).toNat

end

end A351933.P13357756250584082345

/-! ## A351933.P5796438715255750109

`A278984(n+1)+A111858(A006965(n+1))`
-/

namespace A351933.P5796438715255750109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) + A111858 (A006965 (n + 1)).toNat

end

end A351933.P5796438715255750109

/-!
# A351934: Expansion of e.g.f. exp(x / (1 - x^3/6)).

The programs for A351934, there is no canonical definition to state claims against.
-/

/-! ## A351934.P8109804493389000426

`∏{p}[A356328(n)², #]`
-/

namespace A351934.P8109804493389000426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356328 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A351934.P8109804493389000426

/-! ## A351934.P11641206634357819831

`lcm(n, A217657(n!))+1`
-/

namespace A351934.P11641206634357819831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A217657 (Nat.factorial n)) + 1

end

end A351934.P11641206634357819831

/-! ## A351934.P8986266826519077054

`A007947(A356328(n)²)`
-/

namespace A351934.P8986266826519077054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A356328 n ^ 2).toNat

end

end A351934.P8986266826519077054

/-! ## A351934.P12715378064190268779

`A356328(A004891(n+1))`
-/

namespace A351934.P12715378064190268779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356328 (A004891 (n + 1)).toNat

end

end A351934.P12715378064190268779

/-!
# A351935: Expansion of e.g.f. exp(x / (1 - x^4/24)).

The programs for A351935, there is no canonical definition to state claims against.
-/

/-! ## A351935.P17349464480643058226

`A000026(A356608(n))`
-/

namespace A351935.P17349464480643058226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A356608 n).toNat

end

end A351935.P17349464480643058226

/-! ## A351935.P6791172346092186856

`A356608(A002998(n))`
-/

namespace A351935.P6791172346092186856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356608 (A002998 n).toNat

end

end A351935.P6791172346092186856

/-! ## A351935.P4489232795778044444

`A356608(A039723(n))`
-/

namespace A351935.P4489232795778044444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356608 (A039723 n).toNat

end

end A351935.P4489232795778044444

/-! ## A351935.P780273928169306269

`A023443(A356608(n)+1)`
-/

namespace A351935.P780273928169306269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A356608 n + 1).toNat

end

end A351935.P780273928169306269

/-! ## A351935.P15882425738256605602

`A356608(A087995(n+1))`
-/

namespace A351935.P15882425738256605602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356608 (A087995 (n + 1)).toNat

end

end A351935.P15882425738256605602

/-!
# A351936: Expansion of e.g.f. exp(x / (1 - x^5/5!)).

The programs for A351936, there is no canonical definition to state claims against.
-/

/-! ## A351936.P17711822523870906312

`A008621(24*C(n, 6))`
-/

namespace A351936.P17711822523870906312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (24 * Nat.choose n 6)

end

end A351936.P17711822523870906312

/-! ## A351936.P12642625377438062864

`A008624(24*C(n, 6))`
-/

namespace A351936.P12642625377438062864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (24 * Nat.choose n 6)

end

end A351936.P12642625377438062864

/-! ## A351936.P11465821327219901595

`A110659(24*C(n, 6))`
-/

namespace A351936.P11465821327219901595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (24 * Nat.choose n 6)

end

end A351936.P11465821327219901595

/-! ## A351936.P12406294141317910955

`A143569(A055649(n))`
-/

namespace A351936.P12406294141317910955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143569 (A055649 n).toNat

end

end A351936.P12406294141317910955

/-! ## A351936.P6942936931446169087

`A143569(A061378(n))`
-/

namespace A351936.P6942936931446169087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143569 (A061378 n).toNat

end

end A351936.P6942936931446169087

/-!
# A351938: a(0) = 1; a(n) = -a(n-1) + 2 * Sum_{k=0..floor((n-1)/2)} a(k) * a(n-2*k-1).

The programs for A351938, there is no canonical definition to state claims against.
-/

/-! ## A351938.P193836733176230047

`or(1, A000006(A148082(n)))`
-/

namespace A351938.P193836733176230047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000006 (A148082 n).toNat)

end

end A351938.P193836733176230047

/-! ## A351938.P1354587909303309665

`or(1, A033182(A304218(n+1)))`
-/

namespace A351938.P1354587909303309665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033182 (A304218 (n + 1)).toNat)

end

end A351938.P1354587909303309665

/-! ## A351938.P7193553892766656451

`or(A001221(A089981(n+1)), A251705(n+1))`
-/

namespace A351938.P7193553892766656451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A089981 (n + 1)).toNat) (A251705 (n + 1))

end

end A351938.P7193553892766656451

/-!
# A351940: a(n) is the number of partitions of the set {1,2,...,n} into lists having a prime number of elements.

The programs for A351940, there is no canonical definition to state claims against.
-/

/-! ## A351940.P1601504945412079173

`A000002(A002293(n))*A376512(n)`
-/

namespace A351940.P1601504945412079173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A002293 n).toNat * A376512 n

end

end A351940.P1601504945412079173

/-! ## A351940.P7555644211417296928

`A274879(n)*A274881(A287542(n))`
-/

namespace A351940.P7555644211417296928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274879 n * A274881 (A287542 n).toNat

end

end A351940.P7555644211417296928

/-! ## A351940.P2878391989317916892

`A340654(A120971(n))*A376512(n)`
-/

namespace A351940.P2878391989317916892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (A120971 n).toNat * A376512 n

end

end A351940.P2878391989317916892

/-!
# A351942: Arithmetic derivative of A181819(n), where A181819(n) = Product prime(e(i)) when n = Product prime(i)^e(i).

The programs for A351942, the canonical program `A351942.P16038131348684486371` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351942 has offset 1).

The definition of A351942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351942.P16038131348684486371

`A003415(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351942

/-- `A003415(A181819(n+1))` -/
def P16038131348684486371.Spec : Prop :=
  ∀ n, P16038131348684486371.a n = A351942 (n + 1)

theorem P16038131348684486371.correct : P16038131348684486371.Spec := by
  intro n
  simp only [A351942, Nat.add_sub_cancel]

end A351942

/-! ## A351942.P754905703474599100

`A351944(n+1)*A351945(n+1)`
-/

namespace A351942.P754905703474599100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (n + 1) * A351945 (n + 1)

end

end A351942.P754905703474599100

namespace A351942

/-- `A351944(n+1)*A351945(n+1)` -/
def P754905703474599100.Spec : Prop :=
  ∀ n, P754905703474599100.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P14592052814895509269

`A319703(2*A181819(n+1))`
-/

namespace A351942.P14592052814895509269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A181819 (n + 1)).toNat

end

end A351942.P14592052814895509269

namespace A351942

/-- `A319703(2*A181819(n+1))` -/
def P14592052814895509269.Spec : Prop :=
  ∀ n, P14592052814895509269.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P6166516139193003213

`A003415(∏{e}[n+1, A000040(#)])`
-/

namespace A351942.P6166516139193003213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A351942.P6166516139193003213

namespace A351942

/-- `A003415(∏{e}[n+1, A000040(#)])` -/
def P6166516139193003213.Spec : Prop :=
  ∀ n, P6166516139193003213.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P12486732965840184355

`A003557(A181819(n+1))*A351945(n+1)`
-/

namespace A351942.P12486732965840184355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A181819 (n + 1)).toNat * A351945 (n + 1)

end

end A351942.P12486732965840184355

namespace A351942

/-- `A003557(A181819(n+1))*A351945(n+1)` -/
def P12486732965840184355.Spec : Prop :=
  ∀ n, P12486732965840184355.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P7980395824538534353

`A342001(A181819(n+1))*A351944(n+1)`
-/

namespace A351942.P7980395824538534353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A181819 (n + 1)).toNat * A351944 (n + 1)

end

end A351942.P7980395824538534353

namespace A351942

/-- `A342001(A181819(n+1))*A351944(n+1)` -/
def P7980395824538534353.Spec : Prop :=
  ∀ n, P7980395824538534353.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P7699674664006456878

`A181819(n+1)/A329601(n+1)*A351945(n+1)`
-/

namespace A351942.P7699674664006456878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A329601 (n + 1) : ℚ) * (A351945 (n + 1) : ℚ)

end

end A351942.P7699674664006456878

namespace A351942

/-- `A181819(n+1)/A329601(n+1)*A351945(n+1)` -/
def P7699674664006456878.Spec : Prop :=
  ∀ n, P7699674664006456878.a n = (A351942 (n + 1) : ℚ)

end A351942

/-! ## A351942.P15090746701373999002

`A342001(A329601(n+1)*A351944(n+1))*A351944(n+1)`
-/

namespace A351942.P15090746701373999002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A329601 (n + 1) * A351944 (n + 1)).toNat * A351944 (n + 1)

end

end A351942.P15090746701373999002

namespace A351942

/-- `A342001(A329601(n+1)*A351944(n+1))*A351944(n+1)` -/
def P15090746701373999002.Spec : Prop :=
  ∀ n, P15090746701373999002.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P10216094144693367112

`A329033(A238745(n+1))`
-/

namespace A351942.P10216094144693367112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (A238745 (n + 1)).toNat

end

end A351942.P10216094144693367112

namespace A351942

/-- `A329033(A238745(n+1))` -/
def P10216094144693367112.Spec : Prop :=
  ∀ n, P10216094144693367112.a n = A351942 (n + 1)

end A351942

/-! ## A351942.P7124993337699910720

`A003415(A353510(∑[n+2]))`
-/

namespace A351942.P7124993337699910720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A353510 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351942.P7124993337699910720

namespace A351942

/-- `A003415(A353510(∑[n+2]))` -/
def P7124993337699910720.Spec : Prop :=
  ∀ n, P7124993337699910720.a n = A351942 (n + 1)

end A351942

/-!
# A351943: a(n) = A069359(A181819(n)).

The programs for A351943, the canonical program `A351943.P14893176643367496958` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351943 has offset 1).

The definition of A351943 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351943.P14893176643367496958

`A069359(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351943

/-- `A069359(A181819(n+1))` -/
def P14893176643367496958.Spec : Prop :=
  ∀ n, P14893176643367496958.a n = A351943 (n + 1)

theorem P14893176643367496958.correct : P14893176643367496958.Spec := by
  intro n
  simp only [A351943, Nat.add_sub_cancel]

end A351943

/-! ## A351943.P10357300024882092303

`A069359(∏{e}[n+1, A000040(#)])`
-/

namespace A351943.P10357300024882092303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A351943.P10357300024882092303

namespace A351943

/-- `A069359(∏{e}[n+1, A000040(#)])` -/
def P10357300024882092303.Spec : Prop :=
  ∀ n, P10357300024882092303.a n = A351943 (n + 1)

end A351943

/-! ## A351943.P6710616504629622792

`A069359(A329601(n+1)*A351944(n+1))`
-/

namespace A351943.P6710616504629622792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A351943.P6710616504629622792

namespace A351943

/-- `A069359(A329601(n+1)*A351944(n+1))` -/
def P6710616504629622792.Spec : Prop :=
  ∀ n, P6710616504629622792.a n = A351943 (n + 1)

end A351943

/-! ## A351943.P305797999023416450

`A342001(A181819(n+1)/A351944(n+1))*A351944(n+1)`
-/

namespace A351943.P305797999023416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) / (A351944 (n + 1) : ℚ))).toNat * A351944 (n + 1)

end

end A351943.P305797999023416450

namespace A351943

/-- `A342001(A181819(n+1)/A351944(n+1))*A351944(n+1)` -/
def P305797999023416450.Spec : Prop :=
  ∀ n, P305797999023416450.a n = A351943 (n + 1)

end A351943

/-! ## A351943.P14029386783041467136

`and(A289370(n), A318320(A181819(n+1)))`
-/

namespace A351943.P14029386783041467136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289370 n) (A318320 (A181819 (n + 1)).toNat)

end

end A351943.P14029386783041467136

namespace A351943

/-- `and(A289370(n), A318320(A181819(n+1)))` -/
def P14029386783041467136.Spec : Prop :=
  ∀ n, P14029386783041467136.a n = A351943 (n + 1)

end A351943

/-!
# A351944: a(n) = A003557(A181819(n)).

The programs for A351944, the canonical program `A351944.P14291555514904537231` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351944 has offset 1).

The definition of A351944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351944.P14291555514904537231

`A003557(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351944

/-- `A003557(A181819(n+1))` -/
def P14291555514904537231.Spec : Prop :=
  ∀ n, P14291555514904537231.a n = A351944 (n + 1)

theorem P14291555514904537231.correct : P14291555514904537231.Spec := by
  intro n
  simp only [A351944, Nat.add_sub_cancel]

end A351944

/-! ## A351944.P3529955352789621398

`A181819(n+1)/A329601(n+1)`
-/

namespace A351944.P3529955352789621398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A329601 (n + 1) : ℚ)

end

end A351944.P3529955352789621398

namespace A351944

/-- `A181819(n+1)/A329601(n+1)` -/
def P3529955352789621398.Spec : Prop :=
  ∀ n, P3529955352789621398.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P17230827288099838568

`A295658(A181819(n+1)²)`
-/

namespace A351944.P17230827288099838568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (A181819 (n + 1) ^ 2).toNat

end

end A351944.P17230827288099838568

namespace A351944

/-- `A295658(A181819(n+1)²)` -/
def P17230827288099838568.Spec : Prop :=
  ∀ n, P17230827288099838568.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P2972364319125933377

`A003557(∏{e}[n+1, A000040(#)])`
-/

namespace A351944.P2972364319125933377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A351944.P2972364319125933377

namespace A351944

/-- `A003557(∏{e}[n+1, A000040(#)])` -/
def P2972364319125933377.Spec : Prop :=
  ∀ n, P2972364319125933377.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P12744740269040308747

`A003557(∏{e}[n+1, A238851(#)])`
-/

namespace A351944.P12744740269040308747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n), A238851 (Nat.factorization (f1 n) p)).toNat

end

end A351944.P12744740269040308747

namespace A351944

/-- `A003557(∏{e}[n+1, A238851(#)])` -/
def P12744740269040308747.Spec : Prop :=
  ∀ n, P12744740269040308747.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P14451088486257585525

`A181819(n+1)/A019565(A297404(n+1))`
-/

namespace A351944.P14451088486257585525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A019565 (A297404 (n + 1)).toNat : ℚ)

end

end A351944.P14451088486257585525

namespace A351944

/-- `A181819(n+1)/A019565(A297404(n+1))` -/
def P14451088486257585525.Spec : Prop :=
  ∀ n, P14451088486257585525.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P6326728310981519496

`A181819(n+1)/A181819(A328400(n+1))`
-/

namespace A351944.P6326728310981519496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A181819 (A328400 (n + 1)).toNat : ℚ)

end

end A351944.P6326728310981519496

namespace A351944

/-- `A181819(n+1)/A181819(A328400(n+1))` -/
def P6326728310981519496.Spec : Prop :=
  ∀ n, P6326728310981519496.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P10621756447552428120

`A181819(n+1)/A007947(A181819(n+1)²)`
-/

namespace A351944.P10621756447552428120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A007947 (A181819 (n + 1) ^ 2).toNat : ℚ)

end

end A351944.P10621756447552428120

namespace A351944

/-- `A181819(n+1)/A007947(A181819(n+1)²)` -/
def P10621756447552428120.Spec : Prop :=
  ∀ n, P10621756447552428120.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P15825623817856533412

`A181819(n+1)/∏{p}[A181819(n+1), A006530(#)]`
-/

namespace A351944.P15825623817856533412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p : ℤ) : ℚ)

end

end A351944.P15825623817856533412

namespace A351944

/-- `A181819(n+1)/∏{p}[A181819(n+1), A006530(#)]` -/
def P15825623817856533412.Spec : Prop :=
  ∀ n, P15825623817856533412.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P6736675962415018961

`A181819(n+1)/A007913(∏{p}[A181819(n+1), #])`
-/

namespace A351944.P6736675962415018961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A007913 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A351944.P6736675962415018961

namespace A351944

/-- `A181819(n+1)/A007913(∏{p}[A181819(n+1), #])` -/
def P6736675962415018961.Spec : Prop :=
  ∀ n, P6736675962415018961.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P148440199223583889

`A181819(n+1)/A007947(∏{p}[A181819(n+1), #])`
-/

namespace A351944.P148440199223583889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (A007947 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A351944.P148440199223583889

namespace A351944

/-- `A181819(n+1)/A007947(∏{p}[A181819(n+1), #])` -/
def P148440199223583889.Spec : Prop :=
  ∀ n, P148440199223583889.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P6043816750404586775

`A181819(n+1)/∏{p}[A181819(n+1), A014963(#)]`
-/

namespace A351944.P6043816750404586775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p : ℤ) : ℚ)

end

end A351944.P6043816750404586775

namespace A351944

/-- `A181819(n+1)/∏{p}[A181819(n+1), A014963(#)]` -/
def P6043816750404586775.Spec : Prop :=
  ∀ n, P6043816750404586775.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P2527982970211668378

`A181819(n+1)/∏{p}[A181819(n+1), A020639(#)]`
-/

namespace A351944.P2527982970211668378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p : ℤ) : ℚ)

end

end A351944.P2527982970211668378

namespace A351944

/-- `A181819(n+1)/∏{p}[A181819(n+1), A020639(#)]` -/
def P2527982970211668378.Spec : Prop :=
  ∀ n, P2527982970211668378.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P14079960989673427753

`A028310(A181819(n+1)/∏{p}[A181819(n+1), #])`
-/

namespace A351944.P14079960989673427753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A351944.P14079960989673427753

namespace A351944

/-- `A028310(A181819(n+1)/∏{p}[A181819(n+1), #])` -/
def P14079960989673427753.Spec : Prop :=
  ∀ n, P14079960989673427753.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P12513134837221778349

`A181819(A071364(n+1))/∏{p}[A181819(n+1), #]`
-/

namespace A351944.P12513134837221778349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (A071364 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A351944.P12513134837221778349

namespace A351944

/-- `A181819(A071364(n+1))/∏{p}[A181819(n+1), #]` -/
def P12513134837221778349.Spec : Prop :=
  ∀ n, P12513134837221778349.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P17572451238508513307

`A181819(n+1)/gcd(A086568(n+1), A181819(n+1))`
-/

namespace A351944.P17572451238508513307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (n + 1) : ℚ) / (Int.gcd (A086568 (n + 1)) (A181819 (n + 1)) : ℚ)

end

end A351944.P17572451238508513307

namespace A351944

/-- `A181819(n+1)/gcd(A086568(n+1), A181819(n+1))` -/
def P17572451238508513307.Spec : Prop :=
  ∀ n, P17572451238508513307.a n = (A351944 (n + 1) : ℚ)

end A351944

/-! ## A351944.P16691988282306170630

`A295658(2*A181819(n+1)*A181819(n+1))`
-/

namespace A351944.P16691988282306170630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (2 * A181819 (n + 1) * A181819 (n + 1)).toNat

end

end A351944.P16691988282306170630

namespace A351944

/-- `A295658(2*A181819(n+1)*A181819(n+1))` -/
def P16691988282306170630.Spec : Prop :=
  ∀ n, P16691988282306170630.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P374447126184006225

`A003557(A353510(∑[n+2]))`
-/

namespace A351944.P374447126184006225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A353510 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351944.P374447126184006225

namespace A351944

/-- `A003557(A353510(∑[n+2]))` -/
def P374447126184006225.Spec : Prop :=
  ∀ n, P374447126184006225.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P104998234801836551

`A003557(A000688(A064549(n+1)))`
-/

namespace A351944.P104998234801836551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000688 (A064549 (n + 1)).toNat).toNat

end

end A351944.P104998234801836551

namespace A351944

/-- `A003557(A000688(A064549(n+1)))` -/
def P104998234801836551.Spec : Prop :=
  ∀ n, P104998234801836551.a n = A351944 (n + 1)

end A351944

/-! ## A351944.P1996516036145594797

`A000190(A181819(A000188((n+1)²)))`
-/

namespace A351944.P1996516036145594797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A181819 (A000188 ((n + 1) ^ 2)).toNat).toNat

end

end A351944.P1996516036145594797

namespace A351944

/-- `A000190(A181819(A000188((n+1)²)))` -/
def P1996516036145594797.Spec : Prop :=
  ∀ n, P1996516036145594797.a n = A351944 (n + 1)

end A351944

/-!
# A351945: a(n) = A342001(A181819(n)).

The programs for A351945, the canonical program `A351945.P12059152478053479325` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351945 has offset 1).

The definition of A351945 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351945.P12059152478053479325

`A342001(A181819(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A351945

/-- `A342001(A181819(n+1))` -/
def P12059152478053479325.Spec : Prop :=
  ∀ n, P12059152478053479325.a n = A351945 (n + 1)

theorem P12059152478053479325.correct : P12059152478053479325.Spec := by
  intro n
  simp only [A351945, Nat.add_sub_cancel]

end A351945

/-! ## A351945.P5922417229062994348

`A351942(n+1)/A351944(n+1)`
-/

namespace A351945.P5922417229062994348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351942 (n + 1) : ℚ) / (A351944 (n + 1) : ℚ)

end

end A351945.P5922417229062994348

namespace A351945

/-- `A351942(n+1)/A351944(n+1)` -/
def P5922417229062994348.Spec : Prop :=
  ∀ n, P5922417229062994348.a n = (A351945 (n + 1) : ℚ)

end A351945

/-! ## A351945.P7574253934608331808

`A348498(A181819(n+1)²)`
-/

namespace A351945.P7574253934608331808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (A181819 (n + 1) ^ 2).toNat

end

end A351945.P7574253934608331808

namespace A351945

/-- `A348498(A181819(n+1)²)` -/
def P7574253934608331808.Spec : Prop :=
  ∀ n, P7574253934608331808.a n = A351945 (n + 1)

end A351945

/-! ## A351945.P5154142147586072314

`A342001(A329601(n+1)*A351944(n+1))`
-/

namespace A351945.P5154142147586072314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A351945.P5154142147586072314

namespace A351945

/-- `A342001(A329601(n+1)*A351944(n+1))` -/
def P5154142147586072314.Spec : Prop :=
  ∀ n, P5154142147586072314.a n = A351945 (n + 1)

end A351945

/-! ## A351945.P8438845617240336746

`A003415(A181819(n+1))/A351944(n+1)`
-/

namespace A351945.P8438845617240336746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (A181819 (n + 1)).toNat : ℚ) / (A351944 (n + 1) : ℚ)

end

end A351945.P8438845617240336746

namespace A351945

/-- `A003415(A181819(n+1))/A351944(n+1)` -/
def P8438845617240336746.Spec : Prop :=
  ∀ n, P8438845617240336746.a n = (A351945 (n + 1) : ℚ)

end A351945

/-! ## A351945.P4574357828896608813

`A351942(n+1)/A003557(A181819(n+1))`
-/

namespace A351945.P4574357828896608813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351942 (n + 1) : ℚ) / (A003557 (A181819 (n + 1)).toNat : ℚ)

end

end A351945.P4574357828896608813

namespace A351945

/-- `A351942(n+1)/A003557(A181819(n+1))` -/
def P4574357828896608813.Spec : Prop :=
  ∀ n, P4574357828896608813.a n = (A351945 (n + 1) : ℚ)

end A351945

/-! ## A351945.P2005734289622995562

`A329601(n+1)/A181819(n+1)*A351942(n+1)`
-/

namespace A351945.P2005734289622995562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329601 (n + 1) : ℚ) / (A181819 (n + 1) : ℚ) * (A351942 (n + 1) : ℚ)

end

end A351945.P2005734289622995562

namespace A351945

/-- `A329601(n+1)/A181819(n+1)*A351942(n+1)` -/
def P2005734289622995562.Spec : Prop :=
  ∀ n, P2005734289622995562.a n = (A351945 (n + 1) : ℚ)

end A351945

/-!
# A351946: 

The programs for A351946, there is no canonical definition to state claims against.
-/

/-! ## A351946.P1979334045161936007

`A051903(A181819(n+1))`
-/

namespace A351946.P1979334045161936007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A181819 (n + 1)).toNat

end

end A351946.P1979334045161936007

/-! ## A351946.P6951684471147921685

`A286469(A238745(n+1))`
-/

namespace A351946.P6951684471147921685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (A238745 (n + 1)).toNat

end

end A351946.P6951684471147921685

/-! ## A351946.P11572103822054193481

`val(A046523(∏{e}[n+1, A127052(#)]), 2)`
-/

namespace A351946.P11572103822054193481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat).toNat 2

end

end A351946.P11572103822054193481

/-! ## A351946.P3729608607056085165

`∑{e}[A238745(∏{e}[n+1, A005180(#+1)]), #]`
-/

namespace A351946.P3729608607056085165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ p ∈ Nat.primeFactors (f2 n), A005180 (Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A351946.P3729608607056085165

/-! ## A351946.P11401651914871681526

`A061395(A181819(A181819(n+1))²)`
-/

namespace A351946.P11401651914871681526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (A181819 (n + 1)).toNat ^ 2).toNat

end

end A351946.P11401651914871681526

/-! ## A351946.P5769737830598782083

`A324912(A181819(n+1))-A000007(n)`
-/

namespace A351946.P5769737830598782083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A181819 (n + 1)).toNat - A000007 n

end

end A351946.P5769737830598782083

/-! ## A351946.P15245414692683756059

`A324912(A181819(n+1))%A026351(n)`
-/

namespace A351946.P15245414692683756059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324912 (A181819 (n + 1)).toNat) (A026351 n)

end

end A351946.P15245414692683756059

/-! ## A351946.P3229827234815496999

`A001221(n+1)-A001221(A309004(n+1))`
-/

namespace A351946.P3229827234815496999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A309004 (n + 1)).toNat

end

end A351946.P3229827234815496999

/-! ## A351946.P4824810775965626851

`∑{e}[A238745(A329601(n+1)*A351944(n+1)), #]`
-/

namespace A351946.P4824810775965626851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A329601 (n + 1) * A351944 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A351946.P4824810775965626851

/-! ## A351946.P2234769066321050235

`A072411(A181819(n+1))%record[A000010(n+1)]`
-/

namespace A351946.P2234769066321050235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (A181819 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A351946.P2234769066321050235

/-!
# A351947: Numbers k for which A327500(k) <> A351946(k).

The programs for A351947, there is no canonical definition to state claims against.
-/

/-! ## A351947.P16148015846524506332

`∩[A267892(n+1), A308222(n+1)]`
-/

namespace A351947.P16148015846524506332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351947.P16148015846524506332

/-! ## A351947.P8906412915177931548

`∩[A308222(n+1), A378430(n+1)]`
-/

namespace A351947.P8906412915177931548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351947.P8906412915177931548

/-!
# A351949: Lexicographically earliest infinite sequence such that a(i) = a(j) => A246277(A329044(i)) = A246277(A329044(j)) and A003557(i) = A003557(j), for all i, j >= 1.

The programs for A351949, there is no canonical definition to state claims against.
-/

/-! ## A351949.P4195068392667863472

`A300246(n+1)%p?[A305902(A163511(n))]`
-/

namespace A351949.P4195068392667863472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (A163511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300246 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A351949.P4195068392667863472

/-! ## A351949.P1057135554983115490

`A329620(n+1)%A215246(A347538(n+3))`
-/

namespace A351949.P1057135554983115490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329620 (n + 1)) (A215246 (A347538 (n + 3)).toNat)

end

end A351949.P1057135554983115490

/-! ## A351949.P8067960845657881829

`A300226(n+1)%A000010(A358708(2*(n+2)))`
-/

namespace A351949.P8067960845657881829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300226 (n + 1)) (A000010 (A358708 (2 * (n + 2))).toNat)

end

end A351949.P8067960845657881829

/-!
# A351950: Arithmetic derivative of the factorial base exp-function: a(n) = A003415(A276076(n)).

The programs for A351950, there is no canonical definition to state claims against.
-/

/-! ## A351950.P256833428908241432

`A327860(A351576(n))`
-/

namespace A351950.P256833428908241432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A351576 n).toNat

end

end A351950.P256833428908241432

/-! ## A351950.P14265277843346123773

`A003415(A276076(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351950.P14265277843346123773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276076 n).toNat

end

end A351950.P14265277843346123773

/-! ## A351950.P9007097817988154300

`A351577(n)*A351952(n)`
-/

namespace A351950.P9007097817988154300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351577 n * A351952 n

end

end A351950.P9007097817988154300

/-! ## A351950.P11272031461369767225

`A276076(A276009(n))*A351952(n)`
-/

namespace A351950.P11272031461369767225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A276009 n).toNat * A351952 n

end

end A351950.P11272031461369767225

/-! ## A351950.P326508526695863696

`A351577(n)*A351953(A225901(n))`
-/

namespace A351950.P326508526695863696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351577 n * A351953 (A225901 n).toNat

end

end A351950.P326508526695863696

/-! ## A351950.P10633399446995029033

`A342002(A351576(n))*A351577(n)`
-/

namespace A351950.P10633399446995029033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A351576 n).toNat * A351577 n

end

end A351950.P10633399446995029033

/-! ## A351950.P6328335166884773147

`A328572(A351576(n))*A351952(n)`
-/

namespace A351950.P6328335166884773147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (A351576 n).toNat * A351952 n

end

end A351950.P6328335166884773147

/-! ## A351950.P1430176980533755494

`A344026(A277012(n))`
-/

namespace A351950.P1430176980533755494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A277012 n).toNat

end

end A351950.P1430176980533755494

/-! ## A351950.P2171190641275180745

`A083345(A276076(n))*A351577(n)`
-/

namespace A351950.P2171190641275180745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A276076 n).toNat * A351577 n

end

end A351950.P2171190641275180745

/-!
# A351951: a(n) = A069359(A276076(n)).

The programs for A351951, there is no canonical definition to state claims against.
-/

/-! ## A351951.P13794267060901062385

`A329029(A351576(n))`
-/

namespace A351951.P13794267060901062385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329029 (A351576 n).toNat

end

end A351951.P13794267060901062385

/-! ## A351951.P4205231245911444634

`A069359(A276076(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351951.P4205231245911444634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A276076 n).toNat

end

end A351951.P4205231245911444634

/-! ## A351951.P7525188454621605036

`A328572(A351576(n))*A342001(A275733(n))`
-/

namespace A351951.P7525188454621605036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (A351576 n).toNat * A342001 (A275733 n).toNat

end

end A351951.P7525188454621605036

/-! ## A351951.P8559070059934026443

`A342001(A276076(n)/A351577(n))*A351577(n)`
-/

namespace A351951.P8559070059934026443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((A276076 n : ℚ) / (A351577 n : ℚ))).toNat * A351577 n

end

end A351951.P8559070059934026443

/-! ## A351951.P12695359772738929925

`A003415(A275733(n))*A351577(n)`
-/

namespace A351951.P12695359772738929925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A275733 n).toNat * A351577 n

end

end A351951.P12695359772738929925

/-! ## A351951.P9914106618050120880

`A003415(A276076(n)/A351577(n))*A351577(n)`
-/

namespace A351951.P9914106618050120880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A276076 n : ℚ) / (A351577 n : ℚ))).toNat * A351577 n

end

end A351951.P9914106618050120880

/-! ## A351951.P546347362809056438

`A344028(A277012(n))`
-/

namespace A351951.P546347362809056438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A277012 n).toNat

end

end A351951.P546347362809056438

/-!
# A351952: a(n) = A351950(n) / A351577(n).

The programs for A351952, there is no canonical definition to state claims against.
-/

/-! ## A351952.P4811904574910462686

`A351950(n)/A351577(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351952.P4811904574910462686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351950 n : ℚ) / (A351577 n : ℚ)

end

end A351952.P4811904574910462686

/-! ## A351952.P9684697759621456405

`A351953(A225901(n))`
-/

namespace A351952.P9684697759621456405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351953 (A225901 n).toNat

end

end A351952.P9684697759621456405

/-! ## A351952.P17949026745006044

`A342002(A351576(n))`
-/

namespace A351952.P17949026745006044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A351576 n).toNat

end

end A351952.P17949026745006044

/-! ## A351952.P17390184491718313601

`A083345(A276076(n))`
-/

namespace A351952.P17390184491718313601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A276076 n).toNat

end

end A351952.P17390184491718313601

/-! ## A351952.P12364976112124122244

`A351950(n)/A276076(A276009(n))`
-/

namespace A351952.P12364976112124122244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351950 n : ℚ) / (A276076 (A276009 n).toNat : ℚ)

end

end A351952.P12364976112124122244

/-! ## A351952.P9551885327359304127

`A351950(n)/gcd(A276076(n), A351950(n))`
-/

namespace A351952.P9551885327359304127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351950 n : ℚ) / (Int.gcd (A276076 n) (A351950 n) : ℚ)

end

end A351952.P9551885327359304127

/-! ## A351952.P13924794485038717150

`A327860(A351576(n))/A351577(n)`
-/

namespace A351952.P13924794485038717150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327860 (A351576 n).toNat : ℚ) / (A351577 n : ℚ)

end

end A351952.P13924794485038717150

/-! ## A351952.P15574106667630414593

`A351950(n)/A328572(A351576(n))`
-/

namespace A351952.P15574106667630414593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351950 n : ℚ) / (A328572 (A351576 n).toNat : ℚ)

end

end A351952.P15574106667630414593

/-! ## A351952.P8479126420231917981

`A366801(A277012(n))`
-/

namespace A351952.P8479126420231917981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366801 (A277012 n).toNat

end

end A351952.P8479126420231917981

/-! ## A351952.P12474496555825072223

`A342001(A276076(2*n-n))`
-/

namespace A351952.P12474496555825072223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A276076 (2 * n - n)).toNat

end

end A351952.P12474496555825072223

/-!
# A351953: a(n) = A351952(A225901(n)).

The programs for A351953, there is no canonical definition to state claims against.
-/

/-! ## A351953.P5966261690025347992

`A351952(A225901(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351953.P5966261690025347992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351952 (A225901 n).toNat

end

end A351953.P5966261690025347992

/-! ## A351953.P8880540130722578956

`A342002(A225901(n)%A090165(n+4))`
-/

namespace A351953.P8880540130722578956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (Int.tmod (A225901 n) (A090165 (n + 4))).toNat

end

end A351953.P8880540130722578956

/-! ## A351953.P111174390110660994

`A083345(A276076(A225901(A351576(n))))`
-/

namespace A351953.P111174390110660994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A276076 (A225901 (A351576 n).toNat).toNat).toNat

end

end A351953.P111174390110660994

/-! ## A351953.P8471245879305071034

`A342002(A225901(n)%A096640(n))`
-/

namespace A351953.P8471245879305071034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (Int.tmod (A225901 n) (A096640 n)).toNat

end

end A351953.P8471245879305071034

/-! ## A351953.P9300142149014766714

`A342002(A225901(n))%A345960(2*n+5)`
-/

namespace A351953.P9300142149014766714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342002 (A225901 n).toNat) (A345960 (2 * n + 5))

end

end A351953.P9300142149014766714

/-!
# A351954: Arithmetic derivative without its inherited divisor applied to the prime shadow of the factorial base exp-function: a(n) = A342001(A181819(A276076(n))).

The programs for A351954, there is no canonical definition to state claims against.
-/

/-! ## A351954.P17410967727449115392

`A342001(A275735(n))`
-/

namespace A351954.P17410967727449115392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A275735 n).toNat

end

end A351954.P17410967727449115392

/-! ## A351954.P789049460864302691

`A353577(A351576(n))`
-/

namespace A351954.P789049460864302691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353577 (A351576 n).toNat

end

end A351954.P789049460864302691

/-! ## A351954.P17557204900227097650

`A351945(A276076(n))`
-/

namespace A351954.P17557204900227097650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (A276076 n).toNat

end

end A351954.P17557204900227097650

/-! ## A351954.P8229627452442876681

`A342001(A181819(A276076(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A351954.P8229627452442876681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A181819 (A276076 n).toNat).toNat

end

end A351954.P8229627452442876681

/-! ## A351954.P5791052187631751714

`∑{d}[A275735(n), A346485(#)]`
-/

namespace A351954.P5791052187631751714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346485 d

end

end A351954.P5791052187631751714

/-! ## A351954.P1027986576748131953

`A342001(∏{e}[A278236(n), A000040(#)])`
-/

namespace A351954.P1027986576748131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A351954.P1027986576748131953

/-! ## A351954.P4912050316391960955

`A351945(A278236(n))`
-/

namespace A351954.P4912050316391960955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (A278236 n).toNat

end

end A351954.P4912050316391960955

/-! ## A351954.P14250179101963154091

`A348498(A275735(n)²)`
-/

namespace A351954.P14250179101963154091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (A275735 n ^ 2).toNat

end

end A351954.P14250179101963154091

/-! ## A351954.P2728013344421116488

`A348498(A275735(n)*A275735(n))`
-/

namespace A351954.P2728013344421116488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (A275735 n * A275735 n).toNat

end

end A351954.P2728013344421116488

/-!
# A351955: Lexicographically earliest infinite sequence such that a(i) = a(j) => A328571(A108951(i)) = A328571(A108951(j)) for all i, j >= 1.

The programs for A351955, there is no canonical definition to state claims against.
-/

/-! ## A351955.P4154448987239795893

`A349526(record[abs(A053222(n+1))])`
-/

namespace A351955.P4154448987239795893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053222 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351955.P4154448987239795893

/-!
# A351956: a(n) = 1 if either n = 1 or the primorial inflation of n is equal to k * p#, where p# is the primorial (A034386) of some prime p, and 1 <= k < p, otherwise 0.

The programs for A351956, the canonical program `A351956.P1875179399342116986` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351956 has offset 1).

The definition of A351956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351956.P11547721124856236320

`floor(1/A329040(n+1))`
-/

namespace A351956.P11547721124856236320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A329040 (n + 1) : ℚ)⌋

end

end A351956.P11547721124856236320

namespace A351956

/-- `floor(1/A329040(n+1))` -/
def P11547721124856236320.Spec : Prop :=
  ∀ n, P11547721124856236320.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P8415064745398892989

`char[eq[0, A329343(n+1)]]`
-/

namespace A351956.P8415064745398892989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329343 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A351956.P8415064745398892989

namespace A351956

/-- `char[eq[0, A329343(n+1)]]` -/
def P8415064745398892989.Spec : Prop :=
  ∀ n, (P8415064745398892989.a n : ℤ) = A351956 (n + 1)

end A351956

/-! ## A351956.P10865806897110365888

`A000007(A329343(n+1))`
-/

namespace A351956.P10865806897110365888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A329343 (n + 1)).toNat

end

end A351956.P10865806897110365888

namespace A351956

/-- `A000007(A329343(n+1))` -/
def P10865806897110365888.Spec : Prop :=
  ∀ n, P10865806897110365888.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P2828508067623081559

`A008683(A329040(n+1)²)`
-/

namespace A351956.P2828508067623081559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A329040 (n + 1) ^ 2).toNat

end

end A351956.P2828508067623081559

namespace A351956

/-- `A008683(A329040(n+1)²)` -/
def P2828508067623081559.Spec : Prop :=
  ∀ n, P2828508067623081559.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P3569148312134501632

`A109247(A329343(n+1)²)`
-/

namespace A351956.P3569148312134501632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109247 (A329343 (n + 1) ^ 2).toNat

end

end A351956.P3569148312134501632

namespace A351956

/-- `A109247(A329343(n+1)²)` -/
def P3569148312134501632.Spec : Prop :=
  ∀ n, P3569148312134501632.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P5212272253359064682

`A323239(A329040(n+1)²)`
-/

namespace A351956.P5212272253359064682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A329040 (n + 1) ^ 2).toNat

end

end A351956.P5212272253359064682

namespace A351956

/-- `A323239(A329040(n+1)²)` -/
def P5212272253359064682.Spec : Prop :=
  ∀ n, P5212272253359064682.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P6703365629631160458

`A088156(A329040(n+1)-1)`
-/

namespace A351956.P6703365629631160458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088156 (A329040 (n + 1) - 1).toNat

end

end A351956.P6703365629631160458

namespace A351956

/-- `A088156(A329040(n+1)-1)` -/
def P6703365629631160458.Spec : Prop :=
  ∀ n, P6703365629631160458.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P15545887187195162471

`A154272(A329343(n+1)+3)`
-/

namespace A351956.P15545887187195162471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A329343 (n + 1) + 3).toNat

end

end A351956.P15545887187195162471

namespace A351956

/-- `A154272(A329343(n+1)+3)` -/
def P15545887187195162471.Spec : Prop :=
  ∀ n, P15545887187195162471.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P3418491529267359073

`A010051(2*A329040(n+1))`
-/

namespace A351956.P3418491529267359073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A329040 (n + 1)).toNat

end

end A351956.P3418491529267359073

namespace A351956

/-- `A010051(2*A329040(n+1))` -/
def P3418491529267359073.Spec : Prop :=
  ∀ n, P3418491529267359073.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P4069617457006140564

`A079261(3*A329040(n+1))`
-/

namespace A351956.P4069617457006140564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079261 (3 * A329040 (n + 1)).toNat

end

end A351956.P4069617457006140564

namespace A351956

/-- `A079261(3*A329040(n+1))` -/
def P4069617457006140564.Spec : Prop :=
  ∀ n, P4069617457006140564.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P14666338746157313735

`A109247(4*A329343(n+1))`
-/

namespace A351956.P14666338746157313735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109247 (4 * A329343 (n + 1)).toNat

end

end A351956.P14666338746157313735

namespace A351956

/-- `A109247(4*A329343(n+1))` -/
def P14666338746157313735.Spec : Prop :=
  ∀ n, P14666338746157313735.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P6470308091283928649

`A193238(C(2, A329040(n+1)))`
-/

namespace A351956.P6470308091283928649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (Nat.choose 2 (A329040 (n + 1)).toNat)

end

end A351956.P6470308091283928649

namespace A351956

/-- `A193238(C(2, A329040(n+1)))` -/
def P6470308091283928649.Spec : Prop :=
  ∀ n, P6470308091283928649.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P10208873993052423998

`A007814(A000040(A329040(n+1)²))`
-/

namespace A351956.P10208873993052423998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (A329040 (n + 1) ^ 2).toNat).toNat

end

end A351956.P10208873993052423998

namespace A351956

/-- `A007814(A000040(A329040(n+1)²))` -/
def P10208873993052423998.Spec : Prop :=
  ∀ n, P10208873993052423998.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P3243238614964075305

`A171182(A144711(A329040(n+1)²))`
-/

namespace A351956.P3243238614964075305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171182 (A144711 (A329040 (n + 1) ^ 2).toNat).toNat

end

end A351956.P3243238614964075305

namespace A351956

/-- `A171182(A144711(A329040(n+1)²))` -/
def P3243238614964075305.Spec : Prop :=
  ∀ n, P3243238614964075305.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P1875179399342116986

`A000007(A324888(n+1)-A329348(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A351956

/-- `A000007(A324888(n+1)-A329348(n+1))` -/
def P1875179399342116986.Spec : Prop :=
  ∀ n, P1875179399342116986.a n = A351956 (n + 1)

theorem P1875179399342116986.correct : P1875179399342116986.Spec := by
  intro n
  simp only [A351956, Nat.add_sub_cancel]

end A351956

/-! ## A351956.P6589697871042675156

`val(A346091(A006530(n+1)), A346091(n+1))`
-/

namespace A351956.P6589697871042675156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346091 (A006530 (n + 1)).toNat).toNat (A346091 (n + 1)).toNat

end

end A351956.P6589697871042675156

namespace A351956

/-- `val(A346091(A006530(n+1)), A346091(n+1))` -/
def P6589697871042675156.Spec : Prop :=
  ∀ n, (P6589697871042675156.a n : ℤ) = A351956 (n + 1)

end A351956

/-! ## A351956.P11558039497649241029

`A010051(A329040(n+1)+A329040(n+1)²)`
-/

namespace A351956.P11558039497649241029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A329040 (n + 1) + A329040 (n + 1) ^ 2).toNat

end

end A351956.P11558039497649241029

namespace A351956

/-- `A010051(A329040(n+1)+A329040(n+1)²)` -/
def P11558039497649241029.Spec : Prop :=
  ∀ n, P11558039497649241029.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P1814992446554050942

`val(A329046(n+1), A329040(n+1)*A329046(n+1))`
-/

namespace A351956.P1814992446554050942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329046 (n + 1)).toNat (A329040 (n + 1) * A329046 (n + 1)).toNat

end

end A351956.P1814992446554050942

namespace A351956

/-- `val(A329046(n+1), A329040(n+1)*A329046(n+1))` -/
def P1814992446554050942.Spec : Prop :=
  ∀ n, (P1814992446554050942.a n : ℤ) = A351956 (n + 1)

end A351956

/-! ## A351956.P223677471627201062

`A329321(2^A329343(n+1))`
-/

namespace A351956.P223677471627201062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329321 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A329343 (n + 1) : ℤ))).toNat

end

end A351956.P223677471627201062

namespace A351956

/-- `A329321(2^A329343(n+1))` -/
def P223677471627201062.Spec : Prop :=
  ∀ n, P223677471627201062.a n = A351956 (n + 1)

end A351956

/-! ## A351956.P2436093570207962812

`A000007(A331293(n+1))`
-/

namespace A351956.P2436093570207962812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331293 (n + 1)).toNat

end

end A351956.P2436093570207962812

namespace A351956

/-- `A000007(A331293(n+1))` -/
def P2436093570207962812.Spec : Prop :=
  ∀ n, P2436093570207962812.a n = A351956 (n + 1)

end A351956

/-!
# A351957: a(n) = 1 if the primorial inflation of k is a sum of distinct primorial numbers, otherwise 0.

The programs for A351957, there is no canonical definition to state claims against.
-/

/-! ## A351957.P3425391681678731304

`round(acot(A329344(n+1)))`
-/

namespace A351957.P3425391681678731304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A329344 (n + 1) : ℝ))

end

end A351957.P3425391681678731304

/-! ## A351957.P915381196980127658

`floor(1/A344593(n+1))`
-/

namespace A351957.P915381196980127658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A344593 (n + 1) : ℚ)⌋

end

end A351957.P915381196980127658

/-! ## A351957.P7829737878353042098

`A019590(A329344(n+1)+1)`
-/

namespace A351957.P7829737878353042098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A329344 (n + 1) + 1).toNat

end

end A351957.P7829737878353042098

/-! ## A351957.P16728354597676254104

`A000007(A329344(n+1)-1)`
-/

namespace A351957.P16728354597676254104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A329344 (n + 1) - 1).toNat

end

end A351957.P16728354597676254104

/-! ## A351957.P4700286346384821560

`A000007(A344593(n+1)-1)`
-/

namespace A351957.P4700286346384821560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A344593 (n + 1) - 1).toNat

end

end A351957.P4700286346384821560

/-! ## A351957.P15471779690517216667

`A091225(2*A344593(n+1))`
-/

namespace A351957.P15471779690517216667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * A344593 (n + 1)).toNat

end

end A351957.P15471779690517216667

/-! ## A351957.P3666379110577446655

`A000073(C(2, A329344(n+1)))`
-/

namespace A351957.P3666379110577446655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Nat.choose 2 (A329344 (n + 1)).toNat)

end

end A351957.P3666379110577446655

/-! ## A351957.P1142436309644161925

`A032741(C(2, A329344(n+1)))`
-/

namespace A351957.P1142436309644161925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 2 (A329344 (n + 1)).toNat)

end

end A351957.P1142436309644161925

/-! ## A351957.P4644624907500569236

`A236266(C(2, A329344(n+1)))`
-/

namespace A351957.P4644624907500569236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236266 (Nat.choose 2 (A329344 (n + 1)).toNat)

end

end A351957.P4644624907500569236

/-! ## A351957.P11074432579424524033

`∏{p}[A329344(n+1), A329343(#)]`
-/

namespace A351957.P11074432579424524033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329343 p

end

end A351957.P11074432579424524033

/-! ## A351957.P11526916318746126749

`∏{p}[A329344(n+1), A329375(#)]`
-/

namespace A351957.P11526916318746126749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329375 p

end

end A351957.P11526916318746126749

/-! ## A351957.P17953550646528770188

`A329344(n+1)^-A001737(n)`
-/

namespace A351957.P17953550646528770188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329344 (n + 1) : ℚ) ^ (-A001737 n : ℤ)

end

end A351957.P17953550646528770188

/-! ## A351957.P4213268036154537138

`∏{p}[A329344(n+1), 1-A329344(#)]`
-/

namespace A351957.P4213268036154537138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A329344 p)

end

end A351957.P4213268036154537138

/-! ## A351957.P16426354530462027839

`val(2*A329040(n+1), A329046(n+1))`
-/

namespace A351957.P16426354530462027839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * A329040 (n + 1)).toNat (A329046 (n + 1)).toNat

end

end A351957.P16426354530462027839

/-! ## A351957.P4650833178054027320

`val(A329053(A329040(n+1)), A329046(n+1))`
-/

namespace A351957.P4650833178054027320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329053 (A329040 (n + 1)).toNat).toNat (A329046 (n + 1)).toNat

end

end A351957.P4650833178054027320

/-! ## A351957.P15099848954075491029

`val(A183979(A329344(n+1)+1), 4)`
-/

namespace A351957.P15099848954075491029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A183979 (A329344 (n + 1) + 1).toNat).toNat 4

end

end A351957.P15099848954075491029

/-! ## A351957.P16636305854321807248

`A019590(A329344(n+1)²)`
-/

namespace A351957.P16636305854321807248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A329344 (n + 1) ^ 2).toNat

end

end A351957.P16636305854321807248

/-! ## A351957.P3740510153976678914

`A091225(A344593(n+1)+A344593(n+1)²)`
-/

namespace A351957.P3740510153976678914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A344593 (n + 1) + A344593 (n + 1) ^ 2).toNat

end

end A351957.P3740510153976678914

/-! ## A351957.P7993124428552471918

`round(acot(A344592(n+1)))`
-/

namespace A351957.P7993124428552471918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A344592 (n + 1) : ℝ))

end

end A351957.P7993124428552471918

/-! ## A351957.P7851698441698807088

`val(A346091(n+1), A324886(n+1))`
-/

namespace A351957.P7851698441698807088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346091 (n + 1)).toNat (A324886 (n + 1)).toNat

end

end A351957.P7851698441698807088

/-!
# A351958: a(1) = 1, followed by numbers k for which the primorial inflation of k is equal to x * p#, where p# is the primorial (A034386) of some prime p, and 1 <= x < p.

The programs for A351958, the canonical program `A351958.P5237116111836067756` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351958 has offset 1).

The definition of A351958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351958.P6692491734809522030

`eq[0, A329343(n+1)]+1`
-/

namespace A351958.P6692491734809522030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329343 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351958.P6692491734809522030

namespace A351958

/-- `eq[0, A329343(n+1)]+1` -/
def P6692491734809522030.Spec : Prop :=
  ∀ n, (P6692491734809522030.a n : ℤ) = A351958 (n + 1)

end A351958

/-! ## A351958.P7997587305966805137

`eq[1, A329040(n+1)]+1`
-/

namespace A351958.P7997587305966805137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351958.P7997587305966805137

namespace A351958

/-- `eq[1, A329040(n+1)]+1` -/
def P7997587305966805137.Spec : Prop :=
  ∀ n, (P7997587305966805137.a n : ℤ) = A351958 (n + 1)

end A351958

/-! ## A351958.P5237116111836067756

`eq[1, A351956(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A351958

/-- `eq[1, A351956(n+1)]+1` -/
def P5237116111836067756.Spec : Prop :=
  ∀ n, (P5237116111836067756.a n : ℤ) = A351958 (n + 1)

theorem P5237116111836067756.correct : P5237116111836067756.Spec := by
  intro n
  simp only [A351958, Nat.add_sub_cancel]

end A351958

/-! ## A351958.P16785629211111370504

`record[A000027(n+1)*A351956(n+1)]`
-/

namespace A351958.P16785629211111370504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A351956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351958.P16785629211111370504

namespace A351958

/-- `record[A000027(n+1)*A351956(n+1)]` -/
def P16785629211111370504.Spec : Prop :=
  ∀ n, P16785629211111370504.a n = A351958 (n + 1)

end A351958

/-! ## A351958.P8344896734447357455

`record[A000027(n+1)/A329040(n+1)]`
-/

namespace A351958.P8344896734447357455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A329040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351958.P8344896734447357455

namespace A351958

/-- `record[A000027(n+1)/A329040(n+1)]` -/
def P8344896734447357455.Spec : Prop :=
  ∀ n, P8344896734447357455.a n = (A351958 (n + 1) : ℚ)

end A351958

/-! ## A351958.P9158317865170637379

`filter[A356438(n+1), A351956(#)]`
-/

namespace A351958.P9158317865170637379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A351958.P9158317865170637379

namespace A351958

/-- `filter[A356438(n+1), A351956(#)]` -/
def P9158317865170637379.Spec : Prop :=
  ∀ n, P9158317865170637379.a n = A351958 (n + 1)

end A351958

/-! ## A351958.P1759534421961511220

`filter[A390538(n+1), A351956(#)]`
-/

namespace A351958.P1759534421961511220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A351958.P1759534421961511220

namespace A351958

/-- `filter[A390538(n+1), A351956(#)]` -/
def P1759534421961511220.Spec : Prop :=
  ∀ n, P1759534421961511220.a n = A351958 (n + 1)

end A351958

/-! ## A351958.P12739628199270712208

`record[gcd(n+1, A331293(n+1))]`
-/

namespace A351958.P12739628199270712208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A331293 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351958.P12739628199270712208

namespace A351958

/-- `record[gcd(n+1, A331293(n+1))]` -/
def P12739628199270712208.Spec : Prop :=
  ∀ n, (P12739628199270712208.a n : ℤ) = A351958 (n + 1)

end A351958

/-! ## A351958.P11424817330737020886

`filter[A068937(n+1), A351956(#)]`
-/

namespace A351958.P11424817330737020886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A351958.P11424817330737020886

namespace A351958

/-- `filter[A068937(n+1), A351956(#)]` -/
def P11424817330737020886.Spec : Prop :=
  ∀ n, P11424817330737020886.a n = A351958 (n + 1)

end A351958

/-! ## A351958.P4698962255429214938

`filter[n+1, A351956(#)]`
-/

namespace A351958.P4698962255429214938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j) = 1) n)

end

end A351958.P4698962255429214938

namespace A351958

/-- `filter[n+1, A351956(#)]` -/
def P4698962255429214938.Spec : Prop :=
  ∀ n, (P4698962255429214938.a n : ℤ) = A351958 (n + 1)

end A351958

/-! ## A351958.P13751614950927590304

`record[(1-A001489(n))*A351956(n+1)]`
-/

namespace A351958.P13751614950927590304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A351956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351958.P13751614950927590304

namespace A351958

/-- `record[(1-A001489(n))*A351956(n+1)]` -/
def P13751614950927590304.Spec : Prop :=
  ∀ n, P13751614950927590304.a n = A351958 (n + 1)

end A351958

/-! ## A351958.P17624987271848817227

`eq[A057427(n), A351956(A028310(n))]`
-/

namespace A351958.P17624987271848817227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351956 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351958.P17624987271848817227

namespace A351958

/-- `eq[A057427(n), A351956(A028310(n))]` -/
def P17624987271848817227.Spec : Prop :=
  ∀ n, (P17624987271848817227.a n : ℤ) = A351958 (n + 1)

end A351958

/-! ## A351958.P2025953539004953726

`lt[1, A014963(A346091(n+1))]+1`
-/

namespace A351958.P2025953539004953726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A346091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A351958.P2025953539004953726

namespace A351958

/-- `lt[1, A014963(A346091(n+1))]+1` -/
def P2025953539004953726.Spec : Prop :=
  ∀ n, (P2025953539004953726.a n : ℤ) = A351958 (n + 1)

end A351958

/-!
# A351959: Composite k such that the primorial inflation of k is a sum of distinct primorial numbers.

The programs for A351959, there is no canonical definition to state claims against.
-/

/-! ## A351959.P6773422755054920169

`eq[4, A329045(n+1)]+1`
-/

namespace A351959.P6773422755054920169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351959.P6773422755054920169

/-! ## A351959.P63414023833289845

`eq[4, A329045(A066182(n+1))]`
-/

namespace A351959.P63414023833289845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329045 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351959.P63414023833289845

/-! ## A351959.P14770241020767877313

`filter[A344591(n+1), A066247(#)]`
-/

namespace A351959.P14770241020767877313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A351959.P14770241020767877313

/-! ## A351959.P1676650714470909858

`filter[A344591(n+2), A005171(#)]`
-/

namespace A351959.P1676650714470909858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A351959.P1676650714470909858

/-! ## A351959.P15032214044999530467

`∩[A002808(n+1), A344591(n+1)]`
-/

namespace A351959.P15032214044999530467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351959.P15032214044999530467

/-!
# A351961: Square array A(n,k) = A156552(gcd(A005940(1+n), A005940(1+k))), read by antidiagonals.

The programs for A351961, there is no canonical definition to state claims against.
-/

/-! ## A351961.P10760088044877372627

`A000229(n+1)%A003989(n+1)`
-/

namespace A351961.P10760088044877372627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000229 (n + 1)) (A003989 (n + 1))

end

end A351961.P10760088044877372627

/-! ## A351961.P5589607202021426853

`A089695(n+1)%A003989(n+1)`
-/

namespace A351961.P5589607202021426853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089695 (n + 1)) (A003989 (n + 1))

end

end A351961.P5589607202021426853

/-! ## A351961.P11950459976381734551

`A231916(n+1)%A003989(n+1)`
-/

namespace A351961.P11950459976381734551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231916 (n + 1)) (A003989 (n + 1))

end

end A351961.P11950459976381734551

/-! ## A351961.P16121642290745861579

`A232756(n+1)%A003989(n+1)`
-/

namespace A351961.P16121642290745861579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232756 (n + 1)) (A003989 (n + 1))

end

end A351961.P16121642290745861579

/-! ## A351961.P15837265909272109562

`A237992(n+1)%A003989(n+1)`
-/

namespace A351961.P15837265909272109562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237992 (n + 1)) (A003989 (n + 1))

end

end A351961.P15837265909272109562

/-!
# A351962: Square array A(n,k) = A156552(lcm(A005940(1+n), A005940(1+k))), read by antidiagonals.

The programs for A351962, there is no canonical definition to state claims against.
-/

/-! ## A351962.P1447592066803041477

`A003990(n+1)-(A184955(A003990(n+1))+1)`
-/

namespace A351962.P1447592066803041477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1) - (A184955 (A003990 (n + 1)).toNat + 1)

end

end A351962.P1447592066803041477

/-! ## A351962.P213335503259910545

`A023443(A003990(n+1))-A184955(A003990(n+1))`
-/

namespace A351962.P213335503259910545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003990 (n + 1)).toNat - A184955 (A003990 (n + 1)).toNat

end

end A351962.P213335503259910545

/-! ## A351962.P6235463253498507663

`A003990(n+1)-A165661(A165661(n)²)`
-/

namespace A351962.P6235463253498507663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1) - A165661 (A165661 n ^ 2).toNat

end

end A351962.P6235463253498507663

/-! ## A351962.P1335417621782756531

`A091256(A285724(n+1))-1`
-/

namespace A351962.P1335417621782756531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 (A285724 (n + 1)).toNat - 1

end

end A351962.P1335417621782756531

/-! ## A351962.P3097645319388643290

`A091256(A286101(n+1))-1`
-/

namespace A351962.P3097645319388643290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 (A286101 (n + 1)).toNat - 1

end

end A351962.P3097645319388643290

/-!
# A351963: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A109812(i)) = A278222(A109812(j)), for all i, j >= 1.

The programs for A351963, there is no canonical definition to state claims against.
-/

/-! ## A351963.P971651144959833518

`A352201(A352884(n+1)²*A351965(n+1))`
-/

namespace A351963.P971651144959833518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352201 (A352884 (n + 1) ^ 2 * A351965 (n + 1)).toNat

end

end A351963.P971651144959833518

/-! ## A351963.P4310309222729538108

`A352201(lcm(A352884(n+1)², A351965(n+1)))`
-/

namespace A351963.P4310309222729538108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352201 (Int.lcm (A352884 (n + 1) ^ 2) (A351965 (n + 1)))

end

end A351963.P4310309222729538108

/-! ## A351963.P10757991992825434032

`A352201(A351965(n+1)*A352884(n+1)*A352884(n+1))`
-/

namespace A351963.P10757991992825434032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352201 (A351965 (n + 1) * A352884 (n + 1) * A352884 (n + 1)).toNat

end

end A351963.P10757991992825434032

/-! ## A351963.P3958136642906395633

`A001222(A329727(n+1)-A060271(n+1))`
-/

namespace A351963.P3958136642906395633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329727 (n + 1) - A060271 (n + 1)).toNat

end

end A351963.P3958136642906395633

/-! ## A351963.P4120205345115881832

`A001221(A364315(n+1)+A322439(2*(n+1)))`
-/

namespace A351963.P4120205345115881832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A364315 (n + 1) + A322439 (2 * (n + 1))).toNat

end

end A351963.P4120205345115881832

/-!
# A351964: The 2-adic valuation of A109812(n); The exponent of the highest power of 2 dividing A109812(n).

The programs for A351964, there is no canonical definition to state claims against.
-/

/-! ## A351964.P3636093960603346747

`A007814(A109812(n+1))`
-/

namespace A351964.P3636093960603346747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A109812 (n + 1)).toNat

end

end A351964.P3636093960603346747

/-! ## A351964.P4949236442027506360

`val(A352575(n+1), 2)`
-/

namespace A351964.P4949236442027506360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A352575 (n + 1)).toNat 2

end

end A351964.P4949236442027506360

/-! ## A351964.P5763789213986218602

`val(A352794(n+1)+1+n, 2)`
-/

namespace A351964.P5763789213986218602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A352794 (n + 1) + 1 + (n : ℤ)).toNat 2

end

end A351964.P5763789213986218602

/-! ## A351964.P3266082915569552732

`A032741(A109812(n+1)/A351965(n+1))`
-/

namespace A351964.P3266082915569552732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A109812 (n + 1) : ℚ) / (A351965 (n + 1) : ℚ))).toNat

end

end A351964.P3266082915569552732

/-! ## A351964.P12659610794172596468

`A032741((A352794(n+1)+1+n)/A351965(n+1))`
-/

namespace A351964.P12659610794172596468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((A352794 (n + 1) + 1 + (n : ℤ) : ℚ) / (A351965 (n + 1) : ℚ))).toNat

end

end A351964.P12659610794172596468

/-! ## A351964.P16491430173404955032

`val(A305371(2*(n+1)), 2)-1`
-/

namespace A351964.P16491430173404955032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A305371 (2 * (n + 1))).toNat 2 : ℤ) - 1

end

end A351964.P16491430173404955032

/-! ## A351964.P8990645749136001216

`A032741(floor(A305369(2*(n+1))/2)/A351965(n+1))`
-/

namespace A351964.P8990645749136001216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((⌊(A305369 (2 * (n + 1)) : ℚ) / 2⌋ : ℚ) / (A351965 (n + 1) : ℚ))).toNat

end

end A351964.P8990645749136001216

/-! ## A351964.P14941859015562320390

`val(A113232(A113233(n+1)), 2)`
-/

namespace A351964.P14941859015562320390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113232 (A113233 (n + 1)).toNat).toNat 2

end

end A351964.P14941859015562320390

/-! ## A351964.P14006811924927214345

`A007814(3*A109812(ϕ²-(ϕ-n)))`
-/

namespace A351964.P14006811924927214345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A351964.P14006811924927214345

/-! ## A351964.P3717191904899272638

`A001222(gcd(2^n, A109812(n+1)))`
-/

namespace A351964.P3717191904899272638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 ^ n : ℤ) (A109812 (n + 1)))

end

end A351964.P3717191904899272638

/-!
# A351965: The odd part of A109812(n).

The programs for A351965, there is no canonical definition to state claims against.
-/

/-! ## A351965.P14619495632009389694

`A000265(A109812(n+1))`
-/

namespace A351965.P14619495632009389694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A109812 (n + 1)).toNat

end

end A351965.P14619495632009389694

/-! ## A351965.P7903959825311662668

`A109812(n+1)/2^A351964(n+1)`
-/

namespace A351965.P7903959825311662668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109812 (n + 1) : ℚ) / (2 : ℚ) ^ (A351964 (n + 1) : ℤ)

end

end A351965.P7903959825311662668

/-! ## A351965.P13185240552436999733

`A302044(2*A109812(n+1))`
-/

namespace A351965.P13185240552436999733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A109812 (n + 1)).toNat

end

end A351965.P13185240552436999733

/-! ## A351965.P16240584334747331111

`A000265(A352794(n+1)+1+n)`
-/

namespace A351965.P16240584334747331111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A352794 (n + 1) + 1 + (n : ℤ)).toNat

end

end A351965.P16240584334747331111

/-! ## A351965.P1624581796809289561

`A000265(2*A109812(ϕ²-(ϕ-n)))`
-/

namespace A351965.P1624581796809289561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A109812 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A351965.P1624581796809289561

/-! ## A351965.P4613623783161432034

`A109812(n+1)/A000079(A351964(n+1))`
-/

namespace A351965.P4613623783161432034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109812 (n + 1) : ℚ) / (A000079 (A351964 (n + 1)).toNat : ℚ)

end

end A351965.P4613623783161432034

/-! ## A351965.P8246886917277523136

`A000265(A305371(2*(n+1)))`
-/

namespace A351965.P8246886917277523136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A305371 (2 * (n + 1))).toNat

end

end A351965.P8246886917277523136

/-! ## A351965.P3488187029917296251

`A028234(2*A109812(n+1))`
-/

namespace A351965.P3488187029917296251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A109812 (n + 1)).toNat

end

end A351965.P3488187029917296251

/-! ## A351965.P1449504877737638473

`A093803(2*A109812(n+1))`
-/

namespace A351965.P1449504877737638473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A109812 (n + 1)).toNat

end

end A351965.P1449504877737638473

/-! ## A351965.P7453073048967579773

`A139391(2*A109812(n+1))`
-/

namespace A351965.P7453073048967579773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * A109812 (n + 1)).toNat

end

end A351965.P7453073048967579773

/-!
# A351968: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/3)} binomial(n-1,3*k) * a(k) * a(n-3*k-1).

The programs for A351968, there is no canonical definition to state claims against.
-/

/-! ## A351968.P9973392908014300694

`A333881(n)+A025466(A008862(n))`
-/

namespace A351968.P9973392908014300694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333881 n + A025466 (A008862 n).toNat

end

end A351968.P9973392908014300694

/-! ## A351968.P12092021949476259326

`A333881(n)+A185284(A011971(n))`
-/

namespace A351968.P12092021949476259326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333881 n + A185284 (A011971 n).toNat

end

end A351968.P12092021949476259326

/-! ## A351968.P12786284772781844416

`A333881(n)+A007949(A222364(n+1))`
-/

namespace A351968.P12786284772781844416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333881 n + A007949 (A222364 (n + 1)).toNat

end

end A351968.P12786284772781844416

/-! ## A351968.P3783546282445406448

`A333881(n)+A007949(A296419(n+1))`
-/

namespace A351968.P3783546282445406448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333881 n + A007949 (A296419 (n + 1)).toNat

end

end A351968.P3783546282445406448

/-! ## A351968.P7083126549854548420

`A000027(A382290(2*n+1)+A333881(n))`
-/

namespace A351968.P7083126549854548420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A382290 (2 * n + 1) + A333881 n).toNat

end

end A351968.P7083126549854548420

/-!
# A351969: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/4)} binomial(n-1,4*k) * a(k) * a(n-4*k-1).

The programs for A351969, there is no canonical definition to state claims against.
-/

/-! ## A351969.P1322015873254841349

`or(A266070(A186725(n)), A306347(n))`
-/

namespace A351969.P1322015873254841349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266070 (A186725 n).toNat) (A306347 n)

end

end A351969.P1322015873254841349

/-! ## A351969.P1663173277445948494

`A306347(n)+A045698(A275266(n+1))`
-/

namespace A351969.P1663173277445948494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306347 n + A045698 (A275266 (n + 1)).toNat

end

end A351969.P1663173277445948494

/-! ## A351969.P9614809585780515582

`A306347(n)+A185238(A274846(n+1))`
-/

namespace A351969.P9614809585780515582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306347 n + A185238 (A274846 (n + 1)).toNat

end

end A351969.P9614809585780515582

/-!
# A351970: a(0) = 1; a(n) = Sum_{k=0..floor(n/3)} binomial(n,3*k) * a(k).

The programs for A351970, there is no canonical definition to state claims against.
-/

/-! ## A351970.P10927588139188840392

`A024493(n)+A014382(A081165(n))`
-/

namespace A351970.P10927588139188840392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + A014382 (A081165 n).toNat

end

end A351970.P10927588139188840392

/-! ## A351970.P1786953210644487125

`A024493(n)+A004883(A309863(n))`
-/

namespace A351970.P1786953210644487125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + A004883 (A309863 n).toNat

end

end A351970.P1786953210644487125

/-! ## A351970.P10442279481651725235

`A309863(A062399(n))+A111927(n)`
-/

namespace A351970.P10442279481651725235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 (A062399 n).toNat + A111927 n

end

end A351970.P10442279481651725235

/-! ## A351970.P14334828896075886899

`A302843(A309863(n))+A111927(n)`
-/

namespace A351970.P14334828896075886899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A309863 n).toNat + A111927 n

end

end A351970.P14334828896075886899

/-! ## A351970.P11136162462932430266

`or(A024493(n), A172986(A035040(n)))`
-/

namespace A351970.P11136162462932430266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024493 n) (A172986 (A035040 n).toNat)

end

end A351970.P11136162462932430266

/-!
# A351971: a(0) = 1; a(n) = Sum_{k=0..floor(n/4)} binomial(n,4*k) * a(k).

The programs for A351971, there is no canonical definition to state claims against.
-/

/-! ## A351971.P9225029594353471216

`A038503(n)+A010051(A022171(n))`
-/

namespace A351971.P9225029594353471216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + A010051 (A022171 n).toNat

end

end A351971.P9225029594353471216

/-! ## A351971.P15622279004012875399

`A038503(n)+A010051(A022177(n))`
-/

namespace A351971.P15622279004012875399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + A010051 (A022177 n).toNat

end

end A351971.P15622279004012875399

/-! ## A351971.P92754162537843134

`A038503(n)+A010054(A023502(n))`
-/

namespace A351971.P92754162537843134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + A010054 (A023502 n).toNat

end

end A351971.P92754162537843134

/-! ## A351971.P3827513875714931781

`A044941(A000079(n))+A038503(n)`
-/

namespace A351971.P3827513875714931781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A000079 n).toNat + A038503 n

end

end A351971.P3827513875714931781

/-! ## A351971.P17607561915613104821

`A038503(n)+A016389(A120258(n))`
-/

namespace A351971.P17607561915613104821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + A016389 (A120258 n).toNat

end

end A351971.P17607561915613104821

/-!
# A351972: a(n) = 1 + Sum_{k=0..floor((n-1)/2)} a(k) * a(n-2*k-1).

The programs for A351972, there is no canonical definition to state claims against.
-/

/-! ## A351972.P8220163692263942422

`A367467(A390425(n))`
-/

namespace A351972.P8220163692263942422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367467 (A390425 n).toNat

end

end A351972.P8220163692263942422

/-! ## A351972.P15760764356956446715

`round(root(A331942(3*n+1), 5))`
-/

namespace A351972.P15760764356956446715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A331942 (3 * n + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A351972.P15760764356956446715

/-! ## A351972.P4547783996903266212

`A226190(A288231(n)+1)`
-/

namespace A351972.P4547783996903266212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A288231 n + 1).toNat

end

end A351972.P4547783996903266212

/-! ## A351972.P16699127399446134611

`A226190(A289262(n)+1)`
-/

namespace A351972.P16699127399446134611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A289262 n + 1).toNat

end

end A351972.P16699127399446134611

/-! ## A351972.P17588381218206043521

`A172471(A047016(n))`
-/

namespace A351972.P17588381218206043521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047016 n).toNat

end

end A351972.P17588381218206043521

/-!
# A351973: a(n) = (-1)^n + Sum_{k=0..floor((n-1)/2)} a(k) * a(n-2*k-1).

The programs for A351973, there is no canonical definition to state claims against.
-/

/-! ## A351973.P4996299789378304381

`A145816(a(n-2)+n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A351973.P4996299789378304381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A145816 (a (n - 2) + (n : ℤ)).toNat

end

end A351973.P4996299789378304381

/-! ## A351973.P12301267393353126958

`A143644(∑[A143668(2^n)])`
-/

namespace A351973.P12301267393353126958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143668 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A351973.P12301267393353126958

/-! ## A351973.P4502146670799850853

`A127321(A099962(n)-A000035(n))`
-/

namespace A351973.P4502146670799850853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A099962 n - A000035 n).toNat

end

end A351973.P4502146670799850853

/-! ## A351973.P9369073450173445241

`Δ[A121900(A019299(n)-1)]`
-/

namespace A351973.P9369073450173445241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A019299 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351973.P9369073450173445241

/-! ## A351973.P703065066259290371

`Δ[A121900(record[A178841(n)-1])]`
-/

namespace A351973.P703065066259290371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178841 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351973.P703065066259290371

/-!
# A351974: a(n) is the first maximum reached by iterating the reduced Collatz function R on 4n-1: a(n) = R^s(4n-1), where R(k) = A139391(k) and s the number of iterations required.

The programs for A351974, there is no canonical definition to state claims against.
-/

/-! ## A351974.P8544805593290538556

`A375911(3*(n+1))`
-/

namespace A351974.P8544805593290538556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375911 (3 * (n + 1))

end

end A351974.P8544805593290538556

/-! ## A351974.P2049225016054528270

`A254070(4*(n+1))`
-/

namespace A351974.P2049225016054528270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254070 (4 * (n + 1))

end

end A351974.P2049225016054528270

/-! ## A351974.P17098215063122502602

`12*A085062(n)+5`
-/

namespace A351974.P17098215063122502602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A085062 n + 5

end

end A351974.P17098215063122502602

/-! ## A351974.P15839327114083717896

`4/3*A085060(n)+1`
-/

namespace A351974.P15839327114083717896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A085060 n : ℚ) + 1

end

end A351974.P15839327114083717896

/-! ## A351974.P2461877061515309855

`A017581(A085062(n))`
-/

namespace A351974.P2461877061515309855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A085062 n).toNat

end

end A351974.P2461877061515309855

/-! ## A351974.P14439428601404654602

`A117899(A085060(n))`
-/

namespace A351974.P14439428601404654602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117899 (A085060 n).toNat

end

end A351974.P14439428601404654602

/-! ## A351974.P17046859362177972038

`A004773(A085060(n)+1)`
-/

namespace A351974.P17046859362177972038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A085060 n + 1).toNat

end

end A351974.P17046859362177972038

/-! ## A351974.P11641486996320121414

`A092242(A394497(n+1))`
-/

namespace A351974.P11641486996320121414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (A394497 (n + 1)).toNat

end

end A351974.P11641486996320121414

/-! ## A351974.P17561465150716665503

`A016969(2*A085062(n))`
-/

namespace A351974.P17561465150716665503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * A085062 n).toNat

end

end A351974.P17561465150716665503

/-! ## A351974.P10191696289996758236

`A008611(4*A085060(n))`
-/

namespace A351974.P10191696289996758236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * A085060 n).toNat

end

end A351974.P10191696289996758236

/-!
# A351975: Numbers k such that A037276(k) == -1 (mod k).

The programs for A351975, there is no canonical definition to state claims against.
-/

/-! ## A351975.P17715670559482754570

`lt[(A289660(n+1)+1)%(n+1), 1]+1`
-/

namespace A351975.P17715670559482754570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289660 (n + 1) + 1) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351975.P17715670559482754570

/-! ## A351975.P14989340091223875609

`record[xor((n+1)²-2^n, ∑[∑[2^n]])]`
-/

namespace A351975.P14989340091223875609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n + 1) ^ 2 : ℤ) - (2 ^ n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351975.P14989340091223875609

/-!
# A351977: Number of integer partitions of n with as many even parts as odd parts and as many even conjugate parts as odd conjugate parts.

The programs for A351977, there is no canonical definition to state claims against.
-/

/-! ## A351977.P7485576931570511689

`A351981(n-A343222(A351938(n)))`
-/

namespace A351977.P7485576931570511689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 ((n : ℤ) - A343222 (A351938 n).toNat).toNat

end

end A351977.P7485576931570511689

/-! ## A351977.P8753835394286248788

`and(A008578(A304867(n)), A351981(n))`
-/

namespace A351977.P8753835394286248788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008578 (A304867 n).toNat) (A351981 n)

end

end A351977.P8753835394286248788

/-! ## A351977.P15701841395735197283

`A051699(A351981(n)+A338132(n+1))`
-/

namespace A351977.P15701841395735197283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A351981 n + A338132 (n + 1)).toNat

end

end A351977.P15701841395735197283

/-! ## A351977.P5338008925914326708

`A351981(n)%A380120(A317180(n+1))`
-/

namespace A351977.P5338008925914326708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351981 n) (A380120 (A317180 (n + 1)).toNat)

end

end A351977.P5338008925914326708

/-! ## A351977.P10934667813076054411

`A188038(A272919(2*n+3))*A351981(n)`
-/

namespace A351977.P10934667813076054411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (A272919 (2 * n + 3)).toNat * A351981 n

end

end A351977.P10934667813076054411

/-!
# A351978: Number of integer partitions of n for which the number of even parts, the number of odd parts, the number of even conjugate parts, and the number of odd conjugate parts are all equal.

The programs for A351978, there is no canonical definition to state claims against.
-/

/-! ## A351978.P9241215937456105046

`and(A328391(A060477(n+1)), A329359(n+1))`
-/

namespace A351978.P9241215937456105046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A328391 (A060477 (n + 1)).toNat) (A329359 (n + 1))

end

end A351978.P9241215937456105046

/-! ## A351978.P558955233944022478

`A287345(A331987(n)+∑[A280667(n+1)]+16)`
-/

namespace A351978.P558955233944022478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287345 (A331987 n + (∑ j ∈ Finset.range (n + 1), f1 j + 16)).toNat

end

end A351978.P558955233944022478

/-! ## A351978.P15037419683872938704

`A059252(A299483(3*(n+1)))%A272725(n+1)`
-/

namespace A351978.P15037419683872938704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059252 (A299483 (3 * (n + 1))).toNat) (A272725 (n + 1))

end

end A351978.P15037419683872938704

/-! ## A351978.P14090254394060830908

`A241386(A351977(n)^A333733(n))`
-/

namespace A351978.P14090254394060830908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241386 (SequenceMachineLib.roundAway ((A351977 n : ℚ) ^ (A333733 n : ℤ))).toNat

end

end A351978.P14090254394060830908

/-! ## A351978.P16573585927755603401

`A039651(A204983(n+1))*A259776(n)`
-/

namespace A351978.P16573585927755603401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (A204983 (n + 1)).toNat * A259776 n

end

end A351978.P16573585927755603401

/-!
# A351979: Numbers whose prime factorization has all odd prime indices and all even prime exponents.

The programs for A351979, the canonical program `A351979.P14330846022404580825` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351979 has offset 1).

The definition of A351979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351979.P14330846022404580825

`A066208(n+1)²`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A351979

/-- `A066208(n+1)²` -/
def P14330846022404580825.Spec : Prop :=
  ∀ n, P14330846022404580825.a n = A351979 (n + 1)

theorem P14330846022404580825.correct : P14330846022404580825.Spec := by
  intro n
  simp only [A351979, Nat.add_sub_cancel]

end A351979

/-! ## A351979.P17038524883585250786

`(lt[A257992(n+1), 1]+1)²`
-/

namespace A351979.P17038524883585250786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A351979.P17038524883585250786

namespace A351979

/-- `(lt[A257992(n+1), 1]+1)²` -/
def P17038524883585250786.Spec : Prop :=
  ∀ n, (P17038524883585250786.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P6394712732367902927

`(lt[A344931(n+1), 1]+1)²`
-/

namespace A351979.P6394712732367902927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A351979.P6394712732367902927

namespace A351979

/-- `(lt[A344931(n+1), 1]+1)²` -/
def P6394712732367902927.Spec : Prop :=
  ∀ n, (P6394712732367902927.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P10334340846839823337

`record[A247503(n+1)²]`
-/

namespace A351979.P10334340846839823337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351979.P10334340846839823337

namespace A351979

/-- `record[A247503(n+1)²]` -/
def P10334340846839823337.Spec : Prop :=
  ∀ n, P10334340846839823337.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P3483808117109822778

`record[A247503(-xor(n, -1))]²`
-/

namespace A351979.P3483808117109822778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A351979.P3483808117109822778

namespace A351979

/-- `record[A247503(-xor(n, -1))]²` -/
def P3483808117109822778.Spec : Prop :=
  ∀ n, P3483808117109822778.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P15214293136543608825

`(eq[0, A324967(n+1)]+1)²`
-/

namespace A351979.P15214293136543608825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A351979.P15214293136543608825

namespace A351979

/-- `(eq[0, A324967(n+1)]+1)²` -/
def P15214293136543608825.Spec : Prop :=
  ∀ n, (P15214293136543608825.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P14672425971595624175

`(eq[1, A248101(n+1)]+1)²`
-/

namespace A351979.P14672425971595624175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A351979.P14672425971595624175

namespace A351979

/-- `(eq[1, A248101(n+1)]+1)²` -/
def P14672425971595624175.Spec : Prop :=
  ∀ n, (P14672425971595624175.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P4730927666568088579

`A000290(2*A066208(n+1)-A066208(n+1))`
-/

namespace A351979.P4730927666568088579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A066208 (n + 1) - A066208 (n + 1)).toNat

end

end A351979.P4730927666568088579

namespace A351979

/-- `A000290(2*A066208(n+1)-A066208(n+1))` -/
def P4730927666568088579.Spec : Prop :=
  ∀ n, P4730927666568088579.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P15149490168633009613

`eq[1, char[A319525(n+1)]]²`
-/

namespace A351979.P15149490168633009613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A351979.P15149490168633009613

namespace A351979

/-- `eq[1, char[A319525(n+1)]]²` -/
def P15149490168633009613.Spec : Prop :=
  ∀ n, (P15149490168633009613.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P17842487026560126427

`A374611(A066207(n+1))²`
-/

namespace A351979.P17842487026560126427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (A066207 (n + 1)).toNat ^ 2

end

end A351979.P17842487026560126427

namespace A351979

/-- `A374611(A066207(n+1))²` -/
def P17842487026560126427.Spec : Prop :=
  ∀ n, P17842487026560126427.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P3298851931541155931

`A374611(record[A374611(n+1)])²`
-/

namespace A351979.P3298851931541155931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A351979.P3298851931541155931

namespace A351979

/-- `A374611(record[A374611(n+1)])²` -/
def P3298851931541155931.Spec : Prop :=
  ∀ n, P3298851931541155931.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P4365993227283470306

`A066208(n+1)*A374611(A066207(n+1))`
-/

namespace A351979.P4365993227283470306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1) * A374611 (A066207 (n + 1)).toNat

end

end A351979.P4365993227283470306

namespace A351979

/-- `A066208(n+1)*A374611(A066207(n+1))` -/
def P4365993227283470306.Spec : Prop :=
  ∀ n, P4365993227283470306.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P460687972187035960

`record[A008619(n+1)*A247503(A008619(n+1))]`
-/

namespace A351979.P460687972187035960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A247503 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351979.P460687972187035960

namespace A351979

/-- `record[A008619(n+1)*A247503(A008619(n+1))]` -/
def P460687972187035960.Spec : Prop :=
  ∀ n, P460687972187035960.a n = A351979 (n + 1)

end A351979

/-! ## A351979.P10215927303280348777

`lt[A008458(n), A247503(A022144(n))]²`
-/

namespace A351979.P10215927303280348777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A351979.P10215927303280348777

namespace A351979

/-- `lt[A008458(n), A247503(A022144(n))]²` -/
def P10215927303280348777.Spec : Prop :=
  ∀ n, (P10215927303280348777.a n : ℤ) = A351979 (n + 1)

end A351979

/-! ## A351979.P13769604417720241103

`lt[A008574(n), A247503(A022144(n))]²`
-/

namespace A351979.P13769604417720241103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A351979.P13769604417720241103

namespace A351979

/-- `lt[A008574(n), A247503(A022144(n))]²` -/
def P13769604417720241103.Spec : Prop :=
  ∀ n, (P13769604417720241103.a n : ℤ) = A351979 (n + 1)

end A351979

/-!
# A351980: Heinz numbers of integer partitions with as many even parts as odd conjugate parts and as many odd parts as even conjugate parts.

The programs for A351980, there is no canonical definition to state claims against.
-/

/-! ## A351980.P18046407859136084719

`∩[A349157(n+1), A350943(n+1)]`
-/

namespace A351980.P18046407859136084719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351980.P18046407859136084719

/-!
# A351981: Number of integer partitions of n with as many even parts as odd conjugate parts, and as many odd parts as even conjugate parts.

The programs for A351981, there is no canonical definition to state claims against.
-/

/-! ## A351981.P8579033792694846897

`A351977(n)+A343222(A351938(n))`
-/

namespace A351981.P8579033792694846897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 n + A343222 (A351938 n).toNat

end

end A351981.P8579033792694846897

/-! ## A351981.P15860907222918848336

`gcd(A351977(A102480(n)), A351977(n))`
-/

namespace A351981.P15860907222918848336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351977 (A102480 n).toNat) (A351977 n)

end

end A351981.P15860907222918848336

/-! ## A351981.P769778007950866963

`A351977(n)+A064741(A351241(n+1))`
-/

namespace A351981.P769778007950866963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 n + A064741 (A351241 (n + 1)).toNat

end

end A351981.P769778007950866963

/-! ## A351981.P3303170451985378369

`A139354(A166300(n)+A004016(n+4))`
-/

namespace A351981.P3303170451985378369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A166300 n + A004016 (n + 4)).toNat

end

end A351981.P3303170451985378369

/-! ## A351981.P13442584539479202201

`A139354(A247299(∑[n])+A004016(n+4))`
-/

namespace A351981.P13442584539479202201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A247299 (∑ j ∈ Finset.range (n + 1), f1 j) + A004016 (n + 4)).toNat

end

end A351981.P13442584539479202201

/-!
# A351982: Number of integer partitions of n into prime parts with prime multiplicities.

The programs for A351982, there is no canonical definition to state claims against.
-/

/-! ## A351982.P14770260848938766350

`A349164(n+1)%A272020(A052964(n))`
-/

namespace A351982.P14770260848938766350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349164 (n + 1)) (A272020 (A052964 n).toNat)

end

end A351982.P14770260848938766350

/-! ## A351982.P1830118740626986518

`and(∑[A127384(n)], A086623(n+1))`
-/

namespace A351982.P1830118740626986518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A086623 (n + 1))

end

end A351982.P1830118740626986518

/-! ## A351982.P12246622178978467205

`and(Δ[A256218(n+1)], A339218(n))`
-/

namespace A351982.P12246622178978467205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A339218 n)

end

end A351982.P12246622178978467205

/-! ## A351982.P530036592638710255

`A353429(n)-A352516(A298732(n))`
-/

namespace A351982.P530036592638710255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353429 n - A352516 (A298732 n).toNat

end

end A351982.P530036592638710255

/-! ## A351982.P1524545287211270374

`A136766(n)%A136766(A005126(n))`
-/

namespace A351982.P1524545287211270374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136766 n) (A136766 (A005126 n).toNat)

end

end A351982.P1524545287211270374

/-!
# A351983: Number of integer compositions of n with exactly one part above the diagonal.

The programs for A351983, there is no canonical definition to state claims against.
-/

/-! ## A351983.P17839362509312924995

`A059995(A062092(n)+floor(π*(3/2)^n))`
-/

namespace A351983.P17839362509312924995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A062092 n + ⌊Real.pi * (((3 : ℚ) / 2) ^ n : ℝ)⌋).toNat

end

end A351983.P17839362509312924995

/-! ## A351983.P8461757899337517027

`A026819(floor(sqrt(A099152(n+3))))-1`
-/

namespace A351983.P8461757899337517027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.sqrt (A099152 (n + 3))).toNat - 1

end

end A351983.P8461757899337517027

/-! ## A351983.P10852917304043113080

`A002024(A148572(n))-1`
-/

namespace A351983.P10852917304043113080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148572 n).toNat - 1

end

end A351983.P10852917304043113080

/-! ## A351983.P16922997799495478604

`A003056(A148572(n)-1)`
-/

namespace A351983.P16922997799495478604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148572 n - 1).toNat

end

end A351983.P16922997799495478604

/-! ## A351983.P5779066028502778566

`A085141(A108153(n))`
-/

namespace A351983.P5779066028502778566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A108153 n).toNat

end

end A351983.P5779066028502778566

/-!
# A351984: a(n) is the number of symmetric anti-Hadamard matrices of order n whose sum of the inverse squares of their singular values is maximal.

The programs for A351984, there is no canonical definition to state claims against.
-/

/-! ## A351984.P7430767575590555704

`(char[5]+1+n)*n!`
-/

namespace A351984.P7430767575590555704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * Nat.factorial n

end

end A351984.P7430767575590555704

/-! ## A351984.P18330424606159321151

`∏[xor(n+1, floor(n/5))]`
-/

namespace A351984.P18330424606159321151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A351984.P18330424606159321151

/-! ## A351984.P14959497350138074944

`∏[C(2, C(n+2, 7))+n]`
-/

namespace A351984.P14959497350138074944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (n + 2) 7) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A351984.P14959497350138074944

/-!
# A351985: If n = abcd... in decimal, a(n) = |a^3 - b^3 + c^3 - d^3 + ...|.

The programs for A351985, there is no canonical definition to state claims against.
-/

/-! ## A351985.P12407268297884951096

`abs((11*floor(n/10)-n)*(∑{digits}[n, #²]+∑{digits}[n, #]²)/2)`
-/

namespace A351985.P12407268297884951096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ) : ℚ) * (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) / 2)|

end

end A351985.P12407268297884951096

/-! ## A351985.P15402544971398703366

`(∑{digits}[n, #²]+∑{digits}[n, #]²)/2*dr(11*floor(n/10)-n)`
-/

namespace A351985.P15402544971398703366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) / 2 * (SequenceMachineLib.digitalRoot (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) : ℚ)

end

end A351985.P15402544971398703366

/-! ## A351985.P4313708236272962573

`(∑{digits}[n, #²]+∑{digits}[n, #]²)/2*∑{digits}[11*floor(n/10)-n, #]`
-/

namespace A351985.P4313708236272962573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) / 2 * ((((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A351985.P4313708236272962573

/-! ## A351985.P82764128362446623

`abs((∑{digits}[n, #²]+∑{digits}[n, #]²)/2*A225693(n))`
-/

namespace A351985.P82764128362446623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) / 2 * (A225693 n : ℚ)|

end

end A351985.P82764128362446623

/-! ## A351985.P4312369031414091103

`A069940(n)*A241494(n)`
-/

namespace A351985.P4312369031414091103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069940 n * A241494 n

end

end A351985.P4312369031414091103

/-! ## A351985.P1327900261503578237

`abs(A055017(n)*A069940(n))`
-/

namespace A351985.P1327900261503578237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n * A069940 n|

end

end A351985.P1327900261503578237

/-! ## A351985.P4945826624870513054

`abs(A069940(n)*A076313(n))`
-/

namespace A351985.P4945826624870513054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069940 n * A076313 n|

end

end A351985.P4945826624870513054

/-! ## A351985.P7599995167455996224

`abs(A069940(n)*A225693(n))`
-/

namespace A351985.P7599995167455996224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069940 n * A225693 n|

end

end A351985.P7599995167455996224

/-! ## A351985.P2804163659144416173

`A055017(A004185(n))*A069940(n)`
-/

namespace A351985.P2804163659144416173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004185 n).toNat * A069940 n

end

end A351985.P2804163659144416173

/-!
# A351987: Numbers with factorial base expansion digits in nonincreasing order.

The programs for A351987, there is no canonical definition to state claims against.
-/

/-! ## A351987.P13151323587053296279

`eq[1, A381770(n)]`
-/

namespace A351987.P13151323587053296279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351987.P13151323587053296279

/-! ## A351987.P6899040463309322533

`eq[n, A381771(n)]`
-/

namespace A351987.P6899040463309322533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351987.P6899040463309322533

/-! ## A351987.P13684138219398439344

`eq[n, A351988(n)]`
-/

namespace A351987.P13684138219398439344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351987.P13684138219398439344

/-! ## A351987.P17914616755299053110

`record[A005843(n)-A351988(n)]`
-/

namespace A351987.P17914616755299053110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A351988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351987.P17914616755299053110

/-! ## A351987.P6754560460888395939

`lt[A351988(n), A000027(n+1)]`
-/

namespace A351987.P6754560460888395939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351987.P6754560460888395939

/-! ## A351987.P3681375496839863684

`A351988(lt[A351988(n), n+1])`
-/

namespace A351987.P3681375496839863684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A351987.P3681375496839863684

/-! ## A351987.P16419026042257208892

`A351988(lt[A351988(n)-1, n])`
-/

namespace A351987.P16419026042257208892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A351987.P16419026042257208892

/-! ## A351987.P5359094679416224148

`A351988(record[2*n-A351988(n)])`
-/

namespace A351987.P5359094679416224148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A351988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A351987.P5359094679416224148

/-! ## A351987.P17004951397217686646

`record[A008588(n)-A008587(A351988(n))]`
-/

namespace A351987.P17004951397217686646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n - A008587 (A351988 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351987.P17004951397217686646

/-! ## A351987.P5956668087819049632

`record[n-A351988(A064680(n))]`
-/

namespace A351987.P5956668087819049632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351988 (A064680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351987.P5956668087819049632

/-! ## A351987.P13211781056091210055

`record[n-A351988(A006370(n))]`
-/

namespace A351987.P13211781056091210055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A351988 (A006370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351987.P13211781056091210055

/-!
# A351989: Fibonacci(p-J(p,5)) mod p^3, where p is the n-th prime and J is the Jacobi symbol.

The programs for A351989, there is no canonical definition to state claims against.
-/

/-! ## A351989.P1364982841572424943

`p?[A011867(n)]*A092330(n+1)`
-/

namespace A351989.P1364982841572424943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A092330 (n + 1)

end

end A351989.P1364982841572424943

/-! ## A351989.P14535921790846378533

`p?[A019565(n)]*A092330(n+1)`
-/

namespace A351989.P14535921790846378533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A092330 (n + 1)

end

end A351989.P14535921790846378533

/-! ## A351989.P10739860118728771713

`p?[A077168(n)]*A092330(n+1)`
-/

namespace A351989.P10739860118728771713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A092330 (n + 1)

end

end A351989.P10739860118728771713

/-! ## A351989.P7214268886814235466

`A028310(A000040(n+1)*A092330(n+1))`
-/

namespace A351989.P7214268886814235466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000040 (n + 1) * A092330 (n + 1)).toNat

end

end A351989.P7214268886814235466

/-!
# A351990: Number of minimum edge covers of the complete graph K_n.

The programs for A351990, the canonical program `A351990.P2498827943485649658` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351990 has offset 1).

The definition of A351990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351990.P2498827943485649658

`∏[A093178(n+1)]*A057979(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A351990

/-- `∏[A093178(n+1)]*A057979(n+1)` -/
def P2498827943485649658.Spec : Prop :=
  ∀ n, P2498827943485649658.a n = A351990 (n + 1)

theorem P2498827943485649658.correct : P2498827943485649658.Spec := by
  intro n
  simp only [A351990, Nat.add_sub_cancel]

end A351990

/-! ## A351990.P4973641575839725459

`A001497(A008795(n))*A026741(n)`
-/

namespace A351990.P4973641575839725459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (A008795 n).toNat * A026741 n

end

end A351990.P4973641575839725459

namespace A351990

/-- `A001497(A008795(n))*A026741(n)` -/
def P4973641575839725459.Spec : Prop :=
  ∀ n, P4973641575839725459.a n = A351990 (n + 1)

end A351990

/-! ## A351990.P16262644793367319445

`A001147(A028242(n))*A026741(n)`
-/

namespace A351990.P16262644793367319445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A028242 n).toNat * A026741 n

end

end A351990.P16262644793367319445

namespace A351990

/-- `A001147(A028242(n))*A026741(n)` -/
def P16262644793367319445.Spec : Prop :=
  ∀ n, P16262644793367319445.a n = A351990 (n + 1)

end A351990

/-! ## A351990.P13986794362796861758

`A000124(n)*A123023(n)-A055634(n)`
-/

namespace A351990.P13986794362796861758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A123023 n - A055634 n

end

end A351990.P13986794362796861758

namespace A351990

/-- `A000124(n)*A123023(n)-A055634(n)` -/
def P13986794362796861758.Spec : Prop :=
  ∀ n, P13986794362796861758.a n = A351990 (n + 1)

end A351990

/-! ## A351990.P9139498618309856968

`A123023(n+1)+A000217(n)*A123023(n)`
-/

namespace A351990.P9139498618309856968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (n + 1) + A000217 n * A123023 n

end

end A351990.P9139498618309856968

namespace A351990

/-- `A123023(n+1)+A000217(n)*A123023(n)` -/
def P9139498618309856968.Spec : Prop :=
  ∀ n, P9139498618309856968.a n = A351990 (n + 1)

end A351990

/-! ## A351990.P12764641256880167566

`A390893(A024206(n+2))`
-/

namespace A351990.P12764641256880167566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390893 (A024206 (n + 2)).toNat

end

end A351990.P12764641256880167566

namespace A351990

/-- `A390893(A024206(n+2))` -/
def P12764641256880167566.Spec : Prop :=
  ∀ n, P12764641256880167566.a n = A351990 (n + 1)

end A351990

/-!
# A351991: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^prime(k)/prime(k)!).

The programs for A351991, there is no canonical definition to state claims against.
-/

/-! ## A351991.P18108983448143196836

`A357526(A027261(n))`
-/

namespace A351991.P18108983448143196836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357526 (A027261 n).toNat

end

end A351991.P18108983448143196836

/-! ## A351991.P13107859769359196950

`A339219(n*A029963(n+1))`
-/

namespace A351991.P13107859769359196950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339219 ((n : ℤ) * A029963 (n + 1)).toNat

end

end A351991.P13107859769359196950

/-! ## A351991.P15460943157058147828

`A339219(n*A259384(n+1))`
-/

namespace A351991.P15460943157058147828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339219 ((n : ℤ) * A259384 (n + 1)).toNat

end

end A351991.P15460943157058147828

/-!
# A351992: Number of minimum edge covers in the n-vertex wheel graph.

The programs for A351992, the canonical program `A351992.P8751017129503748290` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351992 has offset 1).

The definition of A351992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351992.P8751017129503748290

`(3*(n+1)²+2*(n+1)-3*(-1)^(n+1)*n²-5)/8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A351992

/-- `(3*(n+1)²+2*(n+1)-3*(-1)^(n+1)*n²-5)/8` -/
def P8751017129503748290.Spec : Prop :=
  ∀ n, P8751017129503748290.a n = (A351992 (n + 1) : ℚ)

end A351992

/-! ## A351992.P17943942668383192977

`∑[2*n]-gcd(n, ∑[n])²`
-/

namespace A351992.P17943942668383192977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ)

end

end A351992.P17943942668383192977

namespace A351992

/-- `∑[2*n]-gcd(n, ∑[n])²` -/
def P17943942668383192977.Spec : Prop :=
  ∀ n, P17943942668383192977.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P10016315030220637726

`∑[2*n]-(lcm(2, n)/2)²`
-/

namespace A351992.P10016315030220637726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((Nat.lcm 2 n : ℚ) / 2) ^ 2

end

end A351992.P10016315030220637726

namespace A351992

/-- `∑[2*n]-(lcm(2, n)/2)²` -/
def P10016315030220637726.Spec : Prop :=
  ∀ n, P10016315030220637726.a n = (A351992 (n + 1) : ℚ)

end A351992

/-! ## A351992.P749076631607895641

`n²+n-A168077(n)`
-/

namespace A351992.P749076631607895641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A168077 n

end

end A351992.P749076631607895641

namespace A351992

/-- `n²+n-A168077(n)` -/
def P749076631607895641.Spec : Prop :=
  ∀ n, P749076631607895641.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P361750674713863248

`A083381(A092530(n))`
-/

namespace A351992.P361750674713863248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083381 (A092530 n).toNat

end

end A351992.P361750674713863248

namespace A351992

/-- `A083381(A092530(n))` -/
def P361750674713863248.Spec : Prop :=
  ∀ n, P361750674713863248.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P12158716412533676206

`A002378(n)-A026741(n)²`
-/

namespace A351992.P12158716412533676206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A026741 n ^ 2

end

end A351992.P12158716412533676206

namespace A351992

/-- `A002378(n)-A026741(n)²` -/
def P12158716412533676206.Spec : Prop :=
  ∀ n, P12158716412533676206.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P13162172076654059740

`A002378(n)-A181318(2*n)`
-/

namespace A351992.P13162172076654059740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A181318 (2 * n)

end

end A351992.P13162172076654059740

namespace A351992

/-- `A002378(n)-A181318(2*n)` -/
def P13162172076654059740.Spec : Prop :=
  ∀ n, P13162172076654059740.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P7395448637889450970

`A144391(n+1)%A014255(n)`
-/

namespace A351992.P7395448637889450970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144391 (n + 1)) (A014255 n)

end

end A351992.P7395448637889450970

namespace A351992

/-- `A144391(n+1)%A014255(n)` -/
def P7395448637889450970.Spec : Prop :=
  ∀ n, P7395448637889450970.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P11428753644443324786

`A240134(n+1)+A142150(n)²`
-/

namespace A351992.P11428753644443324786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (n + 1) + A142150 n ^ 2

end

end A351992.P11428753644443324786

namespace A351992

/-- `A240134(n+1)+A142150(n)²` -/
def P11428753644443324786.Spec : Prop :=
  ∀ n, P11428753644443324786.a n = A351992 (n + 1)

end A351992

/-! ## A351992.P11843007896306182513

`(A066043(n+1)-A026741(n))*A026741(n)`
-/

namespace A351992.P11843007896306182513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066043 (n + 1) - A026741 n) * A026741 n

end

end A351992.P11843007896306182513

namespace A351992

/-- `(A066043(n+1)-A026741(n))*A026741(n)` -/
def P11843007896306182513.Spec : Prop :=
  ∀ n, P11843007896306182513.a n = A351992 (n + 1)

end A351992

/-!
# A351995: Square array A(n, k), n, k >= 0, read by antidiagonals upwards; A(n, k) = Sum_{ i >= 0 } b_i * 2^(k*i) where n = Sum_{ i >= 0 } b_i * 2^i.

The programs for A351995, there is no canonical definition to state claims against.
-/

/-! ## A351995.P17559350471477573998

`A001221(C(A098550(n+1), A277504(n)))`
-/

namespace A351995.P17559350471477573998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A098550 (n + 1)).toNat (A277504 n).toNat)

end

end A351995.P17559350471477573998

/-! ## A351995.P1421054899206441966

`A110249(A386621(n+1))`
-/

namespace A351995.P1421054899206441966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110249 (A386621 (n + 1)).toNat

end

end A351995.P1421054899206441966

/-! ## A351995.P13363634697652339758

`A264620(A208913(n+2))`
-/

namespace A351995.P13363634697652339758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A208913 (n + 2)).toNat

end

end A351995.P13363634697652339758

/-! ## A351995.P4772517519469529899

`A333632(A048790(n+2)-1)`
-/

namespace A351995.P4772517519469529899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A048790 (n + 2) - 1).toNat

end

end A351995.P4772517519469529899

/-! ## A351995.P14572278557179885339

`A196564(A230675(n+1)+6)`
-/

namespace A351995.P14572278557179885339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A230675 (n + 1) + 6).toNat

end

end A351995.P14572278557179885339

/-!
# A351996: A chain reaction sequence: a digit d1 from a(n) is expelled towards a(n+1) where it hits a digit d2 [from a(n+1)] and replaces it; d2 in turn is expelled towards a(n+2), hits a digit d3 there and replaces it; d3 in turn is expelled towards a(n+3), hits a digit there, and replaces it; d4 is expelled... etc. At the end of the chain reaction, only prime numbers will be left. This is the lexicographically earliest sequence of distinct positive integers with this property.

The programs for A351996, there is no canonical definition to state claims against.
-/

/-! ## A351996.P14095168144640502164

`eq[A002851(A061358(n+2)), A007954(n)]`
-/

namespace A351996.P14095168144640502164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (A061358 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351996.P14095168144640502164

/-! ## A351996.P15831225236608187674

`∩[A250040(n+1), A055649(n)]`
-/

namespace A351996.P15831225236608187674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351996.P15831225236608187674

/-!
# A351997: A chain reaction sequence: a digit d1 from a(n) is expelled towards a(n+1) where it hits a digit d2 [from a(n+1)] and replaces it; d2 in turn is expelled towards a(n+2), hits a digit d3 there and replaces it; d3 in turn is expelled towards a(n+3), hits a digit there, and replaces it; d4 is expelled... etc. At the end of the chain reaction, only odd numbers will be left. This is the lexicographically earliest sequence of distinct positive integers with this property.

The programs for A351997, there is no canonical definition to state claims against.
-/

/-! ## A351997.P12476426599925835865

`A292690(eq[A264945(n+1), A368711(n+1)])`
-/

namespace A351997.P12476426599925835865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292690 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A351997.P12476426599925835865

/-! ## A351997.P11062357836412452913

`A275536(A392604(n+2))`
-/

namespace A351997.P11062357836412452913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A392604 (n + 2)).toNat

end

end A351997.P11062357836412452913

/-!
# A351999: A chain reaction sequence: a digit d1 from a(n) is expelled towards a(n+1) where it hits a digit d2 [from a(n+1)] and replaces it; d2 in turn is expelled towards a(n+2), hits a digit d3 there and replaces it; d3 in turn is expelled towards a(n+3), hits a digit there, and replaces it; d4 is expelled... etc. At the end of the chain reaction, only Fibonacci numbers will be left. This is the lexicographically earliest sequence of distinct positive integers with this property.

The programs for A351999, there is no canonical definition to state claims against.
-/

/-! ## A351999.P10112635443671959951

`record[gcd(A226195(n+1), A236987(n+1))]`
-/

namespace A351999.P10112635443671959951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226195 (n + 1)) (A236987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351999.P10112635443671959951

/-! ## A351999.P15422295969999992266

`lcm(A007095(A208209(n)), A335430(n))`
-/

namespace A351999.P15422295969999992266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007095 (A208209 n).toNat) (A335430 n)

end

end A351999.P15422295969999992266

