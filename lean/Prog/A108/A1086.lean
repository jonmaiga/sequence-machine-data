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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B008.C000
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
# A108600: Number of freely braided permutations of length n; the freely braided permutations are those that avoid 3421, 4231, 4312 and 4321.

The programs for A108600, there is no canonical definition to state claims against.
-/

/-! ## A108600.P13405508909630880724

`A184955(A004273(n))+A129777(n)`
-/

namespace A108600.P13405508909630880724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A004273 n).toNat + A129777 n

end

end A108600.P13405508909630880724

/-! ## A108600.P1072401455778570312

`A184955(A163985(n))+A129777(n)`
-/

namespace A108600.P1072401455778570312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A163985 n).toNat + A129777 n

end

end A108600.P1072401455778570312

/-! ## A108600.P14908941948003279735

`A198318(A238979(n))+A129777(n)`
-/

namespace A108600.P14908941948003279735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A238979 n).toNat + A129777 n

end

end A108600.P14908941948003279735

/-! ## A108600.P3319536773047320427

`A184955(A319794(n))+A129777(n)`
-/

namespace A108600.P3319536773047320427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A319794 n).toNat + A129777 n

end

end A108600.P3319536773047320427

/-! ## A108600.P1269467790807580570

`A341024(A184313(n))+A129777(n)`
-/

namespace A108600.P1269467790807580570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A184313 n).toNat + 84) + A129777 n

end

end A108600.P1269467790807580570

/-!
# A108601: Numbers n such that 7*n - 911 is prime.

The programs for A108601, the canonical program `A108601.P2870284263787811406` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108601 has offset 1).

The definition of A108601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108601.P2870284263787811406

`(A138622(n+1)+65)*2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108601

/-- `(A138622(n+1)+65)*2` -/
def P2870284263787811406.Spec : Prop :=
  ∀ n, P2870284263787811406.a n = A108601 (n + 1)

theorem P2870284263787811406.correct : P2870284263787811406.Spec := by
  intro n
  simp only [A108601, Nat.add_sub_cancel]

end A108601

/-! ## A108601.P17992017895079368582

`A103517(A138622(n+1)+64)`
-/

namespace A108601.P17992017895079368582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A138622 (n + 1) + 64).toNat

end

end A108601.P17992017895079368582

namespace A108601

/-- `A103517(A138622(n+1)+64)` -/
def P17992017895079368582.Spec : Prop :=
  ∀ n, P17992017895079368582.a n = A108601 (n + 1)

end A108601

/-! ## A108601.P70612211807983889

`A005843(A138622(n+1)+65)`
-/

namespace A108601.P70612211807983889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A138622 (n + 1) + 65).toNat

end

end A108601.P70612211807983889

namespace A108601

/-- `A005843(A138622(n+1)+65)` -/
def P70612211807983889.Spec : Prop :=
  ∀ n, P70612211807983889.a n = A108601 (n + 1)

end A108601

/-! ## A108601.P8484059742235758334

`A008486(A138622(n+1)+65)-(A138622(n+1)+65)`
-/

namespace A108601.P8484059742235758334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A138622 (n + 1) + 65).toNat - (A138622 (n + 1) + 65)

end

end A108601.P8484059742235758334

namespace A108601

/-- `A008486(A138622(n+1)+65)-(A138622(n+1)+65)` -/
def P8484059742235758334.Spec : Prop :=
  ∀ n, P8484059742235758334.a n = A108601 (n + 1)

end A108601

/-! ## A108601.P13001586259646448369

`A008458(A138622(n+1)+65)-A008574(A138622(n+1)+65)`
-/

namespace A108601.P13001586259646448369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A138622 (n + 1) + 65).toNat - A008574 (A138622 (n + 1) + 65).toNat

end

end A108601.P13001586259646448369

namespace A108601

/-- `A008458(A138622(n+1)+65)-A008574(A138622(n+1)+65)` -/
def P13001586259646448369.Spec : Prop :=
  ∀ n, P13001586259646448369.a n = A108601 (n + 1)

end A108601

/-!
# A108602: Number of distinct prime factors of highly composite numbers (definition 1, A002182).

The programs for A108602, there is no canonical definition to state claims against.
-/

/-! ## A108602.P1025819476293163882

`A000720(A272605(n+1))`
-/

namespace A108602.P1025819476293163882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A272605 (n + 1)).toNat

end

end A108602.P1025819476293163882

/-! ## A108602.P12437615391220608413

`A055396(∏{d}[A272605(n+1), #])`
-/

namespace A108602.P12437615391220608413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A108602.P12437615391220608413

/-! ## A108602.P16039757060358554919

`A065770(∏{d}[A272605(n+1), #])`
-/

namespace A108602.P16039757060358554919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A108602.P16039757060358554919

/-! ## A108602.P2170762466127955984

`A252464(A272605(2*n+1-n))`
-/

namespace A108602.P2170762466127955984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A272605 (2 * n + 1 - n)).toNat

end

end A108602.P2170762466127955984

/-! ## A108602.P10135389865807173070

`A055396(A272605(n+1)%(n+2))`
-/

namespace A108602.P10135389865807173070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A272605 (n + 1)) (n + 2 : ℤ)).toNat

end

end A108602.P10135389865807173070

/-! ## A108602.P3776809980338017508

`A056239(A272605(n+1))%A153126(n)`
-/

namespace A108602.P3776809980338017508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A272605 (n + 1)).toNat) (A153126 n)

end

end A108602.P3776809980338017508

/-! ## A108602.P7517690898977882453

`A061395(A080843(n)!*A272605(n+1))`
-/

namespace A108602.P7517690898977882453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((Nat.factorial (A080843 n).toNat : ℤ) * A272605 (n + 1)).toNat

end

end A108602.P7517690898977882453

/-! ## A108602.P2933736086141822456

`A061395((A080843(n)+1)*A272605(n+1))`
-/

namespace A108602.P2933736086141822456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((A080843 n + 1) * A272605 (n + 1)).toNat

end

end A108602.P2933736086141822456

/-! ## A108602.P4970831497191249771

`A061395(2*A272605(n+1)-A272605(n+1))`
-/

namespace A108602.P4970831497191249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A272605 (n + 1) - A272605 (n + 1)).toNat

end

end A108602.P4970831497191249771

/-! ## A108602.P13244607286249776307

`A065770(2*A272605(n+1)-A272605(n+1))`
-/

namespace A108602.P13244607286249776307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A272605 (n + 1) - A272605 (n + 1)).toNat

end

end A108602.P13244607286249776307

/-! ## A108602.P13549637142264085043

`A076998(A007918(n))+A061395(A272605(n+1))`
-/

namespace A108602.P13549637142264085043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (A007918 n).toNat + A061395 (A272605 (n + 1)).toNat

end

end A108602.P13549637142264085043

/-! ## A108602.P3235934472910823226

`A061395(A272605(n+1)²)`
-/

namespace A108602.P3235934472910823226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A272605 (n + 1) ^ 2).toNat

end

end A108602.P3235934472910823226

/-! ## A108602.P7164264869005735721

`A252464(A006530(A272605(n+1)²))`
-/

namespace A108602.P7164264869005735721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A006530 (A272605 (n + 1) ^ 2).toNat).toNat

end

end A108602.P7164264869005735721

/-! ## A108602.P9347416313243694836

`A061395(A272605(n+1)*A272605(n+1))`
-/

namespace A108602.P9347416313243694836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A272605 (n + 1) * A272605 (n + 1)).toNat

end

end A108602.P9347416313243694836

/-! ## A108602.P15809221452440085764

`A055396(A272605(n+1)^A000034(n))`
-/

namespace A108602.P15809221452440085764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A272605 (n + 1) : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A108602.P15809221452440085764

/-! ## A108602.P10370444108374157312

`A055396(A272605(n+1)²)`
-/

namespace A108602.P10370444108374157312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A272605 (n + 1) ^ 2).toNat

end

end A108602.P10370444108374157312

/-! ## A108602.P15616908090295001936

`A056239(A272605(n+1)²)/2`
-/

namespace A108602.P15616908090295001936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A272605 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A108602.P15616908090295001936

/-! ## A108602.P10879496056337653703

`A252464(A032742(A272605(n+1)²))`
-/

namespace A108602.P10879496056337653703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A032742 (A272605 (n + 1) ^ 2).toNat).toNat

end

end A108602.P10879496056337653703

/-! ## A108602.P18410142763293069103

`A252464(A052126(A272605(n+1)²))`
-/

namespace A108602.P18410142763293069103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A052126 (A272605 (n + 1) ^ 2).toNat).toNat

end

end A108602.P18410142763293069103

/-!
# A108603: Numbers n such that n! can be written as the product of smaller distinct factorials in more than one way.

The programs for A108603, there is no canonical definition to state claims against.
-/

/-! ## A108603.P1845907849641913992

`∏[gcd(A251902(n+2), A251904(n+2))]`
-/

namespace A108603.P1845907849641913992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251902 (n + 2)) (A251904 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A108603.P1845907849641913992

/-!
# A108604: Squares of the form prime(k)*prime(k+1) + 2*prime(k+1).

The programs for A108604, the canonical program `A108604.P14779310854781388400` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108604 has offset 1).

The definition of A108604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108604.P14779310854781388400

`A006512(n+1)²`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108604

/-- `A006512(n+1)²` -/
def P14779310854781388400.Spec : Prop :=
  ∀ n, P14779310854781388400.a n = A108604 (n + 1)

theorem P14779310854781388400.correct : P14779310854781388400.Spec := by
  intro n
  simp only [A108604, Nat.add_sub_cancel]

end A108604

/-! ## A108604.P13728882794330985837

`A362941(n+1)+1`
-/

namespace A108604.P13728882794330985837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) + 1

end

end A108604.P13728882794330985837

namespace A108604

/-- `A362941(n+1)+1` -/
def P13728882794330985837.Spec : Prop :=
  ∀ n, P13728882794330985837.a n = A108604 (n + 1)

theorem P13728882794330985837.correct : P13728882794330985837.Spec := by
  intro n
  simp only [A108604, Nat.add_sub_cancel, A108604.P13728882794330985837.a, A108604.P14779310854781388400.a, A006512, A006512.P8157243218962949380.a, A362941, A362941.P14947685496723137444.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108604

/-! ## A108604.P3868999160564735985

`(A014574(n+1)+1)²`
-/

namespace A108604.P3868999160564735985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) + 1) ^ 2

end

end A108604.P3868999160564735985

namespace A108604

/-- `(A014574(n+1)+1)²` -/
def P3868999160564735985.Spec : Prop :=
  ∀ n, P3868999160564735985.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P17656847415784446992

`(A001359(n+1)+2)²`
-/

namespace A108604.P17656847415784446992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 2) ^ 2

end

end A108604.P17656847415784446992

namespace A108604

/-- `(A001359(n+1)+2)²` -/
def P17656847415784446992.Spec : Prop :=
  ∀ n, P17656847415784446992.a n = A108604 (n + 1)

theorem P17656847415784446992.correct : P17656847415784446992.Spec := by
  intro n
  simp only [A108604, Nat.add_sub_cancel, A108604.P17656847415784446992.a, A108604.P14779310854781388400.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108604

/-! ## A108604.P8044444929264775563

`(A176810(n+1)/2)²`
-/

namespace A108604.P8044444929264775563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176810 (n + 1) : ℚ) / 2) ^ 2

end

end A108604.P8044444929264775563

namespace A108604

/-- `(A176810(n+1)/2)²` -/
def P8044444929264775563.Spec : Prop :=
  ∀ n, P8044444929264775563.a n = (A108604 (n + 1) : ℚ)

theorem P8044444929264775563.correct : P8044444929264775563.Spec := by
  intro n
  simp only [A108604, Nat.add_sub_cancel, A108604.P8044444929264775563.a, A108604.P14779310854781388400.a, A006512, A006512.P8157243218962949380.a, A176810, A176810.P15699924405240602414.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108604

/-! ## A108604.P16897965568988518903

`ceil(sqrt(A135286(n+1)))²`
-/

namespace A108604.P16897965568988518903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A135286 (n + 1) : ℝ)⌉ ^ 2

end

end A108604.P16897965568988518903

namespace A108604

/-- `ceil(sqrt(A135286(n+1)))²` -/
def P16897965568988518903.Spec : Prop :=
  ∀ n, P16897965568988518903.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P11365110392212089332

`(sqrt(A075369(n+1))+1)²`
-/

namespace A108604.P11365110392212089332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A075369 (n + 1) : ℝ) + 1) ^ 2

end

end A108604.P11365110392212089332

namespace A108604

/-- `(sqrt(A075369(n+1))+1)²` -/
def P11365110392212089332.Spec : Prop :=
  ∀ n, P11365110392212089332.a n = (A108604 (n + 1) : ℝ)

end A108604

/-! ## A108604.P4203560703114938716

`A126251(n+1)+A006512(n+1)`
-/

namespace A108604.P4203560703114938716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) + A006512 (n + 1)

end

end A108604.P4203560703114938716

namespace A108604

/-- `A126251(n+1)+A006512(n+1)` -/
def P4203560703114938716.Spec : Prop :=
  ∀ n, P4203560703114938716.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P10116375370320549894

`A176810(n+1)+A037074(n+1)`
-/

namespace A108604.P10116375370320549894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) + A037074 (n + 1)

end

end A108604.P10116375370320549894

namespace A108604

/-- `A176810(n+1)+A037074(n+1)` -/
def P10116375370320549894.Spec : Prop :=
  ∀ n, P10116375370320549894.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P11625312547951871094

`A067829(n+2)²`
-/

namespace A108604.P11625312547951871094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) ^ 2

end

end A108604.P11625312547951871094

namespace A108604

/-- `A067829(n+2)²` -/
def P11625312547951871094.Spec : Prop :=
  ∀ n, P11625312547951871094.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P2252233014727217152

`(A124588(n+2)+2)²`
-/

namespace A108604.P2252233014727217152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124588 (n + 2) + 2) ^ 2

end

end A108604.P2252233014727217152

namespace A108604

/-- `(A124588(n+2)+2)²` -/
def P2252233014727217152.Spec : Prop :=
  ∀ n, P2252233014727217152.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P6530160983140382614

`(A181747(n+2)+2)²`
-/

namespace A108604.P6530160983140382614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181747 (n + 2) + 2) ^ 2

end

end A108604.P6530160983140382614

namespace A108604

/-- `(A181747(n+2)+2)²` -/
def P6530160983140382614.Spec : Prop :=
  ∀ n, P6530160983140382614.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P6997470238477547268

`A006512(n+1)*A067829(n+2)`
-/

namespace A108604.P6997470238477547268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A067829 (n + 2)

end

end A108604.P6997470238477547268

namespace A108604

/-- `A006512(n+1)*A067829(n+2)` -/
def P6997470238477547268.Spec : Prop :=
  ∀ n, P6997470238477547268.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P1972628005753077957

`p?[A320391(n+1)]²`
-/

namespace A108604.P1972628005753077957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108604.P1972628005753077957

namespace A108604

/-- `p?[A320391(n+1)]²` -/
def P1972628005753077957.Spec : Prop :=
  ∀ n, P1972628005753077957.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P16916823759566680208

`A077800(2*(n+1))²`
-/

namespace A108604.P16916823759566680208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * (n + 1)) ^ 2

end

end A108604.P16916823759566680208

namespace A108604

/-- `A077800(2*(n+1))²` -/
def P16916823759566680208.Spec : Prop :=
  ∀ n, P16916823759566680208.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P18122247109564323694

`A077800(2*n+2)*A077800(2*n+2)`
-/

namespace A108604.P18122247109564323694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 2) * A077800 (2 * n + 2)

end

end A108604.P18122247109564323694

namespace A108604

/-- `A077800(2*n+2)*A077800(2*n+2)` -/
def P18122247109564323694.Spec : Prop :=
  ∀ n, P18122247109564323694.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P16011338218437309169

`p?[A274242(n+1)]²`
-/

namespace A108604.P16011338218437309169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108604.P16011338218437309169

namespace A108604

/-- `p?[A274242(n+1)]²` -/
def P16011338218437309169.Spec : Prop :=
  ∀ n, P16011338218437309169.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P17316363596425893557

`p?[A139690(n+1)]²`
-/

namespace A108604.P17316363596425893557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108604.P17316363596425893557

namespace A108604

/-- `p?[A139690(n+1)]²` -/
def P17316363596425893557.Spec : Prop :=
  ∀ n, P17316363596425893557.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P801350039131727985

`p?[A218011(n+1)]²`
-/

namespace A108604.P801350039131727985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108604.P801350039131727985

namespace A108604

/-- `p?[A218011(n+1)]²` -/
def P801350039131727985.Spec : Prop :=
  ∀ n, P801350039131727985.a n = A108604 (n + 1)

end A108604

/-! ## A108604.P7871259058227187737

`p?[A072281(n+1)]²`
-/

namespace A108604.P7871259058227187737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A108604.P7871259058227187737

namespace A108604

/-- `p?[A072281(n+1)]²` -/
def P7871259058227187737.Spec : Prop :=
  ∀ n, P7871259058227187737.a n = A108604 (n + 1)

end A108604

/-!
# A108605: Semiprimes with prime sum of factors: twice the lesser of the twin prime pairs.

The programs for A108605, the canonical program `A108605.P8129486271106036592` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108605 has offset 1).

The definition of A108605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108605.P8129486271106036592

`2*A001359(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108605

/-- `2*A001359(n+1)` -/
def P8129486271106036592.Spec : Prop :=
  ∀ n, P8129486271106036592.a n = A108605 (n + 1)

theorem P8129486271106036592.correct : P8129486271106036592.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel]

end A108605

/-! ## A108605.P4778133450063292108

`A082496(n+1)-1`
-/

namespace A108605.P4778133450063292108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) - 1

end

end A108605.P4778133450063292108

namespace A108605

/-- `A082496(n+1)-1` -/
def P4778133450063292108.Spec : Prop :=
  ∀ n, P4778133450063292108.a n = A108605 (n + 1)

theorem P4778133450063292108.correct : P4778133450063292108.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel, A108605.P4778133450063292108.a, A108605.P8129486271106036592.a, A001359, A001359.P8865495035699438537.a, A082496, A082496.P17448569529172864271.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108605

/-! ## A108605.P4329371206734315750

`A054735(n+1)-2`
-/

namespace A108605.P4329371206734315750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) - 2

end

end A108605.P4329371206734315750

namespace A108605

/-- `A054735(n+1)-2` -/
def P4329371206734315750.Spec : Prop :=
  ∀ n, P4329371206734315750.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P7356621695055759508

`A176810(n+1)-4`
-/

namespace A108605.P7356621695055759508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - 4

end

end A108605.P7356621695055759508

namespace A108605

/-- `A176810(n+1)-4` -/
def P7356621695055759508.Spec : Prop :=
  ∀ n, P7356621695055759508.a n = A108605 (n + 1)

theorem P7356621695055759508.correct : P7356621695055759508.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel, A108605.P7356621695055759508.a, A108605.P8129486271106036592.a, A001359, A001359.P8865495035699438537.a, A176810, A176810.P15699924405240602414.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108605

/-! ## A108605.P8681480463217668748

`2*(A144834(n+1)+1)`
-/

namespace A108605.P8681480463217668748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144834 (n + 1) + 1)

end

end A108605.P8681480463217668748

namespace A108605

/-- `2*(A144834(n+1)+1)` -/
def P8681480463217668748.Spec : Prop :=
  ∀ n, P8681480463217668748.a n = A108605 (n + 1)

theorem P8681480463217668748.correct : P8681480463217668748.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel, A108605.P8681480463217668748.a, A108605.P8129486271106036592.a, A001359, A001359.P8865495035699438537.a, A144834, A144834.P8121320371945032170.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108605

/-! ## A108605.P12795757628760064991

`2*(A014574(n+1)-1)`
-/

namespace A108605.P12795757628760064991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014574 (n + 1) - 1)

end

end A108605.P12795757628760064991

namespace A108605

/-- `2*(A014574(n+1)-1)` -/
def P12795757628760064991.Spec : Prop :=
  ∀ n, P12795757628760064991.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P8743818697815576805

`2*(A006512(n+1)-2)`
-/

namespace A108605.P8743818697815576805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006512 (n + 1) - 2)

end

end A108605.P8743818697815576805

namespace A108605

/-- `2*(A006512(n+1)-2)` -/
def P8743818697815576805.Spec : Prop :=
  ∀ n, P8743818697815576805.a n = A108605 (n + 1)

theorem P8743818697815576805.correct : P8743818697815576805.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel, A108605.P8743818697815576805.a, A108605.P8129486271106036592.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108605

/-! ## A108605.P5464748825454165003

`A111046(n+1)/2-2`
-/

namespace A108605.P5464748825454165003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 2 - 2

end

end A108605.P5464748825454165003

namespace A108605

/-- `A111046(n+1)/2-2` -/
def P5464748825454165003.Spec : Prop :=
  ∀ n, P5464748825454165003.a n = (A108605 (n + 1) : ℚ)

end A108605

/-! ## A108605.P8900083289398518366

`4*A040040(n+1)-2`
-/

namespace A108605.P8900083289398518366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040040 (n + 1) - 2

end

end A108605.P8900083289398518366

namespace A108605

/-- `4*A040040(n+1)-2` -/
def P8900083289398518366.Spec : Prop :=
  ∀ n, P8900083289398518366.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P13809965362962373568

`2*floor(sqrt(A037074(n+1)))`
-/

namespace A108605.P13809965362962373568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A037074 (n + 1))

end

end A108605.P13809965362962373568

namespace A108605

/-- `2*floor(sqrt(A037074(n+1)))` -/
def P13809965362962373568.Spec : Prop :=
  ∀ n, P13809965362962373568.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P14019719946458716796

`a(n-1)+2*A053319(n)` with `a(0)=6`
-/

namespace A108605.P14019719946458716796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 2 * A053319 n

end

end A108605.P14019719946458716796

namespace A108605

/-- `a(n-1)+2*A053319(n)` -/
def P14019719946458716796.Spec : Prop :=
  ∀ n, P14019719946458716796.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P13790738630710975564

`A144834(n+1)+A014574(n+1)`
-/

namespace A108605.P13790738630710975564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + A014574 (n + 1)

end

end A108605.P13790738630710975564

namespace A108605

/-- `A144834(n+1)+A014574(n+1)` -/
def P13790738630710975564.Spec : Prop :=
  ∀ n, P13790738630710975564.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P17470182995823000990

`A135283(n+1)-A172057(n+1)`
-/

namespace A108605.P17470182995823000990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135283 (n + 1) - A172057 (n + 1)

end

end A108605.P17470182995823000990

namespace A108605

/-- `A135283(n+1)-A172057(n+1)` -/
def P17470182995823000990.Spec : Prop :=
  ∀ n, P17470182995823000990.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P775950097547568650

`A071142(n+1)/A006512(n+1)`
-/

namespace A108605.P775950097547568650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A108605.P775950097547568650

namespace A108605

/-- `A071142(n+1)/A006512(n+1)` -/
def P775950097547568650.Spec : Prop :=
  ∀ n, P775950097547568650.a n = (A108605 (n + 1) : ℚ)

end A108605

/-! ## A108605.P18090971445498115729

`A071142(n+1)%A054735(n+1)`
-/

namespace A108605.P18090971445498115729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071142 (n + 1)) (A054735 (n + 1))

end

end A108605.P18090971445498115729

namespace A108605

/-- `A071142(n+1)%A054735(n+1)` -/
def P18090971445498115729.Spec : Prop :=
  ∀ n, P18090971445498115729.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P10749316342481898931

`A120875(n+1)%A054735(n+1)`
-/

namespace A108605.P10749316342481898931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120875 (n + 1)) (A054735 (n + 1))

end

end A108605.P10749316342481898931

namespace A108605

/-- `A120875(n+1)%A054735(n+1)` -/
def P10749316342481898931.Spec : Prop :=
  ∀ n, P10749316342481898931.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P13308730033137982748

`A111046(n+1)%A176810(n+1)`
-/

namespace A108605.P13308730033137982748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111046 (n + 1)) (A176810 (n + 1))

end

end A108605.P13308730033137982748

namespace A108605

/-- `A111046(n+1)%A176810(n+1)` -/
def P13308730033137982748.Spec : Prop :=
  ∀ n, P13308730033137982748.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P9285975035629033269

`A097973(n+1)%A328493(n+1)`
-/

namespace A108605.P9285975035629033269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097973 (n + 1)) (A328493 (n + 1))

end

end A108605.P9285975035629033269

namespace A108605

/-- `A097973(n+1)%A328493(n+1)` -/
def P9285975035629033269.Spec : Prop :=
  ∀ n, P9285975035629033269.a n = A108605 (n + 1)

end A108605

/-! ## A108605.P18061996242414343253

`A001359(n+1)+A001359(n+2)-A053319(n+1)`
-/

namespace A108605.P18061996242414343253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A001359 (n + 2) - A053319 (n + 1))

end

end A108605.P18061996242414343253

namespace A108605

/-- `A001359(n+1)+A001359(n+2)-A053319(n+1)` -/
def P18061996242414343253.Spec : Prop :=
  ∀ n, P18061996242414343253.a n = A108605 (n + 1)

theorem P18061996242414343253.correct : P18061996242414343253.Spec := by
  intro n
  simp only [A108605, Nat.add_sub_cancel, A108605.P18061996242414343253.a, A108605.P8129486271106036592.a, A001359, A001359.P8865495035699438537.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108605

/-! ## A108605.P11425514348218114389

`2*A124588(n+2)`
-/

namespace A108605.P11425514348218114389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124588 (n + 2)

end

end A108605.P11425514348218114389

namespace A108605

/-- `2*A124588(n+2)` -/
def P11425514348218114389.Spec : Prop :=
  ∀ n, P11425514348218114389.a n = A108605 (n + 1)

end A108605

/-!
# A108606: Semiprimes with prime sum of digits.

The programs for A108606, there is no canonical definition to state claims against.
-/

/-! ## A108606.P13757458314578943194

`∩[A001358(n+1), A028834(n+1)]`
-/

namespace A108606.P13757458314578943194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108606.P13757458314578943194

/-! ## A108606.P13840927270048290412

`filter[A141642(n+1), A064911(#)]`
-/

namespace A108606.P13840927270048290412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108606.P13840927270048290412

/-! ## A108606.P9765994626317659392

`filter[A141642(n+1), A101040(#)]`
-/

namespace A108606.P9765994626317659392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108606.P9765994626317659392

/-! ## A108606.P4589241429148127260

`∩[A001358(n+1), A141642(n+1)]`
-/

namespace A108606.P4589241429148127260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108606.P4589241429148127260

/-! ## A108606.P629742837670832671

`filter[A329522(n+2), A064911(#)]`
-/

namespace A108606.P629742837670832671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108606.P629742837670832671

/-! ## A108606.P1116051150243558021

`filter[A329522(n+2), A101040(#)]`
-/

namespace A108606.P1116051150243558021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108606.P1116051150243558021

/-! ## A108606.P7979597081785206711

`∩[A028834(n+1), A176540(n+1)]`
-/

namespace A108606.P7979597081785206711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108606.P7979597081785206711

/-! ## A108606.P10068004865682220566

`∩[A141642(n+1), A176540(n+1)]`
-/

namespace A108606.P10068004865682220566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108606.P10068004865682220566

/-! ## A108606.P7714980036503418579

`filter[A028834(n+3), A064911(#)]`
-/

namespace A108606.P7714980036503418579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108606.P7714980036503418579

/-! ## A108606.P11286514413831551366

`∩[A037143(n+1), A141642(n+1)]`
-/

namespace A108606.P11286514413831551366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108606.P11286514413831551366

/-! ## A108606.P4814045398741287774

`eq[A105700(n), A306509(A028310(n))]`
-/

namespace A108606.P4814045398741287774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P4814045398741287774

/-! ## A108606.P2836961037643236372

`eq[A105700(n), A327859(A007953(n))]`
-/

namespace A108606.P2836961037643236372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P2836961037643236372

/-! ## A108606.P10878399939902674698

`eq[A105700(n), A226378(A118881(n))]`
-/

namespace A108606.P10878399939902674698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P10878399939902674698

/-! ## A108606.P15165183863179751657

`eq[A074206(A118881(n)), A284289(n)]`
-/

namespace A108606.P15165183863179751657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A118881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P15165183863179751657

/-! ## A108606.P14123533403962086943

`eq[A105700(A007953(n)²), A226378(n)]`
-/

namespace A108606.P14123533403962086943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P14123533403962086943

/-! ## A108606.P4047181383372609399

`eq[A284289(A007953(n))+1, A284289(n)]`
-/

namespace A108606.P4047181383372609399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A007953 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P4047181383372609399

/-! ## A108606.P14343033441485872514

`eq[A105700(n), A226378(2*A007953(n))]`
-/

namespace A108606.P14343033441485872514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108606.P14343033441485872514

/-! ## A108606.P9445598144910148791

`lt[2, A105700(n)*A105700(A169805(n))]`
-/

namespace A108606.P9445598144910148791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n * A105700 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108606.P9445598144910148791

/-!
# A108607: 4-almost primes whose sum of factors is a prime.

The programs for A108607, the canonical program `A108607.P8807182611467809041` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108607 has offset 1).

The definition of A108607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108607.P8807182611467809041

`∩[A046363(n+1), A110227(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108607

/-- `∩[A046363(n+1), A110227(n+1)]` -/
def P8807182611467809041.Spec : Prop :=
  ∀ n, (P8807182611467809041.a n : ℤ) = A108607 (n + 1)

theorem P8807182611467809041.correct : P8807182611467809041.Spec := by
  intro n
  simp only [A108607, Nat.add_sub_cancel]

end A108607

/-! ## A108607.P16130359161294848190

`∩[2*A014612(n+1), A046363(n+1)]`
-/

namespace A108607.P16130359161294848190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P16130359161294848190

namespace A108607

/-- `∩[2*A014612(n+1), A046363(n+1)]` -/
def P16130359161294848190.Spec : Prop :=
  ∀ n, (P16130359161294848190.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P6688283467394741961

`filter[A046363(n+1), A101637(#)]`
-/

namespace A108607.P6688283467394741961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A108607.P6688283467394741961

namespace A108607

/-- `filter[A046363(n+1), A101637(#)]` -/
def P6688283467394741961.Spec : Prop :=
  ∀ n, P6688283467394741961.a n = A108607 (n + 1)

end A108607

/-! ## A108607.P13064552099276984195

`∩[A046363(n+1), A307342(n+1)]`
-/

namespace A108607.P13064552099276984195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P13064552099276984195

namespace A108607

/-- `∩[A046363(n+1), A307342(n+1)]` -/
def P13064552099276984195.Spec : Prop :=
  ∀ n, (P13064552099276984195.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P17982271815828402872

`∩[A014613(n+1), A046363(n+1)]`
-/

namespace A108607.P17982271815828402872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P17982271815828402872

namespace A108607

/-- `∩[A014613(n+1), A046363(n+1)]` -/
def P17982271815828402872.Spec : Prop :=
  ∀ n, (P17982271815828402872.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P5422388015488533315

`∩[A014613(n+1), A100118(n+1)]`
-/

namespace A108607.P5422388015488533315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P5422388015488533315

namespace A108607

/-- `∩[A014613(n+1), A100118(n+1)]` -/
def P5422388015488533315.Spec : Prop :=
  ∀ n, (P5422388015488533315.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P16110657033464562553

`∩[A100118(n+1), A110227(n+1)]`
-/

namespace A108607.P16110657033464562553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P16110657033464562553

namespace A108607

/-- `∩[A100118(n+1), A110227(n+1)]` -/
def P16110657033464562553.Spec : Prop :=
  ∀ n, (P16110657033464562553.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P5577099086518776812

`∩[A100118(n+1), A307342(n+1)]`
-/

namespace A108607.P5577099086518776812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P5577099086518776812

namespace A108607

/-- `∩[A100118(n+1), A307342(n+1)]` -/
def P5577099086518776812.Spec : Prop :=
  ∀ n, (P5577099086518776812.a n : ℤ) = A108607 (n + 1)

end A108607

/-! ## A108607.P18379035726255292944

`∩[2*A014612(n+1), A100118(n+1)]`
-/

namespace A108607.P18379035726255292944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108607.P18379035726255292944

namespace A108607

/-- `∩[2*A014612(n+1), A100118(n+1)]` -/
def P18379035726255292944.Spec : Prop :=
  ∀ n, (P18379035726255292944.a n : ℤ) = A108607 (n + 1)

end A108607

/-!
# A108608: 5-almost primes whose sum of factors is a prime.

The programs for A108608, the canonical program `A108608.P93425812416294679` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108608 has offset 1).

The definition of A108608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108608.P93425812416294679

`∩[A014614(n+1), A046363(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108608

/-- `∩[A014614(n+1), A046363(n+1)]` -/
def P93425812416294679.Spec : Prop :=
  ∀ n, (P93425812416294679.a n : ℤ) = A108608 (n + 1)

theorem P93425812416294679.correct : P93425812416294679.Spec := by
  intro n
  simp only [A108608, Nat.add_sub_cancel]

end A108608

/-! ## A108608.P16916681629713902798

`∩[A046363(n+1), A110229(n+1)]`
-/

namespace A108608.P16916681629713902798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108608.P16916681629713902798

namespace A108608

/-- `∩[A046363(n+1), A110229(n+1)]` -/
def P16916681629713902798.Spec : Prop :=
  ∀ n, (P16916681629713902798.a n : ℤ) = A108608 (n + 1)

end A108608

/-! ## A108608.P16262369193445122253

`∩[A014614(n+1), A100118(n+1)]`
-/

namespace A108608.P16262369193445122253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108608.P16262369193445122253

namespace A108608

/-- `∩[A014614(n+1), A100118(n+1)]` -/
def P16262369193445122253.Spec : Prop :=
  ∀ n, (P16262369193445122253.a n : ℤ) = A108608 (n + 1)

end A108608

/-! ## A108608.P10447886716298531798

`∩[A100118(n+1), A110229(n+1)]`
-/

namespace A108608.P10447886716298531798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108608.P10447886716298531798

namespace A108608

/-- `∩[A100118(n+1), A110229(n+1)]` -/
def P10447886716298531798.Spec : Prop :=
  ∀ n, (P10447886716298531798.a n : ℤ) = A108608 (n + 1)

end A108608

/-!
# A108609: 6-almost primes whose sum of factors is a prime.

The programs for A108609, the canonical program `A108609.P322221827080144577` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108609 has offset 1).

The definition of A108609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108609.P14882535141283803393

`∩[A046306(n+1), A046363(n+1)]`
-/

namespace A108609.P14882535141283803393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P14882535141283803393

namespace A108609

/-- `∩[A046306(n+1), A046363(n+1)]` -/
def P14882535141283803393.Spec : Prop :=
  ∀ n, (P14882535141283803393.a n : ℤ) = A108609 (n + 1)

end A108609

/-! ## A108609.P12040380515822207844

`∩[A046363(n+1), A110231(n+1)]`
-/

namespace A108609.P12040380515822207844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P12040380515822207844

namespace A108609

/-- `∩[A046363(n+1), A110231(n+1)]` -/
def P12040380515822207844.Spec : Prop :=
  ∀ n, (P12040380515822207844.a n : ℤ) = A108609 (n + 1)

end A108609

/-! ## A108609.P322221827080144577

`∩[2*A014614(n+1), A046363(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A108609

/-- `∩[2*A014614(n+1), A046363(n+1)]` -/
def P322221827080144577.Spec : Prop :=
  ∀ n, (P322221827080144577.a n : ℤ) = A108609 (n + 1)

theorem P322221827080144577.correct : P322221827080144577.Spec := by
  intro n
  simp only [A108609, Nat.add_sub_cancel]

end A108609

/-! ## A108609.P11681000356607132083

`∩[A046306(n+1), A100118(n+1)]`
-/

namespace A108609.P11681000356607132083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P11681000356607132083

namespace A108609

/-- `∩[A046306(n+1), A100118(n+1)]` -/
def P11681000356607132083.Spec : Prop :=
  ∀ n, (P11681000356607132083.a n : ℤ) = A108609 (n + 1)

end A108609

/-! ## A108609.P3041351172892309518

`∩[A100118(n+1), A110231(n+1)]`
-/

namespace A108609.P3041351172892309518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P3041351172892309518

namespace A108609

/-- `∩[A100118(n+1), A110231(n+1)]` -/
def P3041351172892309518.Spec : Prop :=
  ∀ n, (P3041351172892309518.a n : ℤ) = A108609 (n + 1)

end A108609

/-! ## A108609.P9567834460554474682

`∩[2*A014614(n+1), A100118(n+1)]`
-/

namespace A108609.P9567834460554474682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108609.P9567834460554474682

namespace A108609

/-- `∩[2*A014614(n+1), A100118(n+1)]` -/
def P9567834460554474682.Spec : Prop :=
  ∀ n, (P9567834460554474682.a n : ℤ) = A108609 (n + 1)

end A108609

/-!
# A108610: Semiprimes with prime sum of decimal digits and prime sum of prime factors.

The programs for A108610, there is no canonical definition to state claims against.
-/

/-! ## A108610.P13936596245917678622

`∩[A084995(n+1), A108605(n+1)]`
-/

namespace A108610.P13936596245917678622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P13936596245917678622

/-! ## A108610.P6700234881738841526

`∩[A084995(n+1), A116661(n+1)]`
-/

namespace A108610.P6700234881738841526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P6700234881738841526

/-! ## A108610.P673886343022786304

`∩[A108605(n+1), A108606(n+1)]`
-/

namespace A108610.P673886343022786304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P673886343022786304

/-! ## A108610.P2188280727664515814

`∩[A084995(n+1), A140777(n+1)]`
-/

namespace A108610.P2188280727664515814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P2188280727664515814

/-! ## A108610.P15614244153162535491

`∩[A108606(n+1), A140777(n+1)]`
-/

namespace A108610.P15614244153162535491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P15614244153162535491

/-! ## A108610.P2749878082430163137

`∩[A084995(n+1), A339437(n+1)]`
-/

namespace A108610.P2749878082430163137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P2749878082430163137

/-! ## A108610.P3959751261656974726

`∩[A108606(n+1), A339437(n+1)]`
-/

namespace A108610.P3959751261656974726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P3959751261656974726

/-! ## A108610.P6088295557153571141

`∩[A084995(n+1), A085842(n+1)]`
-/

namespace A108610.P6088295557153571141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P6088295557153571141

/-! ## A108610.P6429170274514374901

`∩[A084995(n+1), A157037(n+1)]`
-/

namespace A108610.P6429170274514374901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P6429170274514374901

/-! ## A108610.P1658846478828885646

`∩[A108606(n+1), A157037(n+1)]`
-/

namespace A108610.P1658846478828885646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P1658846478828885646

/-! ## A108610.P3250944610888842311

`∩[A084995(n+1), A380983(n+1)]`
-/

namespace A108610.P3250944610888842311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P3250944610888842311

/-! ## A108610.P12729198125593255870

`∩[A108606(n+1), A380983(n+1)]`
-/

namespace A108610.P12729198125593255870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P12729198125593255870

/-! ## A108610.P11969156106040999779

`∩[A084995(n+1), A144568(n+1)]`
-/

namespace A108610.P11969156106040999779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P11969156106040999779

/-! ## A108610.P7252521789877114102

`∩[A108606(n+1), A144568(n+1)]`
-/

namespace A108610.P7252521789877114102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P7252521789877114102

/-! ## A108610.P260182435788116025

`∩[A028834(n+1), A108605(n+1)]`
-/

namespace A108610.P260182435788116025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P260182435788116025

/-! ## A108610.P9448038271084670449

`∩[A084995(n+1), A114520(n+1)]`
-/

namespace A108610.P9448038271084670449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P9448038271084670449

/-! ## A108610.P8462869220979949262

`∩[A108606(n+1), A114520(n+1)]`
-/

namespace A108610.P8462869220979949262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P8462869220979949262

/-! ## A108610.P9975919683588592440

`∩[A066038(n+1), A084995(n+1)]`
-/

namespace A108610.P9975919683588592440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P9975919683588592440

/-! ## A108610.P15525693459439716899

`∩[A066038(n+1), A108606(n+1)]`
-/

namespace A108610.P15525693459439716899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P15525693459439716899

/-! ## A108610.P3433691593528912746

`∩[A046363(n+1), A084995(n+1)]`
-/

namespace A108610.P3433691593528912746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108610.P3433691593528912746

/-!
# A108611: Excess of Beatty-function of 1/sin(1) over n.

The programs for A108611, there is no canonical definition to state claims against.
-/

/-! ## A108611.P6020877214670461986

`floor((n+1)/(10-sqrt(22)))`
-/

namespace A108611.P6020877214670461986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (10 - Real.sqrt (22 : ℝ))⌋

end

end A108611.P6020877214670461986

/-! ## A108611.P5687728679790057875

`∑[Δ[floor(n/sin(1))]-1]`
-/

namespace A108611.P5687728679790057875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108611.P5687728679790057875

/-! ## A108611.P17696744445602112568

`∑[3%Δ[floor(n/sin(1))]]`
-/

namespace A108611.P17696744445602112568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108611.P17696744445602112568

/-! ## A108611.P17469552465173718170

`∑[val(Δ[floor(n/sin(1))], 2)]`
-/

namespace A108611.P17469552465173718170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108611.P17469552465173718170

/-! ## A108611.P12818801476323433338

`floor((n+1)/sin(1))-(n+1)`
-/

namespace A108611.P12818801476323433338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (1 : ℝ)⌋ - (n + 1 : ℤ)

end

end A108611.P12818801476323433338

/-! ## A108611.P5121046195908718373

`ceil((n+1)/sin(1)-(n+2))`
-/

namespace A108611.P5121046195908718373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ) - (n + 2 : ℝ)⌉

end

end A108611.P5121046195908718373

/-! ## A108611.P7620698513042992243

`floor((n+1)/sin(1))%(n+1)`
-/

namespace A108611.P7620698513042992243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) / Real.sin (1 : ℝ)⌋ (n + 1 : ℤ)

end

end A108611.P7620698513042992243

/-! ## A108611.P7272795894263916602

`ceil((n+1)/sin(1))%(n+2)`
-/

namespace A108611.P7272795894263916602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ)⌉ (n + 2 : ℤ)

end

end A108611.P7272795894263916602

/-! ## A108611.P13074165989290990087

`A108120(n+1)-(n+1)`
-/

namespace A108611.P13074165989290990087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108120 (n + 1) - (n + 1 : ℤ)

end

end A108611.P13074165989290990087

/-! ## A108611.P14415031733724702789

`∑[A001222(Δ[floor(n/sin(1))])]`
-/

namespace A108611.P14415031733724702789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108611.P14415031733724702789

/-!
# A108612: Beatty-2 (or nested Beatty) sequence for 1/sin(1).

The programs for A108612, the canonical program `A108612.P2841670787641711271` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108612 has offset 1).

The definition of A108612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108612.P2841670787641711271

`(n+1)*floor((n+1)/sin(1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108612

/-- `(n+1)*floor((n+1)/sin(1))` -/
def P2841670787641711271.Spec : Prop :=
  ∀ n, P2841670787641711271.a n = A108612 (n + 1)

theorem P2841670787641711271.correct : P2841670787641711271.Spec := by
  intro n
  simp only [A108612, Nat.add_sub_cancel]

end A108612

/-! ## A108612.P310442018467333588

`(n+1)*floor(19*(n+1)/16)`
-/

namespace A108612.P310442018467333588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊19 * ((n + 1 : ℚ) / 16)⌋

end

end A108612.P310442018467333588

namespace A108612

/-- `(n+1)*floor(19*(n+1)/16)` -/
def P310442018467333588.Spec : Prop :=
  ∀ n, P310442018467333588.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P16933217654653492703

`(n+1)*ceil((n+1)/sin(1))-(n+1)`
-/

namespace A108612.P16933217654653492703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ)⌉ - (n + 1 : ℤ)

end

end A108612.P16933217654653492703

namespace A108612

/-- `(n+1)*ceil((n+1)/sin(1))-(n+1)` -/
def P16933217654653492703.Spec : Prop :=
  ∀ n, P16933217654653492703.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P2962537771900732637

`A108613(n)+(n+1)²`
-/

namespace A108612.P2962537771900732637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108613 n + ((n + 1) ^ 2 : ℤ)

end

end A108612.P2962537771900732637

namespace A108612

/-- `A108613(n)+(n+1)²` -/
def P2962537771900732637.Spec : Prop :=
  ∀ n, P2962537771900732637.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P712230853254650093

`abs(xor(n, -1)*A108120(n+1))`
-/

namespace A108612.P712230853254650093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A108120 (n + 1)|

end

end A108612.P712230853254650093

namespace A108612

/-- `abs(xor(n, -1)*A108120(n+1))` -/
def P712230853254650093.Spec : Prop :=
  ∀ n, P712230853254650093.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P16322443315397059739

`(n+1)²+(n+1)*A108611(n)`
-/

namespace A108612.P16322443315397059739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (n + 1 : ℤ) * A108611 n

end

end A108612.P16322443315397059739

namespace A108612

/-- `(n+1)²+(n+1)*A108611(n)` -/
def P16322443315397059739.Spec : Prop :=
  ∀ n, P16322443315397059739.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P12087723398995964889

`A000027((n+1)*A108120(n+1))`
-/

namespace A108612.P12087723398995964889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1 : ℤ) * A108120 (n + 1)).toNat

end

end A108612.P12087723398995964889

namespace A108612

/-- `A000027((n+1)*A108120(n+1))` -/
def P12087723398995964889.Spec : Prop :=
  ∀ n, P12087723398995964889.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P5074035582567064521

`A108590(A108590((n+1)*A108120(n+1)))`
-/

namespace A108612.P5074035582567064521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108590 (A108590 ((n + 1 : ℤ) * A108120 (n + 1)).toNat).toNat

end

end A108612.P5074035582567064521

namespace A108612

/-- `A108590(A108590((n+1)*A108120(n+1)))` -/
def P5074035582567064521.Spec : Prop :=
  ∀ n, P5074035582567064521.a n = A108612 (n + 1)

end A108612

/-! ## A108612.P14728712121160667011

`A108591(A108591((n+1)*A108120(n+1)))`
-/

namespace A108612.P14728712121160667011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A108591 ((n + 1 : ℤ) * A108120 (n + 1)).toNat).toNat

end

end A108612.P14728712121160667011

namespace A108612

/-- `A108591(A108591((n+1)*A108120(n+1)))` -/
def P14728712121160667011.Spec : Prop :=
  ∀ n, P14728712121160667011.a n = A108612 (n + 1)

end A108612

/-!
# A108613: Excess of Beatty-2 function of 1/sin(1) over n^2.

The programs for A108613, there is no canonical definition to state claims against.
-/

/-! ## A108613.P5110649547090143265

`(n+1)*floor(3*(n+1)/16)`
-/

namespace A108613.P5110649547090143265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊3 * ((n + 1 : ℚ) / 16)⌋

end

end A108613.P5110649547090143265

/-! ## A108613.P4575233486371263154

`((n+1)*ceil((n+1)/sin(1))-(n+1))%(n+1)²`
-/

namespace A108613.P4575233486371263154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * ⌈(n + 1 : ℝ) / Real.sin (1 : ℝ)⌉ - (n + 1 : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A108613.P4575233486371263154

/-! ## A108613.P14267197949535374558

`abs(xor(n, -1)*A108611(n))`
-/

namespace A108613.P14267197949535374558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1) * A108611 n|

end

end A108613.P14267197949535374558

/-! ## A108613.P13135029407207752922

`A108611(n)+n*A108611(n)`
-/

namespace A108613.P13135029407207752922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 n + (n : ℤ) * A108611 n

end

end A108613.P13135029407207752922

/-! ## A108613.P9583639101068976012

`∑{d}[xor(n, -1)*A108611(n), A000010(#)]`
-/

namespace A108613.P9583639101068976012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) * A108611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108613.P9583639101068976012

/-! ## A108613.P6011174107207567204

`A108612(n+1)-(n+1)²`
-/

namespace A108613.P6011174107207567204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108612 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A108613.P6011174107207567204

/-! ## A108613.P8236302999234502388

`A108612(n+1)%A162395(n+1)`
-/

namespace A108613.P8236302999234502388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108612 (n + 1)) (A162395 (n + 1))

end

end A108613.P8236302999234502388

/-!
# A108614: Semiprimes with non-semiprimes digits (no digits 4,6,9 in semiprimes).

The programs for A108614, there is no canonical definition to state claims against.
-/

/-! ## A108614.P5494334273249147252

`A137167(n+4)+A000007(A038754(n))`
-/

namespace A108614.P5494334273249147252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137167 (n + 4) + A000007 (A038754 n).toNat

end

end A108614.P5494334273249147252

/-! ## A108614.P15597498229893069932

`A000265(A000079(n))*A137167(n+4)`
-/

namespace A108614.P15597498229893069932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000079 n).toNat * A137167 (n + 4)

end

end A108614.P15597498229893069932

/-! ## A108614.P11071095662144117696

`A137167(n+4)%A179913(A078812(n))`
-/

namespace A108614.P11071095662144117696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137167 (n + 4)) (A179913 (A078812 n).toNat)

end

end A108614.P11071095662144117696

/-! ## A108614.P8647506502646599255

`A137167(n+4)+A007949(A116636(n+1))`
-/

namespace A108614.P8647506502646599255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137167 (n + 4) + A007949 (A116636 (n + 1)).toNat

end

end A108614.P8647506502646599255

/-! ## A108614.P13177343145956696187

`A137167(n+4)+A007949(A280321(3*n))`
-/

namespace A108614.P13177343145956696187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137167 (n + 4) + A007949 (A280321 (3 * n)).toNat

end

end A108614.P13177343145956696187

/-!
# A108616: 3-column rectangular array of near-right obtuse triangles.

The programs for A108616, there is no canonical definition to state claims against.
-/

/-! ## A108616.P14638062336587807603

`A261654(A052426(n+1))+A047999(3*n+4)`
-/

namespace A108616.P14638062336587807603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261654 (A052426 (n + 1)).toNat + A047999 (3 * n + 4)

end

end A108616.P14638062336587807603

/-!
# A108617: Triangle read by rows: T(n,k) = T(n-1,k-1) + T(n-1,k) for 0 < k < n, T(n,0) = T(n,n) = n-th Fibonacci number.

The programs for A108617, there is no canonical definition to state claims against.
-/

/-! ## A108617.P8543937931058683423

`A316939(n)-A074829(n+1)`
-/

namespace A108617.P8543937931058683423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n - A074829 (n + 1)

end

end A108617.P8543937931058683423

/-! ## A108617.P10197282431469032142

`3*A316939(n)-A316938(n)`
-/

namespace A108617.P10197282431469032142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A316939 n - A316938 n

end

end A108617.P10197282431469032142

/-! ## A108617.P7494495803849680557

`A105809(n+1)+A316939(n)-A316939(n+1)`
-/

namespace A108617.P7494495803849680557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (n + 1) + (A316939 n - A316939 (n + 1))

end

end A108617.P7494495803849680557

/-! ## A108617.P14334216948877724348

`A136431(A061579(n))+A136431(n)`
-/

namespace A108617.P14334216948877724348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A061579 n).toNat + A136431 n

end

end A108617.P14334216948877724348

/-! ## A108617.P15333121444512802598

`A136431(A114327(n)+n)+A136431(n)`
-/

namespace A108617.P15333121444512802598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A114327 n + (n : ℤ)).toNat + A136431 n

end

end A108617.P15333121444512802598

/-! ## A108617.P2233095286924267160

`A136431(n)+A136431(∑[A198954(n)-1])`
-/

namespace A108617.P2233095286924267160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 n + A136431 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108617.P2233095286924267160

/-! ## A108617.P17287232070639774223

`A136431(A038722(n+1)-1)+A136431(n)`
-/

namespace A108617.P17287232070639774223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A038722 (n + 1) - 1).toNat + A136431 n

end

end A108617.P17287232070639774223

/-! ## A108617.P16244928631047443549

`A136431(A038722(n+2))+A136431(n)`
-/

namespace A108617.P16244928631047443549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A038722 (n + 2)).toNat + A136431 n

end

end A108617.P16244928631047443549

/-! ## A108617.P6174395792999510543

`A014682(A316938(n)-A074829(n+1))-A074829(n+1)`
-/

namespace A108617.P6174395792999510543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A316938 n - A074829 (n + 1)).toNat - A074829 (n + 1)

end

end A108617.P6174395792999510543

/-! ## A108617.P4636753325670682209

`A008486(A316939(n))-A316938(n)`
-/

namespace A108617.P4636753325670682209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A316939 n).toNat - A316938 n

end

end A108617.P4636753325670682209

/-!
# A108618: A quaternion-generated sequence calculated using the rules given in the comment box with initial seed x = .5'i + .5'j + .5'k + .5e; version: "tes".

The programs for A108618, there is no canonical definition to state claims against.
-/

/-! ## A108618.P16542381760729900328

`A272693(n+1)+A108620(n)`
-/

namespace A108618.P16542381760729900328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 (n + 1) + A108620 n

end

end A108618.P16542381760729900328

/-! ## A108618.P7690569500124516347

`A272693(n+1)+A272693(n+1)+3*A108619(n)`
-/

namespace A108618.P7690569500124516347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 (n + 1) + (A272693 (n + 1) + 3 * A108619 n)

end

end A108618.P7690569500124516347

/-! ## A108618.P14638967872459653398

`A108619(n+1)+Δ[A108619(n)]-2`
-/

namespace A108618.P14638967872459653398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108619 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A108618.P14638967872459653398

/-! ## A108618.P3843357995011862227

`A272693(n+1)+A108619(n+1)+A108619(n)-1`
-/

namespace A108618.P3843357995011862227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 (n + 1) + (A108619 (n + 1) + (A108619 n - 1))

end

end A108618.P3843357995011862227

/-!
# A108619: A quaternion-generated sequence calculated using the rules given in the comment box with initial seed x = .5'i + .5'j + .5'k + .5e; version: "base".

The programs for A108619, there is no canonical definition to state claims against.
-/

/-! ## A108619.P8372348074840792002

`(A108620(n)-A272693(n+1))/3`
-/

namespace A108619.P8372348074840792002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108620 n - A272693 (n + 1) : ℚ) / 3

end

end A108619.P8372348074840792002

/-!
# A108620: 2*a(n) = A108618(n) + 3*A108619(n).

The programs for A108620, there is no canonical definition to state claims against.
-/

/-! ## A108620.P3979994389544169874

`A108618(n)-A272693(n+1)`
-/

namespace A108620.P3979994389544169874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108618 n - A272693 (n + 1)

end

end A108620.P3979994389544169874

/-! ## A108620.P17946042247092449390

`A272693(n+1)+3*A108619(n)`
-/

namespace A108620.P17946042247092449390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 (n + 1) + 3 * A108619 n

end

end A108620.P17946042247092449390

/-! ## A108620.P14455583133949852174

`A108618(n)-A272693(n)-Δ[A272693(n)]`
-/

namespace A108620.P14455583133949852174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108618 n - A272693 n - (f1 (n + 1) - f1 n)

end

end A108620.P14455583133949852174

/-! ## A108620.P3189501686993413353

`A108619(n+1)+A108619(n)-1`
-/

namespace A108620.P3189501686993413353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108619 (n + 1) + (A108619 n - 1)

end

end A108620.P3189501686993413353

/-!
# A108621: Pi self-erasure.

The programs for A108621, there is no canonical definition to state claims against.
-/

/-! ## A108621.P8714766993995125169

`A000796(A047269(n+1)%A253302(n+1))`
-/

namespace A108621.P8714766993995125169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A047269 (n + 1)) (A253302 (n + 1))).toNat + 1)

end

end A108621.P8714766993995125169

/-!
# A108622: Number of numerals to represent n in a base b multiplicative grouping numeral system where b=10.

The programs for A108622, the canonical program `A108622.P357414125879417223` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108622 has offset 1).

The definition of A108622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108622.P357414125879417223

`A102669(A054899(n+1))+A055640(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108622

/-- `A102669(A054899(n+1))+A055640(n+1)` -/
def P357414125879417223.Spec : Prop :=
  ∀ n, P357414125879417223.a n = A108622 (n + 1)

theorem P357414125879417223.correct : P357414125879417223.Spec := by
  intro n
  simp only [A108622, Nat.add_sub_cancel]

end A108622

/-! ## A108622.P16693154341331617647

`A112348(n+1)-A122840(A003557(n+1))`
-/

namespace A108622.P16693154341331617647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (n + 1) - A122840 (A003557 (n + 1)).toNat

end

end A108622.P16693154341331617647

namespace A108622

/-- `A112348(n+1)-A122840(A003557(n+1))` -/
def P16693154341331617647.Spec : Prop :=
  ∀ n, P16693154341331617647.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P2830542646131041048

`gcd(A112348(n+1), A319886(A027615(2*(n+2))))`
-/

namespace A108622.P2830542646131041048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112348 (n + 1)) (A319886 (A027615 (2 * (n + 2))).toNat)

end

end A108622.P2830542646131041048

namespace A108622

/-- `gcd(A112348(n+1), A319886(A027615(2*(n+2))))` -/
def P2830542646131041048.Spec : Prop :=
  ∀ n, (P2830542646131041048.a n : ℤ) = A108622 (n + 1)

end A108622

/-! ## A108622.P13884050842385634856

`A112348(A118759(n+1))`
-/

namespace A108622.P13884050842385634856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (A118759 (n + 1)).toNat

end

end A108622.P13884050842385634856

namespace A108622

/-- `A112348(A118759(n+1))` -/
def P13884050842385634856.Spec : Prop :=
  ∀ n, P13884050842385634856.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P4512356883057884800

`A112348(A004216(n+1)+n)`
-/

namespace A108622.P4512356883057884800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (A004216 (n + 1) + (n : ℤ)).toNat

end

end A108622.P4512356883057884800

namespace A108622

/-- `A112348(A004216(n+1)+n)` -/
def P4512356883057884800.Spec : Prop :=
  ∀ n, P4512356883057884800.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P17735360174304492668

`A112348(n+1)%A112349(n+2)`
-/

namespace A108622.P17735360174304492668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112348 (n + 1)) (A112349 (n + 2))

end

end A108622.P17735360174304492668

namespace A108622

/-- `A112348(n+1)%A112349(n+2)` -/
def P17735360174304492668.Spec : Prop :=
  ∀ n, P17735360174304492668.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P706548249412834575

`A112348(C(A169819(n+1), n+1)+n+1)`
-/

namespace A108622.P706548249412834575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 (Nat.choose (A169819 (n + 1)).toNat (n + 1) + (n + 1))

end

end A108622.P706548249412834575

namespace A108622

/-- `A112348(C(A169819(n+1), n+1)+n+1)` -/
def P706548249412834575.Spec : Prop :=
  ∀ n, P706548249412834575.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P13871941282488552621

`A055640(A002113(n+1)^A004216(n+1))`
-/

namespace A108622.P13871941282488552621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (SequenceMachineLib.roundAway ((A002113 (n + 1) : ℚ) ^ (A004216 (n + 1) : ℤ))).toNat

end

end A108622.P13871941282488552621

namespace A108622

/-- `A055640(A002113(n+1)^A004216(n+1))` -/
def P13871941282488552621.Spec : Prop :=
  ∀ n, P13871941282488552621.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P18126818220881770086

`A023968(A380770(n+1))`
-/

namespace A108622.P18126818220881770086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023968 (A380770 (n + 1)).toNat

end

end A108622.P18126818220881770086

namespace A108622

/-- `A023968(A380770(n+1))` -/
def P18126818220881770086.Spec : Prop :=
  ∀ n, P18126818220881770086.a n = A108622 (n + 1)

end A108622

/-! ## A108622.P3925382602997957276

`A037869(A112350(n+1))`
-/

namespace A108622.P3925382602997957276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A112350 (n + 1)).toNat

end

end A108622.P3925382602997957276

namespace A108622

/-- `A037869(A112350(n+1))` -/
def P3925382602997957276.Spec : Prop :=
  ∀ n, P3925382602997957276.a n = A108622 (n + 1)

end A108622

/-!
# A108623: G.f. satisfies x = A(x)*(1-A(x))/(1-A(x)-(A(x))^2).

The programs for A108623, the canonical program `A108623.P9128770104114728293` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108623 has offset 1).

The definition of A108623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108623.P9128770104114728293

`1-∑[A100223(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108623

/-- `1-∑[A100223(n+1)]` -/
def P9128770104114728293.Spec : Prop :=
  ∀ n, P9128770104114728293.a n = A108623 (n + 1)

theorem P9128770104114728293.correct : P9128770104114728293.Spec := by
  intro n
  simp only [A108623, Nat.add_sub_cancel]

end A108623

/-! ## A108623.P16007765675737781856

`a(n-1)-A343773(n-1)` with `a(0)=1`
-/

namespace A108623.P16007765675737781856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A343773 (n - 1)

end

end A108623.P16007765675737781856

namespace A108623

/-- `a(n-1)-A343773(n-1)` -/
def P16007765675737781856.Spec : Prop :=
  ∀ n, P16007765675737781856.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P7782742719300669669

`A033999(n)*A108624(n+1)`
-/

namespace A108623.P7782742719300669669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108624 (n + 1)

end

end A108623.P7782742719300669669

namespace A108623

/-- `A033999(n)*A108624(n+1)` -/
def P7782742719300669669.Spec : Prop :=
  ∀ n, P7782742719300669669.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P1016106193024425854

`1-Δ[A134920(n)]`
-/

namespace A108623.P1016106193024425854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A108623.P1016106193024425854

namespace A108623

/-- `1-Δ[A134920(n)]` -/
def P1016106193024425854.Spec : Prop :=
  ∀ n, P1016106193024425854.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P11165492267996041360

`2-A371888(n+1)`
-/

namespace A108623.P11165492267996041360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A371888 (n + 1)

end

end A108623.P11165492267996041360

namespace A108623

/-- `2-A371888(n+1)` -/
def P11165492267996041360.Spec : Prop :=
  ∀ n, P11165492267996041360.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P12869326631088789813

`A343773(n)+1-∑[A343773(n)]`
-/

namespace A108623.P12869326631088789813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343773 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108623.P12869326631088789813

namespace A108623

/-- `A343773(n)+1-∑[A343773(n)]` -/
def P12869326631088789813.Spec : Prop :=
  ∀ n, P12869326631088789813.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P14189968027738072167

`A134920(n)+1-A134920(n+1)`
-/

namespace A108623.P14189968027738072167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134920 n + (1 - A134920 (n + 1))

end

end A108623.P14189968027738072167

namespace A108623

/-- `A134920(n)+1-A134920(n+1)` -/
def P14189968027738072167.Spec : Prop :=
  ∀ n, P14189968027738072167.a n = A108623 (n + 1)

end A108623

/-! ## A108623.P17770685162579704160

`2-A372035(n+1)/2`
-/

namespace A108623.P17770685162579704160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A372035 (n + 1) : ℚ) / 2

end

end A108623.P17770685162579704160

namespace A108623

/-- `2-A372035(n+1)/2` -/
def P17770685162579704160.Spec : Prop :=
  ∀ n, P17770685162579704160.a n = (A108623 (n + 1) : ℚ)

end A108623

/-!
# A108624: G.f. satisfies x = A(x)*(1+A(x))/(1-A(x)-(A(x))^2).

The programs for A108624, the canonical program `A108624.P11110063196872125649` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108624 has offset 1).

The definition of A108624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108624.P11110063196872125649

`A007440(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108624

/-- `A007440(n)-a(n-1)` -/
def P11110063196872125649.Spec : Prop :=
  ∀ n, P11110063196872125649.a n = A108624 (n + 1)

theorem P11110063196872125649.correct : P11110063196872125649.Spec := by
  intro n
  simp only [A108624, Nat.add_sub_cancel]

end A108624

/-! ## A108624.P9128315109246023617

`(-1)^n*A108623(n+1)`
-/

namespace A108624.P9128315109246023617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A108623 (n + 1)

end

end A108624.P9128315109246023617

namespace A108624

/-- `(-1)^n*A108623(n+1)` -/
def P9128315109246023617.Spec : Prop :=
  ∀ n, P9128315109246023617.a n = A108624 (n + 1)

end A108624

/-! ## A108624.P11444403395638402342

`A108623(n+1)/A033999(n)`
-/

namespace A108624.P11444403395638402342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108623 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A108624.P11444403395638402342

namespace A108624

/-- `A108623(n+1)/A033999(n)` -/
def P11444403395638402342.Spec : Prop :=
  ∀ n, P11444403395638402342.a n = (A108624 (n + 1) : ℚ)

end A108624

/-! ## A108624.P4039296323763371077

`A108623(n+1)/A056594(2*n)`
-/

namespace A108624.P4039296323763371077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108623 (n + 1) : ℚ) / (A056594 (2 * n) : ℚ)

end

end A108624.P4039296323763371077

namespace A108624

/-- `A108623(n+1)/A056594(2*n)` -/
def P4039296323763371077.Spec : Prop :=
  ∀ n, P4039296323763371077.a n = (A108624 (n + 1) : ℚ)

end A108624

/-! ## A108624.P4332569525927686692

`A108623(n+1)/A057077(2*n)`
-/

namespace A108624.P4332569525927686692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108623 (n + 1) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A108624.P4332569525927686692

namespace A108624

/-- `A108623(n+1)/A057077(2*n)` -/
def P4332569525927686692.Spec : Prop :=
  ∀ n, P4332569525927686692.a n = (A108624 (n + 1) : ℚ)

end A108624

/-! ## A108624.P15043133316421675739

`A108623(n+1)/A087960(2*n)`
-/

namespace A108624.P15043133316421675739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108623 (n + 1) : ℚ) / (A087960 (2 * n) : ℚ)

end

end A108624.P15043133316421675739

namespace A108624

/-- `A108623(n+1)/A087960(2*n)` -/
def P15043133316421675739.Spec : Prop :=
  ∀ n, P15043133316421675739.a n = (A108624 (n + 1) : ℚ)

end A108624

/-! ## A108624.P17662740557174087515

`A108623(n+1)/A077926(Δ[A004526(n)])`
-/

namespace A108624.P17662740557174087515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108623 (n + 1) : ℚ) / (A077926 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A108624.P17662740557174087515

namespace A108624

/-- `A108623(n+1)/A077926(Δ[A004526(n)])` -/
def P17662740557174087515.Spec : Prop :=
  ∀ n, P17662740557174087515.a n = (A108624 (n + 1) : ℚ)

end A108624

/-!
# A108625: Square array, read by antidiagonals, where row n equals the crystal ball sequence for the A_n lattice.

The programs for A108625, there is no canonical definition to state claims against.
-/

/-! ## A108625.P6127196059679638152

`A099608(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A108625.P6127196059679638152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A108625.P6127196059679638152

/-! ## A108625.P16268246314247813072

`A099608(gcd(A010816(n), A061579(n)))`
-/

namespace A108625.P16268246314247813072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (Int.gcd (A010816 n) (A061579 n))

end

end A108625.P16268246314247813072

/-! ## A108625.P16230809733832426559

`A099608(A061579(n%A008459(n)²))`
-/

namespace A108625.P16230809733832426559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (A061579 (Int.tmod (n : ℤ) (A008459 n ^ 2)).toNat).toNat

end

end A108625.P16230809733832426559

/-! ## A108625.P2178925061638984407

`A099608(A193592(n)-A131818(n+1)+n)`
-/

namespace A108625.P2178925061638984407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (A193592 n - A131818 (n + 1) + (n : ℤ)).toNat

end

end A108625.P2178925061638984407

/-! ## A108625.P817794518693429850

`A099608(∑[char[∑[n]]]²-(n+1))`
-/

namespace A108625.P817794518693429850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A108625.P817794518693429850

/-! ## A108625.P7859608416169328842

`or(1, A099608(∑[2*n]%comp[∑[n]]))`
-/

namespace A108625.P7859608416169328842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099608 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A108625.P7859608416169328842

/-! ## A108625.P4142656704633769673

`or(1, A099608(A061579(n)))`
-/

namespace A108625.P4142656704633769673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099608 (A061579 n).toNat)

end

end A108625.P4142656704633769673

/-!
# A108626: Antidiagonal sums of square array A108625, in which row n equals the crystal ball sequence for A_n lattice.

The programs for A108626, the canonical program `A108626.P8036561101586251315` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108626 has offset 0).

The definition of A108626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108626.P8036561101586251315

`∑[A047085(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108626

/-- `∑[A047085(n)]` -/
def P8036561101586251315.Spec : Prop :=
  ∀ n, P8036561101586251315.a n = A108626 n

theorem P8036561101586251315.correct : P8036561101586251315.Spec := by
  intro n
  simp only [A108626]

end A108626

/-! ## A108626.P4103434906502098026

`A191794(2*n)`
-/

namespace A108626.P4103434906502098026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (2 * n)

end

end A108626.P4103434906502098026

namespace A108626

/-- `A191794(2*n)` -/
def P4103434906502098026.Spec : Prop :=
  ∀ n, P4103434906502098026.a n = A108626 n

end A108626

/-! ## A108626.P2984845570613364200

`record[A191794(n%4+n)]`
-/

namespace A108626.P2984845570613364200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108626.P2984845570613364200

namespace A108626

/-- `record[A191794(n%4+n)]` -/
def P2984845570613364200.Spec : Prop :=
  ∀ n, P2984845570613364200.a n = A108626 n

end A108626

/-! ## A108626.P11699541428224140390

`A273905(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A108626.P11699541428224140390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273905 (2 * n) + a (n - 1)

end

end A108626.P11699541428224140390

namespace A108626

/-- `A273905(2*n)+a(n-1)` -/
def P11699541428224140390.Spec : Prop :=
  ∀ n, P11699541428224140390.a n = A108626 n

end A108626

/-! ## A108626.P12184500729933205577

`∑[2*A294159(n)-a(n-1)]` with `a(0)=1`
-/

namespace A108626.P12184500729933205577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A294159 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P12184500729933205577

namespace A108626

/-- `∑[2*A294159(n)-a(n-1)]` -/
def P12184500729933205577.Spec : Prop :=
  ∀ n, P12184500729933205577.a n = A108626 n

end A108626

/-! ## A108626.P17728275143367190275

`∑[A273905(2*A028310(n))]`
-/

namespace A108626.P17728275143367190275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (2 * A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P17728275143367190275

namespace A108626

/-- `∑[A273905(2*A028310(n))]` -/
def P17728275143367190275.Spec : Prop :=
  ∀ n, P17728275143367190275.a n = A108626 n

end A108626

/-! ## A108626.P8455815198372034834

`∑[A273905(A233583(2*n+1))]`
-/

namespace A108626.P8455815198372034834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P8455815198372034834

namespace A108626

/-- `∑[A273905(A233583(2*n+1))]` -/
def P8455815198372034834.Spec : Prop :=
  ∀ n, P8455815198372034834.a n = A108626 n

end A108626

/-! ## A108626.P17396379953792567718

`∑[A273905(A260196(2*n)+2*n+1)]`
-/

namespace A108626.P17396379953792567718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A260196 (2 * n) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P17396379953792567718

namespace A108626

/-- `∑[A273905(A260196(2*n)+2*n+1)]` -/
def P17396379953792567718.Spec : Prop :=
  ∀ n, P17396379953792567718.a n = A108626 n

end A108626

/-! ## A108626.P13662975856304912775

`∑[A273905(A005843(A028310(n)))]`
-/

namespace A108626.P13662975856304912775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A005843 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P13662975856304912775

namespace A108626

/-- `∑[A273905(A005843(A028310(n)))]` -/
def P13662975856304912775.Spec : Prop :=
  ∀ n, P13662975856304912775.a n = A108626 n

end A108626

/-! ## A108626.P14912041387312925762

`∑[A273905(A005843(n)+A000038(n))]`
-/

namespace A108626.P14912041387312925762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A005843 n + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P14912041387312925762

namespace A108626

/-- `∑[A273905(A005843(n)+A000038(n))]` -/
def P14912041387312925762.Spec : Prop :=
  ∀ n, P14912041387312925762.a n = A108626 n

end A108626

/-! ## A108626.P6920999944881240437

`Δ[A271941(n+3)]-A294159(n+2)`
-/

namespace A108626.P6920999944881240437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294159 (n + 2)

end

end A108626.P6920999944881240437

namespace A108626

/-- `Δ[A271941(n+3)]-A294159(n+2)` -/
def P6920999944881240437.Spec : Prop :=
  ∀ n, P6920999944881240437.a n = A108626 n

end A108626

/-!
# A108627: Logarithmic g.f.: Sum_{n>=1} a(n)/n*x^n = log(G108626(x)), where G108626(x) is g.f. for A108626.

The programs for A108627, the canonical program `A108627.P11293089793975210258` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108627 has offset 1).

The definition of A108627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108627.P301333820835493112

`ogf((2-2x-2x^3)/(1-4x+2x^2+x^4))`
-/

namespace A108627.P301333820835493112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 0, -2] [1, -4, 2, 0, 1] n

end

end A108627.P301333820835493112

namespace A108627

/-- `ogf((2-2x-2x^3)/(1-4x+2x^2+x^4))` -/
def P301333820835493112.Spec : Prop :=
  ∀ n, P301333820835493112.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P4979785192936420863

`A270715(2*n)+1`
-/

namespace A108627.P4979785192936420863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270715 (2 * n) + 1

end

end A108627.P4979785192936420863

namespace A108627

/-- `A270715(2*n)+1` -/
def P4979785192936420863.Spec : Prop :=
  ∀ n, P4979785192936420863.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P9010561317185257567

`∑[A073728(A004273(n))]-1`
-/

namespace A108627.P9010561317185257567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073728 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A108627.P9010561317185257567

namespace A108627

/-- `∑[A073728(A004273(n))]-1` -/
def P9010561317185257567.Spec : Prop :=
  ∀ n, P9010561317185257567.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P11293089793975210258

`A354784(2*n+1)+A202012(2*n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108627

/-- `A354784(2*n+1)+A202012(2*n)+1` -/
def P11293089793975210258.Spec : Prop :=
  ∀ n, P11293089793975210258.a n = A108627 (n + 1)

theorem P11293089793975210258.correct : P11293089793975210258.Spec := by
  intro n
  simp only [A108627, Nat.add_sub_cancel]

end A108627

/-! ## A108627.P16087607397261987178

`A202012(2*n+1)+1-A000073(2*n)`
-/

namespace A108627.P16087607397261987178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (2 * n + 1) + (1 - A000073 (2 * n))

end

end A108627.P16087607397261987178

namespace A108627

/-- `A202012(2*n+1)+1-A000073(2*n)` -/
def P16087607397261987178.Spec : Prop :=
  ∀ n, P16087607397261987178.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P7515532113502838988

`A192804(2*n+3)+A000073(2*n+1)`
-/

namespace A108627.P7515532113502838988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (2 * n + 3) + A000073 (2 * n + 1)

end

end A108627.P7515532113502838988

namespace A108627

/-- `A192804(2*n+3)+A000073(2*n+1)` -/
def P7515532113502838988.Spec : Prop :=
  ∀ n, P7515532113502838988.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P12830637700701322739

`A202012(2*n+1)+2-A112476(2*n)`
-/

namespace A108627.P12830637700701322739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (2 * n + 1) + (2 - A112476 (2 * n))

end

end A108627.P12830637700701322739

namespace A108627

/-- `A202012(2*n+1)+2-A112476(2*n)` -/
def P12830637700701322739.Spec : Prop :=
  ∀ n, P12830637700701322739.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P12772154381001247225

`Δ[A192804(2*n+1)+∑[A192804(2*n)]]`
-/

namespace A108627.P12772154381001247225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108627.P12772154381001247225

namespace A108627

/-- `Δ[A192804(2*n+1)+∑[A192804(2*n)]]` -/
def P12772154381001247225.Spec : Prop :=
  ∀ n, P12772154381001247225.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P11512075422062756882

`Δ[A000213(2*n+1)]-∑[A001590(2*n)]`
-/

namespace A108627.P11512075422062756882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A108627.P11512075422062756882

namespace A108627

/-- `Δ[A000213(2*n+1)]-∑[A001590(2*n)]` -/
def P11512075422062756882.Spec : Prop :=
  ∀ n, P11512075422062756882.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P4317340927786457975

`A000073(2*n+1)+A008937(2*n+1)+1`
-/

namespace A108627.P4317340927786457975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n + 1) + (A008937 (2 * n + 1) + 1)

end

end A108627.P4317340927786457975

namespace A108627

/-- `A000073(2*n+1)+A008937(2*n+1)+1` -/
def P4317340927786457975.Spec : Prop :=
  ∀ n, P4317340927786457975.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P16176998217936824963

`A192804(2*n)+A000213(A004277(n+1))`
-/

namespace A108627.P16176998217936824963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (2 * n) + A000213 (A004277 (n + 1)).toNat

end

end A108627.P16176998217936824963

namespace A108627

/-- `A192804(2*n)+A000213(A004277(n+1))` -/
def P16176998217936824963.Spec : Prop :=
  ∀ n, P16176998217936824963.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P14548105913757743387

`record[ceil(A075676(n)/2)]`
-/

namespace A108627.P14548105913757743387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075676 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108627.P14548105913757743387

namespace A108627

/-- `record[ceil(A075676(n)/2)]` -/
def P14548105913757743387.Spec : Prop :=
  ∀ n, P14548105913757743387.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P10171128510746172630

`A000803(2*(n+2))/4`
-/

namespace A108627.P10171128510746172630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000803 (2 * (n + 2)) : ℚ) / 4

end

end A108627.P10171128510746172630

namespace A108627

/-- `A000803(2*(n+2))/4` -/
def P10171128510746172630.Spec : Prop :=
  ∀ n, P10171128510746172630.a n = (A108627 (n + 1) : ℚ)

end A108627

/-! ## A108627.P16099393494011556042

`(A389173(n+1)-n)/2`
-/

namespace A108627.P16099393494011556042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389173 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A108627.P16099393494011556042

namespace A108627

/-- `(A389173(n+1)-n)/2` -/
def P16099393494011556042.Spec : Prop :=
  ∀ n, P16099393494011556042.a n = (A108627 (n + 1) : ℚ)

end A108627

/-! ## A108627.P17265987299450928564

`ceil(A001644(2*(n+1))/2)`
-/

namespace A108627.P17265987299450928564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001644 (2 * (n + 1)) : ℚ) / 2⌉

end

end A108627.P17265987299450928564

namespace A108627

/-- `ceil(A001644(2*(n+1))/2)` -/
def P17265987299450928564.Spec : Prop :=
  ∀ n, P17265987299450928564.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P14804253197426453324

`(Δ[A214727(Δ[n²])]+1)/2`
-/

namespace A108627.P14804253197426453324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A108627.P14804253197426453324

namespace A108627

/-- `(Δ[A214727(Δ[n²])]+1)/2` -/
def P14804253197426453324.Spec : Prop :=
  ∀ n, P14804253197426453324.a n = (A108627 (n + 1) : ℚ)

end A108627

/-! ## A108627.P13352996735490931825

`record[∑[A010693(n)*A078042(n)]]`
-/

namespace A108627.P13352996735490931825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108627.P13352996735490931825

namespace A108627

/-- `record[∑[A010693(n)*A078042(n)]]` -/
def P13352996735490931825.Spec : Prop :=
  ∀ n, P13352996735490931825.a n = A108627 (n + 1)

end A108627

/-! ## A108627.P1561285580624861434

`A077902(2*(n+1))+A000073(2*n+1)`
-/

namespace A108627.P1561285580624861434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 (2 * (n + 1)) + A000073 (2 * n + 1)

end

end A108627.P1561285580624861434

namespace A108627

/-- `A077902(2*(n+1))+A000073(2*n+1)` -/
def P1561285580624861434.Spec : Prop :=
  ∀ n, P1561285580624861434.a n = A108627 (n + 1)

end A108627

/-!
# A108628: n-th term of the crystal ball sequence for A_{n+1} lattice for n >= 0.

The programs for A108628, there is no canonical definition to state claims against.
-/

/-! ## A108628.P3252799533556646425

`1/5*(2*A005258(n+1)-A005258(n))`
-/

namespace A108628.P3252799533556646425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (2 * A005258 (n + 1) - A005258 n : ℚ)

end

end A108628.P3252799533556646425

/-! ## A108628.P13093765526332691691

`∑[-Δ[A103882(n)-A005258(n)]]`
-/

namespace A108628.P13093765526332691691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 n - A005258 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108628.P13093765526332691691

/-! ## A108628.P2958598285954968412

`A005258(n+1)-A103882(n+1)`
-/

namespace A108628.P2958598285954968412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005258 (n + 1) - A103882 (n + 1)

end

end A108628.P2958598285954968412

/-! ## A108628.P12259045319794200740

`A103882(n+1)-A208675(n+1)`
-/

namespace A108628.P12259045319794200740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103882 (n + 1) - A208675 (n + 1)

end

end A108628.P12259045319794200740

/-! ## A108628.P4010814383613914802

`(A005258(n+1)-A208675(n+1))/2`
-/

namespace A108628.P4010814383613914802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005258 (n + 1) - A208675 (n + 1) : ℚ) / 2

end

end A108628.P4010814383613914802

/-! ## A108628.P17495520497238936587

`A316649(∑[2*(n+1)])`
-/

namespace A108628.P17495520497238936587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108628.P17495520497238936587

/-! ## A108628.P9252618861080505783

`record[A316649(floor((n/2)²))]`
-/

namespace A108628.P9252618861080505783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108628.P9252618861080505783

/-! ## A108628.P7135053946707199524

`A108625(∑[4*n]+2*n+1)`
-/

namespace A108628.P7135053946707199524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1))

end

end A108628.P7135053946707199524

/-! ## A108628.P16736168558571362794

`record[gcd(1-A114327(n), A108625(n))]`
-/

namespace A108628.P16736168558571362794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A114327 n) (A108625 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108628.P16736168558571362794

/-!
# A108630: Expansion of g.f.: (1+x-sqrt(1-2*x-7*x^2-8*x^3-4*x^4))/(2*(1+x+x^2)).

The programs for A108630, there is no canonical definition to state claims against.
-/

/-! ## A108630.P13531321291053509409

`A187188(A391134(n+1))`
-/

namespace A108630.P13531321291053509409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A391134 (n + 1)).toNat

end

end A108630.P13531321291053509409

/-! ## A108630.P3492609631335226243

`A138194(A233868(n+2))`
-/

namespace A108630.P3492609631335226243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A233868 (n + 2)).toNat

end

end A108630.P3492609631335226243

/-! ## A108630.P3004905636863333455

`A008617(4*A104629(n))`
-/

namespace A108630.P3004905636863333455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (4 * A104629 n).toNat

end

end A108630.P3004905636863333455

/-! ## A108630.P7554626468386001699

`A008617(4*A000957(n+3))`
-/

namespace A108630.P7554626468386001699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (4 * A000957 (n + 3)).toNat

end

end A108630.P7554626468386001699

/-!
# A108631: Semiprimes with nonprime digits (no digits 2,3,5,7 in semiprimes).

The programs for A108631, there is no canonical definition to state claims against.
-/

/-! ## A108631.P7006658995631066888

`filter[A084984(n+2), A064911(#)]`
-/

namespace A108631.P7006658995631066888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108631.P7006658995631066888

/-! ## A108631.P17445762832333273384

`eq[A193238(n)+2, A105700(n)]`
-/

namespace A108631.P17445762832333273384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108631.P17445762832333273384

/-! ## A108631.P2135788965583142269

`∩[A001358(n+1), A084984(n+1)]`
-/

namespace A108631.P2135788965583142269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108631.P2135788965583142269

/-! ## A108631.P10802274937552222586

`∩[A084984(n+1), A088707(n+1)-1]`
-/

namespace A108631.P10802274937552222586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108631.P10802274937552222586

/-! ## A108631.P8855814339352870516

`lt[A193238(n+1), A101605(2*(n+1))]+1`
-/

namespace A108631.P8855814339352870516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A108631.P8855814339352870516

/-! ## A108631.P7498295867928103868

`lt[A193238(n), A101605(A008486(n))]`
-/

namespace A108631.P7498295867928103868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108631.P7498295867928103868

/-! ## A108631.P13928592788821115388

`lt[A193238(n), A101605(A008706(n))]`
-/

namespace A108631.P13928592788821115388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108631.P13928592788821115388

/-!
# A108632: Semiprimes with prime digits (only digits 2,3,5,7 in semiprimes).

The programs for A108632, there is no canonical definition to state claims against.
-/

/-! ## A108632.P15154420410885294081

`∩[A046034(n+1), A108614(n+1)]`
-/

namespace A108632.P15154420410885294081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P15154420410885294081

/-! ## A108632.P17144994686842248860

`∩[A061371(n+1), A108614(n+1)]`
-/

namespace A108632.P17144994686842248860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P17144994686842248860

/-! ## A108632.P1365694124134635437

`∩[A001358(n+1), A046034(n+1)]`
-/

namespace A108632.P1365694124134635437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P1365694124134635437

/-! ## A108632.P13353655557397751407

`∩[A001358(n+1), A061371(n+1)]`
-/

namespace A108632.P13353655557397751407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P13353655557397751407

/-! ## A108632.P10187150894909679960

`filter[A046034(n+1), A064911(#)]`
-/

namespace A108632.P10187150894909679960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108632.P10187150894909679960

/-! ## A108632.P1355701440806137762

`filter[A061371(n+1), A064911(#)]`
-/

namespace A108632.P1355701440806137762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108632.P1355701440806137762

/-! ## A108632.P2240869361929006547

`filter[A061371(n+1), A101040(#)]`
-/

namespace A108632.P2240869361929006547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A108632.P2240869361929006547

/-! ## A108632.P16977386480849815786

`∩[A046034(n+1), A112381(n+1)]`
-/

namespace A108632.P16977386480849815786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P16977386480849815786

/-! ## A108632.P3060298859684429422

`∩[A061371(n+1), A112381(n+1)]`
-/

namespace A108632.P3060298859684429422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P3060298859684429422

/-! ## A108632.P15556934413235489897

`∩[A046034(n+1), A077136(n+1)]`
-/

namespace A108632.P15556934413235489897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P15556934413235489897

/-! ## A108632.P9844874137588133302

`∩[A061371(n+1), A077136(n+1)]`
-/

namespace A108632.P9844874137588133302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P9844874137588133302

/-! ## A108632.P532975054266886849

`∩[A046034(n+1), A176540(n+1)]`
-/

namespace A108632.P532975054266886849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P532975054266886849

/-! ## A108632.P1125366716879003715

`∩[A061371(n+1), A176540(n+1)]`
-/

namespace A108632.P1125366716879003715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P1125366716879003715

/-! ## A108632.P8860602621525291132

`∩[A037143(n+1), A061371(n+1)]`
-/

namespace A108632.P8860602621525291132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108632.P8860602621525291132

/-!
# A108633: Nonsquare semiprimes with semiprime sum of factors.

The programs for A108633, the canonical program `A108633.P16120796230201484125` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108633 has offset 1).

The definition of A108633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108633.P3148739251707182509

`filter[A045835(n+1), A280710(#)]`
-/

namespace A108633.P3148739251707182509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A108633.P3148739251707182509

namespace A108633

/-- `filter[A045835(n+1), A280710(#)]` -/
def P3148739251707182509.Spec : Prop :=
  ∀ n, P3148739251707182509.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P8389000346582137614

`filter[A085711(n+1), A280710(#)]`
-/

namespace A108633.P8389000346582137614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A108633.P8389000346582137614

namespace A108633

/-- `filter[A085711(n+1), A280710(#)]` -/
def P8389000346582137614.Spec : Prop :=
  ∀ n, P8389000346582137614.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P6852250346611873563

`filter[A045835(n+1), A353471(#)]`
-/

namespace A108633.P6852250346611873563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A108633.P6852250346611873563

namespace A108633

/-- `filter[A045835(n+1), A353471(#)]` -/
def P6852250346611873563.Spec : Prop :=
  ∀ n, P6852250346611873563.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P17695218512726719217

`filter[A045835(n+1), A353788(#)]`
-/

namespace A108633.P17695218512726719217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A108633.P17695218512726719217

namespace A108633

/-- `filter[A045835(n+1), A353788(#)]` -/
def P17695218512726719217.Spec : Prop :=
  ∀ n, P17695218512726719217.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P4240772370860312729

`filter[A085711(n+1), A353471(#)]`
-/

namespace A108633.P4240772370860312729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A108633.P4240772370860312729

namespace A108633

/-- `filter[A085711(n+1), A353471(#)]` -/
def P4240772370860312729.Spec : Prop :=
  ∀ n, P4240772370860312729.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P11539488809496066200

`filter[A045835(n+2), A354927(#)]`
-/

namespace A108633.P11539488809496066200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A108633.P11539488809496066200

namespace A108633

/-- `filter[A045835(n+2), A354927(#)]` -/
def P11539488809496066200.Spec : Prop :=
  ∀ n, P11539488809496066200.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P12052339693806531529

`filter[A045835(n+3), A374128(#)]`
-/

namespace A108633.P12052339693806531529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A108633.P12052339693806531529

namespace A108633

/-- `filter[A045835(n+3), A374128(#)]` -/
def P12052339693806531529.Spec : Prop :=
  ∀ n, P12052339693806531529.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P6123109174324683240

`∩[A006881(n+1), A045835(n+1)]`
-/

namespace A108633.P6123109174324683240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P6123109174324683240

namespace A108633

/-- `∩[A006881(n+1), A045835(n+1)]` -/
def P6123109174324683240.Spec : Prop :=
  ∀ n, (P6123109174324683240.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P11572264144246342420

`∩[A030513(n+1), A045835(n+1)]`
-/

namespace A108633.P11572264144246342420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P11572264144246342420

namespace A108633

/-- `∩[A030513(n+1), A045835(n+1)]` -/
def P11572264144246342420.Spec : Prop :=
  ∀ n, (P11572264144246342420.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P12125105369502684594

`∩[A006881(n+1), A085711(n+1)]`
-/

namespace A108633.P12125105369502684594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P12125105369502684594

namespace A108633

/-- `∩[A006881(n+1), A085711(n+1)]` -/
def P12125105369502684594.Spec : Prop :=
  ∀ n, (P12125105369502684594.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P11238571406514688403

`∩[A045835(n+1), A068993(n+1)]`
-/

namespace A108633.P11238571406514688403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P11238571406514688403

namespace A108633

/-- `∩[A045835(n+1), A068993(n+1)]` -/
def P11238571406514688403.Spec : Prop :=
  ∀ n, (P11238571406514688403.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P5014731284002332345

`∩[A045835(n+1), A084116(n+1)]`
-/

namespace A108633.P5014731284002332345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P5014731284002332345

namespace A108633

/-- `∩[A045835(n+1), A084116(n+1)]` -/
def P5014731284002332345.Spec : Prop :=
  ∀ n, (P5014731284002332345.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P5085342117921771034

`∩[A045835(n+1), A089995(n+1)]`
-/

namespace A108633.P5085342117921771034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P5085342117921771034

namespace A108633

/-- `∩[A045835(n+1), A089995(n+1)]` -/
def P5085342117921771034.Spec : Prop :=
  ∀ n, (P5085342117921771034.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P6446984101236227820

`∩[A068993(n+1), A085711(n+1)]`
-/

namespace A108633.P6446984101236227820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P6446984101236227820

namespace A108633

/-- `∩[A068993(n+1), A085711(n+1)]` -/
def P6446984101236227820.Spec : Prop :=
  ∀ n, (P6446984101236227820.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P16120796230201484125

`∩[A085711(n+1), A089995(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A108633

/-- `∩[A085711(n+1), A089995(n+1)]` -/
def P16120796230201484125.Spec : Prop :=
  ∀ n, (P16120796230201484125.a n : ℤ) = A108633 (n + 1)

theorem P16120796230201484125.correct : P16120796230201484125.Spec := by
  intro n
  simp only [A108633, Nat.add_sub_cancel]

end A108633

/-! ## A108633.P14576894457809182555

`∩[A045835(n+1), A167171(n+1)]`
-/

namespace A108633.P14576894457809182555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P14576894457809182555

namespace A108633

/-- `∩[A045835(n+1), A167171(n+1)]` -/
def P14576894457809182555.Spec : Prop :=
  ∀ n, (P14576894457809182555.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P8112362209726946875

`∩[A332269(n+1), A045835(n+1)]`
-/

namespace A108633.P8112362209726946875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108633.P8112362209726946875

namespace A108633

/-- `∩[A332269(n+1), A045835(n+1)]` -/
def P8112362209726946875.Spec : Prop :=
  ∀ n, (P8112362209726946875.a n : ℤ) = A108633 (n + 1)

end A108633

/-! ## A108633.P2824871620104874715

`filter[A115585(n+1), A008966(#)]`
-/

namespace A108633.P2824871620104874715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A108633.P2824871620104874715

namespace A108633

/-- `filter[A115585(n+1), A008966(#)]` -/
def P2824871620104874715.Spec : Prop :=
  ∀ n, P2824871620104874715.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P4610746944579646259

`filter[A115585(n+1), A049240(#)]`
-/

namespace A108633.P4610746944579646259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A108633.P4610746944579646259

namespace A108633

/-- `filter[A115585(n+1), A049240(#)]` -/
def P4610746944579646259.Spec : Prop :=
  ∀ n, P4610746944579646259.a n = A108633 (n + 1)

end A108633

/-! ## A108633.P660420612458176886

`filter[A115585(n+1), A181183(#)]`
-/

namespace A108633.P660420612458176886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A108633.P660420612458176886

namespace A108633

/-- `filter[A115585(n+1), A181183(#)]` -/
def P660420612458176886.Spec : Prop :=
  ∀ n, P660420612458176886.a n = A108633 (n + 1)

end A108633

/-!
# A108634: Semiprimes with ordered digits.

The programs for A108634, there is no canonical definition to state claims against.
-/

/-! ## A108634.P3526563263960686822

`∩[A001358(n+1), A009994(n+1)]`
-/

namespace A108634.P3526563263960686822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P3526563263960686822

/-! ## A108634.P12284469702919903202

`filter[A009994(n+2), A064911(#)]`
-/

namespace A108634.P12284469702919903202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108634.P12284469702919903202

/-! ## A108634.P18085953430747814978

`∩[A112381(n+1), A179239(n)]`
-/

namespace A108634.P18085953430747814978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P18085953430747814978

/-! ## A108634.P18415372755768871028

`∩[A009994(n+1), A112381(n+1)]`
-/

namespace A108634.P18415372755768871028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P18415372755768871028

/-! ## A108634.P4938494384277838435

`∩[A112381(n+1), A381509(n+1)]`
-/

namespace A108634.P4938494384277838435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P4938494384277838435

/-! ## A108634.P11083844336828504178

`eq[n, A374897(A004185(n))]`
-/

namespace A108634.P11083844336828504178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108634.P11083844336828504178

/-! ## A108634.P17471707520610520464

`eq[n, A374897(A355222(n))]`
-/

namespace A108634.P17471707520610520464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A355222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108634.P17471707520610520464

/-! ## A108634.P8019925674677982887

`eq[A355223(n), A374897(n)]`
-/

namespace A108634.P8019925674677982887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108634.P8019925674677982887

/-! ## A108634.P9655236532287041531

`eq[A193582(n)+1, A105700(n)]`
-/

namespace A108634.P9655236532287041531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108634.P9655236532287041531

/-! ## A108634.P14837960892651550925

`eq[2, A193581(n)+A105700(n)]`
-/

namespace A108634.P14837960892651550925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n + A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108634.P14837960892651550925

/-! ## A108634.P15235917250778067544

`eq[2, A226378(n)+A097601(n)]`
-/

namespace A108634.P15235917250778067544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n + A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108634.P15235917250778067544

/-! ## A108634.P2419874326268419862

`eq[2, A226378(n)+A193581(n)]`
-/

namespace A108634.P2419874326268419862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n + A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108634.P2419874326268419862

/-! ## A108634.P16373596673905374637

`record[A004185(A182150(n+1))]`
-/

namespace A108634.P16373596673905374637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A182150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108634.P16373596673905374637

/-! ## A108634.P915403155498953948

`∩[A009994(n+1), A182150(n+1)]`
-/

namespace A108634.P915403155498953948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P915403155498953948

/-! ## A108634.P4999288319010751369

`∩[A182150(n+1), A381509(n+1)]`
-/

namespace A108634.P4999288319010751369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108634.P4999288319010751369

/-!
# A108635: Semiprimes with property that digits are in nonincreasing order.

The programs for A108635, there is no canonical definition to state claims against.
-/

/-! ## A108635.P11069017882839463577

`eq[n, A374897(A004186(n))]`
-/

namespace A108635.P11069017882839463577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P11069017882839463577

/-! ## A108635.P9649775439411651409

`eq[n, A374897(A355221(n))]`
-/

namespace A108635.P9649775439411651409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A355221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P9649775439411651409

/-! ## A108635.P6415927733340693364

`eq[n, A374897(A355224(n))]`
-/

namespace A108635.P6415927733340693364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 (A355224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P6415927733340693364

/-! ## A108635.P3677496013044153211

`filter[A009996(n+2), A064911(#)]`
-/

namespace A108635.P3677496013044153211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108635.P3677496013044153211

/-! ## A108635.P4762666143405297886

`eq[2, A108782(n)+A105700(n)]`
-/

namespace A108635.P4762666143405297886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P4762666143405297886

/-! ## A108635.P11852627702254255814

`eq[2, A226378(n)+A108782(n)]`
-/

namespace A108635.P11852627702254255814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n + A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P11852627702254255814

/-! ## A108635.P11621086362815504358

`eq[A283001(n)+2, A105700(n)]`
-/

namespace A108635.P11621086362815504358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108635.P11621086362815504358

/-! ## A108635.P14933306619707639041

`eq[2, A284289(n)+A108782(n)]`
-/

namespace A108635.P14933306619707639041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n + A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108635.P14933306619707639041

/-! ## A108635.P9595224824960993212

`∩[A001358(n+1), A009996(n+1)]`
-/

namespace A108635.P9595224824960993212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108635.P9595224824960993212

/-! ## A108635.P13201476215788035587

`eq[A016789(A108782(n)), A105700(n)]`
-/

namespace A108635.P13201476215788035587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A108782 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108635.P13201476215788035587

/-!
# A108636: Semiprimes with even digits.

The programs for A108636, there is no canonical definition to state claims against.
-/

/-! ## A108636.P7786835319575280548

`2*A036956(n+1)`
-/

namespace A108636.P7786835319575280548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036956 (n + 1)

end

end A108636.P7786835319575280548

/-! ## A108636.P340105679498782320

`2*p?[A007091(n)]`
-/

namespace A108636.P340105679498782320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108636.P340105679498782320

/-! ## A108636.P13196185023775009458

`2*A007091(A036957(n+1))`
-/

namespace A108636.P13196185023775009458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 (A036957 (n + 1)).toNat

end

end A108636.P13196185023775009458

/-! ## A108636.P108082913439071434

`∩[A014263(n+1), A257842(n+1)]`
-/

namespace A108636.P108082913439071434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P108082913439071434

/-! ## A108636.P18199091195966961444

`2*∩[A036958(n+1), A007091(n)]`
-/

namespace A108636.P18199091195966961444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P18199091195966961444

/-! ## A108636.P2993791581813291746

`2*∩[A036960(n+1), A007091(n)]`
-/

namespace A108636.P2993791581813291746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P2993791581813291746

/-! ## A108636.P14629301777600441727

`2*∩[A036962(n+1), A007091(n)]`
-/

namespace A108636.P14629301777600441727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P14629301777600441727

/-! ## A108636.P2516503590169302925

`2*∩[A038615(n+1), A007091(n)]`
-/

namespace A108636.P2516503590169302925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P2516503590169302925

/-! ## A108636.P15831491462720712197

`2*∩[A038616(n+1), A007091(n)]`
-/

namespace A108636.P15831491462720712197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P15831491462720712197

/-! ## A108636.P1824692125001988192

`2*∩[A038617(n+1), A007091(n)]`
-/

namespace A108636.P1824692125001988192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P1824692125001988192

/-! ## A108636.P13308873083981118675

`∩[A014263(n+1), A054395(n+1)]`
-/

namespace A108636.P13308873083981118675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P13308873083981118675

/-! ## A108636.P10898606588629568214

`2*∩[A038613(n+1), A007091(n)]`
-/

namespace A108636.P10898606588629568214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P10898606588629568214

/-! ## A108636.P13506788466128771955

`2*∩[A038614(n+1), A007091(n)]`
-/

namespace A108636.P13506788466128771955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P13506788466128771955

/-! ## A108636.P5764499929830112061

`2*∩[A036958(n+1), A038613(n+1)]`
-/

namespace A108636.P5764499929830112061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P5764499929830112061

/-! ## A108636.P6078436582958914128

`2*∩[A042986(n+1), A007091(n)]`
-/

namespace A108636.P6078436582958914128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P6078436582958914128

/-! ## A108636.P10188308944252415246

`2*∩[A045321(n+1), A007091(n)]`
-/

namespace A108636.P10188308944252415246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P10188308944252415246

/-! ## A108636.P15540565469038763354

`2*∩[A038613(n+1), A007092(n)]`
-/

namespace A108636.P15540565469038763354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P15540565469038763354

/-! ## A108636.P8199627119776117838

`∩[A066190(n+1), A024657(n)]`
-/

namespace A108636.P8199627119776117838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108636.P8199627119776117838

/-!
# A108638: Semiprime plus its digits is semiprime.

The programs for A108638, there is no canonical definition to state claims against.
-/

/-! ## A108638.P1110455656754671229

`A001358(lt[A206225(3*n+2), A210702(n+1)])`
-/

namespace A108638.P1110455656754671229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206225 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A108638.P1110455656754671229

/-!
# A108639: a(n) = Sum_{k=1..n} sigma_{n-k}(k), where sigma_m(k) = Sum_{j|k} j^m.

The programs for A108639, there is no canonical definition to state claims against.
-/

/-! ## A108639.P7096691544843973615

`A309250(∑[∏[A060546(n)]])`
-/

namespace A108639.P7096691544843973615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108639.P7096691544843973615

/-! ## A108639.P2253435426042773867

`xor(A004080(n), A046523(A033887(n)))`
-/

namespace A108639.P2253435426042773867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004080 n) (A046523 (A033887 n).toNat)

end

end A108639.P2253435426042773867

/-! ## A108639.P7333073644983283123

`A081399(A071356(n))+A000005(n+1)`
-/

namespace A108639.P7333073644983283123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A071356 n).toNat + A000005 (n + 1)

end

end A108639.P7333073644983283123

/-!
# A108640: a(n) = Product_{k=1..n} sigma_{n-k}(k), where sigma_m(k) = sum{j|k} j^m.

The programs for A108640, there is no canonical definition to state claims against.
-/

/-! ## A108640.P11827405685962489651

`A000005(n+1)*A108699(round(sqrt(n²+1)))`
-/

namespace A108640.P11827405685962489651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A108699 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A108640.P11827405685962489651

/-!
# A108641: "Jump-my-digits" numbers.

The programs for A108641, there is no canonical definition to state claims against.
-/

/-! ## A108641.P7195685821177346340

`lt[A347689(n), A019430(A007954(n))]`
-/

namespace A108641.P7195685821177346340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108641.P7195685821177346340

/-! ## A108641.P2739560245520912886

`record[gcd(A354719(n), A354752(n))]`
-/

namespace A108641.P2739560245520912886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354719 n) (A354752 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108641.P2739560245520912886

/-!
# A108642: a(n) = (72 - 258*n + 601*n^2 - 264*n^3 + 33*n^4)/4.

The programs for A108642, the canonical program `A108642.P16029670102954921478` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108642 has offset 0).

The definition of A108642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108642.P16029670102954921478

`n*(33*n^3-264*n²+601*n-258)/4+18`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108642

/-- `n*(33*n^3-264*n²+601*n-258)/4+18` -/
def P16029670102954921478.Spec : Prop :=
  ∀ n, P16029670102954921478.a n = (A108642 n : ℚ)

end A108642

/-! ## A108642.P9899907613286408366

`(72-258*n+601*n²-264*n^3+33*n^4)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108642.P9899907613286408366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (72 - (258 * n : ℤ) + (601 * n ^ 2 : ℤ) - (264 * n ^ 3 : ℤ) + (33 * n ^ 4 : ℤ) : ℚ) / 4

end

end A108642.P9899907613286408366

namespace A108642

/-- `(72-258*n+601*n²-264*n^3+33*n^4)/4` -/
def P9899907613286408366.Spec : Prop :=
  ∀ n, P9899907613286408366.a n = (A108642 n : ℚ)

end A108642

/-!
# A108644: Square array A(n,k) read by ascending antidiagonals: A(n,n) = n^2, if n>k: A(n,k) = n*(n-1) + k, if k>n: A(n,k) = n + (k-1)^2.

The programs for A108644, there is no canonical definition to state claims against.
-/

/-! ## A108644.P1204031293822683126

`A060736(A064790(A213921(A064790(A185725(n+1)))))`
-/

namespace A108644.P1204031293822683126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060736 (A064790 (A213921 (A064790 (A185725 (n + 1)).toNat).toNat).toNat).toNat

end

end A108644.P1204031293822683126

/-! ## A108644.P11092499025929367671

`A163255(A064578(n+1))`
-/

namespace A108644.P11092499025929367671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (A064578 (n + 1)).toNat

end

end A108644.P11092499025929367671

/-! ## A108644.P6104937718360428493

`A273751(A064789(n+1))`
-/

namespace A108644.P6104937718360428493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273751 (A064789 (n + 1)).toNat

end

end A108644.P6104937718360428493

/-!
# A108645: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(2*n^2 + 6*n + 5)/720.

The programs for A108645, the canonical program `A108645.P14552704268846908663` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108645 has offset 0).

The definition of A108645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108645.P14552704268846908663

`(n+1)*(n+2)²*(n+3)²*(n+4)*(2*n²+6*n+5)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108645

/-- `(n+1)*(n+2)²*(n+3)²*(n+4)*(2*n²+6*n+5)/720` -/
def P14552704268846908663.Spec : Prop :=
  ∀ n, P14552704268846908663.a n = (A108645 n : ℚ)

end A108645

/-! ## A108645.P15487422926831177260

`2*A107968(n)-A107959(n)`
-/

namespace A108645.P15487422926831177260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107968 n - A107959 n

end

end A108645.P15487422926831177260

namespace A108645

/-- `2*A107968(n)-A107959(n)` -/
def P15487422926831177260.Spec : Prop :=
  ∀ n, P15487422926831177260.a n = A108645 n

end A108645

/-! ## A108645.P12838867564816639832

`(n+2)*A107908(n)-A107959(n)`
-/

namespace A108645.P12838867564816639832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A107908 n - A107959 n

end

end A108645.P12838867564816639832

namespace A108645

/-- `(n+2)*A107908(n)-A107959(n)` -/
def P12838867564816639832.Spec : Prop :=
  ∀ n, P12838867564816639832.a n = A108645 n

end A108645

/-! ## A108645.P8293130623230291271

`A107891(n)+A107956(n)-A107908(n)`
-/

namespace A108645.P8293130623230291271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107956 n - A107908 n)

end

end A108645.P8293130623230291271

namespace A108645

/-- `A107891(n)+A107956(n)-A107908(n)` -/
def P8293130623230291271.Spec : Prop :=
  ∀ n, P8293130623230291271.a n = A108645 n

end A108645

/-! ## A108645.P11556144516087466500

`A107956(n)+A108178(n)-A107959(n)`
-/

namespace A108645.P11556144516087466500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107956 n + (A108178 n - A107959 n)

end

end A108645.P11556144516087466500

namespace A108645

/-- `A107956(n)+A108178(n)-A107959(n)` -/
def P11556144516087466500.Spec : Prop :=
  ∀ n, P11556144516087466500.a n = A108645 n

end A108645

/-! ## A108645.P151800175744235625

`A107968(n)+A108680(n)-A107908(n)`
-/

namespace A108645.P151800175744235625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n + (A108680 n - A107908 n)

end

end A108645.P151800175744235625

namespace A108645

/-- `A107968(n)+A108680(n)-A107908(n)` -/
def P151800175744235625.Spec : Prop :=
  ∀ n, P151800175744235625.a n = A108645 n

end A108645

/-!
# A108646: a(n) = (n+1)*(n+2)^2*(n+3)*(11*n^3 + 58*n^2 + 101*n + 60)/720.

The programs for A108646, the canonical program `A108646.P519236295032975737` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108646 has offset 0).

The definition of A108646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108646.P519236295032975737

`(n+2)*(11*n^3+58*n²+101*n+60)*C(n+3, 3)/120`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108646

/-- `(n+2)*(11*n^3+58*n²+101*n+60)*C(n+3, 3)/120` -/
def P519236295032975737.Spec : Prop :=
  ∀ n, P519236295032975737.a n = (A108646 n : ℚ)

end A108646

/-! ## A108646.P18129210446079487028

`(n+1)*(n+2)²*(n+3)*(11*n^3+58*n²+101*n+60)/720`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108646.P18129210446079487028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) ^ 2 * (n + 3) * (11 * n ^ 3 + 58 * n ^ 2 + 101 * n + 60) : ℚ) / 720

end

end A108646.P18129210446079487028

namespace A108646

/-- `(n+1)*(n+2)²*(n+3)*(11*n^3+58*n²+101*n+60)/720` -/
def P18129210446079487028.Spec : Prop :=
  ∀ n, P18129210446079487028.a n = (A108646 n : ℚ)

end A108646

/-! ## A108646.P3794331601511736638

`2*A107970(n)-A107962(n)`
-/

namespace A108646.P3794331601511736638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107970 n - A107962 n

end

end A108646.P3794331601511736638

namespace A108646

/-- `2*A107970(n)-A107962(n)` -/
def P3794331601511736638.Spec : Prop :=
  ∀ n, P3794331601511736638.a n = A108646 n

end A108646

/-! ## A108646.P8325775375335227150

`A107970(n)+A108671(n)-A107969(n)`
-/

namespace A108646.P8325775375335227150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107970 n + (A108671 n - A107969 n)

end

end A108646.P8325775375335227150

namespace A108646

/-- `A107970(n)+A108671(n)-A107969(n)` -/
def P8325775375335227150.Spec : Prop :=
  ∀ n, P8325775375335227150.a n = A108646 n

end A108646

/-! ## A108646.P79615693546589115

`A108671(n)+A114244(n)-A114242(n)`
-/

namespace A108646.P79615693546589115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108671 n + (A114244 n - A114242 n)

end

end A108646.P79615693546589115

namespace A108646

/-- `A108671(n)+A114244(n)-A114242(n)` -/
def P79615693546589115.Spec : Prop :=
  ∀ n, P79615693546589115.a n = A108646 n

end A108646

/-!
# A108647: a(n) = (n+1)^2*(n+2)^2*(n+3)^2*(n+4)/144.

The programs for A108647, the canonical program `A108647.P7876614838840684196` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108647 has offset 0).

The definition of A108647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108647.P7876614838840684196

`C(n+4, 4)*C(n+3, 2)*(n+1)/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108647

/-- `C(n+4, 4)*C(n+3, 2)*(n+1)/3` -/
def P7876614838840684196.Spec : Prop :=
  ∀ n, P7876614838840684196.a n = (A108647 n : ℚ)

end A108647

/-! ## A108647.P16775410641573430233

`(n+1)²*(n+2)²*(n+3)²*(n+4)/144`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108647.P16775410641573430233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) ^ 2 * (n + 3) ^ 2 * (n + 4) : ℚ) / 144

end

end A108647.P16775410641573430233

namespace A108647

/-- `(n+1)²*(n+2)²*(n+3)²*(n+4)/144` -/
def P16775410641573430233.Spec : Prop :=
  ∀ n, P16775410641573430233.a n = (A108647 n : ℚ)

end A108647

/-! ## A108647.P2337011314974566864

`C(n+3, 3)*∑[C(n+3, 3)]`
-/

namespace A108647.P2337011314974566864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108647.P2337011314974566864

namespace A108647

/-- `C(n+3, 3)*∑[C(n+3, 3)]` -/
def P2337011314974566864.Spec : Prop :=
  ∀ n, (P2337011314974566864.a n : ℤ) = A108647 n

end A108647

/-! ## A108647.P10652444779289097696

`(n+1)*∑[A006414(n)]`
-/

namespace A108647.P10652444779289097696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108647.P10652444779289097696

namespace A108647

/-- `(n+1)*∑[A006414(n)]` -/
def P10652444779289097696.Spec : Prop :=
  ∀ n, P10652444779289097696.a n = A108647 n

end A108647

/-! ## A108647.P14881548157404769334

`(n+1)*A006542(n+4)`
-/

namespace A108647.P14881548157404769334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006542 (n + 4)

end

end A108647.P14881548157404769334

namespace A108647

/-- `(n+1)*A006542(n+4)` -/
def P14881548157404769334.Spec : Prop :=
  ∀ n, P14881548157404769334.a n = A108647 n

end A108647

/-! ## A108647.P17158454017798289629

`(A216173(n+1)-A216172(n+1))*A000292(n+1)`
-/

namespace A108647.P17158454017798289629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216173 (n + 1) - A216172 (n + 1)) * A000292 (n + 1)

end

end A108647.P17158454017798289629

namespace A108647

/-- `(A216173(n+1)-A216172(n+1))*A000292(n+1)` -/
def P17158454017798289629.Spec : Prop :=
  ∀ n, P17158454017798289629.a n = A108647 n

end A108647

/-! ## A108647.P3099755332497304701

`A000292(n+1)/(n+1)²*A085284(n+1)`
-/

namespace A108647.P3099755332497304701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ) * (A085284 (n + 1) : ℚ)

end

end A108647.P3099755332497304701

namespace A108647

/-- `A000292(n+1)/(n+1)²*A085284(n+1)` -/
def P3099755332497304701.Spec : Prop :=
  ∀ n, P3099755332497304701.a n = (A108647 n : ℚ)

end A108647

/-! ## A108647.P11990212644092548097

`A000292(n+1)*A145126(n+1)-A000292(n+1)`
-/

namespace A108647.P11990212644092548097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A145126 (n + 1) - A000292 (n + 1)

end

end A108647.P11990212644092548097

namespace A108647

/-- `A000292(n+1)*A145126(n+1)-A000292(n+1)` -/
def P11990212644092548097.Spec : Prop :=
  ∀ n, P11990212644092548097.a n = A108647 n

end A108647

/-! ## A108647.P6572298754923755266

`A058187(2*n)*A189976(2*(n+4))`
-/

namespace A108647.P6572298754923755266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n) * A189976 (2 * (n + 4))

end

end A108647.P6572298754923755266

namespace A108647

/-- `A058187(2*n)*A189976(2*(n+4))` -/
def P6572298754923755266.Spec : Prop :=
  ∀ n, P6572298754923755266.a n = A108647 n

end A108647

/-! ## A108647.P2672660868747974485

`record[A213500(n+1)*A213550(n+1)]`
-/

namespace A108647.P2672660868747974485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) * A213550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108647.P2672660868747974485

namespace A108647

/-- `record[A213500(n+1)*A213550(n+1)]` -/
def P2672660868747974485.Spec : Prop :=
  ∀ n, P2672660868747974485.a n = A108647 n

end A108647

/-! ## A108647.P9406345745619769137

`A000292(n+1)*A185905(A000217(n+1))`
-/

namespace A108647.P9406345745619769137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A185905 (A000217 (n + 1)).toNat

end

end A108647.P9406345745619769137

namespace A108647

/-- `A000292(n+1)*A185905(A000217(n+1))` -/
def P9406345745619769137.Spec : Prop :=
  ∀ n, P9406345745619769137.a n = A108647 n

end A108647

/-! ## A108647.P4173841116828408044

`A103371(A167614(n+2))`
-/

namespace A108647.P4173841116828408044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (A167614 (n + 2)).toNat

end

end A108647.P4173841116828408044

namespace A108647

/-- `A103371(A167614(n+2))` -/
def P4173841116828408044.Spec : Prop :=
  ∀ n, P4173841116828408044.a n = A108647 n

end A108647

/-! ## A108647.P5422784623275060851

`A103371(eq[2, A002260(n+1)-2])`
-/

namespace A108647.P5422784623275060851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108647.P5422784623275060851

namespace A108647

/-- `A103371(eq[2, A002260(n+1)-2])` -/
def P5422784623275060851.Spec : Prop :=
  ∀ n, P5422784623275060851.a n = A108647 n

end A108647

/-! ## A108647.P16828262540857896892

`A103371(eq[2, A002260(n+1)/2])`
-/

namespace A108647.P16828262540857896892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A108647.P16828262540857896892

namespace A108647

/-- `A103371(eq[2, A002260(n+1)/2])` -/
def P16828262540857896892.Spec : Prop :=
  ∀ n, P16828262540857896892.a n = A108647 n

end A108647

/-! ## A108647.P126071240577641245

`A132813(∑[n+3]+n+3)`
-/

namespace A108647.P126071240577641245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A108647.P126071240577641245

namespace A108647

/-- `A132813(∑[n+3]+n+3)` -/
def P126071240577641245.Spec : Prop :=
  ∀ n, P126071240577641245.a n = A108647 n

end A108647

/-! ## A108647.P818600519941373254

`(n+1)*A001263(A055998(n+2))`
-/

namespace A108647.P818600519941373254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001263 (A055998 (n + 2)).toNat

end

end A108647.P818600519941373254

namespace A108647

/-- `(n+1)*A001263(A055998(n+2))` -/
def P818600519941373254.Spec : Prop :=
  ∀ n, P818600519941373254.a n = A108647 n

end A108647

/-!
# A108648: a(n) = (n+1)^2*(n+2)^3*(n+3)/24.

The programs for A108648, the canonical program `A108648.P190752012126698625` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108648 has offset 0).

The definition of A108648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108648.P10458116358515795281

`(n+1)²*(n+2)^3*(n+3)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108648.P10458116358515795281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) ^ 3 * (n + 3) : ℚ) / 24

end

end A108648.P10458116358515795281

namespace A108648

/-- `(n+1)²*(n+2)^3*(n+3)/24` -/
def P10458116358515795281.Spec : Prop :=
  ∀ n, P10458116358515795281.a n = (A108648 n : ℚ)

end A108648

/-! ## A108648.P190752012126698625

`A000217(n+1)*A002415(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108648

/-- `A000217(n+1)*A002415(n+2)` -/
def P190752012126698625.Spec : Prop :=
  ∀ n, P190752012126698625.a n = A108648 n

theorem P190752012126698625.correct : P190752012126698625.Spec := by
  intro n
  simp only [A108648]

end A108648

/-! ## A108648.P11819234684769676465

`C(n+2, 2)*∑[∑[(n+1)²]]`
-/

namespace A108648.P11819234684769676465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108648.P11819234684769676465

namespace A108648

/-- `C(n+2, 2)*∑[∑[(n+1)²]]` -/
def P11819234684769676465.Spec : Prop :=
  ∀ n, (P11819234684769676465.a n : ℤ) = A108648 n

end A108648

/-! ## A108648.P18421117324318073787

`∑[n+1]*∑[a(n-1)+(n+1)²]` with `a(0)=1`
-/

namespace A108648.P18421117324318073787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A108648.P18421117324318073787

namespace A108648

/-- `∑[n+1]*∑[a(n-1)+(n+1)²]` -/
def P18421117324318073787.Spec : Prop :=
  ∀ n, (P18421117324318073787.a n : ℤ) = A108648 n

end A108648

/-! ## A108648.P139068848922217689

`(n+1)*A006414(n)`
-/

namespace A108648.P139068848922217689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006414 n

end

end A108648.P139068848922217689

namespace A108648

/-- `(n+1)*A006414(n)` -/
def P139068848922217689.Spec : Prop :=
  ∀ n, P139068848922217689.a n = A108648 n

end A108648

/-! ## A108648.P16618828399709833995

`(n+1)*∑[A006322(n+1)]`
-/

namespace A108648.P16618828399709833995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108648.P16618828399709833995

namespace A108648

/-- `(n+1)*∑[A006322(n+1)]` -/
def P16618828399709833995.Spec : Prop :=
  ∀ n, P16618828399709833995.a n = A108648 n

end A108648

/-! ## A108648.P10557294512008642251

`A259181(n)+A108649(n)`
-/

namespace A108648.P10557294512008642251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 n + A108649 n

end

end A108648.P10557294512008642251

namespace A108648

/-- `A259181(n)+A108649(n)` -/
def P10557294512008642251.Spec : Prop :=
  ∀ n, P10557294512008642251.a n = A108648 n

end A108648

/-! ## A108648.P2437947684879006123

`A002417(n+1)+n*A027800(n)`
-/

namespace A108648.P2437947684879006123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + (n : ℤ) * A027800 n

end

end A108648.P2437947684879006123

namespace A108648

/-- `A002417(n+1)+n*A027800(n)` -/
def P2437947684879006123.Spec : Prop :=
  ∀ n, P2437947684879006123.a n = A108648 n

end A108648

/-! ## A108648.P7643201764517742444

`A000217(n+1)*A096338(2*n+1)`
-/

namespace A108648.P7643201764517742444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A096338 (2 * n + 1)

end

end A108648.P7643201764517742444

namespace A108648

/-- `A000217(n+1)*A096338(2*n+1)` -/
def P7643201764517742444.Spec : Prop :=
  ∀ n, P7643201764517742444.a n = A108648 n

end A108648

/-! ## A108648.P11083546315174364453

`A132819(A034856(n+2))`
-/

namespace A108648.P11083546315174364453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132819 (A034856 (n + 2)).toNat

end

end A108648.P11083546315174364453

namespace A108648

/-- `A132819(A034856(n+2))` -/
def P11083546315174364453.Spec : Prop :=
  ∀ n, P11083546315174364453.a n = A108648 n

end A108648

/-! ## A108648.P12937464024370490217

`A132819(A000217(n+2)+n+1)`
-/

namespace A108648.P12937464024370490217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132819 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A108648.P12937464024370490217

namespace A108648

/-- `A132819(A000217(n+2)+n+1)` -/
def P12937464024370490217.Spec : Prop :=
  ∀ n, P12937464024370490217.a n = A108648 n

end A108648

/-! ## A108648.P3120341376932094142

`A132819(A134464(A000217(n+2)))`
-/

namespace A108648.P3120341376932094142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132819 (A134464 (A000217 (n + 2)).toNat).toNat

end

end A108648.P3120341376932094142

namespace A108648

/-- `A132819(A134464(A000217(n+2)))` -/
def P3120341376932094142.Spec : Prop :=
  ∀ n, P3120341376932094142.a n = A108648 n

end A108648

/-!
# A108649: a(n) = (n+1)*(n+2)*(n+3)*(13*n^3 + 69*n^2 + 113*n + 60)/360.

The programs for A108649, the canonical program `A108649.P1864224631485124017` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108649 has offset 0).

The definition of A108649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108649.P1864224631485124017

`(13*n^3+69*n²+113*n+60)*C(n+3, 3)/60`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108649

/-- `(13*n^3+69*n²+113*n+60)*C(n+3, 3)/60` -/
def P1864224631485124017.Spec : Prop :=
  ∀ n, P1864224631485124017.a n = (A108649 n : ℚ)

end A108649

/-! ## A108649.P9369852955361589207

`(n+1)*(n+2)*(n+3)*(13*n^3+69*n²+113*n+60)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108649.P9369852955361589207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (13 * n ^ 3 + 69 * n ^ 2 + 113 * n + 60) : ℚ) / 360

end

end A108649.P9369852955361589207

namespace A108649

/-- `(n+1)*(n+2)*(n+3)*(13*n^3+69*n²+113*n+60)/360` -/
def P9369852955361589207.Spec : Prop :=
  ∀ n, P9369852955361589207.a n = (A108649 n : ℚ)

end A108649

/-! ## A108649.P6523007741605584701

`A108648(n)-A259181(n)`
-/

namespace A108649.P6523007741605584701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108648 n - A259181 n

end

end A108649.P6523007741605584701

namespace A108649

/-- `A108648(n)-A259181(n)` -/
def P6523007741605584701.Spec : Prop :=
  ∀ n, P6523007741605584701.a n = A108649 n

end A108649

/-! ## A108649.P10800071850016248366

`∑[A108674(n)+∑[A000537(n)]]`
-/

namespace A108649.P10800071850016248366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108674 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108649.P10800071850016248366

namespace A108649

/-- `∑[A108674(n)+∑[A000537(n)]]` -/
def P10800071850016248366.Spec : Prop :=
  ∀ n, P10800071850016248366.a n = A108649 n

end A108649

/-! ## A108649.P8209062756977278386

`∑[A213556(n+1)-A004282(n)]`
-/

namespace A108649.P8209062756977278386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - A004282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108649.P8209062756977278386

namespace A108649

/-- `∑[A213556(n+1)-A004282(n)]` -/
def P8209062756977278386.Spec : Prop :=
  ∀ n, P8209062756977278386.a n = A108649 n

end A108649

/-! ## A108649.P14396019612379253462

`∑[∑[A008354(n+1)+A000537(n)]]`
-/

namespace A108649.P14396019612379253462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008354 (n + 1) + A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108649.P14396019612379253462

namespace A108649

/-- `∑[∑[A008354(n+1)+A000537(n)]]` -/
def P14396019612379253462.Spec : Prop :=
  ∀ n, P14396019612379253462.a n = A108649 n

end A108649

/-!
# A108650: a(n) = (n+1)^2*(n+2)*(n+3)*(3*n+4)/24.

The programs for A108650, the canonical program `A108650.P1649132826592061268` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108650 has offset 0).

The definition of A108650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108650.P1812134538869766408

`(n+1)²*(n+2)*(n+3)*(3*n+4)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108650.P1812134538869766408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) * (n + 3) * (3 * n + 4) : ℚ) / 24

end

end A108650.P1812134538869766408

namespace A108650

/-- `(n+1)²*(n+2)*(n+3)*(3*n+4)/24` -/
def P1812134538869766408.Spec : Prop :=
  ∀ n, P1812134538869766408.a n = (A108650 n : ℚ)

end A108650

/-! ## A108650.P1649132826592061268

`(n+1)*A001296(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108650

/-- `(n+1)*A001296(n+1)` -/
def P1649132826592061268.Spec : Prop :=
  ∀ n, P1649132826592061268.a n = A108650 n

theorem P1649132826592061268.correct : P1649132826592061268.Spec := by
  intro n
  simp only [A108650]

end A108650

/-! ## A108650.P15855129730940895855

`∑[∑[∑[∑[a(n-1)+15]]]]` with `a(0)=1, a(1)=10`
-/

namespace A108650.P15855129730940895855
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f4 =>
  f4 (n - 1) + 15

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P15855129730940895855

namespace A108650

/-- `∑[∑[∑[∑[a(n-1)+15]]]]` -/
def P15855129730940895855.Spec : Prop :=
  ∀ n, (P15855129730940895855.a n : ℤ) = A108650 n

end A108650

/-! ## A108650.P9136464031556960663

`∑[A302560(n+1)]`
-/

namespace A108650.P9136464031556960663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P9136464031556960663

namespace A108650

/-- `∑[A302560(n+1)]` -/
def P9136464031556960663.Spec : Prop :=
  ∀ n, P9136464031556960663.a n = A108650 n

end A108650

/-! ## A108650.P3177643297247942838

`∑[∑[A006564(n+1)]]`
-/

namespace A108650.P3177643297247942838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P3177643297247942838

namespace A108650

/-- `∑[∑[A006564(n+1)]]` -/
def P3177643297247942838.Spec : Prop :=
  ∀ n, P3177643297247942838.a n = A108650 n

end A108650

/-! ## A108650.P2655522211412619972

`∑[∑[(n+1)*A005891(n)]]`
-/

namespace A108650.P2655522211412619972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P2655522211412619972

namespace A108650

/-- `∑[∑[(n+1)*A005891(n)]]` -/
def P2655522211412619972.Spec : Prop :=
  ∀ n, P2655522211412619972.a n = A108650 n

end A108650

/-! ## A108650.P7940955584594244259

`A086689(n+1)+A051836(n)`
-/

namespace A108650.P7940955584594244259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) + A051836 n

end

end A108650.P7940955584594244259

namespace A108650

/-- `A086689(n+1)+A051836(n)` -/
def P7940955584594244259.Spec : Prop :=
  ∀ n, P7940955584594244259.a n = A108650 n

end A108650

/-! ## A108650.P12769300116780326122

`A174002(n)+A095166(n+1)`
-/

namespace A108650.P12769300116780326122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A095166 (n + 1)

end

end A108650.P12769300116780326122

namespace A108650

/-- `A174002(n)+A095166(n+1)` -/
def P12769300116780326122.Spec : Prop :=
  ∀ n, P12769300116780326122.a n = A108650 n

end A108650

/-! ## A108650.P16160664776375185449

`A337898(n+1)+A033488(n)`
-/

namespace A108650.P16160664776375185449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337898 (n + 1) + A033488 n

end

end A108650.P16160664776375185449

namespace A108650

/-- `A337898(n+1)+A033488(n)` -/
def P16160664776375185449.Spec : Prop :=
  ∀ n, P16160664776375185449.a n = A108650 n

end A108650

/-! ## A108650.P8532040528105209691

`A372583(n+1)-A132122(n)`
-/

namespace A108650.P8532040528105209691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372583 (n + 1) - A132122 n

end

end A108650.P8532040528105209691

namespace A108650

/-- `A372583(n+1)-A132122(n)` -/
def P8532040528105209691.Spec : Prop :=
  ∀ n, P8532040528105209691.a n = A108650 n

end A108650

/-! ## A108650.P10530829478847314408

`∑[∑[A005906(n)-A002492(n)]]`
-/

namespace A108650.P10530829478847314408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005906 n - A002492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P10530829478847314408

namespace A108650

/-- `∑[∑[A005906(n)-A002492(n)]]` -/
def P10530829478847314408.Spec : Prop :=
  ∀ n, P10530829478847314408.a n = A108650 n

end A108650

/-! ## A108650.P16221097387062603923

`∑[∑[A005902(n)-A004068(n)]]`
-/

namespace A108650.P16221097387062603923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n - A004068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P16221097387062603923

namespace A108650

/-- `∑[∑[A005902(n)-A004068(n)]]` -/
def P16221097387062603923.Spec : Prop :=
  ∀ n, P16221097387062603923.a n = A108650 n

end A108650

/-! ## A108650.P12593262650222872321

`Δ[A001297(n)]`
-/

namespace A108650.P12593262650222872321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108650.P12593262650222872321

namespace A108650

/-- `Δ[A001297(n)]` -/
def P12593262650222872321.Spec : Prop :=
  ∀ n, P12593262650222872321.a n = A108650 n

end A108650

/-! ## A108650.P7485648571888131329

`∑[abs(Δ[n*A001296(n)])]`
-/

namespace A108650.P7485648571888131329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001296 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108650.P7485648571888131329

namespace A108650

/-- `∑[abs(Δ[n*A001296(n)])]` -/
def P7485648571888131329.Spec : Prop :=
  ∀ n, P7485648571888131329.a n = A108650 n

end A108650

/-! ## A108650.P4378733837073277795

`(n+1)*∑[A002411(n+1)]`
-/

namespace A108650.P4378733837073277795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108650.P4378733837073277795

namespace A108650

/-- `(n+1)*∑[A002411(n+1)]` -/
def P4378733837073277795.Spec : Prop :=
  ∀ n, P4378733837073277795.a n = A108650 n

end A108650

/-! ## A108650.P12248907065169006275

`A293475(n)+A001296(n+1)`
-/

namespace A108650.P12248907065169006275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293475 n + A001296 (n + 1)

end

end A108650.P12248907065169006275

namespace A108650

/-- `A293475(n)+A001296(n+1)` -/
def P12248907065169006275.Spec : Prop :=
  ∀ n, P12248907065169006275.a n = A108650 n

end A108650

/-! ## A108650.P12573718160045798179

`A001297(n+1)-A001297(n)`
-/

namespace A108650.P12573718160045798179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 (n + 1) - A001297 n

end

end A108650.P12573718160045798179

namespace A108650

/-- `A001297(n+1)-A001297(n)` -/
def P12573718160045798179.Spec : Prop :=
  ∀ n, P12573718160045798179.a n = A108650 n

end A108650

/-! ## A108650.P4108825568657681577

`A051836(n+1)+2*A112851(n+1)`
-/

namespace A108650.P4108825568657681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + 2 * A112851 (n + 1)

end

end A108650.P4108825568657681577

namespace A108650

/-- `A051836(n+1)+2*A112851(n+1)` -/
def P4108825568657681577.Spec : Prop :=
  ∀ n, P4108825568657681577.a n = A108650 n

end A108650

/-! ## A108650.P5166439667724064914

`A051836(n+1)+A271567(n)-A051740(n)`
-/

namespace A108650.P5166439667724064914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + (A271567 n - A051740 n)

end

end A108650.P5166439667724064914

namespace A108650

/-- `A051836(n+1)+A271567(n)-A051740(n)` -/
def P5166439667724064914.Spec : Prop :=
  ∀ n, P5166439667724064914.a n = A108650 n

end A108650

/-! ## A108650.P3122151079033563214

`A024166(n+1)+A110159(n)-A001296(n+1)`
-/

namespace A108650.P3122151079033563214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) + (A110159 n - A001296 (n + 1))

end

end A108650.P3122151079033563214

namespace A108650

/-- `A024166(n+1)+A110159(n)-A001296(n+1)` -/
def P3122151079033563214.Spec : Prop :=
  ∀ n, P3122151079033563214.a n = A108650 n

end A108650

/-!
# A108651: Multiples of 8 that are divisible by no prime > 5.

The programs for A108651, there is no canonical definition to state claims against.
-/

/-! ## A108651.P8228079909263440166

`record[8*(2-gcd(2, n))*A051037(A008621(n))]`
-/

namespace A108651.P8228079909263440166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (2 - (Nat.gcd 2 n : ℤ)) * A051037 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P8228079909263440166

/-! ## A108651.P13653301436022083018

`record[A008598(n)/A141256(n)]`
-/

namespace A108651.P13653301436022083018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008598 n : ℚ) / (A141256 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P13653301436022083018

/-! ## A108651.P5423333235664404397

`record[8*A025480(A051037(n+1))]`
-/

namespace A108651.P5423333235664404397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A025480 (A051037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P5423333235664404397

/-! ## A108651.P6256354119643360495

`record[8*A025480(A228732(n+1))]`
-/

namespace A108651.P6256354119643360495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A025480 (A228732 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P6256354119643360495

/-! ## A108651.P16842736362511156220

`record[A010673(n)²*A228732(n+1)]`
-/

namespace A108651.P16842736362511156220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n ^ 2 * A228732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P16842736362511156220

/-! ## A108651.P9572182424993095595

`A195161(eq[A040001(n), A141256(n)])`
-/

namespace A108651.P9572182424993095595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108651.P9572182424993095595

/-! ## A108651.P9623841192557156475

`A008586(eq[A040001(n), A141256(n)])`
-/

namespace A108651.P9623841192557156475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108651.P9623841192557156475

/-! ## A108651.P15300855752640788390

`A008586(eq[A141256(n), A280193(n)])`
-/

namespace A108651.P15300855752640788390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108651.P15300855752640788390

/-! ## A108651.P7111603983572464095

`record[A010673(n)*A228732(2*(n+1))]`
-/

namespace A108651.P7111603983572464095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A228732 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108651.P7111603983572464095

/-!
# A108652: Self-erasure surviving numbers.

The programs for A108652, there is no canonical definition to state claims against.
-/

/-! ## A108652.P5490159571078025211

`and(A140665(n+1), A387415(n+1))`
-/

namespace A108652.P5490159571078025211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140665 (n + 1)) (A387415 (n + 1))

end

end A108652.P5490159571078025211

/-! ## A108652.P3082084757320404585

`and(A140665(n+1), A387418(n+1))`
-/

namespace A108652.P3082084757320404585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140665 (n + 1)) (A387418 (n + 1))

end

end A108652.P3082084757320404585

/-! ## A108652.P7958486112345879581

`A140665(n+1)%A002378(A000726(n))`
-/

namespace A108652.P7958486112345879581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140665 (n + 1)) (A002378 (A000726 n).toNat)

end

end A108652.P7958486112345879581

/-! ## A108652.P2770700431654163650

`or(A140665(n+1), A378448(A063008(n)))`
-/

namespace A108652.P2770700431654163650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A140665 (n + 1)) (A378448 (A063008 n).toNat)

end

end A108652.P2770700431654163650

/-! ## A108652.P3581640607283629995

`and(A140665(n+1), A349820(n+1))`
-/

namespace A108652.P3581640607283629995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140665 (n + 1)) (A349820 (n + 1))

end

end A108652.P3581640607283629995

/-!
# A108656: Least a(n)>0 such that a(n-2)*n^2+a(n-1)*n+a(n) is a prime.

The programs for A108656, there is no canonical definition to state claims against.
-/

/-! ## A108656.P4530887372098066131

`A108657(n+1)%A204998(n+1)`
-/

namespace A108656.P4530887372098066131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108657 (n + 1)) (A204998 (n + 1))

end

end A108656.P4530887372098066131

/-! ## A108656.P7105072752972899479

`A244544((n+1)^A161840(3*n+5))`
-/

namespace A108656.P7105072752972899479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A161840 (3 * n + 5) : ℤ))).toNat

end

end A108656.P7105072752972899479

/-! ## A108656.P9201971242022256036

`A146458(n+1)+A003557(A034166(n+2))`
-/

namespace A108656.P9201971242022256036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146458 (n + 1) + A003557 (A034166 (n + 2)).toNat

end

end A108656.P9201971242022256036

/-! ## A108656.P10500789251621575506

`A051597(A185284(3*n+4)+A091963(n+2))`
-/

namespace A108656.P10500789251621575506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A185284 (3 * n + 4) + A091963 (n + 2)).toNat

end

end A108656.P10500789251621575506

/-!
# A108657: Primes of the form A108656(n-2)*n^2+A108656(n-1)*n+A108656(n).

The programs for A108657, there is no canonical definition to state claims against.
-/

/-! ## A108657.P15531142500239268339

`p?[∑[A339046(A333616(n))]]`
-/

namespace A108657.P15531142500239268339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339046 (A333616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108657.P15531142500239268339

/-! ## A108657.P6750128657252420946

`p?[p?[A018252(n+1)-7]-A341970(2*n+3)]`
-/

namespace A108657.P6750128657252420946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A341970 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108657.P6750128657252420946

/-!
# A108659: Square-chain primes (including square-loop primes).

The programs for A108659, there is no canonical definition to state claims against.
-/

/-! ## A108659.P7608640645026168059

`record[A020639(A174274(n+1))]`
-/

namespace A108659.P7608640645026168059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108659.P7608640645026168059

/-! ## A108659.P15056135451425279704

`p?[A174274(n+1)%A001545(n)]`
-/

namespace A108659.P15056135451425279704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174274 (n + 1)) (A001545 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108659.P15056135451425279704

/-! ## A108659.P10930768653130839310

`p?[gcd(A000038(n), A174274(n+1))]`
-/

namespace A108659.P10930768653130839310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A174274 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108659.P10930768653130839310

/-! ## A108659.P12102332328384151335

`p?[∪[A174274(n+1), A174327(n+1)]]`
-/

namespace A108659.P12102332328384151335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174274 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A108659.P12102332328384151335

/-!
# A108660: Square-loop primes.

The programs for A108660, there is no canonical definition to state claims against.
-/

/-! ## A108660.P13936342061659036922

`∩[A086924(n+1), A108659(n+1)]`
-/

namespace A108660.P13936342061659036922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108660.P13936342061659036922

/-! ## A108660.P1098325159973202941

`∩[A062353(n+1), A108659(n+1)]`
-/

namespace A108660.P1098325159973202941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108660.P1098325159973202941

/-!
# A108661: Square loops: the number of circular permutations (reversals not counted as different) of the numbers 0 to n such that the sum of any two consecutive numbers is a square.

The programs for A108661, there is no canonical definition to state claims against.
-/

/-! ## A108661.P16871923916541189515

`A261422(A013398(2*n)+1)`
-/

namespace A108661.P16871923916541189515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261422 (A013398 (2 * n) + 1).toNat

end

end A108661.P16871923916541189515

/-!
# A108662: Numbers whose sum of squares of digits is a prime.

The programs for A108662, the canonical program `A108662.P22450107258134552` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108662 has offset 1).

The definition of A108662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108662.P22450107258134552

`eq[1, ∑{e}[∑{digits}[n, #²], #]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108662

/-- `eq[1, ∑{e}[∑{digits}[n, #²], #]]` -/
def P22450107258134552.Spec : Prop :=
  ∀ n, (P22450107258134552.a n : ℤ) = A108662 (n + 1)

theorem P22450107258134552.correct : P22450107258134552.Spec := by
  intro n
  simp only [A108662, Nat.add_sub_cancel]

end A108662

/-! ## A108662.P9407946844097259500

`eq[1, ∑{e}[A003132(n), #]]`
-/

namespace A108662.P9407946844097259500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108662.P9407946844097259500

namespace A108662

/-- `eq[1, ∑{e}[A003132(n), #]]` -/
def P9407946844097259500.Spec : Prop :=
  ∀ n, (P9407946844097259500.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P8100797080737490847

`eq[0, A007920(A003132(n))]`
-/

namespace A108662.P8100797080737490847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108662.P8100797080737490847

namespace A108662

/-- `eq[0, A007920(A003132(n))]` -/
def P8100797080737490847.Spec : Prop :=
  ∀ n, (P8100797080737490847.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P8420768571885054902

`lt[1, A105700(2*A003132(n))]`
-/

namespace A108662.P8420768571885054902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108662.P8420768571885054902

namespace A108662

/-- `lt[1, A105700(2*A003132(n))]` -/
def P8420768571885054902.Spec : Prop :=
  ∀ n, (P8420768571885054902.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P5014236347815203526

`eq[2, A226378(2*A003132(n))]`
-/

namespace A108662.P5014236347815203526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108662.P5014236347815203526

namespace A108662

/-- `eq[2, A226378(2*A003132(n))]` -/
def P5014236347815203526.Spec : Prop :=
  ∀ n, (P5014236347815203526.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P3220373729271820014

`eq[1, A001222(A003132(n+1))]+1`
-/

namespace A108662.P3220373729271820014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A108662.P3220373729271820014

namespace A108662

/-- `eq[1, A001222(A003132(n+1))]+1` -/
def P3220373729271820014.Spec : Prop :=
  ∀ n, (P3220373729271820014.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P3342852598002759725

`eq[A057427(n), A210442(A003132(n))]`
-/

namespace A108662.P3342852598002759725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108662.P3342852598002759725

namespace A108662

/-- `eq[A057427(n), A210442(A003132(n))]` -/
def P3342852598002759725.Spec : Prop :=
  ∀ n, (P3342852598002759725.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P17619938693703614768

`eq[A036453(n+1), A053204(A003132(n))]`
-/

namespace A108662.P17619938693703614768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108662.P17619938693703614768

namespace A108662

/-- `eq[A036453(n+1), A053204(A003132(n))]` -/
def P17619938693703614768.Spec : Prop :=
  ∀ n, (P17619938693703614768.a n : ℤ) = A108662 (n + 1)

end A108662

/-! ## A108662.P6664225160189655408

`eq[A154269(n+1), A295335(A003132(n))]`
-/

namespace A108662.P6664225160189655408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108662.P6664225160189655408

namespace A108662

/-- `eq[A154269(n+1), A295335(A003132(n))]` -/
def P6664225160189655408.Spec : Prop :=
  ∀ n, (P6664225160189655408.a n : ℤ) = A108662 (n + 1)

end A108662

/-!
# A108664: In the decimal expansion of Pi, lengths of sublists ending with 9.

The programs for A108664, there is no canonical definition to state claims against.
-/

/-! ## A108664.P11329844546877821548

`A139727(A028310(n))+ceil(sin(n)²)`
-/

namespace A108664.P11329844546877821548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A108664.P11329844546877821548

/-! ## A108664.P15081780183795129069

`A139727(A123108(2*n))+floor(atan(n+1))`
-/

namespace A108664.P15081780183795129069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A123108 (2 * n)).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A108664.P15081780183795129069

/-! ## A108664.P16120692762801430193

`A139727(A028310(n))+A057427(n)`
-/

namespace A108664.P16120692762801430193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat + A057427 n

end

end A108664.P16120692762801430193

/-! ## A108664.P7612686567014522285

`A139727(A028310(n))-A057428(n)`
-/

namespace A108664.P7612686567014522285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat - A057428 n

end

end A108664.P7612686567014522285

/-! ## A108664.P7200290193419722627

`A139727(A028310(n))+A000040(n+1)%2`
-/

namespace A108664.P7200290193419722627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A108664.P7200290193419722627

/-! ## A108664.P17296523984548534513

`A139727(A065033(2*n))+and(1, A000040(n+1))`
-/

namespace A108664.P17296523984548534513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A065033 (2 * n)).toNat + Int.land 1 (A000040 (n + 1))

end

end A108664.P17296523984548534513

/-! ## A108664.P18352073448221702894

`A139727(A028310(n))+A001221(A001316(n))`
-/

namespace A108664.P18352073448221702894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139727 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A108664.P18352073448221702894

/-!
# A108666: Number of (1,1)-steps in all Delannoy paths of length n.

The programs for A108666, the canonical program `A108666.P2376190023294096623` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108666 has offset 0).

The definition of A108666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108666.P39135620676621872

`n*A047781(n)`
-/

namespace A108666.P39135620676621872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047781 n

end

end A108666.P39135620676621872

namespace A108666

/-- `n*A047781(n)` -/
def P39135620676621872.Spec : Prop :=
  ∀ n, P39135620676621872.a n = A108666 n

end A108666

/-! ## A108666.P6650019236290929803

`n/2*A002003(n)`
-/

namespace A108666.P6650019236290929803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A002003 n : ℚ)

end

end A108666.P6650019236290929803

namespace A108666

/-- `n/2*A002003(n)` -/
def P6650019236290929803.Spec : Prop :=
  ∀ n, P6650019236290929803.a n = (A108666 n : ℚ)

end A108666

/-! ## A108666.P2376190023294096623

`n/2*A123164(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A108666

/-- `n/2*A123164(n)` -/
def P2376190023294096623.Spec : Prop :=
  ∀ n, P2376190023294096623.a n = (A108666 n : ℚ)

end A108666

/-! ## A108666.P5540265398915442058

`n/4*A241023(n)`
-/

namespace A108666.P5540265398915442058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A241023 n : ℚ)

end

end A108666.P5540265398915442058

namespace A108666

/-- `n/4*A241023(n)` -/
def P5540265398915442058.Spec : Prop :=
  ∀ n, P5540265398915442058.a n = (A108666 n : ℚ)

end A108666

/-! ## A108666.P5422756152063409607

`n/2*A110171(∑[n])`
-/

namespace A108666.P5422756152063409607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A110171 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A108666.P5422756152063409607

namespace A108666

/-- `n/2*A110171(∑[n])` -/
def P5422756152063409607.Spec : Prop :=
  ∀ n, P5422756152063409607.a n = (A108666 n : ℚ)

end A108666

/-! ## A108666.P6514368429200997377

`n/2*record[A110171(n)]`
-/

namespace A108666.P6514368429200997377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A108666.P6514368429200997377

namespace A108666

/-- `n/2*record[A110171(n)]` -/
def P6514368429200997377.Spec : Prop :=
  ∀ n, P6514368429200997377.a n = (A108666 n : ℚ)

end A108666

/-! ## A108666.P1639206641021182141

`n*A247623(A004273(n))`
-/

namespace A108666.P1639206641021182141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A247623 (A004273 n).toNat

end

end A108666.P1639206641021182141

namespace A108666

/-- `n*A247623(A004273(n))` -/
def P1639206641021182141.Spec : Prop :=
  ∀ n, P1639206641021182141.a n = A108666 n

end A108666

/-! ## A108666.P6659863715748731550

`n*A247623(A014681(2*n))`
-/

namespace A108666.P6659863715748731550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A247623 (A014681 (2 * n)).toNat

end

end A108666.P6659863715748731550

namespace A108666

/-- `n*A247623(A014681(2*n))` -/
def P6659863715748731550.Spec : Prop :=
  ∀ n, P6659863715748731550.a n = A108666 n

end A108666

/-! ## A108666.P10985605515058429870

`n*(A001850(n)-A176479(n))`
-/

namespace A108666.P10985605515058429870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001850 n - A176479 n)

end

end A108666.P10985605515058429870

namespace A108666

/-- `n*(A001850(n)-A176479(n))` -/
def P10985605515058429870.Spec : Prop :=
  ∀ n, P10985605515058429870.a n = A108666 n

end A108666

/-! ## A108666.P9583872732381802849

`n*A049600(A046092(n))`
-/

namespace A108666.P9583872732381802849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049600 (A046092 n).toNat

end

end A108666.P9583872732381802849

namespace A108666

/-- `n*A049600(A046092(n))` -/
def P9583872732381802849.Spec : Prop :=
  ∀ n, P9583872732381802849.a n = A108666 n

end A108666

/-!
# A108667: Triangle read by rows: T(n,k) = 9k*n + 14(n+k) + 20 (0 <= k <= n).

The programs for A108667, the canonical program `A108667.P9835651303339134603` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108667 has offset 0).

The definition of A108667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108667.P9835651303339134603

`A154614(n+1)+2*A172292(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A108667

/-- `A154614(n+1)+2*A172292(n+1)` -/
def P9835651303339134603.Spec : Prop :=
  ∀ n, P9835651303339134603.a n = A108667 n

theorem P9835651303339134603.correct : P9835651303339134603.Spec := by
  intro n
  simp only [A108667]

end A108667

/-! ## A108667.P4336794996922150041

`A155156(n+1)+A162245(n+1)-A075362(n+1)`
-/

namespace A108667.P4336794996922150041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (A162245 (n + 1) - A075362 (n + 1))

end

end A108667.P4336794996922150041

namespace A108667

/-- `A155156(n+1)+A162245(n+1)-A075362(n+1)` -/
def P4336794996922150041.Spec : Prop :=
  ∀ n, P4336794996922150041.a n = A108667 n

end A108667

/-! ## A108667.P1227147707176284120

`A017173(A076110(n+1))+A017017(A131421(n+1))`
-/

namespace A108667.P1227147707176284120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A076110 (n + 1)).toNat + A017017 (A131421 (n + 1)).toNat

end

end A108667.P1227147707176284120

namespace A108667

/-- `A017173(A076110(n+1))+A017017(A131421(n+1))` -/
def P1227147707176284120.Spec : Prop :=
  ∀ n, P1227147707176284120.a n = A108667 n

end A108667

/-! ## A108667.P11925041236740785530

`A016861(A083487(n+1))-A075362(n+1)`
-/

namespace A108667.P11925041236740785530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A083487 (n + 1)).toNat - A075362 (n + 1)

end

end A108667.P11925041236740785530

namespace A108667

/-- `A016861(A083487(n+1))-A075362(n+1)` -/
def P11925041236740785530.Spec : Prop :=
  ∀ n, P11925041236740785530.a n = A108667 n

end A108667

/-! ## A108667.P13738203704216345577

`A008587(A083487(n+1))-A223544(n+1)`
-/

namespace A108667.P13738203704216345577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A083487 (n + 1)).toNat - A223544 (n + 1)

end

end A108667.P13738203704216345577

namespace A108667

/-- `A008587(A083487(n+1))-A223544(n+1)` -/
def P13738203704216345577.Spec : Prop :=
  ∀ n, P13738203704216345577.a n = A108667 n

end A108667

/-! ## A108667.P3823933418643731083

`A154614(n+1)+A004277(A172292(n+1))`
-/

namespace A108667.P3823933418643731083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + A004277 (A172292 (n + 1)).toNat

end

end A108667.P3823933418643731083

namespace A108667

/-- `A154614(n+1)+A004277(A172292(n+1))` -/
def P3823933418643731083.Spec : Prop :=
  ∀ n, P3823933418643731083.a n = A108667 n

end A108667

/-! ## A108667.P10816623238012234787

`A092283(n+1)+A059036(n)+A004277(A172292(n+1))`
-/

namespace A108667.P10816623238012234787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) + (A059036 n + A004277 (A172292 (n + 1)).toNat)

end

end A108667.P10816623238012234787

namespace A108667

/-- `A092283(n+1)+A059036(n)+A004277(A172292(n+1))` -/
def P10816623238012234787.Spec : Prop :=
  ∀ n, P10816623238012234787.a n = A108667 n

end A108667

/-! ## A108667.P8442797292264807280

`A004277(A172292(n+1))+A079904(n)+2*A094727(n+1)`
-/

namespace A108667.P8442797292264807280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A172292 (n + 1)).toNat + (A079904 n + 2 * A094727 (n + 1))

end

end A108667.P8442797292264807280

namespace A108667

/-- `A004277(A172292(n+1))+A079904(n)+2*A094727(n+1)` -/
def P8442797292264807280.Spec : Prop :=
  ∀ n, P8442797292264807280.a n = A108667 n

end A108667

/-! ## A108667.P1637871774306038402

`A004277(A172292(n+1))+A014132(n+1)+n-A091435(n)`
-/

namespace A108667.P1637871774306038402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A172292 (n + 1)).toNat + (A014132 (n + 1) + ((n : ℤ) - A091435 n))

end

end A108667.P1637871774306038402

namespace A108667

/-- `A004277(A172292(n+1))+A014132(n+1)+n-A091435(n)` -/
def P1637871774306038402.Spec : Prop :=
  ∀ n, P1637871774306038402.a n = A108667 n

end A108667

/-! ## A108667.P11088889972505656895

`A079904(n)+A004277(A172292(n+1)+A094727(n+1))`
-/

namespace A108667.P11088889972505656895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A004277 (A172292 (n + 1) + A094727 (n + 1)).toNat

end

end A108667.P11088889972505656895

namespace A108667

/-- `A079904(n)+A004277(A172292(n+1)+A094727(n+1))` -/
def P11088889972505656895.Spec : Prop :=
  ∀ n, P11088889972505656895.a n = A108667 n

end A108667

/-!
# A108669: Triangle read by rows: T(n,k) = 11*k*n + 14*(n+k) + 20 (0 <= k <= n).

The programs for A108669, the canonical program `A108669.P14640422515904250855` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108669 has offset 0).

The definition of A108669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108669.P14640422515904250855

`A008706(A075362(n+1))+A008486(A144650(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A108669

/-- `A008706(A075362(n+1))+A008486(A144650(n+1))` -/
def P14640422515904250855.Spec : Prop :=
  ∀ n, P14640422515904250855.a n = A108669 n

theorem P14640422515904250855.correct : P14640422515904250855.Spec := by
  intro n
  simp only [A108669]

end A108669

/-!
# A108670: a(n) = (n+1)(n+2)^3*(n+3)(n+4)(5n^2 + 16n + 15)/1440.

The programs for A108670, the canonical program `A108670.P1203074175847195670` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108670 has offset 0).

The definition of A108670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108670.P1203074175847195670

`2*A107956(n)-A107962(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108670

/-- `2*A107956(n)-A107962(n)` -/
def P1203074175847195670.Spec : Prop :=
  ∀ n, P1203074175847195670.a n = A108670 n

theorem P1203074175847195670.correct : P1203074175847195670.Spec := by
  intro n
  simp only [A108670]

end A108670

/-! ## A108670.P10074873275763428316

`A107959(n)+A107968(n)-A107962(n)`
-/

namespace A108670.P10074873275763428316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n + (A107968 n - A107962 n)

end

end A108670.P10074873275763428316

namespace A108670

/-- `A107959(n)+A107968(n)-A107962(n)` -/
def P10074873275763428316.Spec : Prop :=
  ∀ n, P10074873275763428316.a n = A108670 n

theorem P10074873275763428316.correct : P10074873275763428316.Spec := by
  intro n
  simp only [A108670, Nat.add_sub_cancel, A108670.P10074873275763428316.a, A108670.P1203074175847195670.a, A107956, A107956.P15713167515399959811.f1, A107956.P15713167515399959811.a, A107959, A107959.P10341362667604094017.a, A107962, A107962.P12316333078426038034.a, A107968, A107968.P7358323612675776155.a, A107969, A107969.P2529055249569877253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108670

/-! ## A108670.P9260178482615222714

`A107891(n)+A108178(n)-A108682(n)`
-/

namespace A108670.P9260178482615222714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A108178 n - A108682 n)

end

end A108670.P9260178482615222714

namespace A108670

/-- `A107891(n)+A108178(n)-A108682(n)` -/
def P9260178482615222714.Spec : Prop :=
  ∀ n, P9260178482615222714.a n = A108670 n

end A108670

/-! ## A108670.P6836943691633232043

`A108645(n)+A108680(n)-A108682(n)`
-/

namespace A108670.P6836943691633232043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108645 n + (A108680 n - A108682 n)

end

end A108670.P6836943691633232043

namespace A108670

/-- `A108645(n)+A108680(n)-A108682(n)` -/
def P6836943691633232043.Spec : Prop :=
  ∀ n, P6836943691633232043.a n = A108670 n

end A108670

/-!
# A108671: a(n) = (n+1)(n+2)^3*(n+3)(13n^2 + 37n + 30)/720.

The programs for A108671, the canonical program `A108671.P12489596368738202224` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108671 has offset 0).

The definition of A108671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108671.P12489596368738202224

`(n+1)*(n+2)^3*(n+3)*(13*n²+37*n+30)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108671

/-- `(n+1)*(n+2)^3*(n+3)*(13*n²+37*n+30)/720` -/
def P12489596368738202224.Spec : Prop :=
  ∀ n, P12489596368738202224.a n = (A108671 n : ℚ)

end A108671

/-! ## A108671.P5155883025781768068

`A107969(n)+A107970(n)-A107962(n)`
-/

namespace A108671.P5155883025781768068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A107970 n - A107962 n)

end

end A108671.P5155883025781768068

namespace A108671

/-- `A107969(n)+A107970(n)-A107962(n)` -/
def P5155883025781768068.Spec : Prop :=
  ∀ n, P5155883025781768068.a n = A108671 n

end A108671

/-! ## A108671.P8617189488723114340

`A107969(n)+A108646(n)-A107970(n)`
-/

namespace A108671.P8617189488723114340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A108646 n - A107970 n)

end

end A108671.P8617189488723114340

namespace A108671

/-- `A107969(n)+A108646(n)-A107970(n)` -/
def P8617189488723114340.Spec : Prop :=
  ∀ n, P8617189488723114340.a n = A108671 n

end A108671

/-! ## A108671.P5347935244104998024

`A108646(n)+A114242(n)-A114244(n)`
-/

namespace A108671.P5347935244104998024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108646 n + (A114242 n - A114244 n)

end

end A108671.P5347935244104998024

namespace A108671

/-- `A108646(n)+A114242(n)-A114244(n)` -/
def P5347935244104998024.Spec : Prop :=
  ∀ n, P5347935244104998024.a n = A108671 n

end A108671

/-!
# A108672: a(n) = Sum{k=1 to n} sigma_{n-k+1}(k), where sigma_m(k) = sum{j|k} j^m.

The programs for A108672, there is no canonical definition to state claims against.
-/

/-! ## A108672.P17488935623414899160

`A108639(n+2)-A000005(n+2)`
-/

namespace A108672.P17488935623414899160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108639 (n + 2) - A000005 (n + 2)

end

end A108672.P17488935623414899160

/-! ## A108672.P9502582617705943542

`A081399(A071356(n+1))`
-/

namespace A108672.P9502582617705943542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A071356 (n + 1)).toNat

end

end A108672.P9502582617705943542

/-!
# A108673: a(n) = (n+1)(n+2)(n+3)(2n+3)(10n^2 + 27n + 20)/360.

The programs for A108673, the canonical program `A108673.P15211813064449303530` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108673 has offset 0).

The definition of A108673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108673.P15211813064449303530

`(n+1)*(n+2)*(n+3)*(2*n+3)*(10*n²+27*n+20)/360`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108673

/-- `(n+1)*(n+2)*(n+3)*(2*n+3)*(10*n²+27*n+20)/360` -/
def P15211813064449303530.Spec : Prop :=
  ∀ n, P15211813064449303530.a n = (A108673 n : ℚ)

end A108673

/-! ## A108673.P4345666637920083146

`A108648(n)+∑[A004302(n)]`
-/

namespace A108673.P4345666637920083146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108648 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108673.P4345666637920083146

namespace A108673

/-- `A108648(n)+∑[A004302(n)]` -/
def P4345666637920083146.Spec : Prop :=
  ∀ n, P4345666637920083146.a n = A108673 n

end A108673

/-! ## A108673.P133606418503288133

`A157706(n+2)-A053127(n+5)`
-/

namespace A108673.P133606418503288133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157706 (n + 2) - A053127 (n + 5)

end

end A108673.P133606418503288133

namespace A108673

/-- `A157706(n+2)-A053127(n+5)` -/
def P133606418503288133.Spec : Prop :=
  ∀ n, P133606418503288133.a n = A108673 n

end A108673

/-! ## A108673.P4366053290704327356

`∑[A053127(n+5)]+A060103(n)-A053127(n+5)`
-/

namespace A108673.P4366053290704327356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053127 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A060103 n - A053127 (n + 5))

end

end A108673.P4366053290704327356

namespace A108673

/-- `∑[A053127(n+5)]+A060103(n)-A053127(n+5)` -/
def P4366053290704327356.Spec : Prop :=
  ∀ n, P4366053290704327356.a n = A108673 n

end A108673

/-! ## A108673.P15842335810969277594

`∑[(n+1)*A071238(n+1)]`
-/

namespace A108673.P15842335810969277594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108673.P15842335810969277594

namespace A108673

/-- `∑[(n+1)*A071238(n+1)]` -/
def P15842335810969277594.Spec : Prop :=
  ∀ n, P15842335810969277594.a n = A108673 n

end A108673

/-! ## A108673.P7856825764035675739

`a(n-1)+(n+1)*A005994(2*n)` with `a(0)=1`
-/

namespace A108673.P7856825764035675739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A005994 (2 * n)

end

end A108673.P7856825764035675739

namespace A108673

/-- `a(n-1)+(n+1)*A005994(2*n)` -/
def P7856825764035675739.Spec : Prop :=
  ∀ n, P7856825764035675739.a n = A108673 n

end A108673

/-!
# A108674: a(n) = (n+1)^2 * (n+2)^2 * (2*n+3) / 12.

The programs for A108674, the canonical program `A108674.P4099660623920358913` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108674 has offset 0).

The definition of A108674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108674.P11431597943088733222

`(n+1)²*(n+2)²*(2*n+3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108674.P11431597943088733222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) ^ 2 * (2 * n + 3) : ℚ) / 12

end

end A108674.P11431597943088733222

namespace A108674

/-- `(n+1)²*(n+2)²*(2*n+3)/12` -/
def P11431597943088733222.Spec : Prop :=
  ∀ n, P11431597943088733222.a n = (A108674 n : ℚ)

end A108674

/-! ## A108674.P4099660623920358913

`A000330(n+1)*A000217(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108674

/-- `A000330(n+1)*A000217(n+1)` -/
def P4099660623920358913.Spec : Prop :=
  ∀ n, P4099660623920358913.a n = A108674 n

theorem P4099660623920358913.correct : P4099660623920358913.Spec := by
  intro n
  simp only [A108674]

end A108674

/-! ## A108674.P9785523489335843995

`Δ[C(n+2, 3)²]`
-/

namespace A108674.P9785523489335843995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108674.P9785523489335843995

namespace A108674

/-- `Δ[C(n+2, 3)²]` -/
def P9785523489335843995.Spec : Prop :=
  ∀ n, P9785523489335843995.a n = A108674 n

end A108674

/-! ## A108674.P6111445255503772905

`Δ[C(n+2, 3)^2]`
-/

namespace A108674.P6111445255503772905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A108674.P6111445255503772905

namespace A108674

/-- `Δ[C(n+2, 3)^2]` -/
def P6111445255503772905.Spec : Prop :=
  ∀ n, P6111445255503772905.a n = A108674 n

end A108674

/-! ## A108674.P10639246090643319720

`C(n+3, 3)²-∑[∑[n]]²`
-/

namespace A108674.P10639246090643319720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A108674.P10639246090643319720

namespace A108674

/-- `C(n+3, 3)²-∑[∑[n]]²` -/
def P10639246090643319720.Spec : Prop :=
  ∀ n, P10639246090643319720.a n = A108674 n

end A108674

/-! ## A108674.P14836015025039437139

`floor(∑[n+1]/acot(∑[(n+1)²]))`
-/

namespace A108674.P14836015025039437139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌋

end

end A108674.P14836015025039437139

namespace A108674

/-- `floor(∑[n+1]/acot(∑[(n+1)²]))` -/
def P14836015025039437139.Spec : Prop :=
  ∀ n, P14836015025039437139.a n = A108674 n

end A108674

/-! ## A108674.P12911838995087845728

`round(∑[n+1]/acot(∑[(n+1)²]))`
-/

namespace A108674.P12911838995087845728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

end

end A108674.P12911838995087845728

namespace A108674

/-- `round(∑[n+1]/acot(∑[(n+1)²]))` -/
def P12911838995087845728.Spec : Prop :=
  ∀ n, P12911838995087845728.a n = A108674 n

end A108674

/-! ## A108674.P16654205130946770621

`∑[(n+1)*∑[∑[a(n-1)+5]]]` with `a(0)=1, a(1)=5`
-/

namespace A108674.P16654205130946770621
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108674.P16654205130946770621

namespace A108674

/-- `∑[(n+1)*∑[∑[a(n-1)+5]]]` -/
def P16654205130946770621.Spec : Prop :=
  ∀ n, (P16654205130946770621.a n : ℤ) = A108674 n

end A108674

/-! ## A108674.P11721121557996300966

`Δ[((n+2)/(n-1))²*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A108674.P11721121557996300966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((n + 2 : ℚ) / ((n : ℤ) - 1 : ℚ)) ^ 2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108674.P11721121557996300966

namespace A108674

/-- `Δ[((n+2)/(n-1))²*a(n-1)]` -/
def P11721121557996300966.Spec : Prop :=
  ∀ n, P11721121557996300966.a n = (A108674 n : ℚ)

end A108674

/-! ## A108674.P7792133991764576631

`Δ[a(n-1)/((n-1)/(n+2))²]` with `a(0)=0, a(1)=1`
-/

namespace A108674.P7792133991764576631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) / (((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108674.P7792133991764576631

namespace A108674

/-- `Δ[a(n-1)/((n-1)/(n+2))²]` -/
def P7792133991764576631.Spec : Prop :=
  ∀ n, P7792133991764576631.a n = (A108674 n : ℚ)

end A108674

/-! ## A108674.P13805147004485626834

`Δ[A000292(n)²]`
-/

namespace A108674.P13805147004485626834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108674.P13805147004485626834

namespace A108674

/-- `Δ[A000292(n)²]` -/
def P13805147004485626834.Spec : Prop :=
  ∀ n, P13805147004485626834.a n = A108674 n

end A108674

/-! ## A108674.P10140568589709182005

`∑[∑[A005902(n)]]`
-/

namespace A108674.P10140568589709182005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108674.P10140568589709182005

namespace A108674

/-- `∑[∑[A005902(n)]]` -/
def P10140568589709182005.Spec : Prop :=
  ∀ n, P10140568589709182005.a n = A108674 n

end A108674

/-! ## A108674.P16626334143243536219

`∑[∑[∑[A005901(n)]]]`
-/

namespace A108674.P16626334143243536219
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108674.P16626334143243536219

namespace A108674

/-- `∑[∑[∑[A005901(n)]]]` -/
def P16626334143243536219.Spec : Prop :=
  ∀ n, P16626334143243536219.a n = A108674 n

end A108674

/-! ## A108674.P3654676717145177602

`A001249(n)-∑[∑[n]]²`
-/

namespace A108674.P3654676717145177602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A108674.P3654676717145177602

namespace A108674

/-- `A001249(n)-∑[∑[n]]²` -/
def P3654676717145177602.Spec : Prop :=
  ∀ n, P3654676717145177602.a n = A108674 n

end A108674

/-! ## A108674.P18396679808384891695

`Δ[(A004320(n)/(n+2))²]`
-/

namespace A108674.P18396679808384891695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004320 n : ℚ) / (n + 2 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108674.P18396679808384891695

namespace A108674

/-- `Δ[(A004320(n)/(n+2))²]` -/
def P18396679808384891695.Spec : Prop :=
  ∀ n, P18396679808384891695.a n = (A108674 n : ℚ)

end A108674

/-! ## A108674.P10164446758923228022

`∑[∑[A100174(n+1)-n²]]`
-/

namespace A108674.P10164446758923228022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108674.P10164446758923228022

namespace A108674

/-- `∑[∑[A100174(n+1)-n²]]` -/
def P10164446758923228022.Spec : Prop :=
  ∀ n, P10164446758923228022.a n = A108674 n

end A108674

/-! ## A108674.P5327582991351714247

`A000292(n+1)²-A000292(n)²`
-/

namespace A108674.P5327582991351714247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ 2 - A000292 n ^ 2

end

end A108674.P5327582991351714247

namespace A108674

/-- `A000292(n+1)²-A000292(n)²` -/
def P5327582991351714247.Spec : Prop :=
  ∀ n, P5327582991351714247.a n = A108674 n

end A108674

/-! ## A108674.P15930485470274621336

`2*A085462(n+1)-A085461(n+1)`
-/

namespace A108674.P15930485470274621336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085462 (n + 1) - A085461 (n + 1)

end

end A108674.P15930485470274621336

namespace A108674

/-- `2*A085462(n+1)-A085461(n+1)` -/
def P15930485470274621336.Spec : Prop :=
  ∀ n, P15930485470274621336.a n = A108674 n

end A108674

/-! ## A108674.P4756692245081869703

`A000330(n+1)+A000096(n)*A000330(n+1)`
-/

namespace A108674.P4756692245081869703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + A000096 n * A000330 (n + 1)

end

end A108674.P4756692245081869703

namespace A108674

/-- `A000330(n+1)+A000096(n)*A000330(n+1)` -/
def P4756692245081869703.Spec : Prop :=
  ∀ n, P4756692245081869703.a n = A108674 n

theorem P4756692245081869703.correct : P4756692245081869703.Spec := by
  intro n
  simp only [A108674, Nat.add_sub_cancel, A108674.P4756692245081869703.a, A108674.P4099660623920358913.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A000330, A000330.P6574240937923917945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108674

/-! ## A108674.P6798726952138961827

`(A000292(n+1)+A000292(n))*A000217(n+1)`
-/

namespace A108674.P6798726952138961827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) + A000292 n) * A000217 (n + 1)

end

end A108674.P6798726952138961827

namespace A108674

/-- `(A000292(n+1)+A000292(n))*A000217(n+1)` -/
def P6798726952138961827.Spec : Prop :=
  ∀ n, P6798726952138961827.a n = A108674 n

end A108674

/-!
# A108675: a(n) = (n+1)*(n+2)*(61*n^4 + 366*n^3 + 845*n^2 + 888*n + 360)/720.

The programs for A108675, the canonical program `A108675.P17484865858890752665` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108675 has offset 0).

The definition of A108675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108675.P17484865858890752665

`(n+1)*(n+2)*(61*n^4+366*n^3+845*n²+888*n+360)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108675

/-- `(n+1)*(n+2)*(61*n^4+366*n^3+845*n²+888*n+360)/720` -/
def P17484865858890752665.Spec : Prop :=
  ∀ n, P17484865858890752665.a n = (A108675 n : ℚ)

end A108675

/-! ## A108675.P4601572938807150076

`A050447(eq[6, A002262(n)])`
-/

namespace A108675.P4601572938807150076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108675.P4601572938807150076

namespace A108675

/-- `A050447(eq[6, A002262(n)])` -/
def P4601572938807150076.Spec : Prop :=
  ∀ n, P4601572938807150076.a n = A108675 n

end A108675

/-! ## A108675.P4539897371818966080

`A050447(A167499(n+5)+1)`
-/

namespace A108675.P4539897371818966080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167499 (n + 5) + 1).toNat

end

end A108675.P4539897371818966080

namespace A108675

/-- `A050447(A167499(n+5)+1)` -/
def P4539897371818966080.Spec : Prop :=
  ∀ n, P4539897371818966080.a n = A108675 n

end A108675

/-! ## A108675.P18177501166148293301

`A050447(A167614(n+5)+3)`
-/

namespace A108675.P18177501166148293301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A167614 (n + 5) + 3).toNat

end

end A108675.P18177501166148293301

namespace A108675

/-- `A050447(A167614(n+5)+3)` -/
def P18177501166148293301.Spec : Prop :=
  ∀ n, P18177501166148293301.a n = A108675 n

end A108675

/-! ## A108675.P12625979590336019434

`A050447(A000096(n+5)+7)`
-/

namespace A108675.P12625979590336019434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000096 (n + 5) + 7).toNat

end

end A108675.P12625979590336019434

namespace A108675

/-- `A050447(A000096(n+5)+7)` -/
def P12625979590336019434.Spec : Prop :=
  ∀ n, P12625979590336019434.a n = A108675 n

end A108675

/-! ## A108675.P10236642349576728382

`A050447(A000217(n+6)+6)`
-/

namespace A108675.P10236642349576728382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 (A000217 (n + 6) + 6).toNat

end

end A108675.P10236642349576728382

namespace A108675

/-- `A050447(A000217(n+6)+6)` -/
def P10236642349576728382.Spec : Prop :=
  ∀ n, P10236642349576728382.a n = A108675 n

end A108675

/-!
# A108676: a(n) = (n+1)^2*(n+2)*(5*n^2 + 15*n + 12)/24.

The programs for A108676, the canonical program `A108676.P16518987865110052031` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108676 has offset 0).

The definition of A108676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108676.P16518987865110052031

`(n+1)²*(n+2)*(5*n²+15*n+12)/24`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108676

/-- `(n+1)²*(n+2)*(5*n²+15*n+12)/24` -/
def P16518987865110052031.Spec : Prop :=
  ∀ n, P16518987865110052031.a n = (A108676 n : ℚ)

end A108676

/-! ## A108676.P18135175770423772525

`(n+1)*A006322(n+1)`
-/

namespace A108676.P18135175770423772525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006322 (n + 1)

end

end A108676.P18135175770423772525

namespace A108676

/-- `(n+1)*A006322(n+1)` -/
def P18135175770423772525.Spec : Prop :=
  ∀ n, P18135175770423772525.a n = A108676 n

end A108676

/-! ## A108676.P15556516050055547331

`A272103(n)+∑[∑[2*n]]`
-/

namespace A108676.P15556516050055547331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272103 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A108676.P15556516050055547331

namespace A108676

/-- `A272103(n)+∑[∑[2*n]]` -/
def P15556516050055547331.Spec : Prop :=
  ∀ n, P15556516050055547331.a n = A108676 n

end A108676

/-! ## A108676.P15454259189612607366

`A027800(n)+2*A004282(n)`
-/

namespace A108676.P15454259189612607366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n + 2 * A004282 n

end

end A108676.P15454259189612607366

namespace A108676

/-- `A027800(n)+2*A004282(n)` -/
def P15454259189612607366.Spec : Prop :=
  ∀ n, P15454259189612607366.a n = A108676 n

end A108676

/-! ## A108676.P9503685770238849108

`∑[∑[A005902(n)+A004068(n)]]`
-/

namespace A108676.P9503685770238849108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n + A004068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108676.P9503685770238849108

namespace A108676

/-- `∑[∑[A005902(n)+A004068(n)]]` -/
def P9503685770238849108.Spec : Prop :=
  ∀ n, P9503685770238849108.a n = A108676 n

end A108676

/-! ## A108676.P6191232589386527788

`(n+1)*∑[A004068(n+1)]`
-/

namespace A108676.P6191232589386527788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108676.P6191232589386527788

namespace A108676

/-- `(n+1)*∑[A004068(n+1)]` -/
def P6191232589386527788.Spec : Prop :=
  ∀ n, P6191232589386527788.a n = A108676 n

end A108676

/-!
# A108677: a(n) = (n+1)*(n+2)*(n+3)*(n+4)*(19*n^2 + 47*n + 30)/720.

The programs for A108677, the canonical program `A108677.P17135870108916590313` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108677 has offset 0).

The definition of A108677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108677.P17135870108916590313

`(n+1)*(n+2)*(n+3)*(n+4)*(19*n²+47*n+30)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108677

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(19*n²+47*n+30)/720` -/
def P17135870108916590313.Spec : Prop :=
  ∀ n, P17135870108916590313.a n = (A108677 n : ℚ)

end A108677

/-! ## A108677.P14489167457378855762

`C(n+3, 3)²-C(n+3, 6)`
-/

namespace A108677.P14489167457378855762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ 2 : ℤ) - (Nat.choose (n + 3) 6 : ℤ)

end

end A108677.P14489167457378855762

namespace A108677

/-- `C(n+3, 3)²-C(n+3, 6)` -/
def P14489167457378855762.Spec : Prop :=
  ∀ n, P14489167457378855762.a n = A108677 n

end A108677

/-! ## A108677.P17743726463520217952

`2*A108683(n)-A114243(n)`
-/

namespace A108677.P17743726463520217952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108683 n - A114243 n

end

end A108677.P17743726463520217952

namespace A108677

/-- `2*A108683(n)-A114243(n)` -/
def P17743726463520217952.Spec : Prop :=
  ∀ n, P17743726463520217952.a n = A108677 n

end A108677

/-! ## A108677.P10650665949496643612

`A108684(n)+∑[∑[A000330(n)]]`
-/

namespace A108677.P10650665949496643612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108684 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108677.P10650665949496643612

namespace A108677

/-- `A108684(n)+∑[∑[A000330(n)]]` -/
def P10650665949496643612.Spec : Prop :=
  ∀ n, P10650665949496643612.a n = A108677 n

end A108677

/-! ## A108677.P5100391925428364572

`A001249(n)-A000579(n+3)`
-/

namespace A108677.P5100391925428364572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n - A000579 (n + 3)

end

end A108677.P5100391925428364572

namespace A108677

/-- `A001249(n)-A000579(n+3)` -/
def P5100391925428364572.Spec : Prop :=
  ∀ n, P5100391925428364572.a n = A108677 n

end A108677

/-!
# A108678: a(n) = (n+1)^2*(n+2)*(2*n+3)/6.

The programs for A108678, the canonical program `A108678.P8916393138229401493` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108678 has offset 0).

The definition of A108678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108678.P2099056783097830303

`(n+1)²*(n+2)*(2*n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108678.P2099056783097830303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) * (2 * n + 3) : ℚ) / 6

end

end A108678.P2099056783097830303

namespace A108678

/-- `(n+1)²*(n+2)*(2*n+3)/6` -/
def P2099056783097830303.Spec : Prop :=
  ∀ n, P2099056783097830303.a n = (A108678 n : ℚ)

end A108678

/-! ## A108678.P228245521430123937

`1/3*C(n+2, 2)*C(2*n+3, 2)`
-/

namespace A108678.P228245521430123937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (Nat.choose (n + 2) 2 : ℚ) * (Nat.choose (2 * n + 3) 2 : ℚ)

end

end A108678.P228245521430123937

namespace A108678

/-- `1/3*C(n+2, 2)*C(2*n+3, 2)` -/
def P228245521430123937.Spec : Prop :=
  ∀ n, P228245521430123937.a n = (A108678 n : ℚ)

end A108678

/-! ## A108678.P10686246649119165766

`1/8*A100431(n)`
-/

namespace A108678.P10686246649119165766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A100431 n : ℚ)

end

end A108678.P10686246649119165766

namespace A108678

/-- `1/8*A100431(n)` -/
def P10686246649119165766.Spec : Prop :=
  ∀ n, P10686246649119165766.a n = (A108678 n : ℚ)

end A108678

/-! ## A108678.P15219360383428518090

`(n+1)*A000330(n+1)`
-/

namespace A108678.P15219360383428518090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000330 (n + 1)

end

end A108678.P15219360383428518090

namespace A108678

/-- `(n+1)*A000330(n+1)` -/
def P15219360383428518090.Spec : Prop :=
  ∀ n, P15219360383428518090.a n = A108678 n

end A108678

/-! ## A108678.P11786427438275692272

`1/3*A000217(n+1)*A014105(n+1)`
-/

namespace A108678.P11786427438275692272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A000217 (n + 1) : ℚ) * (A014105 (n + 1) : ℚ)

end

end A108678.P11786427438275692272

namespace A108678

/-- `1/3*A000217(n+1)*A014105(n+1)` -/
def P11786427438275692272.Spec : Prop :=
  ∀ n, P11786427438275692272.a n = (A108678 n : ℚ)

end A108678

/-! ## A108678.P8916393138229401493

`A000537(n+1)+A002415(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108678

/-- `A000537(n+1)+A002415(n+1)` -/
def P8916393138229401493.Spec : Prop :=
  ∀ n, P8916393138229401493.a n = A108678 n

theorem P8916393138229401493.correct : P8916393138229401493.Spec := by
  intro n
  simp only [A108678]

end A108678

/-! ## A108678.P12063335628506010375

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1, a(1)=7`
-/

namespace A108678.P12063335628506010375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108678.P12063335628506010375

namespace A108678

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P12063335628506010375.Spec : Prop :=
  ∀ n, (P12063335628506010375.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P13535966345276244550

`(n+1)*∑[∑[or(1, 2*n)]]`
-/

namespace A108678.P13535966345276244550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P13535966345276244550

namespace A108678

/-- `(n+1)*∑[∑[or(1, 2*n)]]` -/
def P13535966345276244550.Spec : Prop :=
  ∀ n, (P13535966345276244550.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P13293032310309453050

`(n+1)*∑[∑[xor(1, 2*n)]]`
-/

namespace A108678.P13293032310309453050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P13293032310309453050

namespace A108678

/-- `(n+1)*∑[∑[xor(1, 2*n)]]` -/
def P13293032310309453050.Spec : Prop :=
  ∀ n, (P13293032310309453050.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P2069332666192906874

`(n+1)*∑[C(n+1, n)²]`
-/

namespace A108678.P2069332666192906874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P2069332666192906874

namespace A108678

/-- `(n+1)*∑[C(n+1, n)²]` -/
def P2069332666192906874.Spec : Prop :=
  ∀ n, (P2069332666192906874.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P13400180943671150753

`∑[∑[n²]]+C(n+2, 2)²`
-/

namespace A108678.P13400180943671150753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 2 ^ 2

end

end A108678.P13400180943671150753

namespace A108678

/-- `∑[∑[n²]]+C(n+2, 2)²` -/
def P13400180943671150753.Spec : Prop :=
  ∀ n, (P13400180943671150753.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P12940290542818352614

`floor((n+1)/acot(∑[(n+1)²]))`
-/

namespace A108678.P12940290542818352614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A108678.P12940290542818352614

namespace A108678

/-- `floor((n+1)/acot(∑[(n+1)²]))` -/
def P12940290542818352614.Spec : Prop :=
  ∀ n, P12940290542818352614.a n = A108678 n

end A108678

/-! ## A108678.P1187827708797177822

`round((n+1)/acot(∑[(n+1)²]))`
-/

namespace A108678.P1187827708797177822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A108678.P1187827708797177822

namespace A108678

/-- `round((n+1)/acot(∑[(n+1)²]))` -/
def P1187827708797177822.Spec : Prop :=
  ∀ n, P1187827708797177822.a n = A108678 n

end A108678

/-! ## A108678.P2530226509572526413

`∑[∑[2-∑[a(n-1)-8]]]` with `a(0)=1`
-/

namespace A108678.P2530226509572526413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108678.P2530226509572526413

namespace A108678

/-- `∑[∑[2-∑[a(n-1)-8]]]` -/
def P2530226509572526413.Spec : Prop :=
  ∀ n, P2530226509572526413.a n = A108678 n

end A108678

/-! ## A108678.P15434908796421875406

`(n+1)*∑[(n+1)^acos(cos(2))]`
-/

namespace A108678.P15434908796421875406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P15434908796421875406

namespace A108678

/-- `(n+1)*∑[(n+1)^acos(cos(2))]` -/
def P15434908796421875406.Spec : Prop :=
  ∀ n, P15434908796421875406.a n = (A108678 n : ℝ)

end A108678

/-! ## A108678.P2000674893925420966

`(n+1)*∑[∩[(n+1)², n²]]`
-/

namespace A108678.P2000674893925420966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P2000674893925420966

namespace A108678

/-- `(n+1)*∑[∩[(n+1)², n²]]` -/
def P2000674893925420966.Spec : Prop :=
  ∀ n, (P2000674893925420966.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P2584815047742042336

`(n+1)*∑[((n+1)%(n+2))²]`
-/

namespace A108678.P2584815047742042336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108678.P2584815047742042336

namespace A108678

/-- `(n+1)*∑[((n+1)%(n+2))²]` -/
def P2584815047742042336.Spec : Prop :=
  ∀ n, (P2584815047742042336.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P6294097544316613577

`lcm(n+1, (n+1)*∑[(n+1)²])`
-/

namespace A108678.P6294097544316613577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A108678.P6294097544316613577

namespace A108678

/-- `lcm(n+1, (n+1)*∑[(n+1)²])` -/
def P6294097544316613577.Spec : Prop :=
  ∀ n, (P6294097544316613577.a n : ℤ) = A108678 n

end A108678

/-! ## A108678.P10512430240246700666

`∑[C(2*n+3, 2*n)-∑[n]]`
-/

namespace A108678.P10512430240246700666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) (2 * n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108678.P10512430240246700666

namespace A108678

/-- `∑[C(2*n+3, 2*n)-∑[n]]` -/
def P10512430240246700666.Spec : Prop :=
  ∀ n, P10512430240246700666.a n = A108678 n

end A108678

/-! ## A108678.P7046845941382277639

`∑[∑[(n+1)²]+lcm(n, (n+1)²)]`
-/

namespace A108678.P7046845941382277639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.lcm n ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108678.P7046845941382277639

namespace A108678

/-- `∑[∑[(n+1)²]+lcm(n, (n+1)²)]` -/
def P7046845941382277639.Spec : Prop :=
  ∀ n, (P7046845941382277639.a n : ℤ) = A108678 n

end A108678

/-!
# A108679: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)^2*(n+6)/86400.

The programs for A108679, the canonical program `A108679.P9730175226178725277` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108679 has offset 0).

The definition of A108679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108679.P15115117449891814520

`C(n+5, 5)*C(n+6, 5)/6`
-/

namespace A108679.P15115117449891814520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 * Nat.choose (n + 6) 5 : ℚ) / 6

end

end A108679.P15115117449891814520

namespace A108679

/-- `C(n+5, 5)*C(n+6, 5)/6` -/
def P15115117449891814520.Spec : Prop :=
  ∀ n, P15115117449891814520.a n = (A108679 n : ℚ)

end A108679

/-! ## A108679.P2814210963603024312

`C(n+5, 5)²-C(n+5, 4)*C(n+5, 6)`
-/

namespace A108679.P2814210963603024312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 ^ 2 : ℤ) - (Nat.choose (n + 5) 4 * Nat.choose (n + 5) 6 : ℤ)

end

end A108679.P2814210963603024312

namespace A108679

/-- `C(n+5, 5)²-C(n+5, 4)*C(n+5, 6)` -/
def P2814210963603024312.Spec : Prop :=
  ∀ n, P2814210963603024312.a n = A108679 n

end A108679

/-! ## A108679.P9730175226178725277

`(A005585(n+2)²-A288876(n+1))/24`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108679

/-- `(A005585(n+2)²-A288876(n+1))/24` -/
def P9730175226178725277.Spec : Prop :=
  ∀ n, P9730175226178725277.a n = (A108679 n : ℚ)

end A108679

/-! ## A108679.P16704927238893619836

`∑[A047819(n)]`
-/

namespace A108679.P16704927238893619836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P16704927238893619836

namespace A108679

/-- `∑[A047819(n)]` -/
def P16704927238893619836.Spec : Prop :=
  ∀ n, P16704927238893619836.a n = A108679 n

end A108679

/-! ## A108679.P10907569383925182547

`∑[∑[A107891(n)]]`
-/

namespace A108679.P10907569383925182547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P10907569383925182547

namespace A108679

/-- `∑[∑[A107891(n)]]` -/
def P10907569383925182547.Spec : Prop :=
  ∀ n, P10907569383925182547.a n = A108679 n

end A108679

/-! ## A108679.P16933962770218102829

`∑[∑[∑[A114239(n)]]]`
-/

namespace A108679.P16933962770218102829
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P16933962770218102829

namespace A108679

/-- `∑[∑[∑[A114239(n)]]]` -/
def P16933962770218102829.Spec : Prop :=
  ∀ n, P16933962770218102829.a n = A108679 n

end A108679

/-! ## A108679.P13362215992173299763

`∑[(n/3+1)*A006857(n)]`
-/

namespace A108679.P13362215992173299763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 1) * (A006857 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P13362215992173299763

namespace A108679

/-- `∑[(n/3+1)*A006857(n)]` -/
def P13362215992173299763.Spec : Prop :=
  ∀ n, P13362215992173299763.a n = (A108679 n : ℚ)

end A108679

/-! ## A108679.P16189263101572549725

`∑[∑[∑[∑[∑[A160747(n)+a(n-1)]]]]]` with `a(0)=1`
-/

namespace A108679.P16189263101572549725
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f5 =>
  A160747 n + f5 (n - 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P16189263101572549725

namespace A108679

/-- `∑[∑[∑[∑[∑[A160747(n)+a(n-1)]]]]]` -/
def P16189263101572549725.Spec : Prop :=
  ∀ n, P16189263101572549725.a n = A108679 n

end A108679

/-! ## A108679.P707020271984351553

`∑[∑[∑[∑[A083200(n+2)]]]]`
-/

namespace A108679.P707020271984351553
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083200 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P707020271984351553

namespace A108679

/-- `∑[∑[∑[∑[A083200(n+2)]]]]` -/
def P707020271984351553.Spec : Prop :=
  ∀ n, P707020271984351553.a n = A108679 n

end A108679

/-! ## A108679.P2226757323956653009

`A107941(n+1)-A107916(n+1)`
-/

namespace A108679.P2226757323956653009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107941 (n + 1) - A107916 (n + 1)

end

end A108679.P2226757323956653009

namespace A108679

/-- `A107941(n+1)-A107916(n+1)` -/
def P2226757323956653009.Spec : Prop :=
  ∀ n, P2226757323956653009.a n = A108679 n

end A108679

/-! ## A108679.P3275051145223617833

`∑[A107966(n+1)-A107942(n+1)]`
-/

namespace A108679.P3275051145223617833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107966 (n + 1) - A107942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108679.P3275051145223617833

namespace A108679

/-- `∑[A107966(n+1)-A107942(n+1)]` -/
def P3275051145223617833.Spec : Prop :=
  ∀ n, P3275051145223617833.a n = A108679 n

end A108679

/-! ## A108679.P3916126827184762901

`A047819(A028242(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A108679.P3916126827184762901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047819 (A028242 (2 * n + 1)).toNat + a (n - 1)

end

end A108679.P3916126827184762901

namespace A108679

/-- `A047819(A028242(2*n+1))+a(n-1)` -/
def P3916126827184762901.Spec : Prop :=
  ∀ n, P3916126827184762901.a n = A108679 n

end A108679

/-! ## A108679.P18120576111333968647

`A001263(A374007(n+1))`
-/

namespace A108679.P18120576111333968647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A374007 (n + 1)).toNat

end

end A108679.P18120576111333968647

namespace A108679

/-- `A001263(A374007(n+1))` -/
def P18120576111333968647.Spec : Prop :=
  ∀ n, P18120576111333968647.a n = A108679 n

end A108679

/-! ## A108679.P14415565688418629588

`A001263(A000217(n+5)+6)`
-/

namespace A108679.P14415565688418629588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A000217 (n + 5) + 6).toNat

end

end A108679.P14415565688418629588

namespace A108679

/-- `A001263(A000217(n+5)+6)` -/
def P14415565688418629588.Spec : Prop :=
  ∀ n, P14415565688418629588.a n = A108679 n

end A108679

/-! ## A108679.P450478779643733265

`A001263(A052905(n+3))`
-/

namespace A108679.P450478779643733265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A052905 (n + 3)).toNat

end

end A108679.P450478779643733265

namespace A108679

/-- `A001263(A052905(n+3))` -/
def P450478779643733265.Spec : Prop :=
  ∀ n, P450478779643733265.a n = A108679 n

end A108679

/-! ## A108679.P2178790778169953154

`A001263(Δ[A103145(n)]-n)`
-/

namespace A108679.P2178790778169953154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A108679.P2178790778169953154

namespace A108679

/-- `A001263(Δ[A103145(n)]-n)` -/
def P2178790778169953154.Spec : Prop :=
  ∀ n, P2178790778169953154.a n = A108679 n

end A108679

/-! ## A108679.P15382493706955202122

`A001263(Δ[A026054(n+3)]+1)`
-/

namespace A108679.P15382493706955202122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (f1 (n + 1) - f1 n + 1).toNat

end

end A108679.P15382493706955202122

namespace A108679

/-- `A001263(Δ[A026054(n+3)]+1)` -/
def P15382493706955202122.Spec : Prop :=
  ∀ n, P15382493706955202122.a n = A108679 n

end A108679

/-! ## A108679.P7491870857317812784

`A001263(A302537(n+2)-2*n)`
-/

namespace A108679.P7491870857317812784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A302537 (n + 2) - (2 * n : ℤ)).toNat

end

end A108679.P7491870857317812784

namespace A108679

/-- `A001263(A302537(n+2)-2*n)` -/
def P7491870857317812784.Spec : Prop :=
  ∀ n, P7491870857317812784.a n = A108679 n

end A108679

/-!
# A108680: Kekulé numbers for certain benzenoids.

The programs for A108680, the canonical program `A108680.P13157378904117379808` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108680 has offset 0).

The definition of A108680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108680.P13157378904117379808

`∑[A108682(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A108680

/-- `∑[A108682(n)]` -/
def P13157378904117379808.Spec : Prop :=
  ∀ n, P13157378904117379808.a n = A108680 n

theorem P13157378904117379808.correct : P13157378904117379808.Spec := by
  intro n
  simp only [A108680]

end A108680

/-! ## A108680.P10606759266659721586

`A006857(n)+A107959(n)-A107891(n)`
-/

namespace A108680.P10606759266659721586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n + (A107959 n - A107891 n)

end

end A108680.P10606759266659721586

namespace A108680

/-- `A006857(n)+A107959(n)-A107891(n)` -/
def P10606759266659721586.Spec : Prop :=
  ∀ n, P10606759266659721586.a n = A108680 n

end A108680

/-! ## A108680.P4564287465181436862

`A107891(n)+A114242(n)-A006857(n)`
-/

namespace A108680.P4564287465181436862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A114242 n - A006857 n)

end

end A108680.P4564287465181436862

namespace A108680

/-- `A107891(n)+A114242(n)-A006857(n)` -/
def P4564287465181436862.Spec : Prop :=
  ∀ n, P4564287465181436862.a n = A108680 n

end A108680

/-! ## A108680.P5359845332328861663

`A107891(n)+A107959(n)-A107956(n)`
-/

namespace A108680.P5359845332328861663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107959 n - A107956 n)

end

end A108680.P5359845332328861663

namespace A108680

/-- `A107891(n)+A107959(n)-A107956(n)` -/
def P5359845332328861663.Spec : Prop :=
  ∀ n, P5359845332328861663.a n = A108680 n

end A108680

/-! ## A108680.P18013913662768680778

`A051923(n)/A027818(n)*A107418(n)`
-/

namespace A108680.P18013913662768680778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051923 n : ℚ) / (A027818 n : ℚ) * (A107418 n : ℚ)

end

end A108680.P18013913662768680778

namespace A108680

/-- `A051923(n)/A027818(n)*A107418(n)` -/
def P18013913662768680778.Spec : Prop :=
  ∀ n, P18013913662768680778.a n = (A108680 n : ℚ)

end A108680

/-! ## A108680.P10231753590713273583

`A114242(n)+∑[A114239(n)-A114242(n)]`
-/

namespace A108680.P10231753590713273583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 n - A114242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114242 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108680.P10231753590713273583

namespace A108680

/-- `A114242(n)+∑[A114239(n)-A114242(n)]` -/
def P10231753590713273583.Spec : Prop :=
  ∀ n, P10231753590713273583.a n = A108680 n

end A108680

/-! ## A108680.P12755048859483134800

`A040977(n)/A033455(n+1)*A114239(n)`
-/

namespace A108680.P12755048859483134800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040977 n : ℚ) / (A033455 (n + 1) : ℚ) * (A114239 n : ℚ)

end

end A108680.P12755048859483134800

namespace A108680

/-- `A040977(n)/A033455(n+1)*A114239(n)` -/
def P12755048859483134800.Spec : Prop :=
  ∀ n, P12755048859483134800.a n = (A108680 n : ℚ)

end A108680

/-! ## A108680.P10977158708964580575

`A051923(n)/A101094(n+1)*A107959(n)`
-/

namespace A108680.P10977158708964580575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051923 n : ℚ) / (A101094 (n + 1) : ℚ) * (A107959 n : ℚ)

end

end A108680.P10977158708964580575

namespace A108680

/-- `A051923(n)/A101094(n+1)*A107959(n)` -/
def P10977158708964580575.Spec : Prop :=
  ∀ n, P10977158708964580575.a n = (A108680 n : ℚ)

end A108680

/-! ## A108680.P82297924951413272

`A006414(n)/A006542(n+4)*A047819(n)`
-/

namespace A108680.P82297924951413272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006414 n : ℚ) / (A006542 (n + 4) : ℚ) * (A047819 n : ℚ)

end

end A108680.P82297924951413272

namespace A108680

/-- `A006414(n)/A006542(n+4)*A047819(n)` -/
def P82297924951413272.Spec : Prop :=
  ∀ n, P82297924951413272.a n = (A108680 n : ℚ)

end A108680

/-! ## A108680.P2631999279504853357

`A108670(n+1)-A108645(n+1)`
-/

namespace A108680.P2631999279504853357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 (n + 1) - A108645 (n + 1)

end

end A108680.P2631999279504853357

namespace A108680

/-- `A108670(n+1)-A108645(n+1)` -/
def P2631999279504853357.Spec : Prop :=
  ∀ n, P2631999279504853357.a n = A108680 n

end A108680

/-! ## A108680.P8722576815261503458

`A000579(n+6)+A000124(n+3)*A000579(n+5)`
-/

namespace A108680.P8722576815261503458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) + A000124 (n + 3) * A000579 (n + 5)

end

end A108680.P8722576815261503458

namespace A108680

/-- `A000579(n+6)+A000124(n+3)*A000579(n+5)` -/
def P8722576815261503458.Spec : Prop :=
  ∀ n, P8722576815261503458.a n = A108680 n

end A108680

/-! ## A108680.P11143126096633334417

`A006414(n)/A080929(n)*A082139(n)`
-/

namespace A108680.P11143126096633334417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006414 n : ℚ) / (A080929 n : ℚ) * (A082139 n : ℚ)

end

end A108680.P11143126096633334417

namespace A108680

/-- `A006414(n)/A080929(n)*A082139(n)` -/
def P11143126096633334417.Spec : Prop :=
  ∀ n, P11143126096633334417.a n = (A108680 n : ℚ)

end A108680

/-!
# A108681: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(n+5)*(2*n+3)/720.

The programs for A108681, the canonical program `A108681.P8488984315613502462` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108681 has offset 0).

The definition of A108681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108681.P8488984315613502462

`(n+1)*(n+2)²*(n+3)*(n+4)*(n+5)*(2*n+3)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108681

/-- `(n+1)*(n+2)²*(n+3)*(n+4)*(n+5)*(2*n+3)/720` -/
def P8488984315613502462.Spec : Prop :=
  ∀ n, P8488984315613502462.a n = (A108681 n : ℚ)

end A108681

/-! ## A108681.P2628283754826312283

`∑[A108683(n)]`
-/

namespace A108681.P2628283754826312283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108681.P2628283754826312283

namespace A108681

/-- `∑[A108683(n)]` -/
def P2628283754826312283.Spec : Prop :=
  ∀ n, P2628283754826312283.a n = A108681 n

end A108681

/-! ## A108681.P18323185217414491327

`2*A027818(n)-A050403(n)`
-/

namespace A108681.P18323185217414491327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027818 n - A050403 n

end

end A108681.P18323185217414491327

namespace A108681

/-- `2*A027818(n)-A050403(n)` -/
def P18323185217414491327.Spec : Prop :=
  ∀ n, P18323185217414491327.a n = A108681 n

end A108681

/-! ## A108681.P8558479363105663017

`2*A107908(n)-A108682(n)`
-/

namespace A108681.P8558479363105663017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107908 n - A108682 n

end

end A108681.P8558479363105663017

namespace A108681

/-- `2*A107908(n)-A108682(n)` -/
def P8558479363105663017.Spec : Prop :=
  ∀ n, P8558479363105663017.a n = A108681 n

end A108681

/-! ## A108681.P12953430550108461327

`∑[∑[A114241(n)+A051836(n)]]`
-/

namespace A108681.P12953430550108461327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114241 n + A051836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108681.P12953430550108461327

namespace A108681

/-- `∑[∑[A114241(n)+A051836(n)]]` -/
def P12953430550108461327.Spec : Prop :=
  ∀ n, P12953430550108461327.a n = A108681 n

end A108681

/-! ## A108681.P16829139132490159030

`∑[A050403(n)+A050403(n)-A051877(n)]`
-/

namespace A108681.P16829139132490159030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050403 n + (A050403 n - A051877 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108681.P16829139132490159030

namespace A108681

/-- `∑[A050403(n)+A050403(n)-A051877(n)]` -/
def P16829139132490159030.Spec : Prop :=
  ∀ n, P16829139132490159030.a n = A108681 n

end A108681

/-!
# A108682: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(4*n^2+15*n+15)/720.

The programs for A108682, the canonical program `A108682.P8624766078601827400` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108682 has offset 0).

The definition of A108682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108682.P8624766078601827400

`(n+1)*(n+2)²*(n+3)*(n+4)*(4*n²+15*n+15)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108682

/-- `(n+1)*(n+2)²*(n+3)*(n+4)*(4*n²+15*n+15)/720` -/
def P8624766078601827400.Spec : Prop :=
  ∀ n, P8624766078601827400.a n = (A108682 n : ℚ)

end A108682

/-! ## A108682.P8636159275211137273

`A107891(n)+A108178(n)-A108670(n)`
-/

namespace A108682.P8636159275211137273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A108178 n - A108670 n)

end

end A108682.P8636159275211137273

namespace A108682

/-- `A107891(n)+A108178(n)-A108670(n)` -/
def P8636159275211137273.Spec : Prop :=
  ∀ n, P8636159275211137273.a n = A108682 n

end A108682

/-! ## A108682.P13692858905341007694

`A108645(n)+A108680(n)-A108670(n)`
-/

namespace A108682.P13692858905341007694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108645 n + (A108680 n - A108670 n)

end

end A108682.P13692858905341007694

namespace A108682

/-- `A108645(n)+A108680(n)-A108670(n)` -/
def P13692858905341007694.Spec : Prop :=
  ∀ n, P13692858905341007694.a n = A108682 n

end A108682

/-! ## A108682.P12520145966539802169

`A107969(n)+A114244(n)-A114239(n)`
-/

namespace A108682.P12520145966539802169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A114244 n - A114239 n)

end

end A108682.P12520145966539802169

namespace A108682

/-- `A107969(n)+A114244(n)-A114239(n)` -/
def P12520145966539802169.Spec : Prop :=
  ∀ n, P12520145966539802169.a n = A108682 n

end A108682

/-! ## A108682.P11411004391358820546

`Δ[A108670(n)-A108645(n)]`
-/

namespace A108682.P11411004391358820546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108670 n - A108645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108682.P11411004391358820546

namespace A108682

/-- `Δ[A108670(n)-A108645(n)]` -/
def P11411004391358820546.Spec : Prop :=
  ∀ n, P11411004391358820546.a n = A108682 n

end A108682

/-! ## A108682.P14328365330771462348

`Δ[A108680(abs(1-n))%A108680(n)]`
-/

namespace A108682.P14328365330771462348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108680 |1 - (n : ℤ)|.toNat) (A108680 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108682.P14328365330771462348

namespace A108682

/-- `Δ[A108680(abs(1-n))%A108680(n)]` -/
def P14328365330771462348.Spec : Prop :=
  ∀ n, P14328365330771462348.a n = A108682 n

end A108682

/-!
# A108683: a(n) = (n+1)*(n+2)*(n+3)*(n+4)*(7*n^2 + 20*n + 15)/360.

The programs for A108683, the canonical program `A108683.P17905161358071796812` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108683 has offset 0).

The definition of A108683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108683.P17905161358071796812

`(1+n)*(2+n)*(3+n)*(4+n)*(15+n*(20+7*n))/360`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108683

/-- `(1+n)*(2+n)*(3+n)*(4+n)*(15+n*(20+7*n))/360` -/
def P17905161358071796812.Spec : Prop :=
  ∀ n, P17905161358071796812.a n = (A108683 n : ℚ)

end A108683

/-! ## A108683.P8988702601455101373

`(n+1)*(n+2)*(n+3)*(n+4)*(7*n²+20*n+15)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108683.P8988702601455101373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (7 * n ^ 2 + 20 * n + 15) : ℚ) / 360

end

end A108683.P8988702601455101373

namespace A108683

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(7*n²+20*n+15)/360` -/
def P8988702601455101373.Spec : Prop :=
  ∀ n, P8988702601455101373.a n = (A108683 n : ℚ)

end A108683

/-! ## A108683.P17782415987692049109

`∑[∑[∑[A063490(n+1)+n²]]]`
-/

namespace A108683.P17782415987692049109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1) + (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108683.P17782415987692049109

namespace A108683

/-- `∑[∑[∑[A063490(n+1)+n²]]]` -/
def P17782415987692049109.Spec : Prop :=
  ∀ n, P17782415987692049109.a n = A108683 n

end A108683

/-! ## A108683.P16644066106887881076

`∑[∑[A185505(n+1)+∑[n²]]]`
-/

namespace A108683.P16644066106887881076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185505 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108683.P16644066106887881076

namespace A108683

/-- `∑[∑[A185505(n+1)+∑[n²]]]` -/
def P16644066106887881076.Spec : Prop :=
  ∀ n, P16644066106887881076.a n = A108683 n

end A108683

/-! ## A108683.P6849478191934936812

`∑[A114241(n)+A051836(n)]`
-/

namespace A108683.P6849478191934936812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114241 n + A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108683.P6849478191934936812

namespace A108683

/-- `∑[A114241(n)+A051836(n)]` -/
def P6849478191934936812.Spec : Prop :=
  ∀ n, P6849478191934936812.a n = A108683 n

end A108683

/-! ## A108683.P12657204381028174585

`2*A050403(n)-A051877(n)`
-/

namespace A108683.P12657204381028174585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050403 n - A051877 n

end

end A108683.P12657204381028174585

namespace A108683

/-- `2*A050403(n)-A051877(n)` -/
def P12657204381028174585.Spec : Prop :=
  ∀ n, P12657204381028174585.a n = A108683 n

end A108683

/-! ## A108683.P12666023341121600519

`∑[A085463(n+1)+∑[A000330(n)]]`
-/

namespace A108683.P12666023341121600519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108683.P12666023341121600519

namespace A108683

/-- `∑[A085463(n+1)+∑[A000330(n)]]` -/
def P12666023341121600519.Spec : Prop :=
  ∀ n, P12666023341121600519.a n = A108683 n

end A108683

/-! ## A108683.P7466109804079864449

`A000217(n+1)*A145126(n+1)-A145128(n)`
-/

namespace A108683.P7466109804079864449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A145126 (n + 1) - A145128 n

end

end A108683.P7466109804079864449

namespace A108683

/-- `A000217(n+1)*A145126(n+1)-A145128(n)` -/
def P7466109804079864449.Spec : Prop :=
  ∀ n, P7466109804079864449.a n = A108683 n

end A108683

/-!
# A108684: a(n) = (n+1)*(n+2)*(n+3)*(19*n^3 + 111*n^2 + 200*n + 120)/720.

The programs for A108684, the canonical program `A108684.P9433458266621234106` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108684 has offset 0).

The definition of A108684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108684.P9433458266621234106

`(n+1)*(n+2)*(n+3)*(19*n^3+111*n²+200*n+120)/720`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A108684

/-- `(n+1)*(n+2)*(n+3)*(19*n^3+111*n²+200*n+120)/720` -/
def P9433458266621234106.Spec : Prop :=
  ∀ n, P9433458266621234106.a n = (A108684 n : ℚ)

end A108684

/-! ## A108684.P16919981909994929428

`A050405(n)+A181888(n+1)`
-/

namespace A108684.P16919981909994929428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050405 n + A181888 (n + 1)

end

end A108684.P16919981909994929428

namespace A108684

/-- `A050405(n)+A181888(n+1)` -/
def P16919981909994929428.Spec : Prop :=
  ∀ n, P16919981909994929428.a n = A108684 n

end A108684

/-! ## A108684.P12981726684097633887

`∑[A085461(n+1)+A051836(n)]`
-/

namespace A108684.P12981726684097633887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108684.P12981726684097633887

namespace A108684

/-- `∑[A085461(n+1)+A051836(n)]` -/
def P12981726684097633887.Spec : Prop :=
  ∀ n, P12981726684097633887.a n = A108684 n

end A108684

/-! ## A108684.P10856395310429318178

`∑[A051836(n)+Δ[A006858(n)]]`
-/

namespace A108684.P10856395310429318178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006858 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108684.P10856395310429318178

namespace A108684

/-- `∑[A051836(n)+Δ[A006858(n)]]` -/
def P10856395310429318178.Spec : Prop :=
  ∀ n, P10856395310429318178.a n = A108684 n

end A108684

/-! ## A108684.P8816221829918476531

`∑[A000389(n+3)+A201106(n+1)+A051878(n)]`
-/

namespace A108684.P8816221829918476531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 3) + (A201106 (n + 1) + A051878 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108684.P8816221829918476531

namespace A108684

/-- `∑[A000389(n+3)+A201106(n+1)+A051878(n)]` -/
def P8816221829918476531.Spec : Prop :=
  ∀ n, P8816221829918476531.a n = A108684 n

end A108684

/-!
# A108685: Hidden fractal sequence: increasing sequence all of whose successive digits are the digits of the fractal sequence A025480 (which is built upon the natural counting numbers).

The programs for A108685, there is no canonical definition to state claims against.
-/

/-! ## A108685.P9764432450828885369

`A039617((n+1)/2^val(n+1, 2))+A008592(n)`
-/

namespace A108685.P9764432450828885369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A008592 n

end

end A108685.P9764432450828885369

/-! ## A108685.P13254602401111822049

`A039617((n+1)/xor(n, or(n, n+1)))+A008592(n)`
-/

namespace A108685.P13254602401111822049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat + A008592 n

end

end A108685.P13254602401111822049

/-! ## A108685.P11738761092095544738

`A039617((n+1)*2^-val(n+1, 2))+A008592(n)`
-/

namespace A108685.P11738761092095544738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat + A008592 n

end

end A108685.P11738761092095544738

/-! ## A108685.P15069252270580954179

`A039617(abs((n+1)/or(n+1, -(n+1))))+A008592(n)`
-/

namespace A108685.P15069252270580954179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (SequenceMachineLib.roundAway |(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)|).toNat + A008592 n

end

end A108685.P15069252270580954179

/-! ## A108685.P3460937544644938671

`A039617(A000265(n+1))+A008592(n)`
-/

namespace A108685.P3460937544644938671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (A000265 (n + 1)).toNat + A008592 n

end

end A108685.P3460937544644938671

/-!
# A108687: Numbers of the form (9^i)*(11^j), with i, j >= 0.

The programs for A108687, there is no canonical definition to state claims against.
-/

/-! ## A108687.P8543487513896101102

`A038301(n)/A056926(A008459(n))`
-/

namespace A108687.P8543487513896101102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038301 n : ℚ) / (A056926 (A008459 n).toNat : ℚ)

end

end A108687.P8543487513896101102

/-! ## A108687.P9261170260530078261

`A038323(A061579(n))/A056926(A008459(n))`
-/

namespace A108687.P9261170260530078261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038323 (A061579 n).toNat : ℚ) / (A056926 (A008459 n).toNat : ℚ)

end

end A108687.P9261170260530078261

/-! ## A108687.P15929145795135193430

`A038229(n)/A056926(A008459(n))*A140303(n)`
-/

namespace A108687.P15929145795135193430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038229 n : ℚ) / (A056926 (A008459 n).toNat : ℚ) * (A140303 n : ℚ)

end

end A108687.P15929145795135193430

/-! ## A108687.P8461439038258756413

`A140303(n)²*A013618(n)/A056926(A008459(n))`
-/

namespace A108687.P8461439038258756413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140303 n ^ 2 * A013618 n : ℚ) / (A056926 (A008459 n).toNat : ℚ)

end

end A108687.P8461439038258756413

/-! ## A108687.P1035289214230103474

`A064988(A025617(n+1))`
-/

namespace A108687.P1035289214230103474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A025617 (n + 1)).toNat

end

end A108687.P1035289214230103474

/-!
# A108689: Smallest integer q >= 1 such that difference between q*Pi and the nearest integer is <= 1/n.

The programs for A108689, there is no canonical definition to state claims against.
-/

/-! ## A108689.P1782698533496238973

`gcd(7, A163391(n))`
-/

namespace A108689.P1782698533496238973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A163391 n)

end

end A108689.P1782698533496238973

/-! ## A108689.P14085909095233749275

`or(1, 6%A219816(n+1))`
-/

namespace A108689.P14085909095233749275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod 6 (A219816 (n + 1)))

end

end A108689.P14085909095233749275

/-! ## A108689.P14679685426898597269

`or(1, 7%A219173(n+1))`
-/

namespace A108689.P14679685426898597269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod 7 (A219173 (n + 1)))

end

end A108689.P14679685426898597269

/-! ## A108689.P8986605063966746224

`or(a(n-1), A320302(n+2))` with `a(0)=1`
-/

namespace A108689.P8986605063966746224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A320302 (n + 2))

end

end A108689.P8986605063966746224

/-! ## A108689.P183874702953501269

`7^(A178334(n)%A222587(n+1))`
-/

namespace A108689.P183874702953501269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (Int.tmod (A178334 n) (A222587 (n + 1)) : ℤ)

end

end A108689.P183874702953501269

/-! ## A108689.P8931272950639266569

`A000837(A138902(∑[A299922(n)]))`
-/

namespace A108689.P8931272950639266569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A138902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A108689.P8931272950639266569

/-! ## A108689.P3709004654343031442

`A322565(A094497(n)^A054895(n))`
-/

namespace A108689.P3709004654343031442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322565 (SequenceMachineLib.roundAway ((A094497 n : ℚ) ^ (A054895 n : ℤ))).toNat

end

end A108689.P3709004654343031442

/-! ## A108689.P18419690664427717724

`A321379(lcm(90, A007918(n)))`
-/

namespace A108689.P18419690664427717724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (Int.lcm 90 (A007918 n))

end

end A108689.P18419690664427717724

/-! ## A108689.P13187759525692787330

`7^C(A161491(A020639(n+1)), A161436(n+4))`
-/

namespace A108689.P13187759525692787330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.choose (A161491 (A020639 (n + 1)).toNat).toNat (A161436 (n + 4)).toNat

end

end A108689.P13187759525692787330

/-! ## A108689.P17197206749952243812

`7^C(A161491(n+1), A161436(n+4))`
-/

namespace A108689.P17197206749952243812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.choose (A161491 (n + 1)).toNat (A161436 (n + 4)).toNat

end

end A108689.P17197206749952243812

/-!
# A108690: Square roots of the terms in A080160.

The programs for A108690, there is no canonical definition to state claims against.
-/

/-! ## A108690.P8897028158433074040

`sqrt(A080160(n+1))`
-/

namespace A108690.P8897028158433074040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080160 (n + 1) : ℝ)

end

end A108690.P8897028158433074040

/-! ## A108690.P34513689629589702

`floor(sqrt(A080160(-xor(n, -1))))`
-/

namespace A108690.P34513689629589702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080160 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A108690.P34513689629589702

/-! ## A108690.P11819790549989799197

`sqrt(∩[A080151(n+1), n²])`
-/

namespace A108690.P11819790549989799197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A108690.P11819790549989799197

/-! ## A108690.P8936024904110015137

`sqrt(∩[A000290(n), A080151(n+1)])`
-/

namespace A108690.P8936024904110015137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080151 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A108690.P8936024904110015137

/-! ## A108690.P10389493313141391389

`A133388(A080160(n+1)+1)`
-/

namespace A108690.P10389493313141391389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A080160 (n + 1) + 1).toNat

end

end A108690.P10389493313141391389

/-!
# A108691: Continued fraction expansion of Pi^2/exp(gamma).

The programs for A108691, there is no canonical definition to state claims against.
-/

/-! ## A108691.P9951234373307825188

`gcd(A073930(A239871(2*(n+1))), A082733(2*n+3))`
-/

namespace A108691.P9951234373307825188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073930 (A239871 (2 * (n + 1))).toNat) (A082733 (2 * n + 3))

end

end A108691.P9951234373307825188

/-!
# A108696: Generated by a sieve: see comments.

The programs for A108696, there is no canonical definition to state claims against.
-/

/-! ## A108696.P15073245529780128425

`A002491(n)+a(val(n, n+1))` with `a(0)=1`
-/

namespace A108696.P15073245529780128425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002491 n + a (SequenceMachineLib.valuation n (n + 1))

end

end A108696.P15073245529780128425

/-! ## A108696.P5861935944839925750

`A028913(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A108696.P5861935944839925750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A028913 (n - 2) + a (n - 1)

end

end A108696.P5861935944839925750

/-! ## A108696.P534515982072269376

`A002491(n)+a(A087893(A020639(n)))` with `a(0)=1`
-/

namespace A108696.P534515982072269376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002491 n + a (A087893 (A020639 n).toNat).toNat

end

end A108696.P534515982072269376

/-! ## A108696.P8155194778117726416

`A002491(n)+a(A151935(A253894(n)))` with `a(0)=1`
-/

namespace A108696.P8155194778117726416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002491 n + a (A151935 (A253894 n).toNat).toNat

end

end A108696.P8155194778117726416

/-! ## A108696.P1398373253422079088

`A057427(n)+A002491(1-A057427(n)+n)`
-/

namespace A108696.P1398373253422079088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002491 (1 - A057427 n + (n : ℤ)).toNat

end

end A108696.P1398373253422079088

/-! ## A108696.P15153418299522409379

`record[A043529(n)+A007952(A004525(n))]`
-/

namespace A108696.P15153418299522409379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n + A007952 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108696.P15153418299522409379

/-! ## A108696.P4622032454223309402

`A057427(n)+A002491(A123108(2*n))`
-/

namespace A108696.P4622032454223309402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002491 (A123108 (2 * n)).toNat

end

end A108696.P4622032454223309402

/-! ## A108696.P2754811863623518936

`record[A043529(n)+A007952(A110655(n))]`
-/

namespace A108696.P2754811863623518936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n + A007952 (A110655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108696.P2754811863623518936

/-! ## A108696.P6601558274529815021

`record[(n+1)/A130747(abs(1-n)+1)]`
-/

namespace A108696.P6601558274529815021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A130747 (|1 - (n : ℤ)| + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108696.P6601558274529815021

/-! ## A108696.P16565653600042761850

`A002491(n)+a(A278529(A000960(n)))` with `a(0)=1`
-/

namespace A108696.P16565653600042761850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002491 n + a (A278529 (A000960 n).toNat).toNat

end

end A108696.P16565653600042761850

/-!
# A108698: Numbers of the form (6^i)*(11^j), with i, j >= 0.

The programs for A108698, there is no canonical definition to state claims against.
-/

/-! ## A108698.P3950921275435013616

`A061898(A107710(n+1))`
-/

namespace A108698.P3950921275435013616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A107710 (n + 1)).toNat

end

end A108698.P3950921275435013616

/-! ## A108698.P397274999252844697

`A332808(A015090(n)*A107710(n+1))`
-/

namespace A108698.P397274999252844697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A015090 n * A107710 (n + 1)).toNat

end

end A108698.P397274999252844697

/-! ## A108698.P2141442451455974327

`∑{d}[A332808(A107710(n+1)), A000010(#)]`
-/

namespace A108698.P2141442451455974327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A107710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A108698.P2141442451455974327

/-! ## A108698.P14018442746829469573

`A007318(∑[n])*A332808(A107710(n+1))`
-/

namespace A108698.P14018442746829469573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A332808 (A107710 (n + 1)).toNat

end

end A108698.P14018442746829469573

/-! ## A108698.P17882558590495427746

`A332808(A107710(n+1)*A125891(n+1))`
-/

namespace A108698.P17882558590495427746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A107710 (n + 1) * A125891 (n + 1)).toNat

end

end A108698.P17882558590495427746

/-!
# A108699: a(n) = Product{k=1 to n} sigma_{n-k+1}(k), where sigma_m(k) = sum{j|k} j^m.

The programs for A108699, there is no canonical definition to state claims against.
-/

/-! ## A108699.P14409852796915322699

`A000142(n)*A091018(A014070(n))`
-/

namespace A108699.P14409852796915322699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A091018 (A014070 n).toNat

end

end A108699.P14409852796915322699

