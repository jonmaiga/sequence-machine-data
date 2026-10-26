import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B006.C000
import Seq.B006.C001
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
# A325800: Numbers whose sum of prime indices is equal to the number of distinct subset-sums of their prime indices.

The programs for A325800, there is no canonical definition to state claims against.
-/

/-! ## A325800.P847521515106621605

`eq[A056239(n+1), A299701(n+1)]+1`
-/

namespace A325800.P847521515106621605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325800.P847521515106621605

/-! ## A325800.P6042714979361019678

`eq[A325794(n+1), A325801(n+1)]+1`
-/

namespace A325800.P6042714979361019678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325800.P6042714979361019678

/-! ## A325800.P1501078591838551137

`A020725(eq[A056239(n+1), A299701(n+1)])`
-/

namespace A325800.P1501078591838551137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325800.P1501078591838551137

/-! ## A325800.P11819137188493078144

`A065475(eq[A325794(n+1), A325801(n+1)])`
-/

namespace A325800.P11819137188493078144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325800.P11819137188493078144

/-! ## A325800.P3048687137294388322

`A153152(eq[A325794(n+1), A325801(n+1)])`
-/

namespace A325800.P3048687137294388322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325800.P3048687137294388322

/-!
# A325801: Number of divisors of n minus the number of distinct positive subset-sums of the prime indices of n.

The programs for A325801, there is no canonical definition to state claims against.
-/

/-! ## A325801.P12564656796934185151

`A000005(n+1)-A299701(n+1)`
-/

namespace A325801.P12564656796934185151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A299701 (n + 1)

end

end A325801.P12564656796934185151

/-! ## A325801.P3317975646249138409

`Δ[A006218(n)]-A299701(n+1)`
-/

namespace A325801.P3317975646249138409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A299701 (n + 1)

end

end A325801.P3317975646249138409

/-! ## A325801.P11345811362077257414

`A032741(n+1)-A304793(n+1)`
-/

namespace A325801.P11345811362077257414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A304793 (n + 1)

end

end A325801.P11345811362077257414

/-! ## A325801.P512876411280849819

`Δ[A054519(n)]-(A304793(n+1)+1)`
-/

namespace A325801.P512876411280849819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A304793 (n + 1) + 1)

end

end A325801.P512876411280849819

/-! ## A325801.P16450417215258363600

`A000005(n+1)-(A304793(n+1)+1)`
-/

namespace A325801.P16450417215258363600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A304793 (n + 1) + 1)

end

end A325801.P16450417215258363600

/-! ## A325801.P8818513670301650610

`A004526(A114003(n+1))-A304793(n+1)`
-/

namespace A325801.P8818513670301650610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A114003 (n + 1)).toNat - A304793 (n + 1)

end

end A325801.P8818513670301650610

/-! ## A325801.P2486332822774605168

`A304793(A100577(n+1))-A304793(n+1)`
-/

namespace A325801.P2486332822774605168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A100577 (n + 1)).toNat - A304793 (n + 1)

end

end A325801.P2486332822774605168

/-! ## A325801.P15289988274655447243

`A299701(A100577(n+1))-A299701(n+1)`
-/

namespace A325801.P15289988274655447243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (A100577 (n + 1)).toNat - A299701 (n + 1)

end

end A325801.P15289988274655447243

/-! ## A325801.P14657035875603264232

`and(A100660(n+1), A294927(n+1))`
-/

namespace A325801.P14657035875603264232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100660 (n + 1)) (A294927 (n + 1))

end

end A325801.P14657035875603264232

/-! ## A325801.P12974015338856432406

`A331383(A324758(A324851(A324758(A340827(n+1)))))`
-/

namespace A325801.P12974015338856432406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A324758 (A324851 (A324758 (A340827 (n + 1)).toNat).toNat).toNat).toNat

end

end A325801.P12974015338856432406

/-!
# A325802: Numbers with one more divisor than distinct subset-sums of their prime indices.

The programs for A325802, there is no canonical definition to state claims against.
-/

/-! ## A325802.P12393790054234486281

`eq[A301855(n+1), A304793(n+1)]+1`
-/

namespace A325802.P12393790054234486281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A325802.P12393790054234486281

/-! ## A325802.P8316768730841759819

`eq[1, A325801(n+1)]+1`
-/

namespace A325802.P8316768730841759819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325802.P8316768730841759819

/-! ## A325802.P12168209636130137968

`eq[1, A325801(A028310(n))]`
-/

namespace A325802.P12168209636130137968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325802.P12168209636130137968

/-! ## A325802.P8716021379582788374

`A065475(eq[1, A325801(n+1)])`
-/

namespace A325802.P8716021379582788374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325802.P8716021379582788374

/-! ## A325802.P5376515042403064634

`A153152(eq[1, A325801(n+1)])`
-/

namespace A325802.P5376515042403064634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325802.P5376515042403064634

/-! ## A325802.P17584210536882151065

`A020725(eq[A304793(n+1)+2, A000005(n+1)])`
-/

namespace A325802.P17584210536882151065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325802.P17584210536882151065

/-!
# A325803: Nonzero terms of Product_{k=0..floor(log_2(n))} (1 + A004718(floor(n/(2^k)))).

The programs for A325803, the canonical program `A325803.P14656589698050212788` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325803 has offset 1).

The definition of A325803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325803.P14656589698050212788

`A329893(A325804(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325803

/-- `A329893(A325804(n+1))` -/
def P14656589698050212788.Spec : Prop :=
  ∀ n, P14656589698050212788.a n = A325803 (n + 1)

theorem P14656589698050212788.correct : P14656589698050212788.Spec := by
  intro n
  simp only [A325803, Nat.add_sub_cancel]

end A325803

/-! ## A325803.P5017329846262312924

`A329893(lt[0, abs(A329893(n))])`
-/

namespace A325803.P5017329846262312924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329893 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325803.P5017329846262312924

namespace A325803

/-- `A329893(lt[0, abs(A329893(n))])` -/
def P5017329846262312924.Spec : Prop :=
  ∀ n, P5017329846262312924.a n = A325803 (n + 1)

end A325803

/-! ## A325803.P4863121288057090866

`A329893(lt[0, A329893(n)²])`
-/

namespace A325803.P4863121288057090866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325803.P4863121288057090866

namespace A325803

/-- `A329893(lt[0, A329893(n)²])` -/
def P4863121288057090866.Spec : Prop :=
  ∀ n, P4863121288057090866.a n = A325803 (n + 1)

end A325803

/-! ## A325803.P15557793675272897533

`A329893(lt[acot(A329893(n)), 1])`
-/

namespace A325803.P15557793675272897533
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A329893 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A325803.P15557793675272897533

namespace A325803

/-- `A329893(lt[acot(A329893(n)), 1])` -/
def P15557793675272897533.Spec : Prop :=
  ∀ n, P15557793675272897533.a n = A325803 (n + 1)

end A325803

/-!
# A325804: Positions of nonzero terms of Product_{k=0..floor(log_2(n))} (1 + A004718(floor(n/(2^k)))).

The programs for A325804, the canonical program `A325804.P9678205006070702569` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325804 has offset 1).

The definition of A325804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325804.P9678205006070702569

`lt[0, abs(A329893(n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A325804

/-- `lt[0, abs(A329893(n))]` -/
def P9678205006070702569.Spec : Prop :=
  ∀ n, (P9678205006070702569.a n : ℤ) = A325804 (n + 1)

theorem P9678205006070702569.correct : P9678205006070702569.Spec := by
  intro n
  simp only [A325804, Nat.add_sub_cancel]

end A325804

/-! ## A325804.P14224232045973867007

`lt[A000120(n), A329893(n)²]`
-/

namespace A325804.P14224232045973867007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325804.P14224232045973867007

namespace A325804

/-- `lt[A000120(n), A329893(n)²]` -/
def P14224232045973867007.Spec : Prop :=
  ∀ n, (P14224232045973867007.a n : ℤ) = A325804 (n + 1)

end A325804

/-! ## A325804.P5955369794066903740

`lt[A025480(n), A329893(n)²]`
-/

namespace A325804.P5955369794066903740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325804.P5955369794066903740

namespace A325804

/-- `lt[A025480(n), A329893(n)²]` -/
def P5955369794066903740.Spec : Prop :=
  ∀ n, (P5955369794066903740.a n : ℤ) = A325804 (n + 1)

end A325804

/-! ## A325804.P15811285457031814712

`lt[A057427(n), A329893(n)²]`
-/

namespace A325804.P15811285457031814712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325804.P15811285457031814712

namespace A325804

/-- `lt[A057427(n), A329893(n)²]` -/
def P15811285457031814712.Spec : Prop :=
  ∀ n, (P15811285457031814712.a n : ℤ) = A325804 (n + 1)

end A325804

/-! ## A325804.P8633721194331097545

`lt[A215781(n), A329893(n)²]`
-/

namespace A325804.P8633721194331097545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325804.P8633721194331097545

namespace A325804

/-- `lt[A215781(n), A329893(n)²]` -/
def P8633721194331097545.Spec : Prop :=
  ∀ n, (P8633721194331097545.a n : ℤ) = A325804 (n + 1)

end A325804

/-! ## A325804.P17991438011580930827

`lt[A065967(n+1), A329893(n)²]`
-/

namespace A325804.P17991438011580930827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325804.P17991438011580930827

namespace A325804

/-- `lt[A065967(n+1), A329893(n)²]` -/
def P17991438011580930827.Spec : Prop :=
  ∀ n, (P17991438011580930827.a n : ℤ) = A325804 (n + 1)

end A325804

/-!
# A325805: "Sloping octal numbers": write numbers in octal under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325805, there is no canonical definition to state claims against.
-/

/-! ## A325805.P8716985920188747143

`Δ[A002266(A028895(n))-A010887(n)]`
-/

namespace A325805.P8716985920188747143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A028895 n).toNat - A010887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325805.P8716985920188747143

/-! ## A325805.P1246554554123158261

`A325644(2*n)/A105397(A217566(n+1))`
-/

namespace A325805.P1246554554123158261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325644 (2 * n) : ℚ) / (A105397 (A217566 (n + 1)).toNat : ℚ)

end

end A325805.P1246554554123158261

/-! ## A325805.P3537692402067420947

`xor(A112132(n+1), A227324(A227324(n+1)))`
-/

namespace A325805.P3537692402067420947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112132 (n + 1)) (A227324 (A227324 (n + 1)).toNat)

end

end A325805.P3537692402067420947

/-! ## A325805.P4304160281649254630

`xor(n+1, Δ[A112062(n+1)])`
-/

namespace A325805.P4304160281649254630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A325805.P4304160281649254630

/-! ## A325805.P14602634995609847897

`xor(n+1, gcd(8, A160278(n+1))-1)`
-/

namespace A325805.P14602634995609847897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((Int.gcd 8 (A160278 (n + 1)) : ℤ) - 1)

end

end A325805.P14602634995609847897

/-! ## A325805.P17946027296967104693

`A035457(Δ[A033006(n+1)])+n`
-/

namespace A325805.P17946027296967104693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A325805.P17946027296967104693

/-! ## A325805.P9209787743979181315

`A277257(Δ[A031969(n+1)])+n`
-/

namespace A325805.P9209787743979181315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277257 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A325805.P9209787743979181315

/-!
# A325806: Number of ways to partition the divisors of n into two complementary sets whose sums are relatively prime. (Here only distinct unordered pairs of such subsets are counted.)

The programs for A325806, there is no canonical definition to state claims against.
-/

/-! ## A325806.P15067491150298258110

`A018892(A321738(n+1)^A072411(n+1))`
-/

namespace A325806.P15067491150298258110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (SequenceMachineLib.roundAway ((A321738 (n + 1) : ℚ) ^ (A072411 (n + 1) : ℤ))).toNat

end

end A325806.P15067491150298258110

/-! ## A325806.P17457779153281994841

`A100565(A321738(n+1)^A072411(n+1))`
-/

namespace A325806.P17457779153281994841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100565 (SequenceMachineLib.roundAway ((A321738 (n + 1) : ℚ) ^ (A072411 (n + 1) : ℤ))).toNat

end

end A325806.P17457779153281994841

/-! ## A325806.P17349196761881266933

`A281118(A324886(n+1))+A086784(2*(n+2))`
-/

namespace A325806.P17349196761881266933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281118 (A324886 (n + 1)).toNat + A086784 (2 * (n + 2))

end

end A325806.P17349196761881266933

/-! ## A325806.P17436582855643808371

`or(A025459(A056040(n)), A052126(n+1))`
-/

namespace A325806.P17436582855643808371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025459 (A056040 n).toNat) (A052126 (n + 1))

end

end A325806.P17436582855643808371

/-! ## A325806.P15001131580048665716

`or(A046645(n+1), A238877(A007910(n)))`
-/

namespace A325806.P15001131580048665716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046645 (n + 1)) (A238877 (A007910 n).toNat)

end

end A325806.P15001131580048665716

/-!
# A325807: Number of ways to partition the divisors of n into complementary subsets x and y for which gcd(n-Sum(x), n-Sum(y)) = 1. (Here only distinct unordered pairs of such subsets are counted.)

The programs for A325807, there is no canonical definition to state claims against.
-/

/-! ## A325807.P12140183711677794766

`gcd(A080513(A283379(n)), A243238(n+1))`
-/

namespace A325807.P12140183711677794766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080513 (A283379 n).toNat) (A243238 (n + 1))

end

end A325807.P12140183711677794766

/-! ## A325807.P15215725921291380032

`gcd(A061537(n+1), A102443(A158983(n+1)))`
-/

namespace A325807.P15215725921291380032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061537 (n + 1)) (A102443 (A158983 (n + 1)).toNat)

end

end A325807.P15215725921291380032

/-! ## A325807.P16644689128540928424

`gcd(A053707(A113505(n+1)), A322020(2*(n+1)))`
-/

namespace A325807.P16644689128540928424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053707 (A113505 (n + 1)).toNat) (A322020 (2 * (n + 1)))

end

end A325807.P16644689128540928424

/-! ## A325807.P1393442063835586939

`gcd(A033676(A107035(n+1)), A270282(n))`
-/

namespace A325807.P1393442063835586939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033676 (A107035 (n + 1)).toNat) (A270282 n)

end

end A325807.P1393442063835586939

/-! ## A325807.P15992696036777008393

`gcd(A202084(A022112(n)), A205185(n+1))`
-/

namespace A325807.P15992696036777008393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202084 (A022112 n).toNat) (A205185 (n + 1))

end

end A325807.P15992696036777008393

/-!
# A325808: Numbers n such that sigma(n) can be obtained as the base-3 carryless product of 2n and some k.

The programs for A325808, there is no canonical definition to state claims against.
-/

/-! ## A325808.P14577306509029613933

`A091018(A049111(3*(n+1))^A215781(n))`
-/

namespace A325808.P14577306509029613933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (SequenceMachineLib.roundAway ((A049111 (3 * (n + 1)) : ℚ) ^ (A215781 n : ℤ))).toNat

end

end A325808.P14577306509029613933

/-!
# A325809: Let k = A228058(n). a(n) is the number of ways to partition the divisors of k into complementary subsets x and y so that the (k-Sum(x)) and (k-Sum(y)) are coprime.

The programs for A325809, there is no canonical definition to state claims against.
-/

/-! ## A325809.P2723801401679090756

`A325807(A228058(n+1))`
-/

namespace A325809.P2723801401679090756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (A228058 (n + 1)).toNat

end

end A325809.P2723801401679090756

/-! ## A325809.P16148808449790583596

`A325807(A325379(n+1)+A325377(n+1))`
-/

namespace A325809.P16148808449790583596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A325809.P16148808449790583596

/-! ## A325809.P16083862521532779567

`A325807(∩[A159836(n+1), A191218(n+1)])`
-/

namespace A325809.P16083862521532779567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325809.P16083862521532779567

/-! ## A325809.P11943127852703263474

`A325807(∩[A191218(n+1), A230542(n+1)])`
-/

namespace A325809.P11943127852703263474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325809.P11943127852703263474

/-! ## A325809.P5923934233606369690

`A325807(∩[A191218(n+1), A336555(n+1)])`
-/

namespace A325809.P5923934233606369690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336555 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325807 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325809.P5923934233606369690

/-!
# A325811: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) where f(n) = [A034460(n), A325814(n)] for all other numbers, except f(p) = -1 for odd primes.

The programs for A325811, there is no canonical definition to state claims against.
-/

/-! ## A325811.P4687532617998051817

`A336157(n+1)+A015070(A151722(n))`
-/

namespace A325811.P4687532617998051817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336157 (n + 1) + A015070 (A151722 n).toNat

end

end A325811.P4687532617998051817

/-! ## A325811.P17032998460322675890

`A336157(n+1)+A151818(A151818(n))`
-/

namespace A325811.P17032998460322675890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336157 (n + 1) + A151818 (A151818 n).toNat

end

end A325811.P17032998460322675890

/-! ## A325811.P12738481911751809399

`A336157(n+1)+A060576(A036746(n+1))`
-/

namespace A325811.P12738481911751809399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336157 (n + 1) + A060576 (A036746 (n + 1)).toNat

end

end A325811.P12738481911751809399

/-! ## A325811.P17455111680606295005

`A336157(n+1)+A267084(A000032(n+1))`
-/

namespace A325811.P17455111680606295005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336157 (n + 1) + A267084 (A000032 (n + 1)).toNat

end

end A325811.P17455111680606295005

/-!
# A325812: Numbers k such that gcd(A034448(k)-k, k-A048146(k)) is equal to abs(k-A048146(k)).

The programs for A325812, there is no canonical definition to state claims against.
-/

/-! ## A325812.P10797432438928419252

`A257801(n+1)*A332220(A007505(n+1))`
-/

namespace A325812.P10797432438928419252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257801 (n + 1) * A332220 (A007505 (n + 1)).toNat

end

end A325812.P10797432438928419252

/-! ## A325812.P11392768911367546074

`or(A000079(n), A335127(A276456(n+1)))`
-/

namespace A325812.P11392768911367546074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A335127 (A276456 (n + 1)).toNat)

end

end A325812.P11392768911367546074

/-! ## A325812.P12928960026157295365

`A324383(A014137(n+3)+A002202(n+1))`
-/

namespace A325812.P12928960026157295365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A014137 (n + 3) + A002202 (n + 1)).toNat

end

end A325812.P12928960026157295365

/-!
# A325813: a(n) = gcd(A034448(n)-n, n-A048146(n)), where A034448 and A048146 are respectively the sum of unitary and non-unitary divisors of n.

The programs for A325813, the canonical program `A325813.P255509125670812564` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325813 has offset 1).

The definition of A325813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325813.P9140155605871759069

`gcd(A034460(n+1), A325814(n+1))`
-/

namespace A325813.P9140155605871759069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034460 (n + 1)) (A325814 (n + 1))

end

end A325813.P9140155605871759069

namespace A325813

/-- `gcd(A034460(n+1), A325814(n+1))` -/
def P9140155605871759069.Spec : Prop :=
  ∀ n, (P9140155605871759069.a n : ℤ) = A325813 (n + 1)

end A325813

/-! ## A325813.P255509125670812564

`gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325813

/-- `gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))` -/
def P255509125670812564.Spec : Prop :=
  ∀ n, (P255509125670812564.a n : ℤ) = A325813 (n + 1)

theorem P255509125670812564.correct : P255509125670812564.Spec := by
  intro n
  simp only [A325813, Nat.add_sub_cancel]

end A325813

/-! ## A325813.P13387309841458095486

`gcd(A033880(n+1), A063919(n+1))`
-/

namespace A325813.P13387309841458095486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A063919 (n + 1))

end

end A325813.P13387309841458095486

namespace A325813

/-- `gcd(A033880(n+1), A063919(n+1))` -/
def P13387309841458095486.Spec : Prop :=
  ∀ n, (P13387309841458095486.a n : ℤ) = A325813 (n + 1)

end A325813

/-! ## A325813.P6040491941050309295

`gcd(-A033879(n+1), -A325814(n+1))`
-/

namespace A325813.P6040491941050309295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033879 (n + 1)) (-A325814 (n + 1))

end

end A325813.P6040491941050309295

namespace A325813

/-- `gcd(-A033879(n+1), -A325814(n+1))` -/
def P6040491941050309295.Spec : Prop :=
  ∀ n, (P6040491941050309295.a n : ℤ) = A325813 (n + 1)

end A325813

/-! ## A325813.P7661074708808408105

`gcd(A345451(n+1)-n, abs(A033879(n+1)))`
-/

namespace A325813.P7661074708808408105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345451 (n + 1) - (n : ℤ)) |A033879 (n + 1)|

end

end A325813.P7661074708808408105

namespace A325813

/-- `gcd(A345451(n+1)-n, abs(A033879(n+1)))` -/
def P7661074708808408105.Spec : Prop :=
  ∀ n, (P7661074708808408105.a n : ℤ) = A325813 (n + 1)

end A325813

/-! ## A325813.P5216674229374756676

`gcd(A325814(n+1), A326068(A103517(n)))`
-/

namespace A325813.P5216674229374756676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325814 (n + 1)) (A326068 (A103517 n).toNat)

end

end A325813.P5216674229374756676

namespace A325813

/-- `gcd(A325814(n+1), A326068(A103517(n)))` -/
def P5216674229374756676.Spec : Prop :=
  ∀ n, (P5216674229374756676.a n : ℤ) = A325813 (n + 1)

end A325813

/-!
# A325814: a(n) = n - A048146(n), where A048146 is the sum of non-unitary divisors of n.

The programs for A325814, the canonical program `A325814.P16316630090321165520` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325814 has offset 1).

The definition of A325814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A325814.P16316630090321165520

`n+1-A048146(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A325814

/-- `n+1-A048146(n+1)` -/
def P16316630090321165520.Spec : Prop :=
  ∀ n, P16316630090321165520.a n = A325814 (n + 1)

theorem P16316630090321165520.correct : P16316630090321165520.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel]

end A325814

/-! ## A325814.P540079700746224643

`A033879(n+1)+A034460(n+1)`
-/

namespace A325814.P540079700746224643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A034460 (n + 1)

end

end A325814.P540079700746224643

namespace A325814

/-- `A033879(n+1)+A034460(n+1)` -/
def P540079700746224643.Spec : Prop :=
  ∀ n, P540079700746224643.a n = A325814 (n + 1)

theorem P540079700746224643.correct : P540079700746224643.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P540079700746224643.a, A325814.P16316630090321165520.a, A033879, A033879.P11735613842914743111.a, A034460, A034460.P1958235575820581513.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A034448, A034448.P17017727775393200719.a, A001065, A001065.P4097147489331274860.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P13019183517788521603

`1-∑{d}[n+1, A348513(#)]+n`
-/

namespace A325814.P13019183517788521603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A348513 d + (n : ℤ)

end

end A325814.P13019183517788521603

namespace A325814

/-- `1-∑{d}[n+1, A348513(#)]+n` -/
def P13019183517788521603.Spec : Prop :=
  ∀ n, P13019183517788521603.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P13208515942991132263

`A034448(n+1)-(∑{d}[n+1, #]-(n+1))`
-/

namespace A325814.P13208515942991132263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A325814.P13208515942991132263

namespace A325814

/-- `A034448(n+1)-(∑{d}[n+1, #]-(n+1))` -/
def P13208515942991132263.Spec : Prop :=
  ∀ n, P13208515942991132263.a n = A325814 (n + 1)

theorem P13208515942991132263.correct : P13208515942991132263.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P13208515942991132263.f1, A325814.P13208515942991132263.a, A325814.P16316630090321165520.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P2459302382326147258

`A129468(n+1)+A033885(n+1)`
-/

namespace A325814.P2459302382326147258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + A033885 (n + 1)

end

end A325814.P2459302382326147258

namespace A325814

/-- `A129468(n+1)+A033885(n+1)` -/
def P2459302382326147258.Spec : Prop :=
  ∀ n, P2459302382326147258.a n = A325814 (n + 1)

theorem P2459302382326147258.correct : P2459302382326147258.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P2459302382326147258.a, A325814.P16316630090321165520.a, A033885, A033885.P621255430935931612.a, A048146, A048146.P9985884013456677192.a, A129468, A129468.P11362039589036067826.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P7742558667767856571

`A389162(n+1)+A325314(n+1)`
-/

namespace A325814.P7742558667767856571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389162 (n + 1) + A325314 (n + 1)

end

end A325814.P7742558667767856571

namespace A325814

/-- `A389162(n+1)+A325314(n+1)` -/
def P7742558667767856571.Spec : Prop :=
  ∀ n, P7742558667767856571.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P5988527777223017982

`A034448(n+1)-A001065(n+1)`
-/

namespace A325814.P5988527777223017982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A001065 (n + 1)

end

end A325814.P5988527777223017982

namespace A325814

/-- `A034448(n+1)-A001065(n+1)` -/
def P5988527777223017982.Spec : Prop :=
  ∀ n, P5988527777223017982.a n = A325814 (n + 1)

theorem P5988527777223017982.correct : P5988527777223017982.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P5988527777223017982.a, A325814.P16316630090321165520.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P14308756812238170410

`A034460(n+1)-A033880(n+1)`
-/

namespace A325814.P14308756812238170410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) - A033880 (n + 1)

end

end A325814.P14308756812238170410

namespace A325814

/-- `A034460(n+1)-A033880(n+1)` -/
def P14308756812238170410.Spec : Prop :=
  ∀ n, P14308756812238170410.a n = A325814 (n + 1)

theorem P14308756812238170410.correct : P14308756812238170410.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P14308756812238170410.a, A325814.P16316630090321165520.a, A033880, A033880.P6005875780263802708.a, A034460, A034460.P1958235575820581513.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P11784372907048690306

`A098189(n+1)-A228947(n+1)`
-/

namespace A325814.P11784372907048690306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) - A228947 (n + 1)

end

end A325814.P11784372907048690306

namespace A325814

/-- `A098189(n+1)-A228947(n+1)` -/
def P11784372907048690306.Spec : Prop :=
  ∀ n, P11784372907048690306.a n = A325814 (n + 1)

theorem P11784372907048690306.correct : P11784372907048690306.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P11784372907048690306.a, A325814.P16316630090321165520.a, A048146, A048146.P9985884013456677192.a, A098189, A098189.P4675613756573831951.a, A228947, A228947.P1027786129053480284.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P219753343964619983

`A345451(n+1)+1-A001065(n+1)`
-/

namespace A325814.P219753343964619983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + (1 - A001065 (n + 1))

end

end A325814.P219753343964619983

namespace A325814

/-- `A345451(n+1)+1-A001065(n+1)` -/
def P219753343964619983.Spec : Prop :=
  ∀ n, P219753343964619983.a n = A325814 (n + 1)

theorem P219753343964619983.correct : P219753343964619983.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P219753343964619983.a, A325814.P16316630090321165520.a, A001065, A001065.P4097147489331274860.a, A048146, A048146.P9985884013456677192.a, A345451, A345451.P7254326500789221208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P972186701651191213

`2*A325978(n+1)-A325314(n+1)`
-/

namespace A325814.P972186701651191213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325978 (n + 1) - A325314 (n + 1)

end

end A325814.P972186701651191213

namespace A325814

/-- `2*A325978(n+1)-A325314(n+1)` -/
def P972186701651191213.Spec : Prop :=
  ∀ n, P972186701651191213.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P12932794402784773446

`A034448(n+1)-(A237588(n+1)+n)`
-/

namespace A325814.P12932794402784773446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A237588 (n + 1) + (n : ℤ))

end

end A325814.P12932794402784773446

namespace A325814

/-- `A034448(n+1)-(A237588(n+1)+n)` -/
def P12932794402784773446.Spec : Prop :=
  ∀ n, P12932794402784773446.a n = A325814 (n + 1)

theorem P12932794402784773446.correct : P12932794402784773446.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P12932794402784773446.a, A325814.P16316630090321165520.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A237588, A237588.P10590847318200798620.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P12242320497574960872

`A033879(n+1)+A345451(n+1)-n`
-/

namespace A325814.P12242320497574960872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A345451 (n + 1) - (n : ℤ))

end

end A325814.P12242320497574960872

namespace A325814

/-- `A033879(n+1)+A345451(n+1)-n` -/
def P12242320497574960872.Spec : Prop :=
  ∀ n, P12242320497574960872.a n = A325814 (n + 1)

theorem P12242320497574960872.correct : P12242320497574960872.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P12242320497574960872.a, A325814.P16316630090321165520.a, A033879, A033879.P11735613842914743111.a, A048146, A048146.P9985884013456677192.a, A345451, A345451.P7254326500789221208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A034448, A034448.P17017727775393200719.a, A001065, A001065.P4097147489331274860.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P9380891537721176462

`1-(A000203(n+1)-A034448(n+1))+n`
-/

namespace A325814.P9380891537721176462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000203 (n + 1) - A034448 (n + 1)) + (n : ℤ)

end

end A325814.P9380891537721176462

namespace A325814

/-- `1-(A000203(n+1)-A034448(n+1))+n` -/
def P9380891537721176462.Spec : Prop :=
  ∀ n, P9380891537721176462.a n = A325814 (n + 1)

theorem P9380891537721176462.correct : P9380891537721176462.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P9380891537721176462.a, A325814.P16316630090321165520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P2201427245673993824

`A034448(n+1)+A062249(n+1)-A007503(n+1)`
-/

namespace A325814.P2201427245673993824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A062249 (n + 1) - A007503 (n + 1))

end

end A325814.P2201427245673993824

namespace A325814

/-- `A034448(n+1)+A062249(n+1)-A007503(n+1)` -/
def P2201427245673993824.Spec : Prop :=
  ∀ n, P2201427245673993824.a n = A325814 (n + 1)

theorem P2201427245673993824.correct : P2201427245673993824.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P2201427245673993824.a, A325814.P16316630090321165520.a, A007503, A007503.P13484425310514315912.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A062249, A062249.P5473932307129171226.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-! ## A325814.P18324643290556910099

`A034448(n+1)+A325314(n+1)-A048250(n+1)`
-/

namespace A325814.P18324643290556910099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A325314 (n + 1) - A048250 (n + 1))

end

end A325814.P18324643290556910099

namespace A325814

/-- `A034448(n+1)+A325314(n+1)-A048250(n+1)` -/
def P18324643290556910099.Spec : Prop :=
  ∀ n, P18324643290556910099.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P15398326953493900781

`A034460(n+1)+A325314(n+1)-A325313(n+1)`
-/

namespace A325814.P15398326953493900781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325314 (n + 1) - A325313 (n + 1))

end

end A325814.P15398326953493900781

namespace A325814

/-- `A034460(n+1)+A325314(n+1)-A325313(n+1)` -/
def P15398326953493900781.Spec : Prop :=
  ∀ n, P15398326953493900781.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P7189521538660477586

`A034448(n+1)-(A325977(n+1)+A325974(n+1))`
-/

namespace A325814.P7189521538660477586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A325977 (n + 1) + A325974 (n + 1))

end

end A325814.P7189521538660477586

namespace A325814

/-- `A034448(n+1)-(A325977(n+1)+A325974(n+1))` -/
def P7189521538660477586.Spec : Prop :=
  ∀ n, P7189521538660477586.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P864124486518944278

`A034448(n+1)+A325978(n+1)-A325973(n+1)`
-/

namespace A325814.P864124486518944278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A325978 (n + 1) - A325973 (n + 1))

end

end A325814.P864124486518944278

namespace A325814

/-- `A034448(n+1)+A325978(n+1)-A325973(n+1)` -/
def P864124486518944278.Spec : Prop :=
  ∀ n, P864124486518944278.a n = A325814 (n + 1)

end A325814

/-! ## A325814.P14240208113811718637

`A034448(n+1)+A326128(n+1)-A326126(n+1)`
-/

namespace A325814.P14240208113811718637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A326128 (n + 1) - A326126 (n + 1))

end

end A325814.P14240208113811718637

namespace A325814

/-- `A034448(n+1)+A326128(n+1)-A326126(n+1)` -/
def P14240208113811718637.Spec : Prop :=
  ∀ n, P14240208113811718637.a n = A325814 (n + 1)

theorem P14240208113811718637.correct : P14240208113811718637.Spec := by
  intro n
  simp only [A325814, Nat.add_sub_cancel, A325814.P14240208113811718637.a, A325814.P16316630090321165520.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P8131970495124731496.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A325814

/-!
# A325815: a(n) = A324213(n) - A034444(n).

The programs for A325815, there is no canonical definition to state claims against.
-/

/-! ## A325815.P322598414671405520

`A324213(n+1)-A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325815.P322598414671405520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1) - A034444 (n + 1)

end

end A325815.P322598414671405520

/-! ## A325815.P12833235080998165914

`A324213(n+1)-2^A001221(n+1)`
-/

namespace A325815.P12833235080998165914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324213 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A325815.P12833235080998165914

/-! ## A325815.P11061729086809441147

`A324213(n+1)-A000005(∏{p}[n+1, #])`
-/

namespace A325815.P11061729086809441147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1) - A000005 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A325815.P11061729086809441147

/-! ## A325815.P6009000205115082595

`A324213(n+1)-A290855(∑{p}[n+1, gcd(n, #)])`
-/

namespace A325815.P6009000205115082595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1) - A290855 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A325815.P6009000205115082595

/-! ## A325815.P9898284709032598241

`A324213(n+1)-A000005(A007947(n+1))`
-/

namespace A325815.P9898284709032598241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1) - A000005 (A007947 (n + 1)).toNat

end

end A325815.P9898284709032598241

/-! ## A325815.P3643018850624326282

`A324213(n+1)-A000005(n+1-A066503(n+1))`
-/

namespace A325815.P3643018850624326282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (n + 1) - A000005 ((n + 1 : ℤ) - A066503 (n + 1)).toNat

end

end A325815.P3643018850624326282

/-!
# A325816: Number of ways to form the sum sigma(n) = x+y, so that n-x and n-y are not coprime, with x and y in range 0..sigma(n).

The programs for A325816, there is no canonical definition to state claims against.
-/

/-! ## A325816.P17869633544274276200

`1+A000203(n+1)-A324213(n+1)`
-/

namespace A325816.P17869633544274276200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) - A324213 (n + 1)

end

end A325816.P17869633544274276200

/-! ## A325816.P15625533229673850488

`A088580(n+1)-A324213(n+1)`
-/

namespace A325816.P15625533229673850488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A324213 (n + 1)

end

end A325816.P15625533229673850488

/-! ## A325816.P4584985475301496378

`ceil(sqrt(A258974(n+1))-A324213(n+1))`
-/

namespace A325816.P4584985475301496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A258974 (n + 1) : ℝ) - (A324213 (n + 1) : ℝ)⌉

end

end A325816.P4584985475301496378

/-! ## A325816.P3221312994146745918

`A088580(n+1)-(A325815(n+1)+A034444(n+1))`
-/

namespace A325816.P3221312994146745918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325815 (n + 1) + A034444 (n + 1))

end

end A325816.P3221312994146745918

/-! ## A325816.P13689175153398853789

`A008619(A074400(n+1))-A324213(n+1)`
-/

namespace A325816.P13689175153398853789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A074400 (n + 1)).toNat - A324213 (n + 1)

end

end A325816.P13689175153398853789

/-! ## A325816.P13315226366429722680

`A008611(A272027(n+1))-A324213(n+1)`
-/

namespace A325816.P13315226366429722680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A272027 (n + 1)).toNat - A324213 (n + 1)

end

end A325816.P13315226366429722680

/-!
# A325817: a(n) is the least k >= 0 such that n-k and n-(sigma(n)-k) are relatively prime.

The programs for A325817, there is no canonical definition to state claims against.
-/

/-! ## A325817.P12207336463521143571

`n+1-A325976(n+1)`
-/

namespace A325817.P12207336463521143571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A325976 (n + 1)

end

end A325817.P12207336463521143571

/-! ## A325817.P18142079024031561905

`A000203(n+1)-A325818(n+1)`
-/

namespace A325817.P18142079024031561905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325818 (n + 1)

end

end A325817.P18142079024031561905

/-! ## A325817.P7194427932185582050

`A001065(n+1)-A325826(n+1)`
-/

namespace A325817.P7194427932185582050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325826 (n + 1)

end

end A325817.P7194427932185582050

/-! ## A325817.P10620047108167146352

`A088580(n+1)-(A325818(n+1)+1)`
-/

namespace A325817.P10620047108167146352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325818 (n + 1) + 1)

end

end A325817.P10620047108167146352

/-! ## A325817.P17943589822344250550

`A319528(n+1)/8-A325818(n+1)`
-/

namespace A325817.P17943589822344250550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319528 (n + 1) : ℚ) / 8 - (A325818 (n + 1) : ℚ)

end

end A325817.P17943589822344250550

/-! ## A325817.P8692069123153542636

`abs(A325818(n+1)-A245092(2*n+1))`
-/

namespace A325817.P8692069123153542636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325818 (n + 1) - A245092 (2 * n + 1)|

end

end A325817.P8692069123153542636

/-! ## A325817.P3204657106773006740

`A000203(n+1)-(A325826(n+1)+n+1)`
-/

namespace A325817.P3204657106773006740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A325826 (n + 1) + (n + 1 : ℤ))

end

end A325817.P3204657106773006740

/-! ## A325817.P15525078292761551924

`A001065(n+1)+1+n-A325818(n+1)`
-/

namespace A325817.P15525078292761551924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325818 (n + 1)

end

end A325817.P15525078292761551924

/-! ## A325817.P11912345592884202522

`A237588(n+1)+Δ[n²]-A325818(n+1)`
-/

namespace A325817.P11912345592884202522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A325818 (n + 1)

end

end A325817.P11912345592884202522

/-! ## A325817.P7931666707759045174

`abs(A325818(n+1)-A064987(n+1)/(n+1))`
-/

namespace A325817.P7931666707759045174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A325818 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A325817.P7931666707759045174

/-! ## A325817.P17875659013399838389

`2*(n+1)-A033879(n+1)-A325818(n+1)`
-/

namespace A325817.P17875659013399838389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325818 (n + 1)

end

end A325817.P17875659013399838389

/-! ## A325817.P2072377962040459078

`A000203(n+1)%A325818(A000027(n+1))`
-/

namespace A325817.P2072377962040459078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A325818 (A000027 (n + 1)).toNat)

end

end A325817.P2072377962040459078

/-! ## A325817.P14278160993395092468

`A000010(n+1)+A051612(n+1)-A325818(n+1)`
-/

namespace A325817.P14278160993395092468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A325818 (n + 1))

end

end A325817.P14278160993395092468

/-! ## A325817.P8234588252360387509

`A034448(n+1)+A048146(n+1)-A325818(n+1)`
-/

namespace A325817.P8234588252360387509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325818 (n + 1))

end

end A325817.P8234588252360387509

/-! ## A325817.P6268803405244738986

`A000593(n+1)+A146076(n+1)-A325818(n+1)`
-/

namespace A325817.P6268803405244738986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325818 (n + 1))

end

end A325817.P6268803405244738986

/-! ## A325817.P4443075051421371023

`A029837(n+1)+A163298(n+1)-A325818(n+1)`
-/

namespace A325817.P4443075051421371023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A163298 (n + 1) - A325818 (n + 1))

end

end A325817.P4443075051421371023

/-! ## A325817.P7117264315962588271

`A163297(n+1)-(A325818(n+1)+A029837(n+1))`
-/

namespace A325817.P7117264315962588271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163297 (n + 1) - (A325818 (n + 1) + A029837 (n + 1))

end

end A325817.P7117264315962588271

/-! ## A325817.P3740037097656838304

`A325965(n+1)+A325966(n+1)-A325818(n+1)`
-/

namespace A325817.P3740037097656838304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A325818 (n + 1))

end

end A325817.P3740037097656838304

/-! ## A325817.P14204781133478869415

`A325967(n+1)+A325968(n+1)-A325818(n+1)`
-/

namespace A325817.P14204781133478869415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1) + (A325968 (n + 1) - A325818 (n + 1))

end

end A325817.P14204781133478869415

/-! ## A325817.P10773514280024792742

`A325968(n+1)-(A325959(n+1)+A325826(n+1))`
-/

namespace A325817.P10773514280024792742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) - (A325959 (n + 1) + A325826 (n + 1))

end

end A325817.P10773514280024792742

/-!
# A325818: a(n) is the largest k <= sigma(n) such that n-k and n-(sigma(n)-k) are relatively prime.

The programs for A325818, there is no canonical definition to state claims against.
-/

/-! ## A325818.P5658296929144458634

`n+1+A325826(n+1)`
-/

namespace A325818.P5658296929144458634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A325826 (n + 1)

end

end A325818.P5658296929144458634

/-! ## A325818.P2207542014088453378

`A000203(n+1)-A325817(n+1)`
-/

namespace A325818.P2207542014088453378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325817 (n + 1)

end

end A325818.P2207542014088453378

/-! ## A325818.P6254860917452309073

`Δ[A160664(n)]-A325817(n+1)`
-/

namespace A325818.P6254860917452309073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A325817 (n + 1)

end

end A325818.P6254860917452309073

/-! ## A325818.P6795765574182983322

`A325976(n+1)+A001065(n+1)`
-/

namespace A325818.P6795765574182983322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1) + A001065 (n + 1)

end

end A325818.P6795765574182983322

/-! ## A325818.P2582103742208672625

`A088580(n+1)-(A325817(n+1)+1)`
-/

namespace A325818.P2582103742208672625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A325817 (n + 1) + 1)

end

end A325818.P2582103742208672625

/-! ## A325818.P9110722665870039357

`A245092(2*n+1)-A325817(n+1)`
-/

namespace A325818.P9110722665870039357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A325817 (n + 1)

end

end A325818.P9110722665870039357

/-! ## A325818.P9955094946038632324

`A001065(n+1)+1+n-A325817(n+1)`
-/

namespace A325818.P9955094946038632324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A325817 (n + 1)

end

end A325818.P9955094946038632324

/-! ## A325818.P8199779437145072303

`A237588(n+1)+Δ[n²]-A325817(n+1)`
-/

namespace A325818.P8199779437145072303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A325817 (n + 1)

end

end A325818.P8199779437145072303

/-! ## A325818.P16358376980252177638

`abs(A325817(n+1)-A064987(n+1)/(n+1))`
-/

namespace A325818.P16358376980252177638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A325817 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A325818.P16358376980252177638

/-! ## A325818.P999628262939601318

`2*(n+1)-A033879(n+1)-A325817(n+1)`
-/

namespace A325818.P999628262939601318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A325817 (n + 1)

end

end A325818.P999628262939601318

/-! ## A325818.P7992221782164692877

`A325967(n+1)+A325976(n+1)+A325969(n+1)`
-/

namespace A325818.P7992221782164692877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1) + (A325976 (n + 1) + A325969 (n + 1))

end

end A325818.P7992221782164692877

/-! ## A325818.P9562451524308302708

`A000010(n+1)+A051612(n+1)-A325817(n+1)`
-/

namespace A325818.P9562451524308302708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A325817 (n + 1))

end

end A325818.P9562451524308302708

/-! ## A325818.P17671010220792181542

`A034448(n+1)+A048146(n+1)-A325817(n+1)`
-/

namespace A325818.P17671010220792181542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325817 (n + 1))

end

end A325818.P17671010220792181542

/-! ## A325818.P8521261422025424395

`A000593(n+1)+A146076(n+1)-A325817(n+1)`
-/

namespace A325818.P8521261422025424395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A325817 (n + 1))

end

end A325818.P8521261422025424395

/-! ## A325818.P17195555601245023414

`A325965(n+1)+A325966(n+1)-A325817(n+1)`
-/

namespace A325818.P17195555601245023414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1) + (A325966 (n + 1) - A325817 (n + 1))

end

end A325818.P17195555601245023414

/-! ## A325818.P13064778756818541542

`A325967(n+1)+A325968(n+1)-A325817(n+1)`
-/

namespace A325818.P13064778756818541542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1) + (A325968 (n + 1) - A325817 (n + 1))

end

end A325818.P13064778756818541542

/-! ## A325818.P6281744954608908935

`A325968(n+1)+A325976(n+1)-A325959(n+1)`
-/

namespace A325818.P6281744954608908935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) + (A325976 (n + 1) - A325959 (n + 1))

end

end A325818.P6281744954608908935

/-! ## A325818.P11386423258595933981

`abs(A325817(n+1)-A245093(∑[n+1]))`
-/

namespace A325818.P11386423258595933981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325817 (n + 1) - A245093 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A325818.P11386423258595933981

/-! ## A325818.P5921523435117996596

`A074883(eq[n, A074909(n+2)])-A325817(n+1)`
-/

namespace A325818.P5921523435117996596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A325817 (n + 1)

end

end A325818.P5921523435117996596

/-!
# A325819: a(n) = A324213(A228058(n)).

The programs for A325819, there is no canonical definition to state claims against.
-/

/-! ## A325819.P6433454052909758696

`A324213(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325819.P6433454052909758696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A228058 (n + 1)).toNat

end

end A325819.P6433454052909758696

/-! ## A325819.P11014540786491530999

`A324213(A325379(n+1)+A325377(n+1))`
-/

namespace A325819.P11014540786491530999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A325819.P11014540786491530999

/-! ## A325819.P8446072070807609763

`A324213(∩[A159836(n+1), A191218(n+1)])`
-/

namespace A325819.P8446072070807609763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325819.P8446072070807609763

/-! ## A325819.P16168573848368477047

`A324213(∩[A191218(n+1), A230542(n+1)])`
-/

namespace A325819.P16168573848368477047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230542 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A325819.P16168573848368477047

/-! ## A325819.P9008789263976162222

`A324213(A325319(n+1)+A325377(n+1)-A325320(n+1))`
-/

namespace A325819.P9008789263976162222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A325319 (n + 1) + (A325377 (n + 1) - A325320 (n + 1))).toNat

end

end A325819.P9008789263976162222

/-! ## A325819.P7990397511371536518

`A324213(A325377(n+1)+A325378(n+1)-2*A325320(n+1))`
-/

namespace A325819.P7990397511371536518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A325377 (n + 1) + (A325378 (n + 1) - 2 * A325320 (n + 1))).toNat

end

end A325819.P7990397511371536518

/-!
# A325820: Multiplication table for carryless product i X j in base 3 for i >= 0 and j >= 0, read by antidiagonals.

The programs for A325820, there is no canonical definition to state claims against.
-/

/-! ## A325820.P5067118834234891577

`A004247(n)%A349548(n+1)`
-/

namespace A325820.P5067118834234891577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004247 n) (A349548 (n + 1))

end

end A325820.P5067118834234891577

/-! ## A325820.P3207846691244568172

`A059692(n)%A349548(n+1)`
-/

namespace A325820.P3207846691244568172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059692 n) (A349548 (n + 1))

end

end A325820.P3207846691244568172

/-! ## A325820.P12323104661344945922

`A336225(n)%A349548(n+1)`
-/

namespace A325820.P12323104661344945922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336225 n) (A349548 (n + 1))

end

end A325820.P12323104661344945922

/-! ## A325820.P7809764938642726674

`A391365(n)%A349548(n+1)`
-/

namespace A325820.P7809764938642726674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391365 n) (A349548 (n + 1))

end

end A325820.P7809764938642726674

/-! ## A325820.P15821513226044195216

`A004247(n)%A094670(A294783(n))`
-/

namespace A325820.P15821513226044195216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004247 n) (A094670 (A294783 n).toNat)

end

end A325820.P15821513226044195216

/-!
# A325821: Multiplication table for carryless product i X j in base 3 for i >= 1 and j >= 1, read by antidiagonals.

The programs for A325821, there is no canonical definition to state claims against.
-/

/-! ## A325821.P13365500193176474067

`A325820(eq[0, A103451(n)])`
-/

namespace A325821.P13365500193176474067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325821.P13365500193176474067

/-! ## A325821.P9730027648460707764

`A325820(eq[0, A103452(n)])`
-/

namespace A325821.P9730027648460707764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325821.P9730027648460707764

/-! ## A325821.P2907972500141189070

`A325820(lt[0, A325820(n)])`
-/

namespace A325821.P2907972500141189070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A325821.P2907972500141189070

/-! ## A325821.P15968097712825126047

`A325820(eq[8, A278545(n+1)])`
-/

namespace A325821.P15968097712825126047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A325821.P15968097712825126047

/-! ## A325821.P10984035672563862784

`A325820(A140978(n+1)-n)`
-/

namespace A325821.P10984035672563862784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A325821.P10984035672563862784

/-! ## A325821.P2185505510443169259

`A325820(2*A014132(n+1)-n)`
-/

namespace A325821.P2185505510443169259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A325821.P2185505510443169259

/-! ## A325821.P666031420310867403

`A325820(A014132(A014132(n+1)))`
-/

namespace A325821.P666031420310867403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A325821.P666031420310867403

/-! ## A325821.P6662294127185630141

`A325820(eq[A023532(n), A035214(n)])`
-/

namespace A325821.P6662294127185630141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325821.P6662294127185630141

/-!
# A325823: Sum of unitary proper divisors of A228058(n): a(n) = A034460(A228058(n)).

The programs for A325823, there is no canonical definition to state claims against.
-/

/-! ## A325823.P2891083128781438526

`A325824(n+1)-A325379(n+1)`
-/

namespace A325823.P2891083128781438526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - A325379 (n + 1)

end

end A325823.P2891083128781438526

/-! ## A325823.P2167816561849758151

`A034460(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325823.P2167816561849758151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A228058 (n + 1)).toNat

end

end A325823.P2167816561849758151

/-! ## A325823.P4066266109147834544

`A389198(n+1)-A228058(n+1)`
-/

namespace A325823.P4066266109147834544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - A228058 (n + 1)

end

end A325823.P4066266109147834544

/-! ## A325823.P7313452444784874424

`A389217(n+1)+A389217(n+1)+A325319(n+1)`
-/

namespace A325823.P7313452444784874424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (A389217 (n + 1) + A325319 (n + 1))

end

end A325823.P7313452444784874424

/-! ## A325823.P16595916096700131272

`A325377(n+1)+A325824(n+1)-A228058(n+1)`
-/

namespace A325823.P16595916096700131272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + (A325824 (n + 1) - A228058 (n + 1))

end

end A325823.P16595916096700131272

/-! ## A325823.P8029940588096247055

`A325320(n+1)+A325824(n+1)-A325319(n+1)`
-/

namespace A325823.P8029940588096247055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325320 (n + 1) + (A325824 (n + 1) - A325319 (n + 1))

end

end A325823.P8029940588096247055

/-! ## A325823.P4062994567370350897

`A325824(n+1)+A389217(n+1)-A389218(n+1)`
-/

namespace A325823.P4062994567370350897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) + (A389217 (n + 1) - A389218 (n + 1))

end

end A325823.P4062994567370350897

/-! ## A325823.P18068033156416379617

`A063919(A228058(2*n+1-n))`
-/

namespace A325823.P18068033156416379617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (A228058 (2 * n + 1 - n)).toNat

end

end A325823.P18068033156416379617

/-! ## A325823.P11864022426182366984

`A034460(A325379(n+1)+A325377(n+1))`
-/

namespace A325823.P11864022426182366984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A325823.P11864022426182366984

/-! ## A325823.P1654823608976058157

`A063919(A228058(n+1))%A036923(n+1)`
-/

namespace A325823.P1654823608976058157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063919 (A228058 (n + 1)).toNat) (A036923 (n + 1))

end

end A325823.P1654823608976058157

/-! ## A325823.P6938895469006135988

`A063919(A228058(n+1)%A329935(n+1))`
-/

namespace A325823.P6938895469006135988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (Int.tmod (A228058 (n + 1)) (A329935 (n + 1))).toNat

end

end A325823.P6938895469006135988

/-! ## A325823.P13366577649839034663

`A325824(n+1)-A033879(A228058(n+1))`
-/

namespace A325823.P13366577649839034663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) - A033879 (A228058 (n + 1)).toNat

end

end A325823.P13366577649839034663

/-! ## A325823.P12248097755813167424

`A325814(A228058(n+1))-A325379(n+1)`
-/

namespace A325823.P12248097755813167424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A228058 (n + 1)).toNat - A325379 (n + 1)

end

end A325823.P12248097755813167424

/-!
# A325824: a(n) = A325814(A228058(n)).

The programs for A325824, there is no canonical definition to state claims against.
-/

/-! ## A325824.P5902815026277310330

`A325379(n+1)+A325823(n+1)`
-/

namespace A325824.P5902815026277310330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + A325823 (n + 1)

end

end A325824.P5902815026277310330

/-! ## A325824.P16803754827851379588

`A325814(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325824.P16803754827851379588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A228058 (n + 1)).toNat

end

end A325824.P16803754827851379588

/-! ## A325824.P122115783486689061

`A389198(n+1)-A325377(n+1)`
-/

namespace A325824.P122115783486689061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - A325377 (n + 1)

end

end A325824.P122115783486689061

/-! ## A325824.P3807033114376849528

`A325319(n+1)+A389218(n+1)+A389217(n+1)`
-/

namespace A325824.P3807033114376849528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389218 (n + 1) + A389217 (n + 1))

end

end A325824.P3807033114376849528

/-! ## A325824.P2461265386840832574

`A228058(n+1)+A325823(n+1)-A325377(n+1)`
-/

namespace A325824.P2461265386840832574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325823 (n + 1) - A325377 (n + 1))

end

end A325824.P2461265386840832574

/-! ## A325824.P14020499816793981216

`A325379(n+1)+A389198(n+1)-A228058(n+1)`
-/

namespace A325824.P14020499816793981216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + (A389198 (n + 1) - A228058 (n + 1))

end

end A325824.P14020499816793981216

/-! ## A325824.P13733990826637479155

`A325319(n+1)+A325823(n+1)-A325320(n+1)`
-/

namespace A325824.P13733990826637479155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A325823 (n + 1) - A325320 (n + 1))

end

end A325824.P13733990826637479155

/-! ## A325824.P11760089833246443495

`A389198(n+1)+A389208(n+1)-A389206(n+1)`
-/

namespace A325824.P11760089833246443495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) + (A389208 (n + 1) - A389206 (n + 1))

end

end A325824.P11760089833246443495

/-! ## A325824.P15289912585445334318

`A325379(n+1)+A034460(A228058(n+1))`
-/

namespace A325824.P15289912585445334318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + A034460 (A228058 (n + 1)).toNat

end

end A325824.P15289912585445334318

/-! ## A325824.P7323204866820392784

`A325379(n+1)+A034460(A325379(n+1)+A325377(n+1))`
-/

namespace A325824.P7323204866820392784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325379 (n + 1) + A034460 (A325379 (n + 1) + A325377 (n + 1)).toNat

end

end A325824.P7323204866820392784

/-! ## A325824.P10762230019038769675

`A325823(n+1)+A033879(A228058(n+1))`
-/

namespace A325824.P10762230019038769675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325823 (n + 1) + A033879 (A228058 (n + 1)).toNat

end

end A325824.P10762230019038769675

/-! ## A325824.P14279327690225374959

`A325814(A389198(n+1)-A325823(n+1))`
-/

namespace A325824.P14279327690225374959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (A389198 (n + 1) - A325823 (n + 1)).toNat

end

end A325824.P14279327690225374959

/-! ## A325824.P15192339992106206074

`A034448(A228058(n+1))-A325377(n+1)`
-/

namespace A325824.P15192339992106206074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A228058 (n + 1)).toNat - A325377 (n + 1)

end

end A325824.P15192339992106206074

/-!
# A325825: Square array giving the monic polynomial q satisfying q = gcd(P(x),P(y)) where P(x) and P(y) are polynomials in ring GF(3)[X] with coefficients in {0,1,2} given by the ternary expansions of x and y. The polynomial q is converted back to a ternary number, and then expressed in decimal.

The programs for A325825, there is no canonical definition to state claims against.
-/

/-! ## A325825.P10346854566219270530

`A137926(A003989(n+1)%A269983(n+1))`
-/

namespace A325825.P10346854566219270530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137926 (Int.tmod (A003989 (n + 1)) (A269983 (n + 1))).toNat

end

end A325825.P10346854566219270530

/-! ## A325825.P15303724812315374136

`A137926(A287957(n+1)%A269983(n+1))`
-/

namespace A325825.P15303724812315374136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137926 (Int.tmod (A287957 (n + 1)) (A269983 (n + 1))).toNat

end

end A325825.P15303724812315374136

/-! ## A325825.P13753220855607720308

`A028288(A003989(n+1))%A324700(n+3)`
-/

namespace A325825.P13753220855607720308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028288 (A003989 (n + 1)).toNat) (A324700 (n + 3))

end

end A325825.P13753220855607720308

/-! ## A325825.P6198480299875614829

`A002487(A184097(n+1))%A195923(n+1)`
-/

namespace A325825.P6198480299875614829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A184097 (n + 1)).toNat) (A195923 (n + 1))

end

end A325825.P6198480299875614829

/-! ## A325825.P7962476359917263753

`A349164(A003989(n+1))%A220805(n+4)`
-/

namespace A325825.P7962476359917263753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349164 (A003989 (n + 1)).toNat) (A220805 (n + 4))

end

end A325825.P7962476359917263753

/-!
# A325826: a(n) is the largest k <= sigma(n)-n such that k and (2n-sigma(n)) [= A033879(n)] are relatively prime.

The programs for A325826, there is no canonical definition to state claims against.
-/

/-! ## A325826.P14873266646301931496

`A325818(n+1)-(n+1)`
-/

namespace A325826.P14873266646301931496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325818 (n + 1) - (n + 1 : ℤ)

end

end A325826.P14873266646301931496

/-! ## A325826.P14022995827116398970

`A001065(n+1)-A325817(n+1)`
-/

namespace A325826.P14022995827116398970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A325817 (n + 1)

end

end A325826.P14022995827116398970

/-! ## A325826.P6415901157276322299

`A325976(n+1)-A033879(n+1)`
-/

namespace A325826.P6415901157276322299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1) - A033879 (n + 1)

end

end A325826.P6415901157276322299

/-! ## A325826.P2256829726320772084

`A325976(n+1)+A033880(n+1)`
-/

namespace A325826.P2256829726320772084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1) + A033880 (n + 1)

end

end A325826.P2256829726320772084

/-! ## A325826.P9920519169222321436

`A237588(n+1)-A325817(n+1)+n`
-/

namespace A325826.P9920519169222321436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - A325817 (n + 1) + (n : ℤ)

end

end A325826.P9920519169222321436

/-! ## A325826.P9516683295182332308

`A325967(n+1)+A325969(n+1)-A325817(n+1)`
-/

namespace A325826.P9516683295182332308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325967 (n + 1) + (A325969 (n + 1) - A325817 (n + 1))

end

end A325826.P9516683295182332308

/-! ## A325826.P7522991751369080811

`A325968(n+1)-(A325959(n+1)+A325817(n+1))`
-/

namespace A325826.P7522991751369080811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325968 (n + 1) - (A325959 (n + 1) + A325817 (n + 1))

end

end A325826.P7522991751369080811

/-! ## A325826.P4998282004772088480

`A325969(n+1)+A325976(n+1)-A325959(n+1)`
-/

namespace A325826.P4998282004772088480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325969 (n + 1) + (A325976 (n + 1) - A325959 (n + 1))

end

end A325826.P4998282004772088480

/-! ## A325826.P703243085046197738

`A325976(n+1)-A326068(2*(n+1))`
-/

namespace A325826.P703243085046197738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1) - A326068 (2 * (n + 1))

end

end A325826.P703243085046197738

/-!
# A325827: a(n) = A325825(2*n, sigma(n)).

The programs for A325827, there is no canonical definition to state claims against.
-/

/-! ## A325827.P7789387834093937913

`gcd(A015237(A219939(n+1)), A306682(n+1))`
-/

namespace A325827.P7789387834093937913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015237 (A219939 (n + 1)).toNat) (A306682 (n + 1))

end

end A325827.P7789387834093937913

/-! ## A325827.P3450987230390859175

`A306682(n+1)-A025469(A084449(n))`
-/

namespace A325827.P3450987230390859175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1) - A025469 (A084449 n).toNat

end

end A325827.P3450987230390859175

/-! ## A325827.P1246036403948288766

`gcd(A045753(A140299(n)), A306682(n+1))`
-/

namespace A325827.P1246036403948288766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045753 (A140299 n).toNat) (A306682 (n + 1))

end

end A325827.P1246036403948288766

/-! ## A325827.P11906426406478639303

`A085731(A128396(n+1)*A306682(n+1))`
-/

namespace A325827.P11906426406478639303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A128396 (n + 1) * A306682 (n + 1)).toNat

end

end A325827.P11906426406478639303

/-! ## A325827.P6627702209362567535

`A348610(A003642(n+1)^A344704(n+1))`
-/

namespace A325827.P6627702209362567535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (SequenceMachineLib.roundAway ((A003642 (n + 1) : ℚ) ^ (A344704 (n + 1) : ℤ))).toNat

end

end A325827.P6627702209362567535

/-!
# A325828: Number of integer partitions of n having exactly n + 1 submultisets.

The programs for A325828, there is no canonical definition to state claims against.
-/

/-! ## A325828.P13294867336780847964

`A062977(A085294(n))+A002033(n)`
-/

namespace A325828.P13294867336780847964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A085294 n).toNat + A002033 n

end

end A325828.P13294867336780847964

/-! ## A325828.P18387021687121402710

`A062977(A085294(n))+Δ[A173382(n)]`
-/

namespace A325828.P18387021687121402710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A085294 n).toNat + (f1 (n + 1) - f1 n)

end

end A325828.P18387021687121402710

/-! ## A325828.P16972302884282453447

`A175495(A172543(n+1)+A002033(n))`
-/

namespace A325828.P16972302884282453447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (A172543 (n + 1) + A002033 n).toNat

end

end A325828.P16972302884282453447

/-! ## A325828.P17557203778780287269

`A262609(A172543(n+1)+A002033(n))`
-/

namespace A325828.P17557203778780287269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262609 (A172543 (n + 1) + A002033 n).toNat

end

end A325828.P17557203778780287269

/-! ## A325828.P9040713400525420515

`A241465(A375023(n))+A002033(n)`
-/

namespace A325828.P9040713400525420515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241465 (A375023 n).toNat + A002033 n

end

end A325828.P9040713400525420515

/-!
# A325829: "Sloping nonary numbers": write numbers in nonary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A325829, there is no canonical definition to state claims against.
-/

/-! ## A325829.P1099005052580710995

`A219257(Δ[A359651(n+1)])+n`
-/

namespace A325829.P1099005052580710995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A325829.P1099005052580710995

/-! ## A325829.P8778347172653609923

`A335182(A000265(n+1))%A339002(n+1)+n-1`
-/

namespace A325829.P8778347172653609923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335182 (A000265 (n + 1)).toNat) (A339002 (n + 1)) + ((n : ℤ) - 1)

end

end A325829.P8778347172653609923

/-! ## A325829.P10747760036005898366

`A004086(A037124(n+1))+1+n-dr(n+2)`
-/

namespace A325829.P10747760036005898366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A037124 (n + 1)).toNat + 1 + (n : ℤ) - (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ)

end

end A325829.P10747760036005898366

/-! ## A325829.P14271903289864330387

`A004086(A051885(n)+1)+1+n-dr(n+2)`
-/

namespace A325829.P14271903289864330387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A051885 n + 1).toNat + 1 + (n : ℤ) - (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ)

end

end A325829.P14271903289864330387

/-! ## A325829.P2512826140387896368

`A004086(A051885(n)+1)+1+n-A177274(n+1)`
-/

namespace A325829.P2512826140387896368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A051885 n + 1).toNat + 1 + (n : ℤ) - A177274 (n + 1)

end

end A325829.P2512826140387896368

/-!
# A325830: Number of integer partitions of 2*n having exactly 2*n submultisets.

The programs for A325830, there is no canonical definition to state claims against.
-/

/-! ## A325830.P4016399963122201975

`A325832(2*n)-A325831(2*n)`
-/

namespace A325830.P4016399963122201975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325832 (2 * n) - A325831 (2 * n)

end

end A325830.P4016399963122201975

/-! ## A325830.P1360110078412956824

`A325834(2*n)-A325833(2*n)`
-/

namespace A325830.P1360110078412956824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325834 (2 * n) - A325833 (2 * n)

end

end A325830.P1360110078412956824

/-!
# A325831: Number of integer partitions of n whose number of submultisets is greater than n.

The programs for A325831, there is no canonical definition to state claims against.
-/

/-! ## A325831.P14756063464070806428

`A000041(n)-A325834(n)`
-/

namespace A325831.P14756063464070806428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325834 n

end

end A325831.P14756063464070806428

/-! ## A325831.P9548418318827257446

`A035363(2*n)-A325834(n)`
-/

namespace A325831.P9548418318827257446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A325834 n

end

end A325831.P9548418318827257446

/-! ## A325831.P12216930219067495377

`∑[A085811(n+3)]-A325834(n)`
-/

namespace A325831.P12216930219067495377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325834 n

end

end A325831.P12216930219067495377

/-! ## A325831.P12675347169529816602

`A047967(n)+A000009(n)-A325834(n)`
-/

namespace A325831.P12675347169529816602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n - A325834 n

end

end A325831.P12675347169529816602

/-! ## A325831.P8888653519892203593

`A027187(n)+A027193(n)-A325834(n)`
-/

namespace A325831.P8888653519892203593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A325834 n)

end

end A325831.P8888653519892203593

/-! ## A325831.P6394329490338225358

`A238343(A000217(n))-A325834(n)`
-/

namespace A325831.P6394329490338225358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A325834 n

end

end A325831.P6394329490338225358

/-!
# A325832: Number of integer partitions of n whose number of submultisets is greater than or equal to n.

The programs for A325832, there is no canonical definition to state claims against.
-/

/-! ## A325832.P14153632826691716569

`A000041(n)-A325833(n)`
-/

namespace A325832.P14153632826691716569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325833 n

end

end A325832.P14153632826691716569

/-! ## A325832.P14009852147099865237

`sqrt(A001255(n))-A325833(n)`
-/

namespace A325832.P14009852147099865237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325833 n : ℝ)

end

end A325832.P14009852147099865237

/-! ## A325832.P4753534400922833843

`∑[A002865(n)]-A325833(n)`
-/

namespace A325832.P4753534400922833843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325833 n

end

end A325832.P4753534400922833843

/-! ## A325832.P1844365877034619759

`A035444(A008586(n))-A325833(n)`
-/

namespace A325832.P1844365877034619759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A325833 n

end

end A325832.P1844365877034619759

/-! ## A325832.P13240886437401374814

`A000009(n)+A047967(n)-A325833(n)`
-/

namespace A325832.P13240886437401374814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A325833 n)

end

end A325832.P13240886437401374814

/-! ## A325832.P3171975854609346123

`A000726(n)+A295341(n)-A325833(n)`
-/

namespace A325832.P3171975854609346123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A325833 n)

end

end A325832.P3171975854609346123

/-! ## A325832.P2182107469814772286

`A239259(n)+A239263(n)-A325833(n)`
-/

namespace A325832.P2182107469814772286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A325833 n)

end

end A325832.P2182107469814772286

/-! ## A325832.P17092057489944738846

`A239260(n)+A239262(n)-A325833(n)`
-/

namespace A325832.P17092057489944738846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A325833 n)

end

end A325832.P17092057489944738846

/-! ## A325832.P15045552719011693511

`A325831(n)+A325834(n)-A325833(n)`
-/

namespace A325832.P15045552719011693511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 n + (A325834 n - A325833 n)

end

end A325832.P15045552719011693511

/-! ## A325832.P16227725164814190577

`A318284(A008578(n+1))-A325833(n)`
-/

namespace A325832.P16227725164814190577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A008578 (n + 1)).toNat - A325833 n

end

end A325832.P16227725164814190577

/-!
# A325833: Number of integer partitions of n whose number of submultisets is less than n.

The programs for A325833, there is no canonical definition to state claims against.
-/

/-! ## A325833.P4647691415380691575

`A000041(n)-A325832(n)`
-/

namespace A325833.P4647691415380691575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325832 n

end

end A325833.P4647691415380691575

/-! ## A325833.P551535211382996407

`sqrt(A001255(n))-A325832(n)`
-/

namespace A325833.P551535211382996407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325832 n : ℝ)

end

end A325833.P551535211382996407

/-! ## A325833.P16708912632883358615

`∑[A002865(n)]-A325832(n)`
-/

namespace A325833.P16708912632883358615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325832 n

end

end A325833.P16708912632883358615

/-! ## A325833.P866198277065520161

`A000065(n)+1-A325832(n)`
-/

namespace A325833.P866198277065520161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A325832 n)

end

end A325833.P866198277065520161

/-! ## A325833.P4787612878669582854

`A000041(n)%A325832(A028310(n))`
-/

namespace A325833.P4787612878669582854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) (A325832 (A028310 n).toNat)

end

end A325833.P4787612878669582854

/-! ## A325833.P191969807380716273

`A000009(n)+A047967(n)-A325832(n)`
-/

namespace A325833.P191969807380716273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A325832 n)

end

end A325833.P191969807380716273

/-! ## A325833.P10502873947874792876

`A000726(n)+A295341(n)-A325832(n)`
-/

namespace A325833.P10502873947874792876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A325832 n)

end

end A325833.P10502873947874792876

/-! ## A325833.P14033034342402923539

`A325831(n)+A325834(n)-A325832(n)`
-/

namespace A325833.P14033034342402923539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 n + (A325834 n - A325832 n)

end

end A325833.P14033034342402923539

/-! ## A325833.P3090672123070115799

`A103923(∑[n])-A325832(n)`
-/

namespace A325833.P3090672123070115799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A325832 n

end

end A325833.P3090672123070115799

/-!
# A325834: Number of integer partitions of n whose number of submultisets is less than or equal to n.

The programs for A325834, there is no canonical definition to state claims against.
-/

/-! ## A325834.P8307256170103349614

`A000041(n)-A325831(n)`
-/

namespace A325834.P8307256170103349614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A325831 n

end

end A325834.P8307256170103349614

/-! ## A325834.P15306323737631021186

`sqrt(A001255(n))-A325831(n)`
-/

namespace A325834.P15306323737631021186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A325831 n : ℝ)

end

end A325834.P15306323737631021186

/-! ## A325834.P7920262137817076781

`∑[A002865(n)]-A325831(n)`
-/

namespace A325834.P7920262137817076781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325831 n

end

end A325834.P7920262137817076781

/-! ## A325834.P10806849180943817501

`A035363(2*n)-A325831(n)`
-/

namespace A325834.P10806849180943817501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A325831 n

end

end A325834.P10806849180943817501

/-! ## A325834.P13198490627152467895

`A000701(n)+A046682(n)-A325831(n)`
-/

namespace A325834.P13198490627152467895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A325831 n)

end

end A325834.P13198490627152467895

/-! ## A325834.P6013896998225708913

`A000009(n)+A047967(n)-A325831(n)`
-/

namespace A325834.P6013896998225708913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A325831 n)

end

end A325834.P6013896998225708913

/-! ## A325834.P3123545597445589617

`A000726(n)+A295341(n)-A325831(n)`
-/

namespace A325834.P3123545597445589617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A325831 n)

end

end A325834.P3123545597445589617

/-! ## A325834.P13641115107466812735

`A239259(n)+A239263(n)-A325831(n)`
-/

namespace A325834.P13641115107466812735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A325831 n)

end

end A325834.P13641115107466812735

/-! ## A325834.P14544782892634708413

`A239260(n)+A239262(n)-A325831(n)`
-/

namespace A325834.P14544782892634708413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A325831 n)

end

end A325834.P14544782892634708413

/-! ## A325834.P3390882188519884493

`A325832(n)+A325833(n)-A325831(n)`
-/

namespace A325834.P3390882188519884493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325832 n + (A325833 n - A325831 n)

end

end A325834.P3390882188519884493

/-! ## A325834.P17467930496451325263

`A026794(A000124(n))-A325831(n)`
-/

namespace A325834.P17467930496451325263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A000124 n).toNat - A325831 n

end

end A325834.P17467930496451325263

/-!
# A325837: The number of coreful divisors of n that are exponentially odd numbers (A268335).

The programs for A325837, the canonical program `A325837.P10403141756841379382` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325837 has offset 1).

The definition of A325837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325837.P10403141756841379382

`A046951(A003557(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A325837

/-- `A046951(A003557(n+1))` -/
def P10403141756841379382.Spec : Prop :=
  ∀ n, P10403141756841379382.a n = A325837 (n + 1)

theorem P10403141756841379382.correct : P10403141756841379382.Spec := by
  intro n
  simp only [A325837, Nat.add_sub_cancel]

end A325837

/-! ## A325837.P4575659655541307980

`A046951(A350390(n+1))`
-/

namespace A325837.P4575659655541307980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A350390 (n + 1)).toNat

end

end A325837.P4575659655541307980

namespace A325837

/-- `A046951(A350390(n+1))` -/
def P4575659655541307980.Spec : Prop :=
  ∀ n, P4575659655541307980.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P6696434732975962722

`∏{e}[n+1, ceil(#/2)]`
-/

namespace A325837.P6696434732975962722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉

end

end A325837.P6696434732975962722

namespace A325837

/-- `∏{e}[n+1, ceil(#/2)]` -/
def P6696434732975962722.Spec : Prop :=
  ∀ n, P6696434732975962722.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P4918742986806282087

`∏{p}[n+1, val(#*(n+1), #²)]`
-/

namespace A325837.P4918742986806282087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p * (n + 1)) (p ^ 2)

end

end A325837.P4918742986806282087

namespace A325837

/-- `∏{p}[n+1, val(#*(n+1), #²)]` -/
def P4918742986806282087.Spec : Prop :=
  ∀ n, (P4918742986806282087.a n : ℤ) = A325837 (n + 1)

end A325837

/-! ## A325837.P16594036778548233950

`A046951((n+1)/∏{p}[n+1, #])`
-/

namespace A325837.P16594036778548233950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A325837.P16594036778548233950

namespace A325837

/-- `A046951((n+1)/∏{p}[n+1, #])` -/
def P16594036778548233950.Spec : Prop :=
  ∀ n, P16594036778548233950.a n = A325837 (n + 1)

theorem P16594036778548233950.correct : P16594036778548233950.Spec := by
  intro n
  simp only [A325837, Nat.add_sub_cancel, A325837.P16594036778548233950.f1, A325837.P16594036778548233950.a, A325837.P10403141756841379382.a, A003557, A003557.P6364735403900941810.a, A046951, A046951.P12586408086602964063.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P7486858720566838181.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A007913, A007913.P8131970495124731496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A325837

/-! ## A325837.P3583788808592127023

`∑{d}[(n+1)/∏{p}[n+1, #], A010052(#)]`
-/

namespace A325837.P3583788808592127023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A010052 d

end

end A325837.P3583788808592127023

namespace A325837

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A010052(#)]` -/
def P3583788808592127023.Spec : Prop :=
  ∀ n, P3583788808592127023.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P17792058463104983234

`A005361(A019554(n+1))`
-/

namespace A325837.P17792058463104983234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A019554 (n + 1)).toNat

end

end A325837.P17792058463104983234

namespace A325837

/-- `A005361(A019554(n+1))` -/
def P17792058463104983234.Spec : Prop :=
  ∀ n, P17792058463104983234.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P7254111988134812017

`A000005(A295657(n+1))`
-/

namespace A325837.P7254111988134812017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295657 (n + 1)).toNat

end

end A325837.P7254111988134812017

namespace A325837

/-- `A000005(A295657(n+1))` -/
def P7254111988134812017.Spec : Prop :=
  ∀ n, P7254111988134812017.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P12254229060703127938

`A046951(A336551(n+1)+1)`
-/

namespace A325837.P12254229060703127938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A336551 (n + 1) + 1).toNat

end

end A325837.P12254229060703127938

namespace A325837

/-- `A046951(A336551(n+1)+1)` -/
def P12254229060703127938.Spec : Prop :=
  ∀ n, P12254229060703127938.a n = A325837 (n + 1)

theorem P12254229060703127938.correct : P12254229060703127938.Spec := by
  intro n
  simp only [A325837, Nat.add_sub_cancel, A325837.P12254229060703127938.a, A325837.P10403141756841379382.a, A003557, A003557.P6364735403900941810.a, A046951, A046951.P12586408086602964063.a, A336551, A336551.P8666843674191054020.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P7486858720566838181.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A007913, A007913.P8131970495124731496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A325837

/-! ## A325837.P3640850384918360841

`A005361((n+1)/A000188(n+1))`
-/

namespace A325837.P3640850384918360841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A325837.P3640850384918360841

namespace A325837

/-- `A005361((n+1)/A000188(n+1))` -/
def P3640850384918360841.Spec : Prop :=
  ∀ n, P3640850384918360841.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P3632380605984727760

`A046951((n+1)/A007947(n+1))`
-/

namespace A325837.P3632380605984727760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A325837.P3632380605984727760

namespace A325837

/-- `A046951((n+1)/A007947(n+1))` -/
def P3632380605984727760.Spec : Prop :=
  ∀ n, P3632380605984727760.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P5493435516007413758

`A046951((n+1)/A071773(n+1))`
-/

namespace A325837.P5493435516007413758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A325837.P5493435516007413758

namespace A325837

/-- `A046951((n+1)/A071773(n+1))` -/
def P5493435516007413758.Spec : Prop :=
  ∀ n, P5493435516007413758.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P2951321406059637789

`A286324(n+1)/A034444(n+1)`
-/

namespace A325837.P2951321406059637789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A325837.P2951321406059637789

namespace A325837

/-- `A286324(n+1)/A034444(n+1)` -/
def P2951321406059637789.Spec : Prop :=
  ∀ n, P2951321406059637789.a n = (A325837 (n + 1) : ℚ)

end A325837

/-! ## A325837.P2153721345187409912

`A000005((n+1)/A355261(n+1))`
-/

namespace A325837.P2153721345187409912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A355261 (n + 1) : ℚ))).toNat

end

end A325837.P2153721345187409912

namespace A325837

/-- `A000005((n+1)/A355261(n+1))` -/
def P2153721345187409912.Spec : Prop :=
  ∀ n, P2153721345187409912.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P7295789112416503753

`∑{d}[n+1, A008836(#)*A366763((n+1)/#)]`
-/

namespace A325837.P7295789112416503753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A366763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325837.P7295789112416503753

namespace A325837

/-- `∑{d}[n+1, A008836(#)*A366763((n+1)/#)]` -/
def P7295789112416503753.Spec : Prop :=
  ∀ n, P7295789112416503753.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P10425359945183185535

`A000005(A003557(n+1)/A000188(n+1))`
-/

namespace A325837.P10425359945183185535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A003557 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A325837.P10425359945183185535

namespace A325837

/-- `A000005(A003557(n+1)/A000188(n+1))` -/
def P10425359945183185535.Spec : Prop :=
  ∀ n, P10425359945183185535.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P7998031254014103198

`A000005(A000188((n+1)/A007947(n+1)))`
-/

namespace A325837.P7998031254014103198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A325837.P7998031254014103198

namespace A325837

/-- `A000005(A000188((n+1)/A007947(n+1)))` -/
def P7998031254014103198.Spec : Prop :=
  ∀ n, P7998031254014103198.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P6813138863667853534

`A000005(A003557(n+1)/sqrt((n+1)/A007913(n+1)))`
-/

namespace A325837.P6813138863667853534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A003557 (n + 1) : ℝ) / Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A325837.P6813138863667853534

namespace A325837

/-- `A000005(A003557(n+1)/sqrt((n+1)/A007913(n+1)))` -/
def P6813138863667853534.Spec : Prop :=
  ∀ n, P6813138863667853534.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P4021520572463111039

`A061704((n+1)*A053150(n+1))`
-/

namespace A325837.P4021520572463111039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A325837.P4021520572463111039

namespace A325837

/-- `A061704((n+1)*A053150(n+1))` -/
def P4021520572463111039.Spec : Prop :=
  ∀ n, P4021520572463111039.a n = A325837 (n + 1)

end A325837

/-! ## A325837.P16192065728893517430

`A365333(A249674(n+1))`
-/

namespace A325837.P16192065728893517430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A249674 (n + 1)).toNat

end

end A325837.P16192065728893517430

namespace A325837

/-- `A365333(A249674(n+1))` -/
def P16192065728893517430.Spec : Prop :=
  ∀ n, P16192065728893517430.a n = A325837 (n + 1)

end A325837

/-!
# A325838: a(n) is the product of divisors of the n-th triangular number.

The programs for A325838, the canonical program `A325838.P16251937646773924265` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325838 has offset 1).

The definition of A325838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A325838.P16251937646773924265

`A007955(A000217(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A325838

/-- `A007955(A000217(n+1))` -/
def P16251937646773924265.Spec : Prop :=
  ∀ n, P16251937646773924265.a n = A325838 (n + 1)

theorem P16251937646773924265.correct : P16251937646773924265.Spec := by
  intro n
  simp only [A325838, Nat.add_sub_cancel]

end A325838

/-! ## A325838.P10192879632304337456

`∏{d}[∑[n+1], #]`
-/

namespace A325838.P10192879632304337456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A325838.P10192879632304337456

namespace A325838

/-- `∏{d}[∑[n+1], #]` -/
def P10192879632304337456.Spec : Prop :=
  ∀ n, (P10192879632304337456.a n : ℤ) = A325838 (n + 1)

end A325838

/-! ## A325838.P9842423199475397007

`exp(∑{d}[∑[n+1], log(#)])`
-/

namespace A325838.P9842423199475397007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ))

end

end A325838.P9842423199475397007

namespace A325838

/-- `exp(∑{d}[∑[n+1], log(#)])` -/
def P9842423199475397007.Spec : Prop :=
  ∀ n, P9842423199475397007.a n = (A325838 (n + 1) : ℝ)

end A325838

/-! ## A325838.P15993570062517917206

`2^∑{d}[∑[n+1], log2(#)]`
-/

namespace A325838.P15993570062517917206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))

end

end A325838.P15993570062517917206

namespace A325838

/-- `2^∑{d}[∑[n+1], log2(#)]` -/
def P15993570062517917206.Spec : Prop :=
  ∀ n, P15993570062517917206.a n = (A325838 (n + 1) : ℝ)

end A325838

/-! ## A325838.P2613385223509455091

`sqrt(∑[n+1])^A000005(∑[n+1])`
-/

namespace A325838.P2613385223509455091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (A000005 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A325838.P2613385223509455091

namespace A325838

/-- `sqrt(∑[n+1])^A000005(∑[n+1])` -/
def P2613385223509455091.Spec : Prop :=
  ∀ n, P2613385223509455091.a n = (A325838 (n + 1) : ℝ)

end A325838

/-! ## A325838.P7437576462146266614

`sqrt(A000217(n+1))^A063440(n+1)`
-/

namespace A325838.P7437576462146266614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000217 (n + 1) : ℝ) ^ (A063440 (n + 1) : ℤ)

end

end A325838.P7437576462146266614

namespace A325838

/-- `sqrt(A000217(n+1))^A063440(n+1)` -/
def P7437576462146266614.Spec : Prop :=
  ∀ n, P7437576462146266614.a n = (A325838 (n + 1) : ℝ)

end A325838

/-! ## A325838.P3617836079560446781

`abs(∏{d}[lt[A208748(n+1), 1], #]-n)+n`
-/

namespace A325838.P3617836079560446781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208748 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A325838.P3617836079560446781

namespace A325838

/-- `abs(∏{d}[lt[A208748(n+1), 1], #]-n)+n` -/
def P3617836079560446781.Spec : Prop :=
  ∀ n, P3617836079560446781.a n = A325838 (n + 1)

end A325838

/-! ## A325838.P14527128299553650784

`A007955(∑[n+1])`
-/

namespace A325838.P14527128299553650784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325838.P14527128299553650784

namespace A325838

/-- `A007955(∑[n+1])` -/
def P14527128299553650784.Spec : Prop :=
  ∀ n, P14527128299553650784.a n = A325838 (n + 1)

end A325838

/-!
# A325839: Exponentially-odd coreful highly composite numbers: numbers with record values of the number of exponentially odd coreful divisors (A325837).

The programs for A325839, there is no canonical definition to state claims against.
-/

/-! ## A325839.P4345414667024037460

`record[A368170(A055932(3*n+4))]`
-/

namespace A325839.P4345414667024037460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (A055932 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325839.P4345414667024037460

/-! ## A325839.P2677479391515489510

`A297111(A164181(n)*A297107(n+1))`
-/

namespace A325839.P2677479391515489510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (A164181 n * A297107 (n + 1)).toNat

end

end A325839.P2677479391515489510

/-! ## A325839.P9485803988780635283

`A181800(lt[A133812(n+1), A212641(n+1)])`
-/

namespace A325839.P9485803988780635283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A325839.P9485803988780635283

/-!
# A325840: First term of n-th difference sequence of (round(k*sqrt(2))), k >= 0.

The programs for A325840, there is no canonical definition to state claims against.
-/

/-! ## A325840.P2148941341721228077

`A325665(n+1)-A325675(n+1)`
-/

namespace A325840.P2148941341721228077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325665 (n + 1) - A325675 (n + 1)

end

end A325840.P2148941341721228077

/-! ## A325840.P1074566428874449817

`A325674(n+1)-A325664(n+1)`
-/

namespace A325840.P1074566428874449817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325674 (n + 1) - A325664 (n + 1)

end

end A325840.P1074566428874449817

/-! ## A325840.P4626886950506872810

`A325665(n+1)+A325674(n+1)+A033999(n)`
-/

namespace A325840.P4626886950506872810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325665 (n + 1) + (A325674 (n + 1) + A033999 n)

end

end A325840.P4626886950506872810

/-! ## A325840.P6431222148732300225

`A325665(n+1)+A325674(n+1)-A055975(A166519(n))`
-/

namespace A325840.P6431222148732300225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325665 (n + 1) + (A325674 (n + 1) - A055975 (A166519 n).toNat)

end

end A325840.P6431222148732300225

/-! ## A325840.P4729884224188831946

`A325665(n+1)+A325674(n+1)-(A325669(n+1)+A325668(n+1))`
-/

namespace A325840.P4729884224188831946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325665 (n + 1) + (A325674 (n + 1) - (A325669 (n + 1) + A325668 (n + 1)))

end

end A325840.P4729884224188831946

/-!
# A325843: First term of n-th difference sequence of (round(k*sqrt(6))), k >= 0.

The programs for A325843, there is no canonical definition to state claims against.
-/

/-! ## A325843.P10407092289132534048

`A114284(a(n-1)²)^(n-1)` with `a(0)=2`
-/

namespace A325843.P10407092289132534048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A114284 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A325843.P10407092289132534048

/-! ## A325843.P18151522384550882103

`A131713(a(n-1)²)^(n-1)` with `a(0)=2`
-/

namespace A325843.P18151522384550882103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A131713 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A325843.P18151522384550882103

/-! ## A325843.P17343198327749371326

`A131999(a(n-1)²)^(n-1)` with `a(0)=2`
-/

namespace A325843.P17343198327749371326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A131999 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A325843.P17343198327749371326

/-! ## A325843.P136526029263518880

`A138949(a(n-1)²)^(n-1)` with `a(0)=2`
-/

namespace A325843.P136526029263518880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A138949 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A325843.P136526029263518880

/-! ## A325843.P3413131554058949890

`(val(A281002(n), 3)-2)*a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A325843.P3413131554058949890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ((SequenceMachineLib.valuation (A281002 n).toNat 3 : ℤ) - 2) * a (n - 1)

end

end A325843.P3413131554058949890

/-!
# A325844: First term of n-th difference sequence of (round(k*phi)), phi = golden ratio = (1+sqrt(5))/2, k >= 0.

The programs for A325844, there is no canonical definition to state claims against.
-/

/-! ## A325844.P7717879584005029915

`A325668(n+1)+A000007(n)-A325745(n+1)`
-/

namespace A325844.P7717879584005029915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A000007 n - A325745 (n + 1))

end

end A325844.P7717879584005029915

/-! ## A325844.P8526863348369896771

`A325746(n+1)+A000007(n)-A325669(n+1)`
-/

namespace A325844.P8526863348369896771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325746 (n + 1) + (A000007 n - A325669 (n + 1))

end

end A325844.P8526863348369896771

/-! ## A325844.P13150032105284415460

`A325668(n+1)+A000038(n)-A325747(n+1)`
-/

namespace A325844.P13150032105284415460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325668 (n + 1) + (A000038 n - A325747 (n + 1))

end

end A325844.P13150032105284415460

/-! ## A325844.P17115169108317677200

`A062157(n)-(A325745(n+1)+A325669(n+1))`
-/

namespace A325844.P17115169108317677200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - (A325745 (n + 1) + A325669 (n + 1))

end

end A325844.P17115169108317677200

/-!
# A325845: First term of n-th difference sequence of round((k*e)), k >= 0.

The programs for A325845, there is no canonical definition to state claims against.
-/

/-! ## A325845.P3709242830473062068

`A325736(n+1)-A325734(n+1)`
-/

namespace A325845.P3709242830473062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325736 (n + 1) - A325734 (n + 1)

end

end A325845.P3709242830473062068

/-! ## A325845.P2303321187480744

`A325735(n+1)+A325736(n+1)+A033999(n)`
-/

namespace A325845.P2303321187480744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) + (A325736 (n + 1) + A033999 n)

end

end A325845.P2303321187480744

/-! ## A325845.P585353159044362745

`A000035(n+1)-A000035(n)+A325736(n+1)+A325735(n+1)`
-/

namespace A325845.P585353159044362745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A000035 n + (A325736 (n + 1) + A325735 (n + 1))

end

end A325845.P585353159044362745

/-!
# A325846: First term of n-th difference sequence of round((k*Pi)), k >= 0.

The programs for A325846, there is no canonical definition to state claims against.
-/

/-! ## A325846.P1828949405072010377

`A325740(n+1)-A325739(n+1)`
-/

namespace A325846.P1828949405072010377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325740 (n + 1) - A325739 (n + 1)

end

end A325846.P1828949405072010377

/-! ## A325846.P15797134312151229750

`A325735(n+1)-A078042(A111332(n))*A325739(n+1)`
-/

namespace A325846.P15797134312151229750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) - A078042 (A111332 n).toNat * A325739 (n + 1)

end

end A325846.P15797134312151229750

/-! ## A325846.P14006475024269249530

`A325735(n+1)-A317503(A072189(n))*A325739(n+1)`
-/

namespace A325846.P14006475024269249530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) - A317503 (A072189 n).toNat * A325739 (n + 1)

end

end A325846.P14006475024269249530

/-! ## A325846.P8472067757364210252

`A325735(n+1)-A131713(A000244(n))*A325739(n+1)`
-/

namespace A325846.P8472067757364210252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325735 (n + 1) - A131713 (A000244 n).toNat * A325739 (n + 1)

end

end A325846.P8472067757364210252

/-!
# A325850: Number of permutations of {1..n} whose differences of all degrees are nonzero.

The programs for A325850, there is no canonical definition to state claims against.
-/

/-! ## A325850.P796533466434385050

`∑[A081753(∏[A295416(n+1)])]`
-/

namespace A325850.P796533466434385050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325850.P796533466434385050

/-! ## A325850.P2939904810879053859

`∑[A081753(∏[A295531(n+1)])]`
-/

namespace A325850.P2939904810879053859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325850.P2939904810879053859

/-! ## A325850.P15255471106559042817

`A295370(n)-A085854(A000255(n))`
-/

namespace A325850.P15255471106559042817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295370 n - A085854 (A000255 n).toNat

end

end A325850.P15255471106559042817

/-!
# A325851: Number of (strict) compositions of n whose differences of all degrees are nonzero.

The programs for A325851, there is no canonical definition to state claims against.
-/

/-! ## A325851.P6050239051874979730

`A111651(A001429(n+3)-n)`
-/

namespace A325851.P6050239051874979730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A001429 (n + 3) - (n : ℤ)).toNat

end

end A325851.P6050239051874979730

/-! ## A325851.P16945813343699928567

`A259361(A249512(n)+A223096(n))`
-/

namespace A325851.P16945813343699928567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A249512 n + A223096 n).toNat

end

end A325851.P16945813343699928567

/-! ## A325851.P13653573107711272406

`A000194(A026597(n))-A056847(n)`
-/

namespace A325851.P13653573107711272406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A026597 n).toNat - A056847 n

end

end A325851.P13653573107711272406

/-! ## A325851.P2712565666856343445

`A093001(A093040(n))-A007294(n)`
-/

namespace A325851.P2712565666856343445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093001 (A093040 n).toNat - A007294 n

end

end A325851.P2712565666856343445

/-! ## A325851.P12092423147577276960

`A017985(n)-∑[A059841(A000108(n))]`
-/

namespace A325851.P12092423147577276960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325851.P12092423147577276960

/-!
# A325852: Number of (strict) integer partitions of n whose differences of all degrees are nonzero.

The programs for A325852, there is no canonical definition to state claims against.
-/

/-! ## A325852.P4467868638400944790

`A178932(n)+A107279(A213003(n))`
-/

namespace A325852.P4467868638400944790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178932 n + A107279 (A213003 n).toNat

end

end A325852.P4467868638400944790

/-! ## A325852.P732224034589711090

`A332668(A235127(A002991(n))+n)`
-/

namespace A325852.P732224034589711090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332668 (A235127 (A002991 n).toNat + (n : ℤ)).toNat

end

end A325852.P732224034589711090

/-! ## A325852.P2097460677813056990

`A332668(n)-A235127(A002991(n))`
-/

namespace A325852.P2097460677813056990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332668 n - A235127 (A002991 n).toNat

end

end A325852.P2097460677813056990

/-! ## A325852.P16469532829452833856

`or(A080101(A337883(n+2)), A178932(n))`
-/

namespace A325852.P16469532829452833856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080101 (A337883 (n + 2)).toNat) (A178932 n)

end

end A325852.P16469532829452833856

/-!
# A325853: Number of integer partitions of n such that every pair of distinct parts has a different quotient.

The programs for A325853, there is no canonical definition to state claims against.
-/

/-! ## A325853.P771589115858577805

`A008637(n)-A162781(A008764(n))`
-/

namespace A325853.P771589115858577805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A162781 (A008764 n).toNat

end

end A325853.P771589115858577805

/-! ## A325853.P11724367173604875446

`A038752(A038752(n))-A308929(n)`
-/

namespace A325853.P11724367173604875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038752 (A038752 n).toNat - A308929 n

end

end A325853.P11724367173604875446

/-! ## A325853.P14529335716351745863

`A027341(n)-∑[A089309(A213380(n))]`
-/

namespace A325853.P14529335716351745863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A213380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325853.P14529335716351745863

/-! ## A325853.P13256283665855173954

`A008634(n)-A026814(A187829(n+1))`
-/

namespace A325853.P13256283665855173954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008634 n - A026814 (A187829 (n + 1)).toNat

end

end A325853.P13256283665855173954

/-! ## A325853.P3652201470147090340

`A000041(n)-A308994(A187829(n+1))`
-/

namespace A325853.P3652201470147090340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A308994 (A187829 (n + 1)).toNat

end

end A325853.P3652201470147090340

/-!
# A325854: Number of strict integer partitions of n such that every pair of distinct parts has a different quotient.

The programs for A325854, there is no canonical definition to state claims against.
-/

/-! ## A325854.P16249833156518274800

`∑[A055641(A283390(n))+A052920(n)]`
-/

namespace A325854.P16249833156518274800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A283390 n).toNat + A052920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325854.P16249833156518274800

/-! ## A325854.P1939484140425318608

`A335898(A295341(n)+A032305(n+1))`
-/

namespace A325854.P1939484140425318608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335898 (A295341 n + A032305 (n + 1)).toNat

end

end A325854.P1939484140425318608

/-! ## A325854.P2810669058702349850

`A048766(A108954(n+1)*A164437(n))`
-/

namespace A325854.P2810669058702349850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A108954 (n + 1) * A164437 n).toNat

end

end A325854.P2810669058702349850

/-! ## A325854.P16998004407297747509

`A048766(A108954(n+1)*A224364(n))`
-/

namespace A325854.P16998004407297747509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A108954 (n + 1) * A224364 n).toNat

end

end A325854.P16998004407297747509

/-! ## A325854.P9606858083481502383

`A342520(n)-A080885(A080855(3*n+4))`
-/

namespace A325854.P9606858083481502383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342520 n - A080885 (A080855 (3 * n + 4)).toNat

end

end A325854.P9606858083481502383

/-!
# A325855: Number of strict integer partitions of n such that every pair of distinct parts has a different product.

The programs for A325855, there is no canonical definition to state claims against.
-/

/-! ## A325855.P3157686788734327476

`A309999(n)-val(A155436(n+5), 5)`
-/

namespace A325855.P3157686788734327476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309999 n - (SequenceMachineLib.valuation (A155436 (n + 5)).toNat 5 : ℤ)

end

end A325855.P3157686788734327476

/-! ## A325855.P2642014052410703119

`A056556(A001629(n)+2)-A257962(A326635(n))`
-/

namespace A325855.P2642014052410703119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A001629 n + 2).toNat - A257962 (A326635 n).toNat

end

end A325855.P2642014052410703119

/-!
# A325856: Number of integer partitions of n such that every pair of distinct parts has a different product.

The programs for A325856, there is no canonical definition to state claims against.
-/

/-! ## A325856.P6924030126883167185

`A104501(n)-A302110(A008862(n))`
-/

namespace A325856.P6924030126883167185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 n - A302110 (A008862 n).toNat

end

end A325856.P6924030126883167185

/-! ## A325856.P6853625830924682996

`A104501(n)-A323510(A257621(n))`
-/

namespace A325856.P6853625830924682996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 n - A323510 (A257621 n).toNat

end

end A325856.P6853625830924682996

/-! ## A325856.P18362540113314062494

`A104501(n)-A010054(A000032(n+3))`
-/

namespace A325856.P18362540113314062494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 n - A010054 (A000032 (n + 3)).toNat

end

end A325856.P18362540113314062494

/-! ## A325856.P1428998267965842735

`A104501(n)-A055641(A104501(2*n))`
-/

namespace A325856.P1428998267965842735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104501 n - A055641 (A104501 (2 * n)).toNat

end

end A325856.P1428998267965842735

/-! ## A325856.P11782326033693513684

`A328546(n)-A080224(A035959(2*n+3))`
-/

namespace A325856.P11782326033693513684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328546 n - A080224 (A035959 (2 * n + 3)).toNat

end

end A325856.P11782326033693513684

/-!
# A325857: Number of integer partitions of n such that every orderless pair of distinct parts has a different sum.

The programs for A325857, there is no canonical definition to state claims against.
-/

/-! ## A325857.P9263421996038833968

`A332280(n)-A284978(A129838(n))`
-/

namespace A325857.P9263421996038833968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n - A284978 (A129838 n).toNat

end

end A325857.P9263421996038833968

/-! ## A325857.P12302028366828711681

`A023030(n)-A316869(A350764(n+1))`
-/

namespace A325857.P12302028366828711681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023030 (n + 10) - A316869 (A350764 (n + 1)).toNat

end

end A325857.P12302028366828711681

/-! ## A325857.P5415494047315493349

`A023030(n)-A185284(A056911(n+2))`
-/

namespace A325857.P5415494047315493349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023030 (n + 10) - A185284 (A056911 (n + 2)).toNat

end

end A325857.P5415494047315493349

/-! ## A325857.P15978418987057984349

`A118759(A023030(n))`
-/

namespace A325857.P15978418987057984349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A023030 (n + 10)).toNat

end

end A325857.P15978418987057984349

/-!
# A325858: Number of Golomb partitions of n.

The programs for A325858, there is no canonical definition to state claims against.
-/

/-! ## A325858.P14981938747006239972

`A023893(n)-A085978(A145550(n+1))`
-/

namespace A325858.P14981938747006239972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n - A085978 (A145550 (n + 1)).toNat

end

end A325858.P14981938747006239972

/-! ## A325858.P11017063563855942020

`A023893(n)-A045833(A045884(n+2))`
-/

namespace A325858.P11017063563855942020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n - A045833 (A045884 (n + 2)).toNat

end

end A325858.P11017063563855942020

/-! ## A325858.P3205981672510906553

`A070289(n)-A174903(A363233(3*n+5))`
-/

namespace A325858.P3205981672510906553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070289 n - A174903 (A363233 (3 * n + 5)).toNat

end

end A325858.P3205981672510906553

/-! ## A325858.P13102683054048726558

`A116634(n+3)-A102683(A116647(3*n+4))`
-/

namespace A325858.P13102683054048726558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116634 (n + 3) - A102683 (A116647 (3 * n + 4)).toNat

end

end A325858.P13102683054048726558

/-! ## A325858.P1192698819093912572

`A023893(n)-A231037(A207661(n+1))`
-/

namespace A325858.P1192698819093912572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n - A231037 (A207661 (n + 1)).toNat

end

end A325858.P1192698819093912572

/-!
# A325860: Number of subsets of {1..n} such that every pair of distinct elements has a different quotient.

The programs for A325860, there is no canonical definition to state claims against.
-/

/-! ## A325860.P14357915548311899068

`A325868(n)+a(n-1)` with `a(0)=1`
-/

namespace A325860.P14357915548311899068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325868 n + a (n - 1)

end

end A325860.P14357915548311899068

/-! ## A325860.P13833114673725263024

`∑[A325868(round(sqrt(n²+1)))]`
-/

namespace A325860.P13833114673725263024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325868 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325860.P13833114673725263024

/-! ## A325860.P2248928479678679088

`∑[A325868(abs(1-n)+1)]-1`
-/

namespace A325860.P2248928479678679088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325868 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325860.P2248928479678679088

/-! ## A325860.P3597663191212423590

`∑[A325868(n+1)]+1-A325868(n+1)`
-/

namespace A325860.P3597663191212423590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A325868 (n + 1)

end

end A325860.P3597663191212423590

/-! ## A325860.P4587392396571679432

`A328596(A345669(n+1))`
-/

namespace A325860.P4587392396571679432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A345669 (n + 1)).toNat

end

end A325860.P4587392396571679432

/-!
# A325861: Number of maximal subsets of {1..n} such that every pair of distinct elements has a different quotient.

The programs for A325861, there is no canonical definition to state claims against.
-/

/-! ## A325861.P7241308688639865011

`A204551(A161205(n+1)^A000720(n+1))`
-/

namespace A325861.P7241308688639865011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (SequenceMachineLib.roundAway ((A161205 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A325861.P7241308688639865011

/-! ## A325861.P7739821520872893782

`A353853(A325936(n+1))+A000586(3*n)`
-/

namespace A325861.P7739821520872893782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A325936 (n + 1)).toNat + A000586 (3 * n)

end

end A325861.P7739821520872893782

/-!
# A325862: Number of integer partitions of n such that every set of distinct parts has a different sum.

The programs for A325862, there is no canonical definition to state claims against.
-/

/-! ## A325862.P8304680282519325818

`∑[A023894(n)]-A025469(A047031(n))-A062890(A008667(n))`
-/

namespace A325862.P8304680282519325818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025469 (A047031 n).toNat - A062890 (A008667 n).toNat

end

end A325862.P8304680282519325818

/-! ## A325862.P2733268852384285130

`A373953(A185235(n))+A023026(n+6)`
-/

namespace A325862.P2733268852384285130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A185235 n).toNat + A023026 (n + 6)

end

end A325862.P2733268852384285130

/-! ## A325862.P6256271376833007890

`A000196(A094023(n)²)-A000094(A008619(n))`
-/

namespace A325862.P6256271376833007890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094023 n ^ 2).toNat - A000094 (A008619 n).toNat

end

end A325862.P6256271376833007890

/-! ## A325862.P4861254867895867786

`A027338(n+1)-A102683(2^n)-A000196(A000045(n))`
-/

namespace A325862.P4861254867895867786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) - A102683 (2 ^ n) - A000196 (A000045 n).toNat

end

end A325862.P4861254867895867786

/-!
# A325863: Number of integer partitions of n such that every distinct non-singleton submultiset has a different sum.

The programs for A325863, there is no canonical definition to state claims against.
-/

/-! ## A325863.P4522532782472706437

`A111660(2*A239958(n))`
-/

namespace A325863.P4522532782472706437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A239958 n).toNat

end

end A325863.P4522532782472706437

/-! ## A325863.P4150592057483821335

`A111660(xor(1, A088314(n+2)))`
-/

namespace A325863.P4150592057483821335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (Int.xor 1 (A088314 (n + 2))).toNat

end

end A325863.P4150592057483821335

/-! ## A325863.P4488613733370799468

`A346705(A329696(n))+A108917(n)`
-/

namespace A325863.P4488613733370799468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 (A329696 n).toNat + A108917 n

end

end A325863.P4488613733370799468

/-! ## A325863.P2757762209748687390

`A325876(eq[A079978(n), A326542(n)])`
-/

namespace A325863.P2757762209748687390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A325863.P2757762209748687390

/-! ## A325863.P9821208816681558496

`A239958(n)+A057428(A022564(n+1))`
-/

namespace A325863.P9821208816681558496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 n + A057428 (A022564 (n + 1)).toNat

end

end A325863.P9821208816681558496

/-!
# A325864: Number of subsets of {1..n} of which every subset has a different sum.

The programs for A325864, there is no canonical definition to state claims against.
-/

/-! ## A325864.P16174689762941055115

`∑[A325866(floor(acot(n)+n))]`
-/

namespace A325864.P16174689762941055115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325866 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325864.P16174689762941055115

/-! ## A325864.P8488501831745068769

`A325866(n)+a(n-1)` with `a(0)=1`
-/

namespace A325864.P8488501831745068769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325866 n + a (n - 1)

end

end A325864.P8488501831745068769

/-! ## A325864.P15690161664932017436

`∑[A325866(round(sqrt(n²+1)))]`
-/

namespace A325864.P15690161664932017436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325866 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325864.P15690161664932017436

/-! ## A325864.P5527678046941236208

`∑[A325866(abs(1-n)+1)]-1`
-/

namespace A325864.P5527678046941236208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325866 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A325864.P5527678046941236208

/-! ## A325864.P17664970351361480341

`∑[A325866(n+1)]+1-A325866(n+1)`
-/

namespace A325864.P17664970351361480341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A325866 (n + 1)

end

end A325864.P17664970351361480341

/-!
# A325865: Number of maximal subsets of {1..n} of which every subset has a different sum.

The programs for A325865, there is no canonical definition to state claims against.
-/

/-! ## A325865.P3165080947065397549

`A333806(A002387(n))+A325879(n)`
-/

namespace A325865.P3165080947065397549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A002387 n).toNat + A325879 n

end

end A325865.P3165080947065397549

/-!
# A325866: Number of subsets of {1..n} containing n such that every subset has a different sum.

The programs for A325866, there is no canonical definition to state claims against.
-/

/-! ## A325866.P14174400812212613872

`Δ[A325864(n)]`
-/

namespace A325866.P14174400812212613872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325866.P14174400812212613872

/-! ## A325866.P1050841149537281898

`A325864(n+1)-A325864(n)`
-/

namespace A325866.P1050841149537281898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325864 (n + 1) - A325864 n

end

end A325866.P1050841149537281898

/-! ## A325866.P9820212596633670895

`record[A325864(abs(1-n))]-A325864(n)`
-/

namespace A325866.P9820212596633670895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325864 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325864 n

end

end A325866.P9820212596633670895

/-! ## A325866.P5450851473600729635

`lt[A325137(n), A325959(n+1)]`
-/

namespace A325866.P5450851473600729635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325866.P5450851473600729635

/-!
# A325867: Number of maximal subsets of {1..n} containing n such that every subset has a different sum.

The programs for A325867, there is no canonical definition to state claims against.
-/

/-! ## A325867.P13639171753545642092

`A303363(A000111(n))+A048004(n+2)`
-/

namespace A325867.P13639171753545642092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303363 (A000111 n).toNat + A048004 (n + 2)

end

end A325867.P13639171753545642092

/-!
# A325868: Number of subsets of {1..n} containing n such that every ordered pair of distinct elements has a different quotient.

The programs for A325868, there is no canonical definition to state claims against.
-/

/-! ## A325868.P3013361877344695236

`Δ[A325860(n)]`
-/

namespace A325868.P3013361877344695236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325868.P3013361877344695236

/-! ## A325868.P1652882400911399493

`A325860(n+1)-A325860(n)`
-/

namespace A325868.P1652882400911399493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325860 (n + 1) - A325860 n

end

end A325868.P1652882400911399493

/-! ## A325868.P13886287638457073428

`record[A325860(abs(1-n))]-A325860(n)`
-/

namespace A325868.P13886287638457073428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325860 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325860 n

end

end A325868.P13886287638457073428

/-! ## A325868.P3440387232135643412

`A325860(n+1)+A325860(n)/A008683(A240710(n+2))`
-/

namespace A325868.P3440387232135643412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325860 (n + 1) : ℚ) + (A325860 n : ℚ) / (A008683 (A240710 (n + 2)).toNat : ℚ)

end

end A325868.P3440387232135643412

/-!
# A325869: Number of maximal subsets of {1..n} containing n such that every pair of distinct elements has a different quotient.

The programs for A325869, there is no canonical definition to state claims against.
-/

/-! ## A325869.P12854133429217462455

`A322813(A038084(n+1)*A056505(n))`
-/

namespace A325869.P12854133429217462455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A038084 (n + 1) * A056505 n).toNat

end

end A325869.P12854133429217462455

/-!
# A325871: a(n) = n!*ClausenNumber(n, 1)/(n + 1), Clausen numbers defined in A160014.

The programs for A325871, there is no canonical definition to state claims against.
-/

/-! ## A325871.P901049768315676023

`A000142(n)/(n+1)*A141056(n)`
-/

namespace A325871.P901049768315676023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (n + 1 : ℚ) * (A141056 n : ℚ)

end

end A325871.P901049768315676023

/-! ## A325871.P11361747985051373847

`A360283(n)/A362989(n)`
-/

namespace A325871.P11361747985051373847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360283 n : ℚ) / (A362989 n : ℚ)

end

end A325871.P11361747985051373847

/-! ## A325871.P15426854121896465450

`A194587(∑[n]+n)`
-/

namespace A325871.P15426854121896465450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194587 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A325871.P15426854121896465450

/-! ## A325871.P6462960764797895473

`abs(A194587(A000096(n)))`
-/

namespace A325871.P6462960764797895473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194587 (A000096 n).toNat|

end

end A325871.P6462960764797895473

/-!
# A325873: T(n, k) = [x^k] Sum_{k=0..n} |Stirling1(n, k)|*FallingFactorial(x, k), triangle read by rows, for n >= 0 and 0 <= k <= n.

The programs for A325873, there is no canonical definition to state claims against.
-/

/-! ## A325873.P18355878175827369478

`A329861(A058710(n+1))`
-/

namespace A325873.P18355878175827369478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329861 (A058710 (n + 1)).toNat

end

end A325873.P18355878175827369478

/-! ## A325873.P15985179013126670364

`A373029(A281891(n+1))`
-/

namespace A325873.P15985179013126670364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373029 (A281891 (n + 1)).toNat

end

end A325873.P15985179013126670364

/-! ## A325873.P175499478815735833

`A089000(4*A135814(n))`
-/

namespace A325873.P175499478815735833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089000 (4 * A135814 n).toNat

end

end A325873.P175499478815735833

/-! ## A325873.P3052897274614979029

`A233544(5^A155839(n))`
-/

namespace A325873.P3052897274614979029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233544 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A155839 n : ℤ))).toNat

end

end A325873.P3052897274614979029

/-! ## A325873.P16172376997159253913

`A281442(n*A007318(∑{d}[n+1, #-1]-n))`
-/

namespace A325873.P16172376997159253913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281442 ((n : ℤ) * A007318 (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ)).toNat).toNat

end

end A325873.P16172376997159253913

/-!
# A325874: Number of integer partitions of n whose differences of all degrees > 1 are nonzero.

The programs for A325874, there is no canonical definition to state claims against.
-/

/-! ## A325874.P631138599095110

`A238571(n)+A102683(A238428(n))`
-/

namespace A325874.P631138599095110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238571 n + A102683 (A238428 n).toNat

end

end A325874.P631138599095110

/-! ## A325874.P11708665977053055185

`A238424(n)-A056170(A082582(n))`
-/

namespace A325874.P11708665977053055185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n - A056170 (A082582 n).toNat

end

end A325874.P11708665977053055185

/-!
# A325875: Number of compositions of n whose differences of all degrees > 1 are nonzero.

The programs for A325875, there is no canonical definition to state claims against.
-/

/-! ## A325875.P377590790569234586

`xor(A000196(A308274(n)), A002265(n))`
-/

namespace A325875.P377590790569234586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000196 (A308274 n).toNat) (A002265 n)

end

end A325875.P377590790569234586

/-! ## A325875.P6420472515755428083

`A287331(A339828(n+1))+A001590(n+2)`
-/

namespace A325875.P6420472515755428083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287331 (A339828 (n + 1)).toNat + A001590 (n + 2)

end

end A325875.P6420472515755428083

/-! ## A325875.P2947013585861399048

`A000196(or(A000108(n+1), A002525(n+1)))`
-/

namespace A325875.P2947013585861399048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A000108 (n + 1)) (A002525 (n + 1))).toNat

end

end A325875.P2947013585861399048

/-! ## A325875.P16094771276492986327

`A335433(A008965(n+1)-A025818(3*(n+1)))`
-/

namespace A325875.P16094771276492986327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A008965 (n + 1) - A025818 (3 * (n + 1))).toNat

end

end A325875.P16094771276492986327

/-! ## A325875.P14483687150688954658

`A000196(or(A002525(n+1), A089408(2*n+3)))`
-/

namespace A325875.P14483687150688954658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A002525 (n + 1)) (A089408 (2 * n + 3))).toNat

end

end A325875.P14483687150688954658

/-!
# A325876: Number of strict Golomb partitions of n.

The programs for A325876, there is no canonical definition to state claims against.
-/

/-! ## A325876.P13980962554545139431

`A363994(n)-Δ[A065033(n)]`
-/

namespace A325876.P13980962554545139431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n - (f1 (n + 1) - f1 n)

end

end A325876.P13980962554545139431

/-! ## A325876.P5362257974009040336

`A266591(n+1)+A363994(n)-1`
-/

namespace A325876.P5362257974009040336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (n + 1) + (A363994 n - 1)

end

end A325876.P5362257974009040336

/-! ## A325876.P7175540303446954380

`A363994(n)-char[A005941(2*(n+1))]`
-/

namespace A325876.P7175540303446954380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A325876.P7175540303446954380

/-! ## A325876.P12833454571905585580

`A363994(n)-A004198(A000124(n))`
-/

namespace A325876.P12833454571905585580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n - A004198 (A000124 n).toNat

end

end A325876.P12833454571905585580

/-! ## A325876.P8808178070653231403

`A028310(A363994(n)-A266591(n))`
-/

namespace A325876.P8808178070653231403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A363994 n - A266591 n).toNat

end

end A325876.P8808178070653231403

/-! ## A325876.P2984771142467856666

`A363994(n)-A358218(A020639(n+1))`
-/

namespace A325876.P2984771142467856666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n - A358218 (A020639 (n + 1)).toNat

end

end A325876.P2984771142467856666

/-! ## A325876.P8968809889829506260

`A000035(n)+A363994(n)-A057427(n)`
-/

namespace A325876.P8968809889829506260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A363994 n - A057427 n)

end

end A325876.P8968809889829506260

/-! ## A325876.P7805402949876915614

`A325877(n)+A363994(n)-A364613(n)`
-/

namespace A325876.P7805402949876915614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325877 n + (A363994 n - A364613 n)

end

end A325876.P7805402949876915614

/-! ## A325876.P9723295573536881268

`A363994(n)-A102210(A272007(n))`
-/

namespace A325876.P9723295573536881268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n - A102210 (A272007 n).toNat

end

end A325876.P9723295573536881268

/-!
# A325877: Number of strict integer partitions of n such that every orderless pair of distinct parts has a different sum.

The programs for A325877, there is no canonical definition to state claims against.
-/

/-! ## A325877.P68614278208109323

`A364613(n)-A000035(A007504(n))`
-/

namespace A325877.P68614278208109323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364613 n - A000035 (A007504 n).toNat

end

end A325877.P68614278208109323

/-! ## A325877.P1222290263738800159

`A325876(n)+A364613(n)-A363994(n)`
-/

namespace A325877.P1222290263738800159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + (A364613 n - A363994 n)

end

end A325877.P1222290263738800159

/-! ## A325877.P8905430657550718232

`A000009(n)-A333382(A057740(n+1))`
-/

namespace A325877.P8905430657550718232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A333382 (A057740 (n + 1)).toNat

end

end A325877.P8905430657550718232

/-! ## A325877.P12800537329950488424

`A014114(A033991(3*n+4))+A000700(2*n+3)`
-/

namespace A325877.P12800537329950488424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014114 (A033991 (3 * n + 4)).toNat + A000700 (2 * n + 3)

end

end A325877.P12800537329950488424

/-!
# A325878: Number of maximal subsets of {1..n} such that every orderless pair of distinct elements has a different sum.

The programs for A325878, there is no canonical definition to state claims against.
-/

/-! ## A325878.P3904363293019584581

`A193592(∑[∏[A309108(n)]])`
-/

namespace A325878.P3904363293019584581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A325878.P3904363293019584581

/-! ## A325878.P13309247244365792746

`A363526(A056870(n+1)+6)`
-/

namespace A325878.P13309247244365792746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363526 (A056870 (n + 1) + 6).toNat

end

end A325878.P13309247244365792746

/-!
# A325880: Number of maximal subsets of {1..n} containing n such that every ordered pair of distinct elements has a different difference.

The programs for A325880, there is no canonical definition to state claims against.
-/

/-! ## A325880.P4187169577663661350

`A003714(A011971(n*A061603(n)))`
-/

namespace A325880.P4187169577663661350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A011971 ((n : ℤ) * A061603 n).toNat).toNat

end

end A325880.P4187169577663661350

/-! ## A325880.P11784123258769088123

`A003714(A011971(n)^A061603(n))`
-/

namespace A325880.P11784123258769088123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.roundAway ((A011971 n : ℚ) ^ (A061603 n : ℤ))).toNat

end

end A325880.P11784123258769088123

/-! ## A325880.P438388895818496376

`A003714(lcm(A011971(n), A061603(n)))`
-/

namespace A325880.P438388895818496376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.lcm (A011971 n) (A061603 n))

end

end A325880.P438388895818496376

/-! ## A325880.P14805224955223286818

`A003714(A011971(n)+A061603(n)-1)`
-/

namespace A325880.P14805224955223286818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A011971 n + (A061603 n - 1)).toNat

end

end A325880.P14805224955223286818

/-! ## A325880.P8255728717531447874

`A003714(A011971(n)-(1-A061603(n)))`
-/

namespace A325880.P8255728717531447874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A011971 n - (1 - A061603 n)).toNat

end

end A325880.P8255728717531447874

/-!
# A325881: Bases b where exactly five primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A325881, there is no canonical definition to state claims against.
-/

/-! ## A325881.P16998188237304128487

`eq[5, A255920(round(acot(n)+n))]`
-/

namespace A325881.P16998188237304128487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325881.P16998188237304128487

/-! ## A325881.P4727751270955899965

`eq[5, A255920(A233583(n+1))]`
-/

namespace A325881.P4727751270955899965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325881.P4727751270955899965

/-!
# A325882: Bases b where exactly six primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A325882, there is no canonical definition to state claims against.
-/

/-! ## A325882.P3900377383263823685

`eq[6, A255920(round(acot(n)+n))]`
-/

namespace A325882.P3900377383263823685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A325882.P3900377383263823685

/-!
# A325887: Excess of sum of odd integers up to n and coprime to n over sum of even integers up to n and coprime to n.

The programs for A325887, the canonical program `A325887.P6318016964475315553` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A325887 has offset 1).

The definition of A325887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A325887.P6318016964475315553

`∑{d}[n+1, A000463(#)*A349343((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A325887

/-- `∑{d}[n+1, A000463(#)*A349343((n+1)/#)]` -/
def P6318016964475315553.Spec : Prop :=
  ∀ n, P6318016964475315553.a n = A325887 (n + 1)

theorem P6318016964475315553.correct : P6318016964475315553.Spec := by
  intro n
  simp only [A325887, Nat.add_sub_cancel]

end A325887

/-! ## A325887.P6726716136228064166

`A005843(A066840(2*(n+1)))-A023896(n+1)`
-/

namespace A325887.P6726716136228064166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A066840 (2 * (n + 1))).toNat - A023896 (n + 1)

end

end A325887.P6726716136228064166

namespace A325887

/-- `A005843(A066840(2*(n+1)))-A023896(n+1)` -/
def P6726716136228064166.Spec : Prop :=
  ∀ n, P6726716136228064166.a n = A325887 (n + 1)

end A325887

/-!
# A325888: Number of colored set partitions of [n] where colors of the elements of subsets are in (weakly) increasing order and all colors of an initial interval of the color palette are used.

The programs for A325888, there is no canonical definition to state claims against.
-/

/-! ## A325888.P11614133599224943129

`A135184((n+2)^n)`
-/

namespace A325888.P11614133599224943129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135184 ((n + 2) ^ n)

end

end A325888.P11614133599224943129

/-!
# A325889: Number of colored set partitions of [2n] where colors of the elements of subsets are in (weakly) increasing order and exactly n colors are used.

The programs for A325889, there is no canonical definition to state claims against.
-/

/-! ## A325889.P2163352918652404440

`A321296(∑[4*n])`
-/

namespace A325889.P2163352918652404440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A325889.P2163352918652404440

/-! ## A325889.P9364789642427795643

`record[A321296(A050187(n))]`
-/

namespace A325889.P9364789642427795643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (A050187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325889.P9364789642427795643

/-! ## A325889.P6350837507355066700

`record[A321296(∑[A186731(n)])]`
-/

namespace A325889.P6350837507355066700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325889.P6350837507355066700

/-! ## A325889.P3468213292959192061

`record[A003982(n)*A321296(n)]`
-/

namespace A325889.P3468213292959192061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A321296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325889.P3468213292959192061

/-! ## A325889.P12301592513015271605

`record[A321296(n*record[A186731(n)])]`
-/

namespace A325889.P12301592513015271605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 ((n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325889.P12301592513015271605

/-!
# A325890: Number of colored set partitions of [n] where colors of the elements of subsets are in (weakly) increasing order and exactly two colors are used.

The programs for A325890, there is no canonical definition to state claims against.
-/

/-! ## A325890.P5952919297993171055

`A321296(∑[n+2]+3)`
-/

namespace A325890.P5952919297993171055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A325890.P5952919297993171055

/-! ## A325890.P4968274107633324876

`A321296(A133263(n+2))%A053063(n+2)`
-/

namespace A325890.P4968274107633324876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321296 (A133263 (n + 2)).toNat) (A053063 (n + 2))

end

end A325890.P4968274107633324876

/-! ## A325890.P1326163688671944377

`A321296(A133263(n+2))+A000007(3*n+1)`
-/

namespace A325890.P1326163688671944377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321296 (A133263 (n + 2)).toNat + A000007 (3 * n + 1)

end

end A325890.P1326163688671944377

/-!
# A325892: The successive approximations up to 2^n for the 2-adic integer 3^(1/5).

The programs for A325892, there is no canonical definition to state claims against.
-/

/-! ## A325892.P5167999170660899050

`A021844(n)%A067824(2^n)`
-/

namespace A325892.P5167999170660899050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021844 n) (A067824 (2 ^ n))

end

end A325892.P5167999170660899050

/-! ## A325892.P11069351673366617692

`and(A021844(n), A026741(2^n-1))`
-/

namespace A325892.P11069351673366617692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A021844 n) (A026741 (2 ^ n - 1))

end

end A325892.P11069351673366617692

/-! ## A325892.P15048047445713634478

`A021844(n)%A005940(A000079(n))`
-/

namespace A325892.P15048047445713634478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021844 n) (A005940 (A000079 n).toNat)

end

end A325892.P15048047445713634478

/-! ## A325892.P9490900548678151940

`and(A003817(A000225(n)), A021844(n))`
-/

namespace A325892.P9490900548678151940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A000225 n).toNat) (A021844 n)

end

end A325892.P9490900548678151940

/-! ## A325892.P13251116067210559293

`(2*A021214(n)-A021104(n))%A028310(A000079(n))`
-/

namespace A325892.P13251116067210559293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A021214 n - A021104 n) (A028310 (A000079 n).toNat)

end

end A325892.P13251116067210559293

/-!
# A325893: The successive approximations up to 2^n for 2-adic integer 5^(1/5).

The programs for A325893, there is no canonical definition to state claims against.
-/

/-! ## A325893.P5559005159374416107

`∑[A131577(n*A265333(A068912(n)))]`
-/

namespace A325893.P5559005159374416107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ((n : ℤ) * A265333 (A068912 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325893.P5559005159374416107

/-! ## A325893.P13068374531521900170

`∑[and(floor(2^(n-1)), A002541(2^n))]`
-/

namespace A325893.P13068374531521900170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A002541 (2 ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325893.P13068374531521900170

/-! ## A325893.P3560417641920494261

`∑[A142150(A319954(n)^n)]`
-/

namespace A325893.P3560417641920494261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A319954 n ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325893.P3560417641920494261

/-! ## A325893.P10239027390870614398

`and(A000225(n), A268428(A016116(3*n)))`
-/

namespace A325893.P10239027390870614398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A268428 (A016116 (3 * n)).toNat)

end

end A325893.P10239027390870614398

/-! ## A325893.P13611597428446582510

`A127592(A121015(n+1))%A000079(n)`
-/

namespace A325893.P13611597428446582510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127592 (A121015 (n + 1)).toNat) (A000079 n)

end

end A325893.P13611597428446582510

/-!
# A325894: The successive approximations up to 2^n for the 2-adic integer 7^(1/5).

The programs for A325894, there is no canonical definition to state claims against.
-/

/-! ## A325894.P1148788727690649099

`A129249(A129279(3*n+1))%A000079(n)`
-/

namespace A325894.P1148788727690649099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129249 (A129279 (3 * n + 1)).toNat) (A000079 n)

end

end A325894.P1148788727690649099

/-! ## A325894.P1133368256803865733

`∑[and(floor(2^(n-1)), A282092(3*n+1))]`
-/

namespace A325894.P1133368256803865733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A282092 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325894.P1133368256803865733

/-! ## A325894.P992061154884136038

`∑[and(ceil(2^(n-1)), A326259(3*n+4))]`
-/

namespace A325894.P992061154884136038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A326259 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325894.P992061154884136038

/-! ## A325894.P4246465459913140840

`∑[and(A131577(n), A361333(n+1))]`
-/

namespace A325894.P4246465459913140840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131577 n) (A361333 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325894.P4246465459913140840

/-! ## A325894.P15143056038124542021

`∑[and(ceil(2^(n-1)), A058129(n))]`
-/

namespace A325894.P15143056038124542021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A058129 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325894.P15143056038124542021

/-!
# A325895: The successive approximations up to 2^n for the 2-adic integer 9^(1/5).

The programs for A325895, there is no canonical definition to state claims against.
-/

/-! ## A325895.P15734994018823275086

`A325892(n)²%A000079(n)`
-/

namespace A325895.P15734994018823275086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325892 n ^ 2) (A000079 n)

end

end A325895.P15734994018823275086

/-! ## A325895.P5132699816146901774

`and(A325892(n)², A000225(n))`
-/

namespace A325895.P5132699816146901774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325892 n ^ 2) (A000225 n)

end

end A325895.P5132699816146901774

/-! ## A325895.P479163284181885692

`and(A325892(n)², A255047(n))`
-/

namespace A325895.P479163284181885692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325892 n ^ 2) (A255047 n)

end

end A325895.P479163284181885692

/-! ## A325895.P17079911417983983973

`∑[and(A325892(n)², A011782(n))]`
-/

namespace A325895.P17079911417983983973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325892 n ^ 2) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325895.P17079911417983983973

/-! ## A325895.P16731006888962258089

`and(A325892(n)², A099393(n))`
-/

namespace A325895.P16731006888962258089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325892 n ^ 2) (A099393 n)

end

end A325895.P16731006888962258089

/-!
# A325896: Digits of the 2-adic integer 3^(1/5).

The programs for A325896, there is no canonical definition to state claims against.
-/

/-! ## A325896.P2301960804927550992

`(A325892(n+1)-A325892(n))/2^n`
-/

namespace A325896.P2301960804927550992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325892 (n + 1) - A325892 n : ℚ) / (2 ^ n : ℚ)

end

end A325896.P2301960804927550992

/-! ## A325896.P11887645036510553948

`ceil(Δ[atan(A325892(n))])`
-/

namespace A325896.P11887645036510553948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A325892 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A325896.P11887645036510553948

/-! ## A325896.P9534727590505930478

`floor(A325892(n+1)/2^n)`
-/

namespace A325896.P9534727590505930478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325892 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A325896.P9534727590505930478

/-! ## A325896.P14501374241783095770

`Δ[A325892(n)]/A000079(n)`
-/

namespace A325896.P14501374241783095770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325892 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A325896.P14501374241783095770

/-! ## A325896.P2741225591727110692

`ceil(Δ[A325892(n)]/A000051(n))`
-/

namespace A325896.P2741225591727110692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A000051 n : ℚ)⌉

end

end A325896.P2741225591727110692

/-! ## A325896.P4022135551452533317

`1-A008683(49*(n+1))^Δ[atan(A325892(n))]`
-/

namespace A325896.P4022135551452533317
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A325892 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - (A008683 (49 * (n + 1)) : ℝ) ^ (f1 (n + 1) - f1 n)

end

end A325896.P4022135551452533317

/-!
# A325897: Digits of the 2-adic integer 5^(1/5).

The programs for A325897, there is no canonical definition to state claims against.
-/

/-! ## A325897.P5378220044465925686

`(A325893(n+1)-A325893(n))/2^n`
-/

namespace A325897.P5378220044465925686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325893 (n + 1) - A325893 n : ℚ) / (2 ^ n : ℚ)

end

end A325897.P5378220044465925686

/-! ## A325897.P8589679514235048097

`ceil(Δ[atan(A325893(n))])`
-/

namespace A325897.P8589679514235048097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A325893 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A325897.P8589679514235048097

/-! ## A325897.P13345000582236410380

`Δ[A325893(n)]/A000079(n)`
-/

namespace A325897.P13345000582236410380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325893 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A325897.P13345000582236410380

/-! ## A325897.P5665605011518886165

`A000045(Δ[A325893(n)]/2^n)`
-/

namespace A325897.P5665605011518886165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A325897.P5665605011518886165

/-! ## A325897.P1504380878839266124

`A001221(Δ[A325893(n)]/2^n+1)`
-/

namespace A325897.P1504380878839266124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A325897.P1504380878839266124

/-! ## A325897.P18216708806998416134

`A001222(Δ[A325893(n)]/2^n+1)`
-/

namespace A325897.P18216708806998416134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A325897.P18216708806998416134

/-!
# A325898: Digits of the 2-adic integer 7^(1/5).

The programs for A325898, there is no canonical definition to state claims against.
-/

/-! ## A325898.P8787484040088942168

`(A325894(n+1)-A325894(n))/2^n`
-/

namespace A325898.P8787484040088942168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325894 (n + 1) - A325894 n : ℚ) / (2 ^ n : ℚ)

end

end A325898.P8787484040088942168

/-! ## A325898.P4598862443125310708

`ceil(Δ[atan(A325894(n))])`
-/

namespace A325898.P4598862443125310708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A325894 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A325898.P4598862443125310708

/-! ## A325898.P2365578508921266648

`floor(A325894(n+1)/2^n)`
-/

namespace A325898.P2365578508921266648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325894 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A325898.P2365578508921266648

/-! ## A325898.P1377207509112600272

`Δ[A325894(n)]/A000079(n)`
-/

namespace A325898.P1377207509112600272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A325898.P1377207509112600272

/-! ## A325898.P12783293868673874102

`A000045(Δ[A325894(n)]/2^n)`
-/

namespace A325898.P12783293868673874102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A325898.P12783293868673874102

/-! ## A325898.P11138211213407905421

`A001221(Δ[A325894(n)]/2^n+1)`
-/

namespace A325898.P11138211213407905421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A325898.P11138211213407905421

/-!
# A325899: Digits of the 2-adic integer 9^(1/5).

The programs for A325899, there is no canonical definition to state claims against.
-/

/-! ## A325899.P5937787671132619475

`(A325895(n+1)-A325895(n))/2^n`
-/

namespace A325899.P5937787671132619475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325895 (n + 1) - A325895 n : ℚ) / (2 ^ n : ℚ)

end

end A325899.P5937787671132619475

/-! ## A325899.P6631220878721042490

`ceil(Δ[atan(A325895(n))])`
-/

namespace A325899.P6631220878721042490
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A325895 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A325899.P6631220878721042490

/-! ## A325899.P8454766211873029465

`floor(A325895(n+1)/2^n)`
-/

namespace A325899.P8454766211873029465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325895 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A325899.P8454766211873029465

/-! ## A325899.P10827312448889410682

`Δ[A325895(n)]/A000079(n)`
-/

namespace A325899.P10827312448889410682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325895 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A325899.P10827312448889410682

/-! ## A325899.P2691520277682438207

`A000045(Δ[A325895(n)]/2^n)`
-/

namespace A325899.P2691520277682438207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A325899.P2691520277682438207

/-! ## A325899.P13545026354470551824

`A001222(Δ[A325895(n)]/2^n+1)`
-/

namespace A325899.P13545026354470551824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A325899.P13545026354470551824

