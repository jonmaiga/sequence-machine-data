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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A096400: Number of equivalence classes of triangles having equal angles of integral degrees and smallest angle = n.

The programs for A096400, there is no canonical definition to state claims against.
-/

/-! ## A096400.P18150295960360384392

`90-comp[3*n]`
-/

namespace A096400.P18150295960360384392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  90 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A096400.P18150295960360384392

/-! ## A096400.P5638557515664244714

`abs(91-∑[gcd(2, n)])`
-/

namespace A096400.P5638557515664244714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |91 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A096400.P5638557515664244714

/-! ## A096400.P8327514286782715448

`abs(90-lt[n, lcm(3, n)])`
-/

namespace A096400.P8327514286782715448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |90 - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)|

end

end A096400.P8327514286782715448

/-! ## A096400.P14409836901395528618

`abs(3-a(n-2))` with `a(0)=89, a(1)=88`
-/

namespace A096400.P14409836901395528618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89, 88] fun n a =>
  |3 - a (n - 2)|

end

end A096400.P14409836901395528618

/-! ## A096400.P14814684768436586915

`abs(lt[0, n*n%3]-90)`
-/

namespace A096400.P14814684768436586915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 90|

end

end A096400.P14814684768436586915

/-! ## A096400.P4595789196161901552

`floor(a(n-1)-(a(n-3)-a(n-2)))` with `a(0)=89, a(1)=88, a(2)=86`

`floor` is left out, it is the identity on integers.
-/

namespace A096400.P4595789196161901552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89, 88, 86] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2))

end

end A096400.P4595789196161901552

/-! ## A096400.P15993989434063183504

`abs(89-A032766(n))`
-/

namespace A096400.P15993989434063183504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |89 - A032766 n|

end

end A096400.P15993989434063183504

/-! ## A096400.P8807793944241270500

`abs(90-∑[A040001(n)])`
-/

namespace A096400.P8807793944241270500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |90 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A096400.P8807793944241270500

/-! ## A096400.P739441246753676548

`abs(90-Δ[A077043(n)])`
-/

namespace A096400.P739441246753676548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |90 - (f1 (n + 1) - f1 n)|

end

end A096400.P739441246753676548

/-! ## A096400.P15033661654312999649

`abs(90-record[A004482(n)])`
-/

namespace A096400.P15033661654312999649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |90 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A096400.P15033661654312999649

/-!
# A096401: Number of balanced partitions of n into distinct parts: least part is equal to number of parts.

The programs for A096401, there is no canonical definition to state claims against.
-/

/-! ## A096401.P1320742565589377883

`A025157(n+1)-A237979(n+1)`
-/

namespace A096401.P1320742565589377883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (n + 1) - A237979 (n + 1)

end

end A096401.P1320742565589377883

/-! ## A096401.P186711646331421173

`A237977(n+1)-A237976(n+1)`
-/

namespace A096401.P186711646331421173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237977 (n + 1) - A237976 (n + 1)

end

end A096401.P186711646331421173

/-! ## A096401.P3851616624235163232

`A237977(n+1)+A134824(n)*A237976(n+1)`
-/

namespace A096401.P3851616624235163232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237977 (n + 1) + A134824 n * A237976 (n + 1)

end

end A096401.P3851616624235163232

/-! ## A096401.P4330808283864891994

`A025157(n+1)+A237977(n+1)-A000009(n+1)`
-/

namespace A096401.P4330808283864891994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (n + 1) + (A237977 (n + 1) - A000009 (n + 1))

end

end A096401.P4330808283864891994

/-! ## A096401.P4765115991436266663

`A000009(n+1)-(A237979(n+1)+A237976(n+1))`
-/

namespace A096401.P4765115991436266663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A237979 (n + 1) + A237976 (n + 1))

end

end A096401.P4765115991436266663

/-!
# A096402: n! times the volume of the polytope x_i >= 0 for 1 <= i <= n and x_i + x_{i+1} + x_{i+2} <= 1 for 1 <= i <= n-2.

The programs for A096402, there is no canonical definition to state claims against.
-/

/-! ## A096402.P13963651265890837891

`A023193(A091217(n))`
-/

namespace A096402.P13963651265890837891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A091217 n).toNat

end

end A096402.P13963651265890837891

/-! ## A096402.P9993365540871558189

`A023193(A171450(n))`
-/

namespace A096402.P9993365540871558189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A171450 n).toNat

end

end A096402.P9993365540871558189

/-! ## A096402.P7562189872303638447

`A026819(A252462(n!))`
-/

namespace A096402.P7562189872303638447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A252462 (Nat.factorial n)).toNat

end

end A096402.P7562189872303638447

/-! ## A096402.P14553628425533799013

`A008651(6*A113997(n))`
-/

namespace A096402.P14553628425533799013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (6 * A113997 n).toNat

end

end A096402.P14553628425533799013

/-!
# A096403: Number of partitions of n in which number of least parts is equal to least part.

The programs for A096403, there is no canonical definition to state claims against.
-/

/-! ## A096403.P14868781670596548655

`A240177(n+1)-A240176(n+1)`
-/

namespace A096403.P14868781670596548655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240177 (n + 1) - A240176 (n + 1)

end

end A096403.P14868781670596548655

/-! ## A096403.P10363398381102596816

`A188216(n+1)+A240177(n+1)-A000041(n+1)`
-/

namespace A096403.P10363398381102596816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188216 (n + 1) + (A240177 (n + 1) - A000041 (n + 1))

end

end A096403.P10363398381102596816

/-! ## A096403.P1864154325402563043

`A240493(n+1)-A394291(n+1)`
-/

namespace A096403.P1864154325402563043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240493 (n + 1) - A394291 (n + 1)

end

end A096403.P1864154325402563043

/-! ## A096403.P6898342449349001078

`A188216(n+1)-A240175(n+1)`
-/

namespace A096403.P6898342449349001078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188216 (n + 1) - A240175 (n + 1)

end

end A096403.P6898342449349001078

/-! ## A096403.P4168822934490577609

`A000041(n+1)-(A240176(n+1)+A240175(n+1))`
-/

namespace A096403.P4168822934490577609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A240176 (n + 1) + A240175 (n + 1))

end

end A096403.P4168822934490577609

/-!
# A096404: a(n) = ceiling(e^(e^n)).

The programs for A096404, there is no canonical definition to state claims against.
-/

/-! ## A096404.P18086717984021825985

`ceil(exp(exp(n-5)))`
-/

namespace A096404.P18086717984021825985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.exp ((n : ℤ) - 5 : ℝ))⌉

end

end A096404.P18086717984021825985

/-! ## A096404.P14428310552399289591

`A111794(A000389(n)+2)`
-/

namespace A096404.P14428310552399289591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111794 (A000389 n + 2).toNat

end

end A096404.P14428310552399289591

/-! ## A096404.P13829133365933794176

`A214577(A008732(C(n, 5)))`
-/

namespace A096404.P13829133365933794176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214577 (A008732 (Nat.choose n 5)).toNat

end

end A096404.P13829133365933794176

/-!
# A096405: Numbers having an equal number of zeros in their binary and ternary representations.

The programs for A096405, the canonical program `A096405.P13414936456104695719` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096405 has offset 1).

The definition of A096405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096405.P13414936456104695719

`eq[A023416(n), A077267(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096405

/-- `eq[A023416(n), A077267(n)]` -/
def P13414936456104695719.Spec : Prop :=
  ∀ n, (P13414936456104695719.a n : ℤ) = A096405 (n + 1)

theorem P13414936456104695719.correct : P13414936456104695719.Spec := by
  intro n
  simp only [A096405, Nat.add_sub_cancel]

end A096405

/-! ## A096405.P4015204722463347336

`eq[A000120(A035327(n)), A077267(n)]`
-/

namespace A096405.P4015204722463347336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P4015204722463347336

namespace A096405

/-- `eq[A000120(A035327(n)), A077267(n)]` -/
def P4015204722463347336.Spec : Prop :=
  ∀ n, (P4015204722463347336.a n : ℤ) = A096405 (n + 1)

end A096405

/-! ## A096405.P9200751095192817778

`eq[A023416(n), A023416(A289831(n))]`
-/

namespace A096405.P9200751095192817778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P9200751095192817778

namespace A096405

/-- `eq[A023416(n), A023416(A289831(n))]` -/
def P9200751095192817778.Spec : Prop :=
  ∀ n, (P9200751095192817778.a n : ℤ) = A096405 (n + 1)

end A096405

/-! ## A096405.P5333150099868171905

`eq[A080100(n), A080100(A289831(n))]`
-/

namespace A096405.P5333150099868171905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A289831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P5333150099868171905

namespace A096405

/-- `eq[A080100(n), A080100(A289831(n))]` -/
def P5333150099868171905.Spec : Prop :=
  ∀ n, (P5333150099868171905.a n : ℤ) = A096405 (n + 1)

end A096405

/-! ## A096405.P14078805693041457259

`eq[A290251(A289831(n)), A290251(n)]`
-/

namespace A096405.P14078805693041457259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A289831 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P14078805693041457259

namespace A096405

/-- `eq[A290251(A289831(n)), A290251(n)]` -/
def P14078805693041457259.Spec : Prop :=
  ∀ n, (P14078805693041457259.a n : ℤ) = A096405 (n + 1)

end A096405

/-! ## A096405.P18378565044078841882

`eq[A037861(n)+A000120(n), A077267(n)]`
-/

namespace A096405.P18378565044078841882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P18378565044078841882

namespace A096405

/-- `eq[A037861(n)+A000120(n), A077267(n)]` -/
def P18378565044078841882.Spec : Prop :=
  ∀ n, (P18378565044078841882.a n : ℤ) = A096405 (n + 1)

end A096405

/-! ## A096405.P8920785929482350682

`eq[A077267(A005836(n+1)), A077267(n)]`
-/

namespace A096405.P8920785929482350682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A005836 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096405.P8920785929482350682

namespace A096405

/-- `eq[A077267(A005836(n+1)), A077267(n)]` -/
def P8920785929482350682.Spec : Prop :=
  ∀ n, (P8920785929482350682.a n : ℤ) = A096405 (n + 1)

end A096405

/-!
# A096406: a(1) = 4; then alternately add -4 and multiply by -2.

The programs for A096406, the canonical program `A096406.P1333334439397348593` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096406 has offset 1).

The definition of A096406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096406.P1333334439397348593

`2*a(n-4)-a(n-2)` with `a(0)=4, a(1)=0, a(2)=0, a(3)=-4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096406

/-- `2*a(n-4)-a(n-2)` -/
def P1333334439397348593.Spec : Prop :=
  ∀ n, P1333334439397348593.a n = A096406 (n + 1)

theorem P1333334439397348593.correct : P1333334439397348593.Spec := by
  intro n
  simp only [A096406, Nat.add_sub_cancel]

end A096406

/-! ## A096406.P13066383662872217368

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=4, a(1)=0, a(2)=0, a(3)=-4`
-/

namespace A096406.P13066383662872217368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0, -4] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A096406.P13066383662872217368

namespace A096406

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P13066383662872217368.Spec : Prop :=
  ∀ n, P13066383662872217368.a n = A096406 (n + 1)

theorem P13066383662872217368.correct : P13066383662872217368.Spec := by
  intro n
  simp only [A096406, Nat.add_sub_cancel, A096406.P13066383662872217368.a, A096406.P1333334439397348593.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A096406

/-! ## A096406.P14386977693952698265

`2*(A077953(n)+A033999(n))`
-/

namespace A096406.P14386977693952698265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077953 n + A033999 n)

end

end A096406.P14386977693952698265

namespace A096406

/-- `2*(A077953(n)+A033999(n))` -/
def P14386977693952698265.Spec : Prop :=
  ∀ n, P14386977693952698265.a n = A096406 (n + 1)

end A096406

/-! ## A096406.P16883709470441678737

`2*(A077953(n)+1-A010673(n))`
-/

namespace A096406.P16883709470441678737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077953 n + (1 - A010673 n))

end

end A096406.P16883709470441678737

namespace A096406

/-- `2*(A077953(n)+1-A010673(n))` -/
def P16883709470441678737.Spec : Prop :=
  ∀ n, P16883709470441678737.a n = A096406 (n + 1)

end A096406

/-! ## A096406.P11890254622415084882

`2*(A004442(n)+A077953(n)-n)`
-/

namespace A096406.P11890254622415084882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004442 n + (A077953 n - (n : ℤ)))

end

end A096406.P11890254622415084882

namespace A096406

/-- `2*(A004442(n)+A077953(n)-n)` -/
def P11890254622415084882.Spec : Prop :=
  ∀ n, P11890254622415084882.a n = A096406 (n + 1)

end A096406

/-! ## A096406.P1466611685876082618

`Δ[A052938(n)]*A084247(A008619(n+1))`
-/

namespace A096406.P1466611685876082618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084247 (A008619 (n + 1)).toNat

end

end A096406.P1466611685876082618

namespace A096406

/-- `Δ[A052938(n)]*A084247(A008619(n+1))` -/
def P1466611685876082618.Spec : Prop :=
  ∀ n, P1466611685876082618.a n = A096406 (n + 1)

end A096406

/-!
# A096407: a(n) = f(n)/f(n-2) where f(k) = A002665(k).

The programs for A096407, there is no canonical definition to state claims against.
-/

/-! ## A096407.P6645922069998879185

`ratio[A063573(n+1)]`
-/

namespace A096407.P6645922069998879185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063573 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A096407.P6645922069998879185

/-! ## A096407.P8898322799721955241

`ratio[Δ[A002065(n+1)]]`
-/

namespace A096407.P8898322799721955241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A096407.P8898322799721955241

/-! ## A096407.P1139539928827926763

`ratio[Δ[A166105(n+1)]]`
-/

namespace A096407.P1139539928827926763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166105 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A096407.P1139539928827926763

/-!
# A096419: Number of cyclically symmetric plane partitions (Macdonald's plane partition conjecture).

The programs for A096419, there is no canonical definition to state claims against.
-/

/-! ## A096419.P3406211284631251269

`A048141(n+1)+2*A048142(n+1)`
-/

namespace A096419.P3406211284631251269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (n + 1) + 2 * A048142 (n + 1)

end

end A096419.P3406211284631251269

/-! ## A096419.P1927285332107677192

`A048141(n+1)+A005843(A048142(n+1))`
-/

namespace A096419.P1927285332107677192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (n + 1) + A005843 (A048142 (n + 1)).toNat

end

end A096419.P1927285332107677192

/-! ## A096419.P18359000734424557044

`A005843(A048142(n+1))+A005987(n+1)-A000784(n+1)`
-/

namespace A096419.P18359000734424557044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A048142 (n + 1)).toNat + (A005987 (n + 1) - A000784 (n + 1))

end

end A096419.P18359000734424557044

/-! ## A096419.P1200445960172657327

`A000786(n+1)+A048139(n+1)-A048140(n+1)`
-/

namespace A096419.P1200445960172657327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000786 (n + 1) + (A048139 (n + 1) - A048140 (n + 1))

end

end A096419.P1200445960172657327

/-! ## A096419.P6580762549496209860

`and(A001221(A260989(n+1)), A164409(2*(n+4)))`
-/

namespace A096419.P6580762549496209860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A260989 (n + 1)).toNat) (A164409 (2 * (n + 4)))

end

end A096419.P6580762549496209860

/-!
# A096421: a(1)=1; for n > 1, a(n) = Sum_{1<=j

The programs for A096421, there is no canonical definition to state claims against.
-/

/-! ## A096421.P15236936350404204437

`A385890(A152536(n+1))`
-/

namespace A096421.P15236936350404204437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385890 (A152536 (n + 1)).toNat

end

end A096421.P15236936350404204437

/-! ## A096421.P14145630434608727022

`A008619(n)*A178843(A110334(n))`
-/

namespace A096421.P14145630434608727022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A178843 (A110334 n).toNat

end

end A096421.P14145630434608727022

/-! ## A096421.P3216736596155837716

`A008619(n)*A156074(A352624(n))`
-/

namespace A096421.P3216736596155837716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A156074 (A352624 n).toNat

end

end A096421.P3216736596155837716

/-! ## A096421.P17827519512050066900

`A087086(A305750(n)-A281155(3*n))`
-/

namespace A096421.P17827519512050066900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A305750 n - A281155 (3 * n)).toNat

end

end A096421.P17827519512050066900

/-!
# A096422: a(1)=a(2)=a(3)=1, a(n) = 2*a(n-1)*a(n-3) + a(n-3)^2 for n > 3.

The programs for A096422, there is no canonical definition to state claims against.
-/

/-! ## A096422.P11354293869314635946

`(a(n-3)+2*a(n-1))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A096422.P11354293869314635946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 3) + 2 * a (n - 1)) * a (n - 3)

end

end A096422.P11354293869314635946

/-! ## A096422.P12932361129151000893

`(a(n-1)+a(n-3))²-a(n-1)²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A096422.P12932361129151000893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 3)) ^ 2 - a (n - 1) ^ 2

end

end A096422.P12932361129151000893

/-!
# A096423: a(1)=a(2)=1, a(n) = (a(n-1)+1)*(a(n-2)+1) for n > 2.

The programs for A096423, the canonical program `A096423.P16023977227261404015` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096423 has offset 1).

The definition of A096423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+1)*(a(n-2)+1)` (program `A096423.P16023977227261404015`, by `A096423.P16023977227261404015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096423.P16023977227261404015

`(a(n-1)+1)*(a(n-2)+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096423

/-- `(a(n-1)+1)*(a(n-2)+1)` -/
def P16023977227261404015.Spec : Prop :=
  ∀ n, (P16023977227261404015.a n : ℤ) = A096423 (n + 1)

theorem P16023977227261404015.correct : P16023977227261404015.Spec := by
  intro n
  simp only [A096423, Nat.add_sub_cancel]

end A096423

/-! ## A096423.P15548103298338331870

`lcm(a(n-1)+1, a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A096423.P15548103298338331870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  Nat.lcm (a (n - 1) + 1) (a (n - 2) + 1)

end

end A096423.P15548103298338331870

namespace A096423

/-- `lcm(a(n-1)+1, a(n-2)+1)` -/
def P15548103298338331870.Spec : Prop :=
  ∀ n, (P15548103298338331870.a n : ℤ) = A096423 (n + 1)

end A096423

/-! ## A096423.P13610615367038530663

`A262714(n)-1`
-/

namespace A096423.P13610615367038530663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262714 n - 1

end

end A096423.P13610615367038530663

namespace A096423

/-- `A262714(n)-1` -/
def P13610615367038530663.Spec : Prop :=
  ∀ n, P13610615367038530663.a n = A096423 (n + 1)

end A096423

/-! ## A096423.P3263534711822729225

`A308778(n²)+A262714(n)`
-/

namespace A096423.P3263534711822729225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A262714 n

end

end A096423.P3263534711822729225

namespace A096423

/-- `A308778(n²)+A262714(n)` -/
def P3263534711822729225.Spec : Prop :=
  ∀ n, P3263534711822729225.a n = A096423 (n + 1)

end A096423

/-! ## A096423.P135438541857599433

`A262725(p?[A262697(n)])+A262714(n)`
-/

namespace A096423.P135438541857599433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262725 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A262714 n

end

end A096423.P135438541857599433

namespace A096423

/-- `A262725(p?[A262697(n)])+A262714(n)` -/
def P135438541857599433.Spec : Prop :=
  ∀ n, P135438541857599433.a n = A096423 (n + 1)

end A096423

/-!
# A096424: a(1)=a(2)=1, a(n) = (a(n-2)+F(n-2)) * (a(n-1)+F(n-1)) for n > 2 where F(i) is the i-th Fibonacci no.

The programs for A096424, there is no canonical definition to state claims against.
-/

/-! ## A096424.P16292969552172469380

`A080653(A327078(n))-A357183(n)`
-/

namespace A096424.P16292969552172469380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080653 (A327078 n).toNat - A357183 n

end

end A096424.P16292969552172469380

/-! ## A096424.P9346085855177517714

`A206289(n)*A241086(A000051(n))`
-/

namespace A096424.P9346085855177517714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206289 n * A241086 (A000051 n).toNat

end

end A096424.P9346085855177517714

/-!
# A096425: a(1)=a(2)=1, a(n) = (a(n-2)+p(n-2)) * (a(n-1)+p(n-1)) for n > 2 where p(i) is the i-th prime number.

The programs for A096425, there is no canonical definition to state claims against.
-/

/-! ## A096425.P17613695947662856732

`A233278(A007556(n))`
-/

namespace A096425.P17613695947662856732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A007556 n).toNat

end

end A096425.P17613695947662856732

/-!
# A096426: Floor of the area consecutive odd sided triangles.

The programs for A096426, there is no canonical definition to state claims against.
-/

/-! ## A096426.P8124158330293642719

`A155212(2*n+1)-∑[A003056(A031285(3*n+1))]`
-/

namespace A096426.P8124158330293642719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A031285 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096426.P8124158330293642719

/-! ## A096426.P14624339044878799766

`floor(log(∏[A154244(2*n+5)]))`
-/

namespace A096426.P14624339044878799766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154244 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌋

end

end A096426.P14624339044878799766

/-! ## A096426.P672413009239495850

`floor(4*log(A211103(n+1)))-(n+1)`
-/

namespace A096426.P672413009239495850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * Real.log (A211103 (n + 1) : ℝ)⌋ - (n + 1 : ℤ)

end

end A096426.P672413009239495850

/-! ## A096426.P17827752257913873983

`A332102(∑[n+2]-1)+∑[n+2]-1`
-/

namespace A096426.P17827752257913873983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332102 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

end

end A096426.P17827752257913873983

/-! ## A096426.P18254056919416196102

`A194028(A050175(∑[n]))`
-/

namespace A096426.P18254056919416196102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194028 (A050175 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A096426.P18254056919416196102

/-!
# A096430: Numerator of (9*(n^4 - 2*n^3 + 2*n^2 - n) + 2)/(2*(2*n-1)).

The programs for A096430, the canonical program `A096430.P8404274837201999174` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096430 has offset 1).

The definition of A096430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096430.P8404274837201999174

`lcm(5, C(∑[6*n]+2, 2))/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096430

/-- `lcm(5, C(∑[6*n]+2, 2))/5` -/
def P8404274837201999174.Spec : Prop :=
  ∀ n, P8404274837201999174.a n = (A096430 (n + 1) : ℚ)

end A096430

/-! ## A096430.P16768609844890028213

`C(∑[6*n]+2, 2)/gcd(5, (4*n+2)²)`
-/

namespace A096430.P16768609844890028213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℚ) / (Nat.gcd 5 ((4 * n + 2) ^ 2) : ℚ)

end

end A096430.P16768609844890028213

namespace A096430

/-- `C(∑[6*n]+2, 2)/gcd(5, (4*n+2)²)` -/
def P16768609844890028213.Spec : Prop :=
  ∀ n, P16768609844890028213.a n = (A096430 (n + 1) : ℚ)

end A096430

/-! ## A096430.P14472782418928313526

`lcm(5, A079903(n+1))/5`
-/

namespace A096430.P14472782418928313526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A079903 (n + 1)) : ℚ) / 5

end

end A096430.P14472782418928313526

namespace A096430

/-- `lcm(5, A079903(n+1))/5` -/
def P14472782418928313526.Spec : Prop :=
  ∀ n, P14472782418928313526.a n = (A096430 (n + 1) : ℚ)

end A096430

/-! ## A096430.P7645401275351060391

`A079903(n+1)/gcd(5, A005408(n))`
-/

namespace A096430.P7645401275351060391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079903 (n + 1) : ℚ) / (Int.gcd 5 (A005408 n) : ℚ)

end

end A096430.P7645401275351060391

namespace A096430

/-- `A079903(n+1)/gcd(5, A005408(n))` -/
def P7645401275351060391.Spec : Prop :=
  ∀ n, P7645401275351060391.a n = (A096430 (n + 1) : ℚ)

end A096430

/-! ## A096430.P1472578801023720086

`C(∑[6*n]+2, 2)/A010134(Δ[n²]²)`
-/

namespace A096430.P1472578801023720086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℚ) / (A010134 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2).toNat : ℚ)

end

end A096430.P1472578801023720086

namespace A096430

/-- `C(∑[6*n]+2, 2)/A010134(Δ[n²]²)` -/
def P1472578801023720086.Spec : Prop :=
  ∀ n, P1472578801023720086.a n = (A096430 (n + 1) : ℚ)

end A096430

/-!
# A096431: Denominator of (9*(n^4 - 2*n^3 + 2*n^2 - n) + 2)/(2*(2*n - 1)).

The programs for A096431, the canonical program `A096431.P3153377580221094253` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096431 has offset 1).

The definition of A096431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096431.P5451939011285116188

`lcm(5, Δ[n²])/5`
-/

namespace A096431.P5451939011285116188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 5

end

end A096431.P5451939011285116188

namespace A096431

/-- `lcm(5, Δ[n²])/5` -/
def P5451939011285116188.Spec : Prop :=
  ∀ n, P5451939011285116188.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P1229333733852748508

`Δ[n²]/gcd(5, 2-n)`
-/

namespace A096431.P1229333733852748508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd 5 (2 - (n : ℤ)) : ℚ)

end

end A096431.P1229333733852748508

namespace A096431

/-- `Δ[n²]/gcd(5, 2-n)` -/
def P1229333733852748508.Spec : Prop :=
  ∀ n, P1229333733852748508.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P3153377580221094253

`floor(lcm(10, 2*n+1)/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096431

/-- `floor(lcm(10, 2*n+1)/10)` -/
def P3153377580221094253.Spec : Prop :=
  ∀ n, P3153377580221094253.a n = A096431 (n + 1)

theorem P3153377580221094253.correct : P3153377580221094253.Spec := by
  intro n
  simp only [A096431, Nat.add_sub_cancel]

end A096431

/-! ## A096431.P5236380708265770011

`gcd(2*n+1, ∑[C(n², 2)])`
-/

namespace A096431.P5236380708265770011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096431.P5236380708265770011

namespace A096431

/-- `gcd(2*n+1, ∑[C(n², 2)])` -/
def P5236380708265770011.Spec : Prop :=
  ∀ n, (P5236380708265770011.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P3611401446347964215

`ceil(lcm(n+1+n, n+3)/(n+3))`
-/

namespace A096431.P3611401446347964215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (n + 1 + n) (n + 3) : ℚ) / (n + 3 : ℚ)⌉

end

end A096431.P3611401446347964215

namespace A096431

/-- `ceil(lcm(n+1+n, n+3)/(n+3))` -/
def P3611401446347964215.Spec : Prop :=
  ∀ n, P3611401446347964215.a n = A096431 (n + 1)

end A096431

/-! ## A096431.P5989649209371280203

`(2*n+1)/((2*n+1)^4)%10`
-/

namespace A096431.P5989649209371280203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (((2 * n + 1) ^ 4 % 10 : ℕ) : ℚ)

end

end A096431.P5989649209371280203

namespace A096431

/-- `(2*n+1)/((2*n+1)^4)%10` -/
def P5989649209371280203.Spec : Prop :=
  ∀ n, P5989649209371280203.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P3515839843638862594

`(2*n+1)/dr(gcd(10, (2*n+1)²))`
-/

namespace A096431.P3515839843638862594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (Nat.gcd 10 ((2 * n + 1) ^ 2) : ℤ) : ℚ)

end

end A096431.P3515839843638862594

namespace A096431

/-- `(2*n+1)/dr(gcd(10, (2*n+1)²))` -/
def P3515839843638862594.Spec : Prop :=
  ∀ n, P3515839843638862594.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P8655361195952043882

`sqrt(lcm((2*n+1)², (n+3)²))/(n+3)`
-/

namespace A096431.P8655361195952043882
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm ((2 * n + 1) ^ 2) ((n + 3) ^ 2) : ℝ) / (n + 3 : ℝ)

end

end A096431.P8655361195952043882

namespace A096431

/-- `sqrt(lcm((2*n+1)², (n+3)²))/(n+3)` -/
def P8655361195952043882.Spec : Prop :=
  ∀ n, P8655361195952043882.a n = (A096431 (n + 1) : ℝ)

end A096431

/-! ## A096431.P8847060871933884323

`(2*n+1)/∏{p}[2*n+1, gcd(#, n+3)]`
-/

namespace A096431.P8847060871933884323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd p (n + 3) : ℕ) : ℚ)

end

end A096431.P8847060871933884323

namespace A096431

/-- `(2*n+1)/∏{p}[2*n+1, gcd(#, n+3)]` -/
def P8847060871933884323.Spec : Prop :=
  ∀ n, P8847060871933884323.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P1384695257000501236

`floor((2*n+1)/gcd(n+1+n, ∑[n-1]))`
-/

namespace A096431.P1384695257000501236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / (Int.gcd (n + 1 + n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A096431.P1384695257000501236

namespace A096431

/-- `floor((2*n+1)/gcd(n+1+n, ∑[n-1]))` -/
def P1384695257000501236.Spec : Prop :=
  ∀ n, P1384695257000501236.a n = A096431 (n + 1)

end A096431

/-! ## A096431.P10017252457590797728

`gcd(2*n+1, A002299(n))`
-/

namespace A096431.P10017252457590797728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A002299 n)

end

end A096431.P10017252457590797728

namespace A096431

/-- `gcd(2*n+1, A002299(n))` -/
def P10017252457590797728.Spec : Prop :=
  ∀ n, (P10017252457590797728.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P7721724088409377986

`(2*n+1)/A014963(gcd((n+3)², Δ[n²]))`
-/

namespace A096431.P7721724088409377986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A014963 (Int.gcd ((n + 3) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) : ℚ)

end

end A096431.P7721724088409377986

namespace A096431

/-- `(2*n+1)/A014963(gcd((n+3)², Δ[n²]))` -/
def P7721724088409377986.Spec : Prop :=
  ∀ n, P7721724088409377986.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P5306918960153993301

`(2*n+1)/A006530(gcd((n+3)²², (2-n)²))`
-/

namespace A096431.P5306918960153993301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A006530 (Int.gcd (((n + 3) ^ 2) ^ 2 : ℤ) ((2 - (n : ℤ)) ^ 2)) : ℚ)

end

end A096431.P5306918960153993301

namespace A096431

/-- `(2*n+1)/A006530(gcd((n+3)²², (2-n)²))` -/
def P5306918960153993301.Spec : Prop :=
  ∀ n, P5306918960153993301.a n = (A096431 (n + 1) : ℚ)

end A096431

/-! ## A096431.P17409524143964810114

`A142994(n)%A016825(n)`
-/

namespace A096431.P17409524143964810114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142994 n) (A016825 n)

end

end A096431.P17409524143964810114

namespace A096431

/-- `A142994(n)%A016825(n)` -/
def P17409524143964810114.Spec : Prop :=
  ∀ n, P17409524143964810114.a n = A096431 (n + 1)

end A096431

/-! ## A096431.P7400189561553479894

`A201553(n)%A016825(n)`
-/

namespace A096431.P7400189561553479894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201553 n) (A016825 n)

end

end A096431.P7400189561553479894

namespace A096431

/-- `A201553(n)%A016825(n)` -/
def P7400189561553479894.Spec : Prop :=
  ∀ n, P7400189561553479894.a n = A096431 (n + 1)

end A096431

/-! ## A096431.P14822589534839161498

`gcd(A005898(n), A142994(n))`
-/

namespace A096431.P14822589534839161498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005898 n) (A142994 n)

end

end A096431.P14822589534839161498

namespace A096431

/-- `gcd(A005898(n), A142994(n))` -/
def P14822589534839161498.Spec : Prop :=
  ∀ n, (P14822589534839161498.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P15475266047106939482

`gcd(A002299(n), A157142(n))`
-/

namespace A096431.P15475266047106939482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002299 n) (A157142 n)

end

end A096431.P15475266047106939482

namespace A096431

/-- `gcd(A002299(n), A157142(n))` -/
def P15475266047106939482.Spec : Prop :=
  ∀ n, (P15475266047106939482.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P7767753457415670544

`gcd(A005904(n), A201553(n))`
-/

namespace A096431.P7767753457415670544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005904 n) (A201553 n)

end

end A096431.P7767753457415670544

namespace A096431

/-- `gcd(A005904(n), A201553(n))` -/
def P7767753457415670544.Spec : Prop :=
  ∀ n, (P7767753457415670544.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P3108846368600615651

`gcd(A016754(n), A215546(n))`
-/

namespace A096431.P3108846368600615651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016754 n) (A215546 n)

end

end A096431.P3108846368600615651

namespace A096431

/-- `gcd(A016754(n), A215546(n))` -/
def P3108846368600615651.Spec : Prop :=
  ∀ n, (P3108846368600615651.a n : ℤ) = A096431 (n + 1)

end A096431

/-! ## A096431.P782479382264924835

`gcd(A000466(n), A278714(n+1))`
-/

namespace A096431.P782479382264924835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000466 n) (A278714 (n + 1))

end

end A096431.P782479382264924835

namespace A096431

/-- `gcd(A000466(n), A278714(n+1))` -/
def P782479382264924835.Spec : Prop :=
  ∀ n, (P782479382264924835.a n : ℤ) = A096431 (n + 1)

end A096431

/-!
# A096432: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that 1 + max{e_2, e_3, ...} is a prime.

The programs for A096432, the canonical program `A096432.P17831341091393388892` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096432 has offset 1).

The definition of A096432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096432.P11738858501747712767

`comp[A060476(n+1)-1]+1`
-/

namespace A096432.P11738858501747712767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A096432.P11738858501747712767

namespace A096432

/-- `comp[A060476(n+1)-1]+1` -/
def P11738858501747712767.Spec : Prop :=
  ∀ n, (P11738858501747712767.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P16850142248239922447

`eq[0, A005171(A051903(n+1)+1)]+1`
-/

namespace A096432.P16850142248239922447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096432.P16850142248239922447

namespace A096432

/-- `eq[0, A005171(A051903(n+1)+1)]+1` -/
def P16850142248239922447.Spec : Prop :=
  ∀ n, (P16850142248239922447.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P6578391255501359326

`eq[1, A001222(A051903(n+1)+1)]+1`
-/

namespace A096432.P6578391255501359326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096432.P6578391255501359326

namespace A096432

/-- `eq[1, A001222(A051903(n+1)+1)]+1` -/
def P6578391255501359326.Spec : Prop :=
  ∀ n, (P6578391255501359326.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P17831341091393388892

`eq[1, A010051(A051903(n+1)+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096432

/-- `eq[1, A010051(A051903(n+1)+1)]+1` -/
def P17831341091393388892.Spec : Prop :=
  ∀ n, (P17831341091393388892.a n : ℤ) = A096432 (n + 1)

theorem P17831341091393388892.correct : P17831341091393388892.Spec := by
  intro n
  simp only [A096432, Nat.add_sub_cancel]

end A096432

/-! ## A096432.P737220263276707896

`eq[2, A255201(A051903(n+1)+1)]+1`
-/

namespace A096432.P737220263276707896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096432.P737220263276707896

namespace A096432

/-- `eq[2, A255201(A051903(n+1)+1)]+1` -/
def P737220263276707896.Spec : Prop :=
  ∀ n, (P737220263276707896.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P11983468703990330176

`eq[1, A001222(A067132(n+1))]+1`
-/

namespace A096432.P11983468703990330176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067132 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096432.P11983468703990330176

namespace A096432

/-- `eq[1, A001222(A067132(n+1))]+1` -/
def P11983468703990330176.Spec : Prop :=
  ∀ n, (P11983468703990330176.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P8524741553415433231

`eq[0, A005171(A067132(n+2))]+2`
-/

namespace A096432.P8524741553415433231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A067132 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A096432.P8524741553415433231

namespace A096432

/-- `eq[0, A005171(A067132(n+2))]+2` -/
def P8524741553415433231.Spec : Prop :=
  ∀ n, (P8524741553415433231.a n : ℤ) = A096432 (n + 1)

end A096432

/-! ## A096432.P2786231400124082836

`record[A020725(n+1)-A003415(A067132(n+1))]`
-/

namespace A096432.P2786231400124082836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) - A003415 (A067132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096432.P2786231400124082836

namespace A096432

/-- `record[A020725(n+1)-A003415(A067132(n+1))]` -/
def P2786231400124082836.Spec : Prop :=
  ∀ n, P2786231400124082836.a n = A096432 (n + 1)

end A096432

/-!
# A096433: a(1) = 1; for n > 1, choose a(n) so that Sum_{1 <= k <= n, gcd(k,n+1)=1} a(k) = 0.

The programs for A096433, there is no canonical definition to state claims against.
-/

/-! ## A096433.P15699771583047922795

`A118229(∑[n]+1)`
-/

namespace A096433.P15699771583047922795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118229 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A096433.P15699771583047922795

/-! ## A096433.P7483755212243192061

`Δ[A002654(A269910(A166304(n)))]`
-/

namespace A096433.P7483755212243192061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A269910 (A166304 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096433.P7483755212243192061

/-! ## A096433.P2348305121343532307

`Δ[A032662(A328843(n)²)]`
-/

namespace A096433.P2348305121343532307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 (A328843 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096433.P2348305121343532307

/-!
# A096436: a(n) = the number of squared primes and 1's needed to sum to n.

The programs for A096436, there is no canonical definition to state claims against.
-/

/-! ## A096436.P9716834401551223721

`A002828(A187829(n+1)%A297571(3*(n+1)))`
-/

namespace A096436.P9716834401551223721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A187829 (n + 1)) (A297571 (3 * (n + 1)))).toNat

end

end A096436.P9716834401551223721

/-! ## A096436.P10678558614354795397

`A002828(A079726(3*(n+1))%A374765(2*(n+2)))`
-/

namespace A096436.P10678558614354795397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A079726 (3 * (n + 1))) (A374765 (2 * (n + 2)))).toNat

end

end A096436.P10678558614354795397

/-! ## A096436.P11826538412654487135

`A002828(64*A044917(n+1))*A035382(A060689(n+1))`
-/

namespace A096436.P11826538412654487135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (64 * A044917 (n + 1)).toNat * A035382 (A060689 (n + 1)).toNat

end

end A096436.P11826538412654487135

/-! ## A096436.P17304609112495016870

`A002828(64*A044917(n+1))*A183102(A000188(n+1))`
-/

namespace A096436.P17304609112495016870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (64 * A044917 (n + 1)).toNat * A183102 (A000188 (n + 1)).toNat

end

end A096436.P17304609112495016870

/-! ## A096436.P17055657901611963837

`A002828(64*A044917(n+1))*A183102(A191090(n+1))`
-/

namespace A096436.P17055657901611963837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (64 * A044917 (n + 1)).toNat * A183102 (A191090 (n + 1)).toNat

end

end A096436.P17055657901611963837

/-!
# A096441: Number of palindromic and unimodal compositions of n. Equivalently, the number of orbits under conjugation of even nilpotent n X n matrices.

The programs for A096441, there is no canonical definition to state claims against.
-/

/-! ## A096441.P10844109735418324831

`2*A000009(n+1)-A282892(n+1)`
-/

namespace A096441.P10844109735418324831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 (n + 1) - A282892 (n + 1)

end

end A096441.P10844109735418324831

/-! ## A096441.P1350817573370081750

`A000009(n+1)+A025065(n+1)-A025065(n)`
-/

namespace A096441.P1350817573370081750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A025065 (n + 1) - A025065 n)

end

end A096441.P1350817573370081750

/-! ## A096441.P17068829000705783706

`A035363(n+1)+A000009(n+1)`
-/

namespace A096441.P17068829000705783706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + A000009 (n + 1)

end

end A096441.P17068829000705783706

/-! ## A096441.P7753601005304569717

`A035363(n+1)+abs(A081360(n+1))`
-/

namespace A096441.P7753601005304569717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + |A081360 (n + 1)|

end

end A096441.P7753601005304569717

/-! ## A096441.P5921728973941579463

`A282892(n+1)+2*A035363(n+1)`
-/

namespace A096441.P5921728973941579463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (n + 1) + 2 * A035363 (n + 1)

end

end A096441.P5921728973941579463

/-! ## A096441.P214235997181401627

`A025147(n+1)+A035363(n+1)+A025147(n)`
-/

namespace A096441.P214235997181401627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 1) + (A035363 (n + 1) + A025147 n)

end

end A096441.P214235997181401627

/-! ## A096441.P16776513568212058432

`A035363(n+1)+A036469(n+1)-A036469(n)`
-/

namespace A096441.P16776513568212058432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + (A036469 (n + 1) - A036469 n)

end

end A096441.P16776513568212058432

/-! ## A096441.P7563024896446353204

`A000041(n+1)+A035363(n+1)-A047967(n+1)`
-/

namespace A096441.P7563024896446353204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A035363 (n + 1) - A047967 (n + 1))

end

end A096441.P7563024896446353204

/-! ## A096441.P7406694069296688916

`A000009(n+1)+A000041(n+1)-A086543(n+1)`
-/

namespace A096441.P7406694069296688916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A000041 (n + 1) - A086543 (n + 1))

end

end A096441.P7406694069296688916

/-! ## A096441.P8155513337650729402

`A000041(n+1)+A365827(n+1)-A365825(n+1)`
-/

namespace A096441.P8155513337650729402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A365827 (n + 1) - A365825 (n + 1))

end

end A096441.P8155513337650729402

/-! ## A096441.P10211918060912375894

`A035363(n+1)+gcd(A035363(2*n+1), A081360(n+1))`
-/

namespace A096441.P10211918060912375894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + (Int.gcd (A035363 (2 * n + 1)) (A081360 (n + 1)) : ℤ)

end

end A096441.P10211918060912375894

/-! ## A096441.P12837038265419769729

`A035457(2*(n+1))+A035363(n+1)`
-/

namespace A096441.P12837038265419769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * (n + 1)) + A035363 (n + 1)

end

end A096441.P12837038265419769729

/-! ## A096441.P12517198016062826791

`A035363(n+1)+A067661(n+1)+A067659(n+1)`
-/

namespace A096441.P12517198016062826791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + (A067661 (n + 1) + A067659 (n + 1))

end

end A096441.P12517198016062826791

/-! ## A096441.P18240461201786903279

`A035363(2*(n+1))-A035622(2*(n+1))`
-/

namespace A096441.P18240461201786903279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A035622 (2 * (n + 1))

end

end A096441.P18240461201786903279

/-! ## A096441.P10435844115463464647

`A000041(n+1)-A006477(n+1)`
-/

namespace A096441.P10435844115463464647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A006477 (n + 1)

end

end A096441.P10435844115463464647

/-! ## A096441.P11263695248192992314

`A035363(2*(n+1))-A006477(n+1)`
-/

namespace A096441.P11263695248192992314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A006477 (n + 1)

end

end A096441.P11263695248192992314

/-! ## A096441.P3495962657979491076

`A000070(n+1)-(A006477(n+1)+A000070(n))`
-/

namespace A096441.P3495962657979491076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A006477 (n + 1) + A000070 n)

end

end A096441.P3495962657979491076

/-! ## A096441.P2378062209852509442

`A000009(n+1)+A047967(n+1)-A006477(n+1)`
-/

namespace A096441.P2378062209852509442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A047967 (n + 1) - A006477 (n + 1))

end

end A096441.P2378062209852509442

/-!
# A096442: a(n) = Max { k>0 : denominator(S(k,2n+1)) } where S(k,s)=sum(i=1,k,i^s*H(i,2)) - H(k,2)*H(k,-s) and H(k,r)=sum(i=1,k,1/i^r) are the generalized harmonic numbers.

The programs for A096442, there is no canonical definition to state claims against.
-/

/-! ## A096442.P13993711406678460324

`2*A006955(n+1)`
-/

namespace A096442.P13993711406678460324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006955 (n + 1)

end

end A096442.P13993711406678460324

/-! ## A096442.P10316354369211005229

`2*A050932(2*(n+1))`
-/

namespace A096442.P10316354369211005229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050932 (2 * (n + 1))

end

end A096442.P10316354369211005229

/-! ## A096442.P14362758920374229783

`2*A140219(2*(n+1))`
-/

namespace A096442.P14362758920374229783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140219 (2 * (n + 1))

end

end A096442.P14362758920374229783

/-! ## A096442.P428130197861547156

`2*A100616(2*n+3)`
-/

namespace A096442.P428130197861547156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100616 (2 * n + 3)

end

end A096442.P428130197861547156

/-! ## A096442.P3729661935335476040

`lcm(4, A050932(n+2+n))`
-/

namespace A096442.P3729661935335476040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A050932 (n + 2 + n))

end

end A096442.P3729661935335476040

/-! ## A096442.P8825707086909031505

`Δ[2*∑[A050932(2*n)]]`
-/

namespace A096442.P8825707086909031505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096442.P8825707086909031505

/-! ## A096442.P13178707590046597783

`lcm(4, A100616(A062545(n)))`
-/

namespace A096442.P13178707590046597783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A100616 (A062545 n).toNat)

end

end A096442.P13178707590046597783

/-! ## A096442.P12254523192367828025

`2*A002445(n+1)/A326577(n+2)`
-/

namespace A096442.P12254523192367828025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A002445 (n + 1) : ℚ) / (A326577 (n + 2) : ℚ))

end

end A096442.P12254523192367828025

/-! ## A096442.P8156881286137931101

`2*gcd(A002445(n+1), A306745(n+1))`
-/

namespace A096442.P8156881286137931101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A002445 (n + 1)) (A306745 (n + 1))

end

end A096442.P8156881286137931101

/-!
# A096443: Number of partitions of a multiset whose signature is the n-th partition (in Mathematica order).

The programs for A096443, there is no canonical definition to state claims against.
-/

/-! ## A096443.P14689365373621640409

`A318284(A129129(n))`
-/

namespace A096443.P14689365373621640409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A129129 n).toNat

end

end A096443.P14689365373621640409

/-! ## A096443.P12642533529427798637

`A333942(A114994(n))`
-/

namespace A096443.P12642533529427798637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (A114994 n).toNat

end

end A096443.P12642533529427798637

/-! ## A096443.P9903896527010595116

`A333942(eq[0, A124760(n)])`
-/

namespace A096443.P9903896527010595116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096443.P9903896527010595116

/-! ## A096443.P13519165742658424639

`A333942(lt[A124760(n), 1])`
-/

namespace A096443.P13519165742658424639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A096443.P13519165742658424639

/-! ## A096443.P8125132737825306686

`A333942(eq[1, A124765(2*n+1)])`
-/

namespace A096443.P8125132737825306686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096443.P8125132737825306686

/-! ## A096443.P6192637608002475457

`A333942(eq[A246591(2*n), A331856(n)])`
-/

namespace A096443.P6192637608002475457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333942 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096443.P6192637608002475457

/-!
# A096444: Decimal expansion of (Pi - 1)/2.

The programs for A096444, there is no canonical definition to state claims against.
-/

/-! ## A096444.P16493191473591028127

`(1-char[1])*A019669(n)`
-/

namespace A096444.P16493191473591028127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A019669 (n + 1)

end

end A096444.P16493191473591028127

/-! ## A096444.P1236516196708136996

`A269430(C(a(n-1), ∑[n+1])+n)` with `a(0)=1`
-/

namespace A096444.P1236516196708136996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269430 (Nat.choose (a (n - 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j) + n + 1)

end

end A096444.P1236516196708136996

/-! ## A096444.P10584033796051676471

`A019669(A254667(n)+char[1])`
-/

namespace A096444.P10584033796051676471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 ((A254667 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + 1)

end

end A096444.P10584033796051676471

/-! ## A096444.P17441876496523666300

`A019669(2*A254667(n)-n)`
-/

namespace A096444.P17441876496523666300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 ((2 * A254667 n - (n : ℤ)).toNat + 1)

end

end A096444.P17441876496523666300

/-! ## A096444.P12247782709715989376

`A269430(n)+C(A269430(a(n-1)), n+1)` with `a(0)=1`
-/

namespace A096444.P12247782709715989376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269430 (n + 1) + (Nat.choose (A269430 ((a (n - 1)).toNat + 1)).toNat (n + 1) : ℤ)

end

end A096444.P12247782709715989376

/-! ## A096444.P15026976572227815071

`A019669(n)*A057427(A008611(n))`
-/

namespace A096444.P15026976572227815071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1) * A057427 (A008611 n).toNat

end

end A096444.P15026976572227815071

/-! ## A096444.P1633773687475048220

`lcm(A019669(n), A062157(A004442(n)))`
-/

namespace A096444.P1633773687475048220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019669 (n + 1)) (A062157 (A004442 n).toNat)

end

end A096444.P1633773687475048220

/-! ## A096444.P2595076936940897407

`A001622(n)+A269430(n)-A104457(n)`
-/

namespace A096444.P2595076936940897407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A269430 (n + 1) - A104457 (n + 1))

end

end A096444.P2595076936940897407

/-! ## A096444.P502913777827739176

`A269430(n)-A055255(A055255(a(n-1)))` with `a(0)=1`
-/

namespace A096444.P502913777827739176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269430 (n + 1) - A055255 (A055255 (a (n - 1)).toNat).toNat

end

end A096444.P502913777827739176

/-! ## A096444.P5274245055425695899

`A053267(n)+A269430(n)-A282537(n)`
-/

namespace A096444.P5274245055425695899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053267 n + (A269430 (n + 1) - A282537 n)

end

end A096444.P5274245055425695899

/-! ## A096444.P9607752267009252767

`A059176(n+2)+A269430(n)-A028259(n+2)`
-/

namespace A096444.P9607752267009252767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 2) + (A269430 (n + 1) - A028259 (n + 2))

end

end A096444.P9607752267009252767

/-!
# A096445: Number of reduced primitive positive definite binary quadratic forms of determinant n^2.

The programs for A096445, the canonical program `A096445.P14489248109655328566` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096445 has offset 1).

The definition of A096445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096445.P9863108941564363327

`A204617(n+1)/A040001(n)`
-/

namespace A096445.P9863108941564363327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204617 (n + 1) : ℚ) / (A040001 n : ℚ)

end

end A096445.P9863108941564363327

namespace A096445

/-- `A204617(n+1)/A040001(n)` -/
def P9863108941564363327.Spec : Prop :=
  ∀ n, P9863108941564363327.a n = (A096445 (n + 1) : ℚ)

end A096445

/-! ## A096445.P13858423950253622165

`A079458(n+1)/A140434(n+1)`
-/

namespace A096445.P13858423950253622165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A140434 (n + 1) : ℚ)

end

end A096445.P13858423950253622165

namespace A096445

/-- `A079458(n+1)/A140434(n+1)` -/
def P13858423950253622165.Spec : Prop :=
  ∀ n, P13858423950253622165.a n = (A096445 (n + 1) : ℚ)

end A096445

/-! ## A096445.P14489248109655328566

`∑{d}[n+1, A120630(#)*A145392((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096445

/-- `∑{d}[n+1, A120630(#)*A145392((n+1)/#)]` -/
def P14489248109655328566.Spec : Prop :=
  ∀ n, P14489248109655328566.a n = A096445 (n + 1)

theorem P14489248109655328566.correct : P14489248109655328566.Spec := by
  intro n
  simp only [A096445, Nat.add_sub_cancel]

end A096445

/-! ## A096445.P9587565862815812044

`A004525(A395768(n+1))`
-/

namespace A096445.P9587565862815812044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A395768 (n + 1)).toNat

end

end A096445.P9587565862815812044

namespace A096445

/-- `A004525(A395768(n+1))` -/
def P9587565862815812044.Spec : Prop :=
  ∀ n, P9587565862815812044.a n = A096445 (n + 1)

end A096445

/-! ## A096445.P11304225174212540237

`A253554(A079458(n+1)/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A096445.P11304225174212540237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (SequenceMachineLib.roundAway ((A079458 (n + 1) : ℚ) / ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A096445.P11304225174212540237

namespace A096445

/-- `A253554(A079458(n+1)/((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P11304225174212540237.Spec : Prop :=
  ∀ n, P11304225174212540237.a n = A096445 (n + 1)

end A096445

/-! ## A096445.P13660708479902705196

`A253554(A079458(n+1)/A000010(n+1))`
-/

namespace A096445.P13660708479902705196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (SequenceMachineLib.roundAway ((A079458 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))).toNat

end

end A096445.P13660708479902705196

namespace A096445

/-- `A253554(A079458(n+1)/A000010(n+1))` -/
def P13660708479902705196.Spec : Prop :=
  ∀ n, P13660708479902705196.a n = A096445 (n + 1)

end A096445

/-! ## A096445.P6108377459967894204

`A000003((n+1)²)`
-/

namespace A096445.P6108377459967894204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 ((n + 1) ^ 2)

end

end A096445.P6108377459967894204

namespace A096445

/-- `A000003((n+1)²)` -/
def P6108377459967894204.Spec : Prop :=
  ∀ n, P6108377459967894204.a n = A096445 (n + 1)

end A096445

/-! ## A096445.P11444486236176846986

`A014600(A056220(n+1))`
-/

namespace A096445.P11444486236176846986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A056220 (n + 1)).toNat

end

end A096445.P11444486236176846986

namespace A096445

/-- `A014600(A056220(n+1))` -/
def P11444486236176846986.Spec : Prop :=
  ∀ n, P11444486236176846986.a n = A096445 (n + 1)

end A096445

/-!
# A096447: Odd primes p such that the number of primes less than p that are congruent to 1 (mod 4) is equal to the number of primes less than p that are congruent to 3 (mod 4).

The programs for A096447, there is no canonical definition to state claims against.
-/

/-! ## A096447.P14816754436145602753

`A151800(A007351(n+1))`
-/

namespace A096447.P14816754436145602753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A007351 (n + 1)).toNat

end

end A096447.P14816754436145602753

/-! ## A096447.P16593612884187375231

`A007351(n+1)+A001223(A038691(n+1))`
-/

namespace A096447.P16593612884187375231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007351 (n + 1) + A001223 (A038691 (n + 1)).toNat

end

end A096447.P16593612884187375231

/-! ## A096447.P15224497029182021771

`A007351(n+1)+A001223(2*A092198(n+1)+1)`
-/

namespace A096447.P15224497029182021771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007351 (n + 1) + A001223 (2 * A092198 (n + 1) + 1).toNat

end

end A096447.P15224497029182021771

/-! ## A096447.P13955894560948691605

`A065091(A038691(n+1))`
-/

namespace A096447.P13955894560948691605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A038691 (n + 1)).toNat

end

end A096447.P13955894560948691605

/-! ## A096447.P16931961374877407036

`A000040(A038691(n+1)+1)`
-/

namespace A096447.P16931961374877407036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038691 (n + 1) + 1).toNat

end

end A096447.P16931961374877407036

/-!
# A096448: Primes p such that the number of primes less than p equal to 1 mod 4 is one less than the number of primes less than p equal to 3 mod 4.

The programs for A096448, there is no canonical definition to state claims against.
-/

/-! ## A096448.P14714234171085309465

`p?[(n+2)*A066520(n+1)]`
-/

namespace A096448.P14714234171085309465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A066520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096448.P14714234171085309465

/-! ## A096448.P10987041596869124490

`A065091(eq[1, A038698(n+1)]+1)`
-/

namespace A096448.P10987041596869124490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096448.P10987041596869124490

/-! ## A096448.P2647382077544698627

`p?[A038698(n+1)*A045344(n+1)]`
-/

namespace A096448.P2647382077544698627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) * A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096448.P2647382077544698627

/-! ## A096448.P6899307605333095071

`p?[A038698(n+1)*A065091(n+1)]`
-/

namespace A096448.P6899307605333095071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096448.P6899307605333095071

/-! ## A096448.P14546780126024297419

`p?[A000040(n+2)*A038698(n+1)]`
-/

namespace A096448.P14546780126024297419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096448.P14546780126024297419

/-!
# A096449: Primes p such that the number of primes q, 5 <= q < p, congruent to 1 mod 3, is equal to the number of such primes congruent to 2 mod 3.

The programs for A096449, there is no canonical definition to state claims against.
-/

/-! ## A096449.P9359779507166933869

`A151800(A098044(n+1))`
-/

namespace A096449.P9359779507166933869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A098044 (n + 1)).toNat

end

end A096449.P9359779507166933869

/-! ## A096449.P2876454106432245665

`A007918(A098044(n+1)+1)`
-/

namespace A096449.P2876454106432245665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A098044 (n + 1) + 1).toNat

end

end A096449.P2876454106432245665

/-! ## A096449.P17795594564050319944

`p?[A205557(n²+1)+2]`
-/

namespace A096449.P17795594564050319944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n ^ 2 + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096449.P17795594564050319944

/-! ## A096449.P14793102701079483132

`p?[p?[3*n+5]*A267134(n+1)]`
-/

namespace A096449.P14793102701079483132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) * A267134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096449.P14793102701079483132

/-! ## A096449.P4923930094671939403

`A066169(p?[A098044(n+1)])`
-/

namespace A096449.P4923930094671939403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096449.P4923930094671939403

/-!
# A096450: Primes p such that the number of primes q, 7 <= q < p, congruent to 1 or 2 mod 5, is equal to the number of such primes congruent to 3 or 4 mod 5.

The programs for A096450, there is no canonical definition to state claims against.
-/

/-! ## A096450.P2022176270704805582

`∩[A339620(A353651(n+1)), A000040(n+2)]`
-/

namespace A096450.P2022176270704805582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339620 (A353651 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096450.P2022176270704805582

/-! ## A096450.P3182078022841988049

`A360006(4*A055938(n+1))`
-/

namespace A096450.P3182078022841988049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (4 * A055938 (n + 1)).toNat

end

end A096450.P3182078022841988049

/-! ## A096450.P6389912894833560764

`A031215(A055938(n+1)%A287329(2*n+3))`
-/

namespace A096450.P6389912894833560764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (Int.tmod (A055938 (n + 1)) (A287329 (2 * n + 3))).toNat

end

end A096450.P6389912894833560764

/-!
# A096451: Primes p such that the number of primes less than p equal to 1 mod 4 is two less than the number of primes less than p equal to 3 mod 4.

The programs for A096451, there is no canonical definition to state claims against.
-/

/-! ## A096451.P14532605863457451577

`A065091(eq[2, A038698(n+1)]+1)`
-/

namespace A096451.P14532605863457451577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096451.P14532605863457451577

/-! ## A096451.P8504367001598100897

`p?[(A038698(n+1)-1)*A045344(n+1)]`
-/

namespace A096451.P8504367001598100897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038698 (n + 1) - 1) * A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096451.P8504367001598100897

/-! ## A096451.P17694600729863154662

`p?[(A038698(n+1)-1)*A065091(n+1)]`
-/

namespace A096451.P17694600729863154662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038698 (n + 1) - 1) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096451.P17694600729863154662

/-! ## A096451.P1722603982043686048

`A031215(A029579(eq[2, A038698(n+1)]))`
-/

namespace A096451.P1722603982043686048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (A029579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A096451.P1722603982043686048

/-! ## A096451.P9131033668761858090

`A003961(eq[A066520(n+1), A217670(n)])`
-/

namespace A096451.P9131033668761858090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A096451.P9131033668761858090

/-!
# A096452: Primes p such that the number of primes q, 5 <= q < p, congruent to 1 mod 3, is one less than the number of such primes congruent to 2 mod 3.

The programs for A096452, there is no canonical definition to state claims against.
-/

/-! ## A096452.P12764914941545517573

`A004139(eq[1, A174695(n+1)])`
-/

namespace A096452.P12764914941545517573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096452.P12764914941545517573

/-! ## A096452.P7918443518605203433

`A004139(eq[2, A112632(n+1)])`
-/

namespace A096452.P7918443518605203433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096452.P7918443518605203433

/-! ## A096452.P5779605505160975297

`A000040(eq[1, A174695(n+1)]+2)`
-/

namespace A096452.P5779605505160975297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A096452.P5779605505160975297

/-! ## A096452.P4672277890699242454

`A000040(eq[2, A112632(n+1)]+2)`
-/

namespace A096452.P4672277890699242454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A096452.P4672277890699242454

/-! ## A096452.P4585072595781261903

`p?[A065091(n+1)*A174695(n+1)]`
-/

namespace A096452.P4585072595781261903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096452.P4585072595781261903

/-!
# A096453: Primes p such that the number of primes q, 5 <= q < p, congruent to 1 mod 3, is two less than the number of such primes congruent to 2 mod 3.

The programs for A096453, there is no canonical definition to state claims against.
-/

/-! ## A096453.P1101717542899283968

`A004139(eq[2, A174695(n+1)])`
-/

namespace A096453.P1101717542899283968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096453.P1101717542899283968

/-! ## A096453.P5199754149776002815

`A004139(eq[3, A112632(n+1)])`
-/

namespace A096453.P5199754149776002815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096453.P5199754149776002815

/-! ## A096453.P18347622971844043440

`A000040(eq[2, A174695(n+1)]+2)`
-/

namespace A096453.P18347622971844043440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A096453.P18347622971844043440

/-! ## A096453.P17883869230879351573

`A008578(eq[2, A174695(n+1)]+3)`
-/

namespace A096453.P17883869230879351573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A096453.P17883869230879351573

/-! ## A096453.P12270384900883659393

`A000040(eq[3, A112632(n+2)]+3)`
-/

namespace A096453.P12270384900883659393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A096453.P12270384900883659393

/-!
# A096454: Primes p such that the number of primes q, 7 <= q < p, congruent to 1 or 2 mod 5, is one more than the number of such primes congruent to 3 or 4 mod 5.

The programs for A096454, there is no canonical definition to state claims against.
-/

/-! ## A096454.P15869637088119128049

`A000040(A024893(n+4)%A219677(n+1))`
-/

namespace A096454.P15869637088119128049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A024893 (n + 4)) (A219677 (n + 1))).toNat

end

end A096454.P15869637088119128049

/-! ## A096454.P11826905397209703171

`A000040(A024893(n+4))%A263277(n+4)`
-/

namespace A096454.P11826905397209703171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A024893 (n + 4)).toNat) (A263277 (n + 4))

end

end A096454.P11826905397209703171

/-! ## A096454.P2001969877288616621

`A000040(lt[A067538(3*n+2), A112471(n)])`
-/

namespace A096454.P2001969877288616621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096454.P2001969877288616621

/-! ## A096454.P15636784730029378373

`A000040(∪[A219677(n+1), A024893(n+4)])`
-/

namespace A096454.P15636784730029378373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A096454.P15636784730029378373

/-! ## A096454.P10458369267081969142

`A045344(lt[A171828(n+5), A349127(3*n+5)])`
-/

namespace A096454.P10458369267081969142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096454.P10458369267081969142

/-!
# A096455: Primes p such that the number of primes q, 7 <= q < p, congruent to 1 or 2 mod 5, is two more than the number of such primes congruent to 3 or 4 mod 5.

The programs for A096455, there is no canonical definition to state claims against.
-/

/-! ## A096455.P11474371569536682536

`A090417(p?[∑[A278234(n)]])`
-/

namespace A096455.P11474371569536682536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096455.P11474371569536682536

/-!
# A096456: Numerators of convergents to Pi/2.

The programs for A096456, there is no canonical definition to state claims against.
-/

/-! ## A096456.P13073499161358114709

`A227530(n+1)-A320797(A083720(n+1))`
-/

namespace A096456.P13073499161358114709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227530 (n + 1) - A320797 (A083720 (n + 1)).toNat

end

end A096456.P13073499161358114709

/-!
# A096457: If n is prime replace n with the next prime.

The programs for A096457, the canonical program `A096457.P17542329655028534865` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096457 has offset 1).

The definition of A096457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096457.P4857674670822945354

`Δ[A013634(n)]+n`
-/

namespace A096457.P4857674670822945354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A096457.P4857674670822945354

namespace A096457

/-- `Δ[A013634(n)]+n` -/
def P4857674670822945354.Spec : Prop :=
  ∀ n, P4857674670822945354.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P343306921236047116

`Δ[A151800(n)+∑[n]]`
-/

namespace A096457.P343306921236047116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096457.P343306921236047116

namespace A096457

/-- `Δ[A151800(n)+∑[n]]` -/
def P343306921236047116.Spec : Prop :=
  ∀ n, P343306921236047116.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P17542329655028534865

`Δ[A013632(n)]+2+n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096457

/-- `Δ[A013632(n)]+2+n` -/
def P17542329655028534865.Spec : Prop :=
  ∀ n, P17542329655028534865.a n = A096457 (n + 1)

theorem P17542329655028534865.correct : P17542329655028534865.Spec := by
  intro n
  simp only [A096457, Nat.add_sub_cancel]

end A096457

/-! ## A096457.P11180995264021935684

`Δ[A007918(n+1)+∑[n]]`
-/

namespace A096457.P11180995264021935684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096457.P11180995264021935684

namespace A096457

/-- `Δ[A007918(n+1)+∑[n]]` -/
def P11180995264021935684.Spec : Prop :=
  ∀ n, P11180995264021935684.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P6142089861007254404

`Δ[A007920(n+1)]+n+2`
-/

namespace A096457.P6142089861007254404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 2 : ℤ)

end

end A096457.P6142089861007254404

namespace A096457

/-- `Δ[A007920(n+1)]+n+2` -/
def P6142089861007254404.Spec : Prop :=
  ∀ n, P6142089861007254404.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P18081484689470440442

`Δ[comp[A007917(n+2)+n]]+n`
-/

namespace A096457.P18081484689470440442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A096457.P18081484689470440442

namespace A096457

/-- `Δ[comp[A007917(n+2)+n]]+n` -/
def P18081484689470440442.Spec : Prop :=
  ∀ n, P18081484689470440442.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P11992832162517807812

`A013634(n+1)-A151800(n)`
-/

namespace A096457.P11992832162517807812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 1) - A151800 n

end

end A096457.P11992832162517807812

namespace A096457

/-- `A013634(n+1)-A151800(n)` -/
def P11992832162517807812.Spec : Prop :=
  ∀ n, P11992832162517807812.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P8153995917457647722

`A013636(n+1)/A151800(n)`
-/

namespace A096457.P8153995917457647722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013636 (n + 1) : ℚ) / (A151800 n : ℚ)

end

end A096457.P8153995917457647722

namespace A096457

/-- `A013636(n+1)/A151800(n)` -/
def P8153995917457647722.Spec : Prop :=
  ∀ n, P8153995917457647722.a n = (A096457 (n + 1) : ℚ)

end A096457

/-! ## A096457.P15832440757117671734

`A000027(n+1)+Δ[A151800(n)]`
-/

namespace A096457.P15832440757117671734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A096457.P15832440757117671734

namespace A096457

/-- `A000027(n+1)+Δ[A151800(n)]` -/
def P15832440757117671734.Spec : Prop :=
  ∀ n, P15832440757117671734.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P2471087508387638518

`Δ[A000217(n)-(n-A013634(n))]`
-/

namespace A096457.P2471087508387638518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ((n : ℤ) - A013634 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096457.P2471087508387638518

namespace A096457

/-- `Δ[A000217(n)-(n-A013634(n))]` -/
def P2471087508387638518.Spec : Prop :=
  ∀ n, P2471087508387638518.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P2504976412894737776

`A096501(A064802(n+1))+1+n`
-/

namespace A096457.P2504976412894737776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A064802 (n + 1)).toNat + 1 + (n : ℤ)

end

end A096457.P2504976412894737776

namespace A096457

/-- `A096501(A064802(n+1))+1+n` -/
def P2504976412894737776.Spec : Prop :=
  ∀ n, P2504976412894737776.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P11453121845264339993

`A096501(A079427(n+1))+1+n`
-/

namespace A096457.P11453121845264339993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A079427 (n + 1)).toNat + 1 + (n : ℤ)

end

end A096457.P11453121845264339993

namespace A096457

/-- `A096501(A079427(n+1))+1+n` -/
def P11453121845264339993.Spec : Prop :=
  ∀ n, P11453121845264339993.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P8574663834429717605

`A096501(A081761(n+1))+1+n`
-/

namespace A096457.P8574663834429717605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A081761 (n + 1)).toNat + 1 + (n : ℤ)

end

end A096457.P8574663834429717605

namespace A096457

/-- `A096501(A081761(n+1))+1+n` -/
def P8574663834429717605.Spec : Prop :=
  ∀ n, P8574663834429717605.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P5482619652127252751

`A013634(n+1)-A007918(n+1)`
-/

namespace A096457.P5482619652127252751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 1) - A007918 (n + 1)

end

end A096457.P5482619652127252751

namespace A096457

/-- `A013634(n+1)-A007918(n+1)` -/
def P5482619652127252751.Spec : Prop :=
  ∀ n, P5482619652127252751.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P4105300405987659918

`A151800(n+1)-A007920(n+1)`
-/

namespace A096457.P4105300405987659918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A007920 (n + 1)

end

end A096457.P4105300405987659918

namespace A096457

/-- `A151800(n+1)-A007920(n+1)` -/
def P4105300405987659918.Spec : Prop :=
  ∀ n, P4105300405987659918.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P6862600399579797825

`A007918(n+2)-A007920(n+1)`
-/

namespace A096457.P6862600399579797825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) - A007920 (n + 1)

end

end A096457.P6862600399579797825

namespace A096457

/-- `A007918(n+2)-A007920(n+1)` -/
def P6862600399579797825.Spec : Prop :=
  ∀ n, P6862600399579797825.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P16432133036887917742

`A013636(n+1)/A007918(n+1)`
-/

namespace A096457.P16432133036887917742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013636 (n + 1) : ℚ) / (A007918 (n + 1) : ℚ)

end

end A096457.P16432133036887917742

namespace A096457

/-- `A013636(n+1)/A007918(n+1)` -/
def P16432133036887917742.Spec : Prop :=
  ∀ n, P16432133036887917742.a n = (A096457 (n + 1) : ℚ)

end A096457

/-! ## A096457.P869944927508941613

`A013634(n+1)-A308052(2*n+1)`
-/

namespace A096457.P869944927508941613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n + 1) - A308052 (2 * n + 1)

end

end A096457.P869944927508941613

namespace A096457

/-- `A013634(n+1)-A308052(2*n+1)` -/
def P869944927508941613.Spec : Prop :=
  ∀ n, P869944927508941613.a n = A096457 (n + 1)

end A096457

/-! ## A096457.P7297016730653331197

`A013636(n+1)/A308052(2*n+1)`
-/

namespace A096457.P7297016730653331197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013636 (n + 1) : ℚ) / (A308052 (2 * n + 1) : ℚ)

end

end A096457.P7297016730653331197

namespace A096457

/-- `A013636(n+1)/A308052(2*n+1)` -/
def P7297016730653331197.Spec : Prop :=
  ∀ n, P7297016730653331197.a n = (A096457 (n + 1) : ℚ)

end A096457

/-! ## A096457.P8043092608049677338

`n+1+A013632(n+1)-A007920(n+1)`
-/

namespace A096457.P8043092608049677338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A013632 (n + 1) - A007920 (n + 1))

end

end A096457.P8043092608049677338

namespace A096457

/-- `n+1+A013632(n+1)-A007920(n+1)` -/
def P8043092608049677338.Spec : Prop :=
  ∀ n, P8043092608049677338.a n = A096457 (n + 1)

end A096457

/-!
# A096458: If n is prime, the next prime after the next prime after n. otherwise n.

The programs for A096458, the canonical program `A096458.P15713165605853716230` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096458 has offset 1).

The definition of A096458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096458.P4433708427195079649

`Δ[A347137(A151800(n))]+n+1`
-/

namespace A096458.P4433708427195079649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A096458.P4433708427195079649

namespace A096458

/-- `Δ[A347137(A151800(n))]+n+1` -/
def P4433708427195079649.Spec : Prop :=
  ∀ n, P4433708427195079649.a n = A096458 (n + 1)

end A096458

/-! ## A096458.P17478464065852331421

`Δ[A013634(A007918(n+1))]+n+1`
-/

namespace A096458.P17478464065852331421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A007918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A096458.P17478464065852331421

namespace A096458

/-- `Δ[A013634(A007918(n+1))]+n+1` -/
def P17478464065852331421.Spec : Prop :=
  ∀ n, P17478464065852331421.a n = A096458 (n + 1)

end A096458

/-! ## A096458.P15248497817406718581

`Δ[A013634(A013634(n)-n)]+n+1`
-/

namespace A096458.P15248497817406718581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A013634 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A096458.P15248497817406718581

namespace A096458

/-- `Δ[A013634(A013634(n)-n)]+n+1` -/
def P15248497817406718581.Spec : Prop :=
  ∀ n, P15248497817406718581.a n = A096458 (n + 1)

end A096458

/-! ## A096458.P15713165605853716230

`A210882(round(n/(n+1))*A210882(n+2)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096458

/-- `A210882(round(n/(n+1))*A210882(n+2)+1)` -/
def P15713165605853716230.Spec : Prop :=
  ∀ n, P15713165605853716230.a n = A096458 (n + 1)

theorem P15713165605853716230.correct : P15713165605853716230.Spec := by
  intro n
  simp only [A096458, Nat.add_sub_cancel]

end A096458

/-! ## A096458.P1087033884875377698

`A210882(A210882(n+2)+1)%A081324(n+2)`
-/

namespace A096458.P1087033884875377698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210882 (A210882 (n + 2) + 1).toNat) (A081324 (n + 2))

end

end A096458.P1087033884875377698

namespace A096458

/-- `A210882(A210882(n+2)+1)%A081324(n+2)` -/
def P1087033884875377698.Spec : Prop :=
  ∀ n, P1087033884875377698.a n = A096458 (n + 1)

end A096458

/-! ## A096458.P4433106803758883272

`A096457(A096457(n+1))`
-/

namespace A096458.P4433106803758883272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A096457 (n + 1)).toNat

end

end A096458.P4433106803758883272

namespace A096458

/-- `A096457(A096457(n+1))` -/
def P4433106803758883272.Spec : Prop :=
  ∀ n, P4433106803758883272.a n = A096458 (n + 1)

end A096458

/-! ## A096458.P3315232579836365266

`A026234(A236675(A026234(A236675(n+1))))`
-/

namespace A096458.P3315232579836365266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A236675 (A026234 (A236675 (n + 1)).toNat).toNat).toNat

end

end A096458.P3315232579836365266

namespace A096458

/-- `A026234(A236675(A026234(A236675(n+1))))` -/
def P3315232579836365266.Spec : Prop :=
  ∀ n, P3315232579836365266.a n = A096458 (n + 1)

end A096458

/-!
# A096459: Triangle read by rows: T(n,k) = n^2 mod prime(k), 1<=k<=n.

The programs for A096459, the canonical program `A096459.P13497691207698860031` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096459 has offset 1).

The definition of A096459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096459.P7511372789053606394

`∑[char[∑[n]]]²%A037126(n+1)`
-/

namespace A096459.P7511372789053606394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A037126 (n + 1))

end

end A096459.P7511372789053606394

namespace A096459

/-- `∑[char[∑[n]]]²%A037126(n+1)` -/
def P7511372789053606394.Spec : Prop :=
  ∀ n, P7511372789053606394.a n = A096459 (n + 1)

end A096459

/-! ## A096459.P13497691207698860031

`A093995(n+1)%A000040(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A096459

/-- `A093995(n+1)%A000040(A002260(n+1))` -/
def P13497691207698860031.Spec : Prop :=
  ∀ n, P13497691207698860031.a n = A096459 (n + 1)

theorem P13497691207698860031.correct : P13497691207698860031.Spec := by
  intro n
  simp only [A096459, Nat.add_sub_cancel]

end A096459

/-! ## A096459.P4699644016733391884

`(A003056(n)+1)²%A000040(A002260(n+1))`
-/

namespace A096459.P4699644016733391884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A003056 n + 1) ^ 2) (A000040 (A002260 (n + 1)).toNat)

end

end A096459.P4699644016733391884

namespace A096459

/-- `(A003056(n)+1)²%A000040(A002260(n+1))` -/
def P4699644016733391884.Spec : Prop :=
  ∀ n, P4699644016733391884.a n = A096459 (n + 1)

end A096459

/-! ## A096459.P14052208581827308835

`∑[A198954(n)]%A158611(A002260(n+1)+2)`
-/

namespace A096459.P14052208581827308835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A158611 (A002260 (n + 1) + 2).toNat)

end

end A096459.P14052208581827308835

namespace A096459

/-- `∑[A198954(n)]%A158611(A002260(n+1)+2)` -/
def P14052208581827308835.Spec : Prop :=
  ∀ n, P14052208581827308835.a n = A096459 (n + 1)

end A096459

/-! ## A096459.P8216283967227155533

`(A038722(n+1)+n)%A000040(A002260(n+1))`
-/

namespace A096459.P8216283967227155533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (n + 1) + (n : ℤ)) (A000040 (A002260 (n + 1)).toNat)

end

end A096459.P8216283967227155533

namespace A096459

/-- `(A038722(n+1)+n)%A000040(A002260(n+1))` -/
def P8216283967227155533.Spec : Prop :=
  ∀ n, P8216283967227155533.a n = A096459 (n + 1)

end A096459

/-! ## A096459.P7213956384469066355

`A093995(n+1)%p?[A246029(n)]`
-/

namespace A096459.P7213956384469066355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093995 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A096459.P7213956384469066355

namespace A096459

/-- `A093995(n+1)%p?[A246029(n)]` -/
def P7213956384469066355.Spec : Prop :=
  ∀ n, P7213956384469066355.a n = A096459 (n + 1)

end A096459

/-!
# A096460: a(1) = 1, a(2) = 2; for n >= 2, a(n+1) = a(n) + sum of the unique prime factors of a(n).

The programs for A096460, there is no canonical definition to state claims against.
-/

/-! ## A096460.P16984471609108777872

`A008472(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A096460.P16984471609108777872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008472 (a (n - 1)).toNat + a (n - 1)

end

end A096460.P16984471609108777872

/-! ## A096460.P9600827740565354865

`A075653(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A096460.P9600827740565354865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A075653 (a (n - 1)).toNat

end

end A096460.P9600827740565354865

/-! ## A096460.P1609828056911482436

`A075254(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A096460.P1609828056911482436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  A075254 (a (n - 1)).toNat

end

end A096460.P1609828056911482436

/-! ## A096460.P8275415639900460347

`A254340(a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A096460.P8275415639900460347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A254340 (a (n - 1)).toNat - 1

end

end A096460.P8275415639900460347

/-!
# A096461: a(1)=1, a(2)=2; for n >= 2, a(n+1) = a(n) + sum of prime factors of a(n).

The programs for A096461, there is no canonical definition to state claims against.
-/

/-! ## A096461.P4581332493242715286

`∑[A268868(n+1)]`
-/

namespace A096461.P4581332493242715286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096461.P4581332493242715286

/-! ## A096461.P13834190153366467219

`A268868(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A096461.P13834190153366467219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268868 (n + 1) + a (A023443 n).toNat

end

end A096461.P13834190153366467219

/-! ## A096461.P10111622017467873156

`A268868(n+1)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A096461.P10111622017467873156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268868 (n + 1) + a ((n : ℤ) - A057427 n).toNat

end

end A096461.P10111622017467873156

/-! ## A096461.P11474064755218649816

`A268868(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A096461.P11474064755218649816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268868 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A096461.P11474064755218649816

/-! ## A096461.P14946196582468036949

`A268868(n+1)+a(A254667(n+1)-2)` with `a(0)=1`
-/

namespace A096461.P14946196582468036949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268868 (n + 1) + a (A254667 (n + 1) - 2).toNat

end

end A096461.P14946196582468036949

/-! ## A096461.P15376089799126304047

`A268868(n+1)--a(n-1)%A000244(n)` with `a(0)=1`
-/

namespace A096461.P15376089799126304047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268868 (n + 1) - Int.tmod (-a (n - 1)) (A000244 n)

end

end A096461.P15376089799126304047

/-! ## A096461.P14620464740336732904

`A001414(a(n-1))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A096461.P14620464740336732904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001414 (a (n - 1)).toNat + a (n - 1)

end

end A096461.P14620464740336732904

/-!
# A096465: Triangle (read by rows) formed by setting all entries in the first column and in the main diagonal ((i,i) entries) to 1 and the rest of the entries by the recursion T(n, k) = T(n-1, k) + T(n, k-1).

The programs for A096465, there is no canonical definition to state claims against.
-/

/-! ## A096465.P11690552960477065994

`A091491(A061579(n))`
-/

namespace A096465.P11690552960477065994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A061579 n).toNat

end

end A096465.P11690552960477065994

/-! ## A096465.P13583996470717443538

`A091491(A038722(n+2))`
-/

namespace A096465.P13583996470717443538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A038722 (n + 2)).toNat

end

end A096465.P13583996470717443538

/-! ## A096465.P616299155927058

`A091491(A114327(n)+n)`
-/

namespace A096465.P616299155927058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A114327 n + (n : ℤ)).toNat

end

end A096465.P616299155927058

/-! ## A096465.P14733745365160194769

`A323224(n)+A130020(n)`
-/

namespace A096465.P14733745365160194769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 n + A130020 n

end

end A096465.P14733745365160194769

/-! ## A096465.P466137588532214942

`A091491(A002378(n)%A080036(n))`
-/

namespace A096465.P466137588532214942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A096465.P466137588532214942

/-! ## A096465.P8354181073856548576

`A323224(A014132(n+1))`
-/

namespace A096465.P8354181073856548576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (A014132 (n + 1)).toNat

end

end A096465.P8354181073856548576

/-! ## A096465.P6406670666978453613

`A283054(∑[1-char[∑[n]]])`
-/

namespace A096465.P6406670666978453613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096465.P6406670666978453613

/-! ## A096465.P12725861837639331492

`gcd(A000038(n), A283054(A271439(n)))`
-/

namespace A096465.P12725861837639331492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283054 (A271439 n).toNat)

end

end A096465.P12725861837639331492

/-! ## A096465.P8984627700331067658

`A178226(A057891(n+1))*A283054(A271439(n))`
-/

namespace A096465.P8984627700331067658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A057891 (n + 1)).toNat * A283054 (A271439 n).toNat

end

end A096465.P8984627700331067658

/-!
# A096466: Triangle T(n,k), read by rows, formed by setting all entries in the zeroth column ((n,0) entries) and the main diagonal ((n,n) entries) to powers of 2 with all other entries formed by the recursion T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A096466, there is no canonical definition to state claims against.
-/

/-! ## A096466.P11219901977976284071

`A340205(A112492(n))+A208637(n+1)`
-/

namespace A096466.P11219901977976284071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A112492 n).toNat + A208637 (n + 1)

end

end A096466.P11219901977976284071

/-! ## A096466.P2441507220653644125

`A137688(n)+2*A340205(A112492(n))`
-/

namespace A096466.P2441507220653644125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + 2 * A340205 (A112492 n).toNat

end

end A096466.P2441507220653644125

/-!
# A096467: Numbers that can be the longest side of a primitive Heronian triangle.

The programs for A096467, there is no canonical definition to state claims against.
-/

/-! ## A096467.P12291661148193694492

`∪[A120128(n+1), A120129(n+1)]`
-/

namespace A096467.P12291661148193694492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096467.P12291661148193694492

/-! ## A096467.P8682761123482453614

`lt[1, A239246(n+1)+1]+1`
-/

namespace A096467.P8682761123482453614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096467.P8682761123482453614

/-! ## A096467.P4920572859939226008

`lt[1, A239246(A028310(n))+1]`
-/

namespace A096467.P4920572859939226008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096467.P4920572859939226008

/-! ## A096467.P8049846026280925727

`lt[A000007(A239246(n+1)), 1]+1`
-/

namespace A096467.P8049846026280925727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A239246 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A096467.P8049846026280925727

/-! ## A096467.P1654666668271981915

`lt[A000007(n), A239246(A000007(n)+n)]`
-/

namespace A096467.P1654666668271981915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239246 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096467.P1654666668271981915

/-! ## A096467.P8666952652053928514

`record[A120131(A305296(n))]`
-/

namespace A096467.P8666952652053928514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A305296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P8666952652053928514

/-! ## A096467.P16834461983197888279

`record[A120131(A331300(n))]`
-/

namespace A096467.P16834461983197888279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A331300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P16834461983197888279

/-! ## A096467.P9087013578792856740

`record[A120131(n+1)%A020742(n)]`
-/

namespace A096467.P9087013578792856740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120131 (n + 1)) (A020742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P9087013578792856740

/-! ## A096467.P17878588782074774378

`record[A120131(A026238(n+2))]`
-/

namespace A096467.P17878588782074774378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P17878588782074774378

/-! ## A096467.P6479964632896354942

`record[A120131(A026242(n+1))]`
-/

namespace A096467.P6479964632896354942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P6479964632896354942

/-! ## A096467.P13462346091471907032

`record[A120131(A338295(n+1))]`
-/

namespace A096467.P13462346091471907032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A338295 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P13462346091471907032

/-! ## A096467.P17313133860040657497

`record[A120131(A236858(n))]`
-/

namespace A096467.P17313133860040657497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120131 (A236858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096467.P17313133860040657497

/-!
# A096468: Perimeters of primitive Heronian triangles.

The programs for A096468, there is no canonical definition to state claims against.
-/

/-! ## A096468.P10337474633218082995

`lt[0, A070138(n+1)]+1`
-/

namespace A096468.P10337474633218082995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A096468.P10337474633218082995

/-! ## A096468.P15230136022375122202

`eq[1, A000010(a(A070138(n)))]` with `a(0)=3`
-/

namespace A096468.P15230136022375122202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A070138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096468.P15230136022375122202

/-! ## A096468.P4815513399745325483

`eq[1, A007318(a(A070138(n)))]` with `a(0)=4`
-/

namespace A096468.P4815513399745325483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A070138 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096468.P4815513399745325483

/-! ## A096468.P16260941504712069027

`lt[0, A070138(or(n, a(n-1)))]` with `a(0)=0`
-/

namespace A096468.P16260941504712069027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A070138 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096468.P16260941504712069027

/-! ## A096468.P17619357632309391571

`record[A224302(A291769(n))]`
-/

namespace A096468.P17619357632309391571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P17619357632309391571

/-! ## A096468.P9214956066601228461

`record[A224302(A328396(n))]`
-/

namespace A096468.P9214956066601228461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P9214956066601228461

/-! ## A096468.P5389989414850345362

`record[A224302(A061395(n+2))]`
-/

namespace A096468.P5389989414850345362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A061395 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P5389989414850345362

/-! ## A096468.P14539655320258218181

`record[A224302(A032742(n+1))]`
-/

namespace A096468.P14539655320258218181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P14539655320258218181

/-! ## A096468.P1726398885927854765

`record[A224302(A211316(n+2))]`
-/

namespace A096468.P1726398885927854765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A211316 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P1726398885927854765

/-! ## A096468.P4385956118935859061

`record[A224302(A008624(n+2))]`
-/

namespace A096468.P4385956118935859061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A008624 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P4385956118935859061

/-! ## A096468.P7037929442118947005

`record[A224302(A008615(n)+1)]`
-/

namespace A096468.P7037929442118947005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A008615 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P7037929442118947005

/-! ## A096468.P16512188198606822968

`record[A224302(A003963(n+1))]`
-/

namespace A096468.P16512188198606822968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P16512188198606822968

/-! ## A096468.P15572131442809425997

`record[A224302(A254679(n+1))]`
-/

namespace A096468.P15572131442809425997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224302 (A254679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096468.P15572131442809425997

/-!
# A096469: Smallest number m such that the concatenation of n+1 numbers m^0, m^1,..., m^(n-1), m^n is a prime.

The programs for A096469, there is no canonical definition to state claims against.
-/

/-! ## A096469.P7831465901921478893

`A319018(n)+A083260(A083304(n))`
-/

namespace A096469.P7831465901921478893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 n + A083260 (A083304 n).toNat

end

end A096469.P7831465901921478893

/-!
# A096470: Triangle T(n,k), read by rows, formed by setting all entries in the zeroth column and in the main diagonal ((n,n) entries) to 1 and defining the rest of the entries by the recursion T(n,k) = T(n-1,k) - T(n,k-1).

The programs for A096470, there is no canonical definition to state claims against.
-/

/-! ## A096470.P4978065952413689411

`A317529(A009998(n)^A002260(n+1))`
-/

namespace A096470.P4978065952413689411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (SequenceMachineLib.roundAway ((A009998 n : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A096470.P4978065952413689411

/-!
# A096471: Number of degree-n permutations with exactly one even cycle.

The programs for A096471, there is no canonical definition to state claims against.
-/

/-! ## A096471.P14161864265587062460

`record[A060523(∑[n]+1)]`
-/

namespace A096471.P14161864265587062460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096471.P14161864265587062460

/-! ## A096471.P7002783708494706968

`A060523(∑[n+2]+2)`
-/

namespace A096471.P7002783708494706968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A096471.P7002783708494706968

/-! ## A096471.P17260567114540363027

`record[A060523(n)/A057059(n+1)]`
-/

namespace A096471.P17260567114540363027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060523 n : ℚ) / (A057059 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096471.P17260567114540363027

/-! ## A096471.P17899786322464102967

`record[A060510(n+2)*A060523(n)]`
-/

namespace A096471.P17899786322464102967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 (n + 2) * A060523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096471.P17899786322464102967

/-! ## A096471.P5254809599043997629

`record[A060523(n+1)/A060539(n+1)]`
-/

namespace A096471.P5254809599043997629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060523 (n + 1) : ℚ) / (A060539 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096471.P5254809599043997629

/-!
# A096472: Numbers containing squares of Pythagorean triples in their divisor set.

The programs for A096472, the canonical program `A096472.P4125341075891302147` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096472 has offset 1).

The definition of A096472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096472.P4125341075891302147

`60*60*(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096472

/-- `60*60*(n+1)` -/
def P4125341075891302147.Spec : Prop :=
  ∀ n, (P4125341075891302147.a n : ℤ) = A096472 (n + 1)

theorem P4125341075891302147.correct : P4125341075891302147.Spec := by
  intro n
  simp only [A096472, Nat.add_sub_cancel]

end A096472

/-!
# A096473: Palindromic good primes.

The programs for A096473, there is no canonical definition to state claims against.
-/

/-! ## A096473.P12841302912779913606

`∩[A002113(n+1), A028388(n+1)]`
-/

namespace A096473.P12841302912779913606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096473.P12841302912779913606

/-! ## A096473.P3685115346240847721

`∩[A002385(n+1), A028388(n+1)]`
-/

namespace A096473.P3685115346240847721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096473.P3685115346240847721

/-! ## A096473.P11824062141310283919

`∩[A028388(n+1), A324989(n+1)]`
-/

namespace A096473.P11824062141310283919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096473.P11824062141310283919

/-! ## A096473.P5496131912936343696

`∩[A028388(n+1), A350836(n+1)]`
-/

namespace A096473.P5496131912936343696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096473.P5496131912936343696

/-!
# A096474: Difference prime(q+2) - prime(q) as q runs through the lesser members of twin primes (A001359).

The programs for A096474, the canonical program `A096474.P15193505077618010963` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096474 has offset 1).

The definition of A096474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A057473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096474.P15193505077618010963

`A057473(n+1)-A057470(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A096474

/-- `A057473(n+1)-A057470(n+1)` -/
def P15193505077618010963.Spec : Prop :=
  ∀ n, P15193505077618010963.a n = A096474 (n + 1)

theorem P15193505077618010963.correct : P15193505077618010963.Spec := by
  intro n
  simp only [A096474, Nat.add_sub_cancel]

end A096474

/-! ## A096474.P10666904222327338527

`A080700(n+1)/A001359(n+1)-A057470(n+1)`
-/

namespace A096474.P10666904222327338527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080700 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ) - (A057470 (n + 1) : ℚ)

end

end A096474.P10666904222327338527

namespace A096474

/-- `A080700(n+1)/A001359(n+1)-A057470(n+1)` -/
def P10666904222327338527.Spec : Prop :=
  ∀ n, P10666904222327338527.a n = (A096474 (n + 1) : ℚ)

end A096474

/-! ## A096474.P13134450184016791744

`A080701(n+1)/A006512(n+1)-A057470(n+1)`
-/

namespace A096474.P13134450184016791744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080701 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ) - (A057470 (n + 1) : ℚ)

end

end A096474.P13134450184016791744

namespace A096474

/-- `A080701(n+1)/A006512(n+1)-A057470(n+1)` -/
def P13134450184016791744.Spec : Prop :=
  ∀ n, P13134450184016791744.a n = (A096474 (n + 1) : ℚ)

end A096474

/-! ## A096474.P11543858264848562619

`A073131(A029707(n+1))`
-/

namespace A096474.P11543858264848562619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073131 (A029707 (n + 1)).toNat

end

end A096474.P11543858264848562619

namespace A096474

/-- `A073131(A029707(n+1))` -/
def P11543858264848562619.Spec : Prop :=
  ∀ n, P11543858264848562619.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P1794605398408011799

`A001223(A001359(n+1))+A001223(A014574(n+1))`
-/

namespace A096474.P1794605398408011799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A001359 (n + 1)).toNat + A001223 (A014574 (n + 1)).toNat

end

end A096474.P1794605398408011799

namespace A096474

/-- `A001223(A001359(n+1))+A001223(A014574(n+1))` -/
def P1794605398408011799.Spec : Prop :=
  ∀ n, P1794605398408011799.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P18190830443161575080

`A001223(A001359(n+1)+1)+A001223(A001359(n+1))`
-/

namespace A096474.P18190830443161575080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A001359 (n + 1) + 1).toNat + A001223 (A001359 (n + 1)).toNat

end

end A096474.P18190830443161575080

namespace A096474

/-- `A001223(A001359(n+1)+1)+A001223(A001359(n+1))` -/
def P18190830443161575080.Spec : Prop :=
  ∀ n, P18190830443161575080.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P1277769623348240001

`A155067(A040040(n+1))`
-/

namespace A096474.P1277769623348240001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (A040040 (n + 1)).toNat

end

end A096474.P1277769623348240001

namespace A096474

/-- `A155067(A040040(n+1))` -/
def P1277769623348240001.Spec : Prop :=
  ∀ n, P1277769623348240001.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P16110058072994918301

`A155067(A168497(n+2))`
-/

namespace A096474.P16110058072994918301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (A168497 (n + 2)).toNat

end

end A096474.P16110058072994918301

namespace A096474

/-- `A155067(A168497(n+2))` -/
def P16110058072994918301.Spec : Prop :=
  ∀ n, P16110058072994918301.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P5261160466831423674

`A031131(A001359(n+1))`
-/

namespace A096474.P5261160466831423674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A001359 (n + 1)).toNat

end

end A096474.P5261160466831423674

namespace A096474

/-- `A031131(A001359(n+1))` -/
def P5261160466831423674.Spec : Prop :=
  ∀ n, P5261160466831423674.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P9195283529085954522

`A031131(A124588(n+2))`
-/

namespace A096474.P9195283529085954522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A124588 (n + 2)).toNat

end

end A096474.P9195283529085954522

namespace A096474

/-- `A031131(A124588(n+2))` -/
def P9195283529085954522.Spec : Prop :=
  ∀ n, P9195283529085954522.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P15575271958917807861

`A031131(A181747(n+2))`
-/

namespace A096474.P15575271958917807861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A181747 (n + 2)).toNat

end

end A096474.P15575271958917807861

namespace A096474

/-- `A031131(A181747(n+2))` -/
def P15575271958917807861.Spec : Prop :=
  ∀ n, P15575271958917807861.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P193674733118633834

`A031131(p?[A040976(n+1)])`
-/

namespace A096474.P193674733118633834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096474.P193674733118633834

namespace A096474

/-- `A031131(p?[A040976(n+1)])` -/
def P193674733118633834.Spec : Prop :=
  ∀ n, P193674733118633834.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P9020849236948903738

`A031131(A014574(n+1)-1)`
-/

namespace A096474.P9020849236948903738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A014574 (n + 1) - 1).toNat

end

end A096474.P9020849236948903738

namespace A096474

/-- `A031131(A014574(n+1)-1)` -/
def P9020849236948903738.Spec : Prop :=
  ∀ n, P9020849236948903738.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P12204195822592389180

`A031131(A006512(n+1)-2)`
-/

namespace A096474.P12204195822592389180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A006512 (n + 1) - 2).toNat

end

end A096474.P12204195822592389180

namespace A096474

/-- `A031131(A006512(n+1)-2)` -/
def P12204195822592389180.Spec : Prop :=
  ∀ n, P12204195822592389180.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P14173999635934851973

`A031131(p?[∑[A001223(n+1)]])`
-/

namespace A096474.P14173999635934851973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096474.P14173999635934851973

namespace A096474

/-- `A031131(p?[∑[A001223(n+1)]])` -/
def P14173999635934851973.Spec : Prop :=
  ∀ n, P14173999635934851973.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P16278113080204621343

`A031131(p?[A000040(n+1)-2])`
-/

namespace A096474.P16278113080204621343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096474.P16278113080204621343

namespace A096474

/-- `A031131(p?[A000040(n+1)-2])` -/
def P16278113080204621343.Spec : Prop :=
  ∀ n, P16278113080204621343.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P12116747541666515628

`A031131(p?[p?[A034707(n+1)]-2])`
-/

namespace A096474.P12116747541666515628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096474.P12116747541666515628

namespace A096474

/-- `A031131(p?[p?[A034707(n+1)]-2])` -/
def P12116747541666515628.Spec : Prop :=
  ∀ n, P12116747541666515628.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P4632327176048016326

`A057473(n+1)-A000040(A001359(n+1))`
-/

namespace A096474.P4632327176048016326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1) - A000040 (A001359 (n + 1)).toNat

end

end A096474.P4632327176048016326

namespace A096474

/-- `A057473(n+1)-A000040(A001359(n+1))` -/
def P4632327176048016326.Spec : Prop :=
  ∀ n, P4632327176048016326.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P10887451367139719964

`A000040(A006512(n+1))-A057470(n+1)`
-/

namespace A096474.P10887451367139719964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006512 (n + 1)).toNat - A057470 (n + 1)

end

end A096474.P10887451367139719964

namespace A096474

/-- `A000040(A006512(n+1))-A057470(n+1)` -/
def P10887451367139719964.Spec : Prop :=
  ∀ n, P10887451367139719964.a n = A096474 (n + 1)

end A096474

/-! ## A096474.P14800066340281393969

`A000040(A006512(n+1))-A000040(A001359(n+1))`
-/

namespace A096474.P14800066340281393969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006512 (n + 1)).toNat - A000040 (A001359 (n + 1)).toNat

end

end A096474.P14800066340281393969

namespace A096474

/-- `A000040(A006512(n+1))-A000040(A001359(n+1))` -/
def P14800066340281393969.Spec : Prop :=
  ∀ n, P14800066340281393969.a n = A096474 (n + 1)

end A096474

/-!
# A096475: a(n) is the smallest lesser of twin prime p, such that prime(2 + p) - prime(p) = 2n (cf. A096474).

The programs for A096475, there is no canonical definition to state claims against.
-/

/-! ## A096475.P384848346066132695

`A000720(A096476(n+3))`
-/

namespace A096475.P384848346066132695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096476 (n + 3)).toNat

end

end A096475.P384848346066132695

/-! ## A096475.P10442849299520652786

`A061395(p?[A096476(n+3)])`
-/

namespace A096475.P10442849299520652786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096476 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096475.P10442849299520652786

/-! ## A096475.P17586275740983354800

`A061395(2*A096476(n+3))`
-/

namespace A096475.P17586275740983354800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A096476 (n + 3)).toNat

end

end A096475.P17586275740983354800

/-! ## A096475.P18017053020155008382

`A061395(lcm(2, A096476(n+3)))`
-/

namespace A096475.P18017053020155008382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A096476 (n + 3)))

end

end A096475.P18017053020155008382

/-! ## A096475.P5253906087344237454

`A061395(or(1, A096476(n+3)))`
-/

namespace A096475.P5253906087344237454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A096476 (n + 3))).toNat

end

end A096475.P5253906087344237454

/-!
# A096476: a(n) = prime(A096475(n)).

The programs for A096476, there is no canonical definition to state claims against.
-/

/-! ## A096476.P2392622369654844153

`A064988(A096475(n+3))`
-/

namespace A096476.P2392622369654844153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A096475 (n + 3)).toNat

end

end A096476.P2392622369654844153

/-! ## A096476.P2367118821081939247

`∑{d}[A096475(n+3), A156037(#)]`
-/

namespace A096476.P2367118821081939247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096475 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156037 d

end

end A096476.P2367118821081939247

/-! ## A096476.P13296962736416667007

`A006005(p?[A096475(n+3)])`
-/

namespace A096476.P13296962736416667007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096475 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096476.P13296962736416667007

/-! ## A096476.P8559328982500101147

`A008578(A096475(n+3)+1)`
-/

namespace A096476.P8559328982500101147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A096475 (n + 3) + 1).toNat

end

end A096476.P8559328982500101147

/-! ## A096476.P17653419756439994247

`A045344(A096475(n+3)-1)`
-/

namespace A096476.P17653419756439994247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A096475 (n + 3) - 1).toNat

end

end A096476.P17653419756439994247

/-!
# A096477: Subscripts for "secondary twin-primes": numbers k such that prime(prime(k)+1) - prime(prime(k)) = A073124(k) = 2.

The programs for A096477, the canonical program `A096477.P17029621596018619196` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096477 has offset 1).

The definition of A096477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096477.P16642622992944968812

`eq[2, A237259(n+2)]`
-/

namespace A096477.P16642622992944968812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237259 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P16642622992944968812

namespace A096477

/-- `eq[2, A237259(n+2)]` -/
def P16642622992944968812.Spec : Prop :=
  ∀ n, (P16642622992944968812.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P3789041350171913384

`record[1-A237259(n+1)+n]`
-/

namespace A096477.P3789041350171913384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237259 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096477.P3789041350171913384

namespace A096477

/-- `record[1-A237259(n+1)+n]` -/
def P3789041350171913384.Spec : Prop :=
  ∀ n, P3789041350171913384.a n = A096477 (n + 1)

end A096477

/-! ## A096477.P2491417573394554651

`A000720(A096478(n+1))`
-/

namespace A096477.P2491417573394554651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096478 (n + 1)).toNat

end

end A096477.P2491417573394554651

namespace A096477

/-- `A000720(A096478(n+1))` -/
def P2491417573394554651.Spec : Prop :=
  ∀ n, P2491417573394554651.a n = A096477 (n + 1)

end A096477

/-! ## A096477.P7086900026320068335

`A000720(p?[A029707(n+1)])`
-/

namespace A096477.P7086900026320068335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096477.P7086900026320068335

namespace A096477

/-- `A000720(p?[A029707(n+1)])` -/
def P7086900026320068335.Spec : Prop :=
  ∀ n, P7086900026320068335.a n = A096477 (n + 1)

end A096477

/-! ## A096477.P17029621596018619196

`eq[2, A001223(A008578(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096477

/-- `eq[2, A001223(A008578(n+1))]` -/
def P17029621596018619196.Spec : Prop :=
  ∀ n, (P17029621596018619196.a n : ℤ) = A096477 (n + 1)

theorem P17029621596018619196.correct : P17029621596018619196.Spec := by
  intro n
  simp only [A096477, Nat.add_sub_cancel]

end A096477

/-! ## A096477.P10311077164971982743

`eq[2, A001223(A028815(n)-1)]`
-/

namespace A096477.P10311077164971982743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028815 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P10311077164971982743

namespace A096477

/-- `eq[2, A001223(A028815(n)-1)]` -/
def P10311077164971982743.Spec : Prop :=
  ∀ n, (P10311077164971982743.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P16453669782525353165

`eq[2, A001223(A000040(n+1))]+1`
-/

namespace A096477.P16453669782525353165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096477.P16453669782525353165

namespace A096477

/-- `eq[2, A001223(A000040(n+1))]+1` -/
def P16453669782525353165.Spec : Prop :=
  ∀ n, (P16453669782525353165.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P15792786892986070952

`eq[2, A001223(A001747(n+1)/2)]`
-/

namespace A096477.P15792786892986070952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P15792786892986070952

namespace A096477

/-- `eq[2, A001223(A001747(n+1)/2)]` -/
def P15792786892986070952.Spec : Prop :=
  ∀ n, (P15792786892986070952.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P13068557540419498509

`eq[2, A001223(A006093(n+1)+1)]+1`
-/

namespace A096477.P13068557540419498509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096477.P13068557540419498509

namespace A096477

/-- `eq[2, A001223(A006093(n+1)+1)]+1` -/
def P13068557540419498509.Spec : Prop :=
  ∀ n, (P13068557540419498509.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P116455660998597564

`eq[2, A001223(A156037(n+1)+1)]+1`
-/

namespace A096477.P116455660998597564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A156037 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096477.P116455660998597564

namespace A096477

/-- `eq[2, A001223(A156037(n+1)+1)]+1` -/
def P116455660998597564.Spec : Prop :=
  ∀ n, (P116455660998597564.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P9739649533362502377

`lt[A001223(record[A000010(n+1)]+1), 3]+1`
-/

namespace A096477.P9739649533362502377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A096477.P9739649533362502377

namespace A096477

/-- `lt[A001223(record[A000010(n+1)]+1), 3]+1` -/
def P9739649533362502377.Spec : Prop :=
  ∀ n, (P9739649533362502377.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P11439840918888943972

`eq[2, A054541(A028815(n))]`
-/

namespace A096477.P11439840918888943972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A028815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P11439840918888943972

namespace A096477

/-- `eq[2, A054541(A028815(n))]` -/
def P11439840918888943972.Spec : Prop :=
  ∀ n, (P11439840918888943972.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P2417303943763998089

`A000720(p?[A162775(n+1)])`
-/

namespace A096477.P2417303943763998089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096477.P2417303943763998089

namespace A096477

/-- `A000720(p?[A162775(n+1)])` -/
def P2417303943763998089.Spec : Prop :=
  ∀ n, P2417303943763998089.a n = A096477 (n + 1)

end A096477

/-! ## A096477.P6044703804727197281

`eq[2, A001223(record[A014963(n+1)])]`
-/

namespace A096477.P6044703804727197281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P6044703804727197281

namespace A096477

/-- `eq[2, A001223(record[A014963(n+1)])]` -/
def P6044703804727197281.Spec : Prop :=
  ∀ n, (P6044703804727197281.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P17898116313022640666

`eq[2, A054541(A008578(n+1)+1)]`
-/

namespace A096477.P17898116313022640666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A008578 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P17898116313022640666

namespace A096477

/-- `eq[2, A054541(A008578(n+1)+1)]` -/
def P17898116313022640666.Spec : Prop :=
  ∀ n, (P17898116313022640666.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P11083346258432876970

`eq[2, A125266(A008578(n+1)+1)]`
-/

namespace A096477.P11083346258432876970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (A008578 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096477.P11083346258432876970

namespace A096477

/-- `eq[2, A125266(A008578(n+1)+1)]` -/
def P11083346258432876970.Spec : Prop :=
  ∀ n, (P11083346258432876970.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P1674784997026778181

`A357839(A096478(2*n+1-n))`
-/

namespace A096477.P1674784997026778181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357839 (A096478 (2 * n + 1 - n)).toNat

end

end A096477.P1674784997026778181

namespace A096477

/-- `A357839(A096478(2*n+1-n))` -/
def P1674784997026778181.Spec : Prop :=
  ∀ n, P1674784997026778181.a n = A096477 (n + 1)

end A096477

/-! ## A096477.P15799743598228706014

`eq[1, A176246(A040976(n+1)+1)]+1`
-/

namespace A096477.P15799743598228706014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (A040976 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096477.P15799743598228706014

namespace A096477

/-- `eq[1, A176246(A040976(n+1)+1)]+1` -/
def P15799743598228706014.Spec : Prop :=
  ∀ n, (P15799743598228706014.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P3080438194459080933

`lt[A050216(A000040(n+1)), A001748(n+1)]+1`
-/

namespace A096477.P3080438194459080933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096477.P3080438194459080933

namespace A096477

/-- `lt[A050216(A000040(n+1)), A001748(n+1)]+1` -/
def P3080438194459080933.Spec : Prop :=
  ∀ n, (P3080438194459080933.a n : ℤ) = A096477 (n + 1)

end A096477

/-! ## A096477.P13311149877954389307

`A000720(A000720(A096479(n+1)))`
-/

namespace A096477.P13311149877954389307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A096479 (n + 1)).toNat).toNat

end

end A096477.P13311149877954389307

namespace A096477

/-- `A000720(A000720(A096479(n+1)))` -/
def P13311149877954389307.Spec : Prop :=
  ∀ n, P13311149877954389307.a n = A096477 (n + 1)

end A096477

/-!
# A096478: a(n) = A000040(A096477(n)), i.e., prime(a(n)) and prime(a(n)+1) are twin primes.

The programs for A096478, the canonical program `A096478.P11945316438027143335` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096478 has offset 1).

The definition of A096478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6802 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096478.P11945316438027143335

`p?[A029707(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A096478

/-- `p?[A029707(n+1)]` -/
def P11945316438027143335.Spec : Prop :=
  ∀ n, P11945316438027143335.a n = A096478 (n + 1)

theorem P11945316438027143335.correct : P11945316438027143335.Spec := by
  intro n
  simp only [A096478, Nat.add_sub_cancel]

end A096478

/-! ## A096478.P8141492053208680379

`p?[A068526(n+1)]`
-/

namespace A096478.P8141492053208680379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096478.P8141492053208680379

namespace A096478

/-- `p?[A068526(n+1)]` -/
def P8141492053208680379.Spec : Prop :=
  ∀ n, P8141492053208680379.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P5718509271301793367

`∩[A009087(n+1), A068526(n+1)]`
-/

namespace A096478.P5718509271301793367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P5718509271301793367

namespace A096478

/-- `∩[A009087(n+1), A068526(n+1)]` -/
def P5718509271301793367.Spec : Prop :=
  ∀ n, (P5718509271301793367.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P16320762709234445178

`∩[A068526(n+1), A106118(n+1)]`
-/

namespace A096478.P16320762709234445178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P16320762709234445178

namespace A096478

/-- `∩[A068526(n+1), A106118(n+1)]` -/
def P16320762709234445178.Spec : Prop :=
  ∀ n, (P16320762709234445178.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P11669575094309891601

`A000040(A096477(n+1))`
-/

namespace A096478.P11669575094309891601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A096477 (n + 1)).toNat

end

end A096478.P11669575094309891601

namespace A096478

/-- `A000040(A096477(n+1))` -/
def P11669575094309891601.Spec : Prop :=
  ∀ n, P11669575094309891601.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P17783128004219676225

`∩[A000040(n+1), A068526(n+1)]`
-/

namespace A096478.P17783128004219676225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P17783128004219676225

namespace A096478

/-- `∩[A000040(n+1), A068526(n+1)]` -/
def P17783128004219676225.Spec : Prop :=
  ∀ n, (P17783128004219676225.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P15536782664191171931

`A008578(A096477(n+1)+1)`
-/

namespace A096478.P15536782664191171931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A096477 (n + 1) + 1).toNat

end

end A096478.P15536782664191171931

namespace A096478

/-- `A008578(A096477(n+1)+1)` -/
def P15536782664191171931.Spec : Prop :=
  ∀ n, P15536782664191171931.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P9860567424912735995

`A182986(A096477(n+1)+1)`
-/

namespace A096478.P9860567424912735995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A096477 (n + 1) + 1).toNat

end

end A096478.P9860567424912735995

namespace A096478

/-- `A182986(A096477(n+1)+1)` -/
def P9860567424912735995.Spec : Prop :=
  ∀ n, P9860567424912735995.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P17577099680873498033

`∩[A068526(n+1), A175787(n+1)]`
-/

namespace A096478.P17577099680873498033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P17577099680873498033

namespace A096478

/-- `∩[A068526(n+1), A175787(n+1)]` -/
def P17577099680873498033.Spec : Prop :=
  ∀ n, (P17577099680873498033.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P6783638626849034663

`∩[A068526(n+1), A182986(n+1)]`
-/

namespace A096478.P6783638626849034663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P6783638626849034663

namespace A096478

/-- `∩[A068526(n+1), A182986(n+1)]` -/
def P6783638626849034663.Spec : Prop :=
  ∀ n, (P6783638626849034663.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P9133232783495343135

`∩[A068526(n+1), A301987(n+1)]`
-/

namespace A096478.P9133232783495343135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P9133232783495343135

namespace A096478

/-- `∩[A068526(n+1), A301987(n+1)]` -/
def P9133232783495343135.Spec : Prop :=
  ∀ n, (P9133232783495343135.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P2602850909142247627

`∩[A000430(n+1), A068526(n+1)]`
-/

namespace A096478.P2602850909142247627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P2602850909142247627

namespace A096478

/-- `∩[A000430(n+1), A068526(n+1)]` -/
def P2602850909142247627.Spec : Prop :=
  ∀ n, (P2602850909142247627.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P16342388008891991321

`∩[A050376(n+1), A068526(n+1)]`
-/

namespace A096478.P16342388008891991321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P16342388008891991321

namespace A096478

/-- `∩[A050376(n+1), A068526(n+1)]` -/
def P16342388008891991321.Spec : Prop :=
  ∀ n, (P16342388008891991321.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P115082145355677641

`∩[A068526(n+1), A136327(n+1)]`
-/

namespace A096478.P115082145355677641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P115082145355677641

namespace A096478

/-- `∩[A068526(n+1), A136327(n+1)]` -/
def P115082145355677641.Spec : Prop :=
  ∀ n, (P115082145355677641.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P10961527913655140567

`record[A020639(A068526(n+2))]`
-/

namespace A096478.P10961527913655140567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068526 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096478.P10961527913655140567

namespace A096478

/-- `record[A020639(A068526(n+2))]` -/
def P10961527913655140567.Spec : Prop :=
  ∀ n, P10961527913655140567.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P1605563697212009315

`filter[A068526(n+1), A010051(#)]`
-/

namespace A096478.P1605563697212009315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A096478.P1605563697212009315

namespace A096478

/-- `filter[A068526(n+1), A010051(#)]` -/
def P1605563697212009315.Spec : Prop :=
  ∀ n, P1605563697212009315.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P8559039997697120719

`filter[A068526(n+2), A355937(#)]`
-/

namespace A096478.P8559039997697120719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A096478.P8559039997697120719

namespace A096478

/-- `filter[A068526(n+2), A355937(#)]` -/
def P8559039997697120719.Spec : Prop :=
  ∀ n, P8559039997697120719.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P18025518660351768048

`∩[A029707(n+1), A068526(n+1)]`
-/

namespace A096478.P18025518660351768048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096478.P18025518660351768048

namespace A096478

/-- `∩[A029707(n+1), A068526(n+1)]` -/
def P18025518660351768048.Spec : Prop :=
  ∀ n, (P18025518660351768048.a n : ℤ) = A096478 (n + 1)

end A096478

/-! ## A096478.P9110033543279515345

`p?[A155752(n+1)+1]`
-/

namespace A096478.P9110033543279515345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096478.P9110033543279515345

namespace A096478

/-- `p?[A155752(n+1)+1]` -/
def P9110033543279515345.Spec : Prop :=
  ∀ n, P9110033543279515345.a n = A096478 (n + 1)

end A096478

/-! ## A096478.P17669066664236639696

`p?[A107770(n+1)-1]`
-/

namespace A096478.P17669066664236639696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096478.P17669066664236639696

namespace A096478

/-- `p?[A107770(n+1)-1]` -/
def P17669066664236639696.Spec : Prop :=
  ∀ n, P17669066664236639696.a n = A096478 (n + 1)

end A096478

/-!
# A096479: "Secondary twin primes": a(n) = A006450(A096477(n)).

The programs for A096479, the canonical program `A096479.P1185693016366905234` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096479 has offset 1).

The definition of A096479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096479.P1185693016366905234

`A006450(A096477(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A096479

/-- `A006450(A096477(n+1))` -/
def P1185693016366905234.Spec : Prop :=
  ∀ n, P1185693016366905234.a n = A096479 (n + 1)

theorem P1185693016366905234.correct : P1185693016366905234.Spec := by
  intro n
  simp only [A096479, Nat.add_sub_cancel]

end A096479

/-! ## A096479.P9641989312936079035

`∩[A001359(n+1), A006450(n+1)]`
-/

namespace A096479.P9641989312936079035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P9641989312936079035

namespace A096479

/-- `∩[A001359(n+1), A006450(n+1)]` -/
def P9641989312936079035.Spec : Prop :=
  ∀ n, (P9641989312936079035.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P11187571198426078809

`∩[A006450(n+1), A378983(n+1)]`
-/

namespace A096479.P11187571198426078809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P11187571198426078809

namespace A096479

/-- `∩[A006450(n+1), A378983(n+1)]` -/
def P11187571198426078809.Spec : Prop :=
  ∀ n, (P11187571198426078809.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P16263519867786558633

`A073123(A096477(n+1))-A088426(3*n+1)`
-/

namespace A096479.P16263519867786558633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073123 (A096477 (n + 1)).toNat - A088426 (3 * n + 1)

end

end A096479.P16263519867786558633

namespace A096479

/-- `A073123(A096477(n+1))-A088426(3*n+1)` -/
def P16263519867786558633.Spec : Prop :=
  ∀ n, P16263519867786558633.a n = A096479 (n + 1)

end A096479

/-! ## A096479.P18046336355338649563

`A129782(n+1)-2`
-/

namespace A096479.P18046336355338649563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129782 (n + 1) - 2

end

end A096479.P18046336355338649563

namespace A096479

/-- `A129782(n+1)-2` -/
def P18046336355338649563.Spec : Prop :=
  ∀ n, P18046336355338649563.a n = A096479 (n + 1)

end A096479

/-! ## A096479.P8364135480141231180

`∩[A006450(n+1), A054799(n+1)]`
-/

namespace A096479.P8364135480141231180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P8364135480141231180

namespace A096479

/-- `∩[A006450(n+1), A054799(n+1)]` -/
def P8364135480141231180.Spec : Prop :=
  ∀ n, (P8364135480141231180.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P6436349349211250854

`∩[A006450(n+1), A063700(n+1)]`
-/

namespace A096479.P6436349349211250854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P6436349349211250854

namespace A096479

/-- `∩[A006450(n+1), A063700(n+1)]` -/
def P6436349349211250854.Spec : Prop :=
  ∀ n, (P6436349349211250854.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P5000879004511361865

`∩[A006450(n+1), A124588(n+1)]`
-/

namespace A096479.P5000879004511361865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P5000879004511361865

namespace A096479

/-- `∩[A006450(n+1), A124588(n+1)]` -/
def P5000879004511361865.Spec : Prop :=
  ∀ n, (P5000879004511361865.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P15766079134780487587

`∩[A001359(n+1), A175247(n+1)]`
-/

namespace A096479.P15766079134780487587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P15766079134780487587

namespace A096479

/-- `∩[A001359(n+1), A175247(n+1)]` -/
def P15766079134780487587.Spec : Prop :=
  ∀ n, (P15766079134780487587.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P5855257068295159687

`∩[A006450(n+1), A181747(n+1)]`
-/

namespace A096479.P5855257068295159687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P5855257068295159687

namespace A096479

/-- `∩[A006450(n+1), A181747(n+1)]` -/
def P5855257068295159687.Spec : Prop :=
  ∀ n, (P5855257068295159687.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P9370728798926440023

`∩[A054799(n+1), A175247(n+1)]`
-/

namespace A096479.P9370728798926440023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P9370728798926440023

namespace A096479

/-- `∩[A054799(n+1), A175247(n+1)]` -/
def P9370728798926440023.Spec : Prop :=
  ∀ n, (P9370728798926440023.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P14885541843017765162

`∩[A063700(n+1), A175247(n+1)]`
-/

namespace A096479.P14885541843017765162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P14885541843017765162

namespace A096479

/-- `∩[A063700(n+1), A175247(n+1)]` -/
def P14885541843017765162.Spec : Prop :=
  ∀ n, (P14885541843017765162.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P9747732735485899563

`∩[A006450(n+1), A238528(n+1)]`
-/

namespace A096479.P9747732735485899563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P9747732735485899563

namespace A096479

/-- `∩[A006450(n+1), A238528(n+1)]` -/
def P9747732735485899563.Spec : Prop :=
  ∀ n, (P9747732735485899563.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P8713726589063443532

`∩[A001359(n+1), A302592(n+1)]`
-/

namespace A096479.P8713726589063443532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P8713726589063443532

namespace A096479

/-- `∩[A001359(n+1), A302592(n+1)]` -/
def P8713726589063443532.Spec : Prop :=
  ∀ n, (P8713726589063443532.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P7452589313257731618

`∩[A001359(n+1), A302596(n+1)]`
-/

namespace A096479.P7452589313257731618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P7452589313257731618

namespace A096479

/-- `∩[A001359(n+1), A302596(n+1)]` -/
def P7452589313257731618.Spec : Prop :=
  ∀ n, (P7452589313257731618.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P17690216760325711720

`∩[A175247(n+1), A181747(n+1)]`
-/

namespace A096479.P17690216760325711720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P17690216760325711720

namespace A096479

/-- `∩[A175247(n+1), A181747(n+1)]` -/
def P17690216760325711720.Spec : Prop :=
  ∀ n, (P17690216760325711720.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P7158849287166287176

`∩[A054799(n+1), A302592(n+1)]`
-/

namespace A096479.P7158849287166287176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P7158849287166287176

namespace A096479

/-- `∩[A054799(n+1), A302592(n+1)]` -/
def P7158849287166287176.Spec : Prop :=
  ∀ n, (P7158849287166287176.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P906053012546813176

`∩[A054799(n+1), A302596(n+1)]`
-/

namespace A096479.P906053012546813176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P906053012546813176

namespace A096479

/-- `∩[A054799(n+1), A302596(n+1)]` -/
def P906053012546813176.Spec : Prop :=
  ∀ n, (P906053012546813176.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P1766979661642209508

`∩[A063700(n+1), A302592(n+1)]`
-/

namespace A096479.P1766979661642209508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P1766979661642209508

namespace A096479

/-- `∩[A063700(n+1), A302592(n+1)]` -/
def P1766979661642209508.Spec : Prop :=
  ∀ n, (P1766979661642209508.a n : ℤ) = A096479 (n + 1)

end A096479

/-! ## A096479.P9959131414255121747

`∩[A063700(n+1), A302596(n+1)]`
-/

namespace A096479.P9959131414255121747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096479.P9959131414255121747

namespace A096479

/-- `∩[A063700(n+1), A302596(n+1)]` -/
def P9959131414255121747.Spec : Prop :=
  ∀ n, (P9959131414255121747.a n : ℤ) = A096479 (n + 1)

end A096479

/-!
# A096480: a(n) = Min{x : A073124(x) = 2n}.

The programs for A096480, there is no canonical definition to state claims against.
-/

/-! ## A096480.P15167774679824785198

`A000720(A096481(n+1))`
-/

namespace A096480.P15167774679824785198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096481 (n + 1)).toNat

end

end A096480.P15167774679824785198

/-! ## A096480.P11267613736849595590

`A061395(p?[A096481(n+1)])`
-/

namespace A096480.P11267613736849595590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A096480.P11267613736849595590

/-! ## A096480.P18399972529841422331

`∑{d}[A096481(n+1), A061395(#)]`
-/

namespace A096480.P18399972529841422331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A096480.P18399972529841422331

/-! ## A096480.P8786907997212259496

`A061395(∏{d}[A096481(n+1), #])`
-/

namespace A096480.P8786907997212259496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A096480.P8786907997212259496

/-! ## A096480.P5929699345288055073

`A061395(∑{p}[A096481(n+1), #])`
-/

namespace A096480.P5929699345288055073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A096480.P5929699345288055073

/-!
# A096481: a(n) = A000040(A096480(n)).

The programs for A096481, there is no canonical definition to state claims against.
-/

/-! ## A096481.P5988114138233331776

`A000040(A096480(n+1))`
-/

namespace A096481.P5988114138233331776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A096480 (n + 1)).toNat

end

end A096481.P5988114138233331776

/-! ## A096481.P12223275465776980242

`A008578(A096480(n+1)+1)`
-/

namespace A096481.P12223275465776980242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A096480 (n + 1) + 1).toNat

end

end A096481.P12223275465776980242

/-! ## A096481.P14204167913936178231

`A182986(A096480(n+1)+1)`
-/

namespace A096481.P14204167913936178231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A096480 (n + 1) + 1).toNat

end

end A096481.P14204167913936178231

/-! ## A096481.P16023105518760148628

`A158611(A096480(n+1)+2)`
-/

namespace A096481.P16023105518760148628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A096480 (n + 1) + 2).toNat

end

end A096481.P16023105518760148628

/-! ## A096481.P10373352285335166943

`∑{d}[A096480(n+1), A007444(#)]`
-/

namespace A096481.P10373352285335166943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A096481.P10373352285335166943

/-!
# A096482: a(n) = prime(prime(A096480(n))).

The programs for A096482, there is no canonical definition to state claims against.
-/

/-! ## A096482.P10707177638567769253

`A006450(A096480(n+1))`
-/

namespace A096482.P10707177638567769253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A096480 (n + 1)).toNat

end

end A096482.P10707177638567769253

/-! ## A096482.P3283223645814196647

`A006450(A000720(A096481(n+1)))`
-/

namespace A096482.P3283223645814196647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000720 (A096481 (n + 1)).toNat).toNat

end

end A096482.P3283223645814196647

/-! ## A096482.P15375162183356949548

`A006450(∑{d}[A096481(n+1), A061395(#)])`
-/

namespace A096482.P15375162183356949548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A096482.P15375162183356949548

/-! ## A096482.P305553935469244598

`A064988(A096481(n+1))`
-/

namespace A096482.P305553935469244598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A096481 (n + 1)).toNat

end

end A096482.P305553935469244598

/-! ## A096482.P16388516651297604463

`A055670(∑{d}[A096480(n+1), A007444(#)])-1`
-/

namespace A096482.P16388516651297604463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d).toNat - 1

end

end A096482.P16388516651297604463

/-!
# A096483: Integer part of the square root of n-th decimal repunit.

The programs for A096483, the canonical program `A096483.P9179580928022238078` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096483 has offset 1).

The definition of A096483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096483.P9179580928022238078

`floor(10^((n+1)/2)/3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A096483

/-- `floor(10^((n+1)/2)/3)` -/
def P9179580928022238078.Spec : Prop :=
  ∀ n, P9179580928022238078.a n = A096483 (n + 1)

theorem P9179580928022238078.correct : P9179580928022238078.Spec := by
  intro n
  simp only [A096483, Nat.add_sub_cancel]

end A096483

/-! ## A096483.P17306192754554174577

`A096487(n+2)/2`
-/

namespace A096483.P17306192754554174577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096487 (n + 2) : ℚ) / 2

end

end A096483.P17306192754554174577

namespace A096483

/-- `A096487(n+2)/2` -/
def P17306192754554174577.Spec : Prop :=
  ∀ n, P17306192754554174577.a n = (A096483 (n + 1) : ℚ)

end A096483

/-! ## A096483.P10339566229872821037

`round(sqrt(A288903(n)))`
-/

namespace A096483.P10339566229872821037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A288903 n : ℝ))

end

end A096483.P10339566229872821037

namespace A096483

/-- `round(sqrt(A288903(n)))` -/
def P10339566229872821037.Spec : Prop :=
  ∀ n, P10339566229872821037.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P16883421381316745548

`round(sqrt(A288973(n)))`
-/

namespace A096483.P16883421381316745548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A288973 n : ℝ))

end

end A096483.P16883421381316745548

namespace A096483

/-- `round(sqrt(A288973(n)))` -/
def P16883421381316745548.Spec : Prop :=
  ∀ n, P16883421381316745548.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P10970040980354027339

`round(sqrt(A289042(n)))`
-/

namespace A096483.P10970040980354027339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289042 n : ℝ))

end

end A096483.P10970040980354027339

namespace A096483

/-- `round(sqrt(A289042(n)))` -/
def P10970040980354027339.Spec : Prop :=
  ∀ n, P10970040980354027339.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P14877075851709033973

`round(sqrt(A289577(n)))`
-/

namespace A096483.P14877075851709033973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289577 n : ℝ))

end

end A096483.P14877075851709033973

namespace A096483

/-- `round(sqrt(A289577(n)))` -/
def P14877075851709033973.Spec : Prop :=
  ∀ n, P14877075851709033973.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P17673324016359716309

`round(sqrt(A289879(n)))`
-/

namespace A096483.P17673324016359716309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289879 n : ℝ))

end

end A096483.P17673324016359716309

namespace A096483

/-- `round(sqrt(A289879(n)))` -/
def P17673324016359716309.Spec : Prop :=
  ∀ n, P17673324016359716309.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P10643602272535242639

`round(sqrt(A290294(n)))`
-/

namespace A096483.P10643602272535242639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A290294 n : ℝ))

end

end A096483.P10643602272535242639

namespace A096483

/-- `round(sqrt(A290294(n)))` -/
def P10643602272535242639.Spec : Prop :=
  ∀ n, P10643602272535242639.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P8964244452595248638

`round(sqrt(∑[A218127(n)]))`
-/

namespace A096483.P8964244452595248638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A096483.P8964244452595248638

namespace A096483

/-- `round(sqrt(∑[A218127(n)]))` -/
def P8964244452595248638.Spec : Prop :=
  ∀ n, P8964244452595248638.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P7088897989090061630

`record[floor(sqrt(A290671(n)))]`
-/

namespace A096483.P7088897989090061630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A290671 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096483.P7088897989090061630

namespace A096483

/-- `record[floor(sqrt(A290671(n)))]` -/
def P7088897989090061630.Spec : Prop :=
  ∀ n, P7088897989090061630.a n = A096483 (n + 1)

end A096483

/-! ## A096483.P14525600361411162624

`ceil(sqrt(∑[A155594(n)+2]))-1`
-/

namespace A096483.P14525600361411162624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155594 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉ - 1

end

end A096483.P14525600361411162624

namespace A096483

/-- `ceil(sqrt(∑[A155594(n)+2]))-1` -/
def P14525600361411162624.Spec : Prop :=
  ∀ n, P14525600361411162624.a n = A096483 (n + 1)

end A096483

/-!
# A096484: Integer part of the square root of (2n-1)-th decimal repunit.

The programs for A096484, the canonical program `A096484.P13122390860223814343` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096484 has offset 1).

The definition of A096484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096484.P13122390860223814343

`A096483(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096484

/-- `A096483(2*n+1)` -/
def P13122390860223814343.Spec : Prop :=
  ∀ n, P13122390860223814343.a n = A096484 (n + 1)

theorem P13122390860223814343.correct : P13122390860223814343.Spec := by
  intro n
  simp only [A096484, Nat.add_sub_cancel]

end A096484

/-! ## A096484.P16453462867177274620

`A096487(2*(n+1))/2`
-/

namespace A096484.P16453462867177274620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096487 (2 * (n + 1)) : ℚ) / 2

end

end A096484.P16453462867177274620

namespace A096484

/-- `A096487(2*(n+1))/2` -/
def P16453462867177274620.Spec : Prop :=
  ∀ n, P16453462867177274620.a n = (A096484 (n + 1) : ℚ)

end A096484

/-! ## A096484.P9259295114977874944

`floor(sqrt(10^(2*n+1))/3)`
-/

namespace A096484.P9259295114977874944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (10 ^ (2 * n + 1) : ℝ) / 3⌋

end

end A096484.P9259295114977874944

namespace A096484

/-- `floor(sqrt(10^(2*n+1))/3)` -/
def P9259295114977874944.Spec : Prop :=
  ∀ n, P9259295114977874944.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P18320194130600930121

`record[floor(sqrt(A279118(n)))]`
-/

namespace A096484.P18320194130600930121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A279118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096484.P18320194130600930121

namespace A096484

/-- `record[floor(sqrt(A279118(n)))]` -/
def P18320194130600930121.Spec : Prop :=
  ∀ n, P18320194130600930121.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P18287564441167631121

`record[floor(sqrt(A282411(n)))]`
-/

namespace A096484.P18287564441167631121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A282411 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096484.P18287564441167631121

namespace A096484

/-- `record[floor(sqrt(A282411(n)))]` -/
def P18287564441167631121.Spec : Prop :=
  ∀ n, P18287564441167631121.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P5202152703487991390

`round(sqrt(A288903(2*n)))`
-/

namespace A096484.P5202152703487991390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A288903 (2 * n) : ℝ))

end

end A096484.P5202152703487991390

namespace A096484

/-- `round(sqrt(A288903(2*n)))` -/
def P5202152703487991390.Spec : Prop :=
  ∀ n, P5202152703487991390.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P14712439615676517588

`round(sqrt(A288973(2*n)))`
-/

namespace A096484.P14712439615676517588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A288973 (2 * n) : ℝ))

end

end A096484.P14712439615676517588

namespace A096484

/-- `round(sqrt(A288973(2*n)))` -/
def P14712439615676517588.Spec : Prop :=
  ∀ n, P14712439615676517588.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P8505141937328105231

`round(sqrt(A289042(2*n)))`
-/

namespace A096484.P8505141937328105231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289042 (2 * n) : ℝ))

end

end A096484.P8505141937328105231

namespace A096484

/-- `round(sqrt(A289042(2*n)))` -/
def P8505141937328105231.Spec : Prop :=
  ∀ n, P8505141937328105231.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P9707889742111520721

`round(sqrt(A289577(2*n)))`
-/

namespace A096484.P9707889742111520721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289577 (2 * n) : ℝ))

end

end A096484.P9707889742111520721

namespace A096484

/-- `round(sqrt(A289577(2*n)))` -/
def P9707889742111520721.Spec : Prop :=
  ∀ n, P9707889742111520721.a n = A096484 (n + 1)

end A096484

/-! ## A096484.P9735873944898343832

`round(sqrt(A289879(2*n)))`
-/

namespace A096484.P9735873944898343832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A289879 (2 * n) : ℝ))

end

end A096484.P9735873944898343832

namespace A096484

/-- `round(sqrt(A289879(2*n)))` -/
def P9735873944898343832.Spec : Prop :=
  ∀ n, P9735873944898343832.a n = A096484 (n + 1)

end A096484

/-!
# A096485: Period length of continued fraction for square root of n-th decimal repunit.

The programs for A096485, there is no canonical definition to state claims against.
-/

/-! ## A096485.P3009827619806605708

`xor(A038712(2*(n+1)), A261960(A001045(2*n+1)))`
-/

namespace A096485.P3009827619806605708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (2 * (n + 1))) (A261960 (A001045 (2 * n + 1)).toNat)

end

end A096485.P3009827619806605708

/-!
# A096487: Largest term in periodic part of continued fraction expansion of square root of n-th repunit.

The programs for A096487, the canonical program `A096487.P15740216586139559020` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096487 has offset 2).

The definition of A096487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096487.P15740216586139559020

`2*A096483(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096487

/-- `2*A096483(n+1)` -/
def P15740216586139559020.Spec : Prop :=
  ∀ n, P15740216586139559020.a n = A096487 (n + 2)

theorem P15740216586139559020.correct : P15740216586139559020.Spec := by
  intro n
  simp only [A096487, Nat.add_sub_cancel]

end A096487

/-! ## A096487.P8851324922411491916

`and(2*floor(10^((n+1)/2)/3), -1)`
-/

namespace A096487.P8851324922411491916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * ⌊(10 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) / 3⌋) (-1)

end

end A096487.P8851324922411491916

namespace A096487

/-- `and(2*floor(10^((n+1)/2)/3), -1)` -/
def P8851324922411491916.Spec : Prop :=
  ∀ n, P8851324922411491916.a n = A096487 (n + 2)

end A096487

/-! ## A096487.P13670014397153806029

`floor(10^((n+1)/2)/3)+and(floor(10^((n+1)/2)/3), -1)`
-/

namespace A096487.P13670014397153806029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) / 3⌋ + Int.land ⌊(10 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) / 3⌋ (-1)

end

end A096487.P13670014397153806029

namespace A096487

/-- `floor(10^((n+1)/2)/3)+and(floor(10^((n+1)/2)/3), -1)` -/
def P13670014397153806029.Spec : Prop :=
  ∀ n, P13670014397153806029.a n = A096487 (n + 2)

end A096487

/-! ## A096487.P7169390608009984758

`2*floor(sqrt(∑[10^n]))`
-/

namespace A096487.P7169390608009984758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096487.P7169390608009984758

namespace A096487

/-- `2*floor(sqrt(∑[10^n]))` -/
def P7169390608009984758.Spec : Prop :=
  ∀ n, (P7169390608009984758.a n : ℤ) = A096487 (n + 2)

end A096487

/-! ## A096487.P8461410212011198015

`record[2*floor(sqrt(A290671(n)))]`
-/

namespace A096487.P8461410212011198015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A290671 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096487.P8461410212011198015

namespace A096487

/-- `record[2*floor(sqrt(A290671(n)))]` -/
def P8461410212011198015.Spec : Prop :=
  ∀ n, P8461410212011198015.a n = A096487 (n + 2)

end A096487

/-!
# A096489: Noncomposite numbers n such that number of decimal digits of n = number of divisors of n.

The programs for A096489, there is no canonical definition to state claims against.
-/

/-! ## A096489.P16462216915950142453

`lt[∏{p}[2*n, #-4], -n]`
-/

namespace A096489.P16462216915950142453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A096489.P16462216915950142453

/-! ## A096489.P11491173050721365266

`lt[∏{e}[n, (4^#)²], 2*n]`
-/

namespace A096489.P11491173050721365266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (4 ^ Nat.factorization (f2 n) p) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A096489.P11491173050721365266

/-! ## A096489.P4500994605538139937

`lt[∑{e}[n², #]²², 2*n]`
-/

namespace A096489.P4500994605538139937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A096489.P4500994605538139937

/-! ## A096489.P14862815361035576694

`lt[∏{e}[n², #²]², 2*n]`
-/

namespace A096489.P14862815361035576694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A096489.P14862815361035576694

/-! ## A096489.P15707941735716799369

`lt[∑{e}[2*n, #]!^3, n+1]`
-/

namespace A096489.P15707941735716799369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A096489.P15707941735716799369

/-!
# A096490: Numbers k such that sigma_2(k) >= (3/2) * k^2, where sigma_2(k) is the sum of the squares of the divisors of k.

The programs for A096490, the canonical program `A096490.P8790020191321555782` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096490 has offset 1).

The definition of A096490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096490.P8790020191321555782

`lt[A000217(n), A067558(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096490

/-- `lt[A000217(n), A067558(n+1)]+1` -/
def P8790020191321555782.Spec : Prop :=
  ∀ n, (P8790020191321555782.a n : ℤ) = A096490 (n + 1)

theorem P8790020191321555782.correct : P8790020191321555782.Spec := by
  intro n
  simp only [A096490, Nat.add_sub_cancel]

end A096490

/-! ## A096490.P1925453065252382404

`∩[2*A131933(n+1), A334759(n+1)]`
-/

namespace A096490.P1925453065252382404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096490.P1925453065252382404

namespace A096490

/-- `∩[2*A131933(n+1), A334759(n+1)]` -/
def P1925453065252382404.Spec : Prop :=
  ∀ n, (P1925453065252382404.a n : ℤ) = A096490 (n + 1)

end A096490

/-! ## A096490.P9496313473992986150

`∩[A004277(A131933(n+1)), A334759(n+1)]`
-/

namespace A096490.P9496313473992986150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A131933 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096490.P9496313473992986150

namespace A096490

/-- `∩[A004277(A131933(n+1)), A334759(n+1)]` -/
def P9496313473992986150.Spec : Prop :=
  ∀ n, (P9496313473992986150.a n : ℤ) = A096490 (n + 1)

end A096490

/-!
# A096491: a(n) = sqrt(n) of n if n is a perfect square, otherwise a(n) = largest term in period of continued fraction expansion of square root of n.

The programs for A096491, the canonical program `A096491.P9046291183319835938` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096491 has offset 1).

The definition of A096491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096491.P12371971953921144716

`lcm(2, A316355(n))/2+1`
-/

namespace A096491.P12371971953921144716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A316355 n) : ℚ) / 2 + 1

end

end A096491.P12371971953921144716

namespace A096491

/-- `lcm(2, A316355(n))/2+1` -/
def P12371971953921144716.Spec : Prop :=
  ∀ n, P12371971953921144716.a n = (A096491 (n + 1) : ℚ)

end A096491

/-! ## A096491.P626784724262796115

`floor(sqrt(n+1))*A275437(n)`
-/

namespace A096491.P626784724262796115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) * A275437 n

end

end A096491.P626784724262796115

namespace A096491

/-- `floor(sqrt(n+1))*A275437(n)` -/
def P626784724262796115.Spec : Prop :=
  ∀ n, P626784724262796115.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P13917613395461795973

`floor(sqrt(n+1))*A169695(n+1)`
-/

namespace A096491.P13917613395461795973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) * A169695 (n + 1)

end

end A096491.P13917613395461795973

namespace A096491

/-- `floor(sqrt(n+1))*A169695(n+1)` -/
def P13917613395461795973.Spec : Prop :=
  ∀ n, P13917613395461795973.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P9046291183319835938

`(2-Δ[floor(sqrt(n))])*A000196(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A096491

/-- `(2-Δ[floor(sqrt(n))])*A000196(n+1)` -/
def P9046291183319835938.Spec : Prop :=
  ∀ n, P9046291183319835938.a n = A096491 (n + 1)

theorem P9046291183319835938.correct : P9046291183319835938.Spec := by
  intro n
  simp only [A096491, Nat.add_sub_cancel]

end A096491

/-! ## A096491.P12267398214640166205

`(A049240(n+1)+1)*floor(sqrt(n+1))`
-/

namespace A096491.P12267398214640166205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049240 (n + 1) + 1) * (Nat.sqrt (n + 1) : ℤ)

end

end A096491.P12267398214640166205

namespace A096491

/-- `(A049240(n+1)+1)*floor(sqrt(n+1))` -/
def P12267398214640166205.Spec : Prop :=
  ∀ n, P12267398214640166205.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P14423294873411647230

`gcd(2, A000005(n+1))*floor(sqrt(n+1))`
-/

namespace A096491.P14423294873411647230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000005 (n + 1)) * Nat.sqrt (n + 1)

end

end A096491.P14423294873411647230

namespace A096491

/-- `gcd(2, A000005(n+1))*floor(sqrt(n+1))` -/
def P14423294873411647230.Spec : Prop :=
  ∀ n, (P14423294873411647230.a n : ℤ) = A096491 (n + 1)

end A096491

/-! ## A096491.P17818398933677757239

`A026741(∑[char[∑[n*n%2+1]]])+1`
-/

namespace A096491.P17818398933677757239
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A096491.P17818398933677757239

namespace A096491

/-- `A026741(∑[char[∑[n*n%2+1]]])+1` -/
def P17818398933677757239.Spec : Prop :=
  ∀ n, P17818398933677757239.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P2009869395832715868

`A074294(A038759(n+1))`
-/

namespace A096491.P2009869395832715868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A038759 (n + 1)).toNat

end

end A096491.P2009869395832715868

namespace A096491

/-- `A074294(A038759(n+1))` -/
def P2009869395832715868.Spec : Prop :=
  ∀ n, P2009869395832715868.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P14611464423267563560

`A240071(∑[A067280(n+1)])`
-/

namespace A096491.P14611464423267563560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A096491.P14611464423267563560

namespace A096491

/-- `A240071(∑[A067280(n+1)])` -/
def P14611464423267563560.Spec : Prop :=
  ∀ n, P14611464423267563560.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P10839336524720459986

`A320471(n+1)+A000196(n+1)`
-/

namespace A096491.P10839336524720459986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320471 (n + 1) + A000196 (n + 1)

end

end A096491.P10839336524720459986

namespace A096491

/-- `A320471(n+1)+A000196(n+1)` -/
def P10839336524720459986.Spec : Prop :=
  ∀ n, P10839336524720459986.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P11658199879556133941

`A308720(n+1)+A037213(n+1)`
-/

namespace A096491.P11658199879556133941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308720 (n + 1) + A037213 (n + 1)

end

end A096491.P11658199879556133941

namespace A096491

/-- `A308720(n+1)+A037213(n+1)` -/
def P11658199879556133941.Spec : Prop :=
  ∀ n, P11658199879556133941.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P2187621833042680161

`A209302(n+1-A038760(n+1))`
-/

namespace A096491.P2187621833042680161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 ((n + 1 : ℤ) - A038760 (n + 1)).toNat

end

end A096491.P2187621833042680161

namespace A096491

/-- `A209302(n+1-A038760(n+1))` -/
def P2187621833042680161.Spec : Prop :=
  ∀ n, P2187621833042680161.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P12477715864567121023

`A053188(A038759(n+1))+A000196(n+1)`
-/

namespace A096491.P12477715864567121023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A038759 (n + 1)).toNat + A000196 (n + 1)

end

end A096491.P12477715864567121023

namespace A096491

/-- `A053188(A038759(n+1))+A000196(n+1)` -/
def P12477715864567121023.Spec : Prop :=
  ∀ n, P12477715864567121023.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P14525032238076508221

`A000196(n+1)+A000196(n)*A049240(n+1)`
-/

namespace A096491.P14525032238076508221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + A000196 n * A049240 (n + 1)

end

end A096491.P14525032238076508221

namespace A096491

/-- `A000196(n+1)+A000196(n)*A049240(n+1)` -/
def P14525032238076508221.Spec : Prop :=
  ∀ n, P14525032238076508221.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P1939813933241140927

`A000196(n)+A000196(n+1)/A056926(n+1)`
-/

namespace A096491.P1939813933241140927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 n : ℚ) + (A000196 (n + 1) : ℚ) / (A056926 (n + 1) : ℚ)

end

end A096491.P1939813933241140927

namespace A096491

/-- `A000196(n)+A000196(n+1)/A056926(n+1)` -/
def P1939813933241140927.Spec : Prop :=
  ∀ n, P1939813933241140927.a n = (A096491 (n + 1) : ℚ)

end A096491

/-! ## A096491.P8449152770246520976

`A320471(n+1)+A320471(n+1)+A037213(n+1)`
-/

namespace A096491.P8449152770246520976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320471 (n + 1) + (A320471 (n + 1) + A037213 (n + 1))

end

end A096491.P8449152770246520976

namespace A096491

/-- `A320471(n+1)+A320471(n+1)+A037213(n+1)` -/
def P8449152770246520976.Spec : Prop :=
  ∀ n, P8449152770246520976.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P14265294893215765618

`A000196(n+1)+A000196(n+1)-A037213(n+1)`
-/

namespace A096491.P14265294893215765618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A000196 (n + 1) - A037213 (n + 1))

end

end A096491.P14265294893215765618

namespace A096491

/-- `A000196(n+1)+A000196(n+1)-A037213(n+1)` -/
def P14265294893215765618.Spec : Prop :=
  ∀ n, P14265294893215765618.a n = A096491 (n + 1)

end A096491

/-! ## A096491.P2241031447580434663

`A003059(n+1)+A320471(n+1)-A049240(n+1)`
-/

namespace A096491.P2241031447580434663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A320471 (n + 1) - A049240 (n + 1))

end

end A096491.P2241031447580434663

namespace A096491

/-- `A003059(n+1)+A320471(n+1)-A049240(n+1)` -/
def P2241031447580434663.Spec : Prop :=
  ∀ n, P2241031447580434663.a n = A096491 (n + 1)

end A096491

/-!
# A096492: Number of distinct terms in continued fraction period of square root of n.

The programs for A096492, there is no canonical definition to state claims against.
-/

/-! ## A096492.P3354926639415985403

`floor(sqrt(A028832(n+1)²+1))`
-/

namespace A096492.P3354926639415985403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028832 (n + 1) ^ 2 + 1)

end

end A096492.P3354926639415985403

/-! ## A096492.P9890324783435413183

`round(sqrt(A028832(ϕ²-(ϕ-n))²+1))`
-/

namespace A096492.P9890324783435413183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A028832 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2 + 1 : ℝ))

end

end A096492.P9890324783435413183

/-! ## A096492.P1619012448060974811

`A028310(A028832(n+1))`
-/

namespace A096492.P1619012448060974811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A028832 (n + 1)).toNat

end

end A096492.P1619012448060974811

/-! ## A096492.P10364498634356255413

`A071950(A028832(n+1)²)`
-/

namespace A096492.P10364498634356255413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071950 (A028832 (n + 1) ^ 2).toNat

end

end A096492.P10364498634356255413

/-! ## A096492.P5559425936037431129

`A098925(A028832(n+1)²)`
-/

namespace A096492.P5559425936037431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A028832 (n + 1) ^ 2).toNat

end

end A096492.P5559425936037431129

/-! ## A096492.P17279626122479234667

`A137734(A028832(n+1)²)`
-/

namespace A096492.P17279626122479234667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A028832 (n + 1) ^ 2).toNat

end

end A096492.P17279626122479234667

/-! ## A096492.P10834791401708494711

`A137735(A028832(n+1)²)`
-/

namespace A096492.P10834791401708494711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A028832 (n + 1) ^ 2).toNat

end

end A096492.P10834791401708494711

/-! ## A096492.P1942162314688536856

`A301941(A028832(n+1)²)`
-/

namespace A096492.P1942162314688536856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301941 (A028832 (n + 1) ^ 2).toNat

end

end A096492.P1942162314688536856

/-! ## A096492.P4333961866498650214

`A002034(A028832(n+1)!)`
-/

namespace A096492.P4333961866498650214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Nat.factorial (A028832 (n + 1)).toNat)

end

end A096492.P4333961866498650214

/-! ## A096492.P11949771308325363809

`A003520(A028832(n+1)+3)`
-/

namespace A096492.P11949771308325363809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A028832 (n + 1) + 3).toNat

end

end A096492.P11949771308325363809

/-! ## A096492.P13448899310655510931

`A005361(2^A028832(n+1))`
-/

namespace A096492.P13448899310655510931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A028832 (n + 1) : ℤ))).toNat

end

end A096492.P13448899310655510931

/-! ## A096492.P5735962006206506874

`A033273(2^A028832(n+1))`
-/

namespace A096492.P5735962006206506874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A028832 (n + 1) : ℤ))).toNat

end

end A096492.P5735962006206506874

/-! ## A096492.P2522129495889047127

`A008616(9*A028832(n+1))`
-/

namespace A096492.P2522129495889047127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (9 * A028832 (n + 1)).toNat

end

end A096492.P2522129495889047127

/-! ## A096492.P4245024247362678091

`gcd(A028832(n+1), A330609(n))`
-/

namespace A096492.P4245024247362678091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028832 (n + 1)) (A330609 n)

end

end A096492.P4245024247362678091

/-! ## A096492.P11912934935474627257

`A065803(n+1)+A028832(n+1)`
-/

namespace A096492.P11912934935474627257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 (n + 1) + A028832 (n + 1)

end

end A096492.P11912934935474627257

/-! ## A096492.P8029020395682289424

`A097853(n+1)-A028833(n+1)`
-/

namespace A096492.P8029020395682289424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - A028833 (n + 1)

end

end A096492.P8029020395682289424

/-! ## A096492.P18328762758294372159

`A028832(n+1)+2-A275437(n)`
-/

namespace A096492.P18328762758294372159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1) + (2 - A275437 n)

end

end A096492.P18328762758294372159

/-! ## A096492.P17230988403944915049

`A028832(n+1)+1-A049240(n+1)`
-/

namespace A096492.P17230988403944915049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1) + (1 - A049240 (n + 1))

end

end A096492.P17230988403944915049

/-! ## A096492.P9202088924661159247

`A028832(n+1)+A000005(n+1)%2`
-/

namespace A096492.P9202088924661159247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (n + 1) + Int.tmod (A000005 (n + 1)) 2

end

end A096492.P9202088924661159247

/-! ## A096492.P8815019533622996421

`round(A000040(A028832(n+1)+1)/ϕ²)`
-/

namespace A096492.P8815019533622996421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (A028832 (n + 1) + 1).toNat : ℝ) / Real.goldenRatio ^ 2)

end

end A096492.P8815019533622996421

/-!
# A096493: Number of distinct primes in continued fraction period of square root of n.

The programs for A096493, there is no canonical definition to state claims against.
-/

/-! ## A096493.P8012570306183052479

`and(A240009(n), A329996(3*n+2))`
-/

namespace A096493.P8012570306183052479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A240009 n) (A329996 (3 * n + 2))

end

end A096493.P8012570306183052479

/-! ## A096493.P13512930172140538106

`A339659(A346426(n)+A008683(n+1))`
-/

namespace A096493.P13512930172140538106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A346426 n + A008683 (n + 1)).toNat

end

end A096493.P13512930172140538106

/-! ## A096493.P18247685195340445337

`A128124(A305891(3*n+1))%A274459(n+1)`
-/

namespace A096493.P18247685195340445337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128124 (A305891 (3 * n + 1)).toNat) (A274459 (n + 1))

end

end A096493.P18247685195340445337

/-! ## A096493.P5307775504685048935

`val(A337566(A126335(n+2)), 3)`
-/

namespace A096493.P5307775504685048935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337566 (A126335 (n + 2)).toNat).toNat 3

end

end A096493.P5307775504685048935

/-! ## A096493.P7367333960956212317

`A001222(A018452(n+1))%A273915(n)`
-/

namespace A096493.P7367333960956212317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A018452 (n + 1)).toNat) (A273915 n)

end

end A096493.P7367333960956212317

/-!
# A096494: Largest value in the periodic part of the continued fraction of sqrt(prime(n)).

The programs for A096494, the canonical program `A096494.P552534159965664402` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096494 has offset 1).

The definition of A096494 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096494.P552534159965664402

`2*A000006(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096494

/-- `2*A000006(n+1)` -/
def P552534159965664402.Spec : Prop :=
  ∀ n, P552534159965664402.a n = A096494 (n + 1)

theorem P552534159965664402.correct : P552534159965664402.Spec := by
  intro n
  simp only [A096494, Nat.add_sub_cancel]

end A096494

/-! ## A096494.P8272733264112610516

`A117767(n+1)-1`
-/

namespace A096494.P8272733264112610516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1) - 1

end

end A096494.P8272733264112610516

namespace A096494

/-- `A117767(n+1)-1` -/
def P8272733264112610516.Spec : Prop :=
  ∀ n, P8272733264112610516.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P2017417612929026430

`2*(n-A103416(n))`
-/

namespace A096494.P2017417612929026430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A103416 n)

end

end A096494.P2017417612929026430

namespace A096494

/-- `2*(n-A103416(n))` -/
def P2017417612929026430.Spec : Prop :=
  ∀ n, P2017417612929026430.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P11708111759609540399

`∑[2*char[A038107(n)]]`
-/

namespace A096494.P11708111759609540399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096494.P11708111759609540399

namespace A096494

/-- `∑[2*char[A038107(n)]]` -/
def P11708111759609540399.Spec : Prop :=
  ∀ n, (P11708111759609540399.a n : ℤ) = A096494 (n + 1)

end A096494

/-! ## A096494.P3781141789955017957

`2*sqrt(A065730(n+1))`
-/

namespace A096494.P3781141789955017957
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A065730 (n + 1) : ℝ)

end

end A096494.P3781141789955017957

namespace A096494

/-- `2*sqrt(A065730(n+1))` -/
def P3781141789955017957.Spec : Prop :=
  ∀ n, P3781141789955017957.a n = (A096494 (n + 1) : ℝ)

end A096494

/-! ## A096494.P15828183405112405115

`2*∑[A139140(n)%2]`
-/

namespace A096494.P15828183405112405115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139140 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096494.P15828183405112405115

namespace A096494

/-- `2*∑[A139140(n)%2]` -/
def P15828183405112405115.Spec : Prop :=
  ∀ n, P15828183405112405115.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P16373176327488709706

`2*floor(sqrt(Δ[A007504(n)]))`
-/

namespace A096494.P16373176327488709706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (f1 (n + 1) - f1 n)

end

end A096494.P16373176327488709706

namespace A096494

/-- `2*floor(sqrt(Δ[A007504(n)]))` -/
def P16373176327488709706.Spec : Prop :=
  ∀ n, P16373176327488709706.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P6035944354541130814

`2*∑[char[∑[A014085(n)]]]`
-/

namespace A096494.P6035944354541130814
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096494.P6035944354541130814

namespace A096494

/-- `2*∑[char[∑[A014085(n)]]]` -/
def P6035944354541130814.Spec : Prop :=
  ∀ n, (P6035944354541130814.a n : ℤ) = A096494 (n + 1)

end A096494

/-! ## A096494.P2771239082635022339

`2*(A104103(n+1)-1)`
-/

namespace A096494.P2771239082635022339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104103 (n + 1) - 1)

end

end A096494.P2771239082635022339

namespace A096494

/-- `2*(A104103(n+1)-1)` -/
def P2771239082635022339.Spec : Prop :=
  ∀ n, P2771239082635022339.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P5028779976293718412

`2*floor(sqrt(A000040(n+1)))`
-/

namespace A096494.P5028779976293718412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A000040 (n + 1))

end

end A096494.P5028779976293718412

namespace A096494

/-- `2*floor(sqrt(A000040(n+1)))` -/
def P5028779976293718412.Spec : Prop :=
  ∀ n, P5028779976293718412.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P11082063072600888527

`2*floor(sqrt(A006005(n+1)))`
-/

namespace A096494.P11082063072600888527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A006005 (n + 1))

end

end A096494.P11082063072600888527

namespace A096494

/-- `2*floor(sqrt(A006005(n+1)))` -/
def P11082063072600888527.Spec : Prop :=
  ∀ n, P11082063072600888527.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P17314191140464452316

`2*floor(sqrt(A006093(n+1)))`
-/

namespace A096494.P17314191140464452316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A006093 (n + 1))

end

end A096494.P17314191140464452316

namespace A096494

/-- `2*floor(sqrt(A006093(n+1)))` -/
def P17314191140464452316.Spec : Prop :=
  ∀ n, P17314191140464452316.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P1358398767884176331

`2*floor(sqrt(A014193(n+1)))`
-/

namespace A096494.P1358398767884176331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A014193 (n + 1))

end

end A096494.P1358398767884176331

namespace A096494

/-- `2*floor(sqrt(A014193(n+1)))` -/
def P1358398767884176331.Spec : Prop :=
  ∀ n, P1358398767884176331.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P3565107660072195446

`2*floor(sqrt(A014686(n+1)))`
-/

namespace A096494.P3565107660072195446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A014686 (n + 1))

end

end A096494.P3565107660072195446

namespace A096494

/-- `2*floor(sqrt(A014686(n+1)))` -/
def P3565107660072195446.Spec : Prop :=
  ∀ n, P3565107660072195446.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P15036099133674151608

`2*floor(sqrt(A039915(n+1)))`
-/

namespace A096494.P15036099133674151608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A039915 (n + 1))

end

end A096494.P15036099133674151608

namespace A096494

/-- `2*floor(sqrt(A039915(n+1)))` -/
def P15036099133674151608.Spec : Prop :=
  ∀ n, P15036099133674151608.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P5140295337966137282

`2*floor(sqrt(A082542(n+1)))`
-/

namespace A096494.P5140295337966137282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A082542 (n + 1))

end

end A096494.P5140295337966137282

namespace A096494

/-- `2*floor(sqrt(A082542(n+1)))` -/
def P5140295337966137282.Spec : Prop :=
  ∀ n, P5140295337966137282.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P10807680643691225002

`2*floor(sqrt(A088190(n+1)))`
-/

namespace A096494.P10807680643691225002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A088190 (n + 1))

end

end A096494.P10807680643691225002

namespace A096494

/-- `2*floor(sqrt(A088190(n+1)))` -/
def P10807680643691225002.Spec : Prop :=
  ∀ n, P10807680643691225002.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P12529408550298431667

`2*floor(sqrt(A156037(n+1)))`
-/

namespace A096494.P12529408550298431667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A156037 (n + 1))

end

end A096494.P12529408550298431667

namespace A096494

/-- `2*floor(sqrt(A156037(n+1)))` -/
def P12529408550298431667.Spec : Prop :=
  ∀ n, P12529408550298431667.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P5328326317838034222

`2*floor(sqrt(sqrt(A001248(n+1))))`
-/

namespace A096494.P5328326317838034222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))⌋

end

end A096494.P5328326317838034222

namespace A096494

/-- `2*floor(sqrt(sqrt(A001248(n+1))))` -/
def P5328326317838034222.Spec : Prop :=
  ∀ n, P5328326317838034222.a n = A096494 (n + 1)

end A096494

/-! ## A096494.P9789847747563387967

`2*(n+1-A103355(n+1))`
-/

namespace A096494.P9789847747563387967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A103355 (n + 1))

end

end A096494.P9789847747563387967

namespace A096494

/-- `2*(n+1-A103355(n+1))` -/
def P9789847747563387967.Spec : Prop :=
  ∀ n, P9789847747563387967.a n = A096494 (n + 1)

end A096494

/-!
# A096495: Number of distinct terms in the periodic part of the continued fraction for sqrt(prime(n)).

The programs for A096495, there is no canonical definition to state claims against.
-/

/-! ## A096495.P2186433677038065640

`A028832(p?[comp[n²]])`
-/

namespace A096495.P2186433677038065640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096495.P2186433677038065640

/-! ## A096495.P15529997912388288485

`A028832(A000040(n+1))`
-/

namespace A096495.P15529997912388288485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (A000040 (n + 1)).toNat

end

end A096495.P15529997912388288485

/-! ## A096495.P1813717296786376085

`A028832(A008578(n+2))`
-/

namespace A096495.P1813717296786376085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (A008578 (n + 2)).toNat

end

end A096495.P1813717296786376085

/-! ## A096495.P14531849439534433485

`A028832(A182986(n+2))`
-/

namespace A096495.P14531849439534433485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (A182986 (n + 2)).toNat

end

end A096495.P14531849439534433485

/-! ## A096495.P15481576500762129192

`A028832(record[A006530(n+2)])`
-/

namespace A096495.P15481576500762129192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096495.P15481576500762129192

/-! ## A096495.P4434019044184553456

`A028832(record[A014963(n+2)])`
-/

namespace A096495.P4434019044184553456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096495.P4434019044184553456

/-! ## A096495.P6403430676243931431

`A028832(record[A020639(n+2)])`
-/

namespace A096495.P6403430676243931431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096495.P6403430676243931431

/-! ## A096495.P5694547373777340102

`A028832(record[p?[A026362(n+1)]])`
-/

namespace A096495.P5694547373777340102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026362 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028832 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096495.P5694547373777340102

/-!
# A096496: Number of distinct primes in the periodic part of the continued fraction for sqrt(prime(n)).

The programs for A096496, there is no canonical definition to state claims against.
-/

/-! ## A096496.P3744538897111320697

`A096493(p?[xor(1, n)])`
-/

namespace A096496.P3744538897111320697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A096496.P3744538897111320697

/-! ## A096496.P782535600564909757

`A096493(or(1, p?[round(8*n/7)]-2)+2)`
-/

namespace A096496.P782535600564909757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) + 2).toNat

end

end A096496.P782535600564909757

/-! ## A096496.P10849839203490883183

`A096493(Δ[A007504(n)])`
-/

namespace A096496.P10849839203490883183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (n + 1) - f1 n).toNat

end

end A096496.P10849839203490883183

/-! ## A096496.P4077031480886303971

`A096493(record[A051698(n)])`
-/

namespace A096496.P4077031480886303971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096496.P4077031480886303971

/-! ## A096496.P17467766841068993150

`A096493(A000040(n+1))`
-/

namespace A096496.P17467766841068993150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A000040 (n + 1)).toNat

end

end A096496.P17467766841068993150

/-! ## A096496.P13759780248868241816

`A096493(A161847(n+1))`
-/

namespace A096496.P13759780248868241816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A161847 (n + 1)).toNat

end

end A096496.P13759780248868241816

/-! ## A096496.P6583099153900798534

`A096493(A008578(n+2))`
-/

namespace A096496.P6583099153900798534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A008578 (n + 2)).toNat

end

end A096496.P6583099153900798534

/-! ## A096496.P685391954355560174

`A096493(A182986(n+2))`
-/

namespace A096496.P685391954355560174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A182986 (n + 2)).toNat

end

end A096496.P685391954355560174

/-! ## A096496.P15334560387443180490

`A096493(eq[0, A007920(n)])`
-/

namespace A096496.P15334560387443180490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096496.P15334560387443180490

/-! ## A096496.P1234442198201168672

`A096493(eq[0, A051699(n)])`
-/

namespace A096496.P1234442198201168672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096496.P1234442198201168672

/-! ## A096496.P13300937080191262555

`A096493(eq[1, A032741(n)])`
-/

namespace A096496.P13300937080191262555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096496.P13300937080191262555

/-! ## A096496.P5610043686389869896

`A096493(record[A006530(n+2)])`
-/

namespace A096496.P5610043686389869896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096496.P5610043686389869896

/-! ## A096496.P1132405198043179554

`A096493(record[A014963(n+2)])`
-/

namespace A096496.P1132405198043179554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096496.P1132405198043179554

/-! ## A096496.P314003264330500678

`A096493(record[A020639(n+2)])`
-/

namespace A096496.P314003264330500678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A096496.P314003264330500678

/-! ## A096496.P17023803909090108584

`A096493(A007504(n+1)-A007504(n))`
-/

namespace A096496.P17023803909090108584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A007504 (n + 1) - A007504 n).toNat

end

end A096496.P17023803909090108584

/-! ## A096496.P93439710064926100

`A096493(A383578(n+1))`
-/

namespace A096496.P93439710064926100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096493 (A383578 (n + 1)).toNat

end

end A096496.P93439710064926100

/-!
# A096497: Prime following n-th repunit.

The programs for A096497, there is no canonical definition to state claims against.
-/

/-! ## A096497.P16084108626226704596

`A096869(n+1)+∑[10^n]`
-/

namespace A096497.P16084108626226704596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096869 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096497.P16084108626226704596

/-! ## A096497.P2378719639684357493

`A287468(2*n)+A096869(n+1)`
-/

namespace A096497.P2378719639684357493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (2 * n) + A096869 (n + 1)

end

end A096497.P2378719639684357493

/-! ## A096497.P2696589655660906859

`A290420(2*n)+A096869(n+1)`
-/

namespace A096497.P2696589655660906859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 (2 * n) + A096869 (n + 1)

end

end A096497.P2696589655660906859

/-! ## A096497.P3802376577812997703

`A028310(A096869(n+1))+A000042(n+1)`
-/

namespace A096497.P3802376577812997703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096869 (n + 1)).toNat + A000042 (n + 1)

end

end A096497.P3802376577812997703

/-!
# A096498: Prime before n-th repunit.

The programs for A096498, there is no canonical definition to state claims against.
-/

/-! ## A096498.P11761946562293681463

`A000042(n+2)-A096870(n+2)`
-/

namespace A096498.P11761946562293681463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) - A096870 (n + 2)

end

end A096498.P11761946562293681463

/-! ## A096498.P5929336867321741653

`A002275(n+2)-A096870(n+2)`
-/

namespace A096498.P5929336867321741653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - A096870 (n + 2)

end

end A096498.P5929336867321741653

/-! ## A096498.P11995746462324655142

`record[A287468(n+2)]-A096870(n+2)`
-/

namespace A096498.P11995746462324655142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096870 (n + 2)

end

end A096498.P11995746462324655142

/-! ## A096498.P9219427787396407555

`record[A290420(n+2)]-A096870(n+2)`
-/

namespace A096498.P9219427787396407555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290420 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A096870 (n + 2)

end

end A096498.P9219427787396407555

/-! ## A096498.P9164048252183169546

`A287468(A005843(n+1))-A096870(n+2)`
-/

namespace A096498.P9164048252183169546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A005843 (n + 1)).toNat - A096870 (n + 2)

end

end A096498.P9164048252183169546

/-! ## A096498.P12770606796676345821

`A094026(A004273(n+2))-A096870(n+2)`
-/

namespace A096498.P12770606796676345821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A004273 (n + 2)).toNat - A096870 (n + 2)

end

end A096498.P12770606796676345821

/-! ## A096498.P6671418162331789049

`A096497(n+2)-(A096870(n+2)+A096869(n+2))`
-/

namespace A096498.P6671418162331789049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 2) - (A096870 (n + 2) + A096869 (n + 2))

end

end A096498.P6671418162331789049

/-! ## A096498.P15624951886121922301

`A096497(n+2)-A096499(n+2)`
-/

namespace A096498.P15624951886121922301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 2) - A096499 (n + 2)

end

end A096498.P15624951886121922301

/-! ## A096498.P14515621284904680465

`A000042(n+2)+A096869(n+2)-A096499(n+2)`
-/

namespace A096498.P14515621284904680465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) + (A096869 (n + 2) - A096499 (n + 2))

end

end A096498.P14515621284904680465

/-!
# A096499: Difference between prime following and prime preceding n-th repunit.

The programs for A096499, there is no canonical definition to state claims against.
-/

/-! ## A096499.P9466221526189861082

`A096870(n+2)+A096869(n+2)`
-/

namespace A096499.P9466221526189861082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096870 (n + 2) + A096869 (n + 2)

end

end A096499.P9466221526189861082

/-! ## A096499.P10093022922943720647

`A096497(n+2)-A096498(n+2)`
-/

namespace A096499.P10093022922943720647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 2) - A096498 (n + 2)

end

end A096499.P10093022922943720647

/-! ## A096499.P1228589885690552216

`A096497(A020725(n+1))%A096498(n+2)`
-/

namespace A096499.P1228589885690552216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096497 (A020725 (n + 1)).toNat) (A096498 (n + 2))

end

end A096499.P1228589885690552216

/-! ## A096499.P15219486200391493110

`A000042(n+2)+A096869(n+2)-A096498(n+2)`
-/

namespace A096499.P15219486200391493110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 2) + (A096869 (n + 2) - A096498 (n + 2))

end

end A096499.P15219486200391493110

/-! ## A096499.P794242177408285606

`A096497(n+2)+A096870(n+2)-A000042(n+2)`
-/

namespace A096499.P794242177408285606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 2) + (A096870 (n + 2) - A000042 (n + 2))

end

end A096499.P794242177408285606

