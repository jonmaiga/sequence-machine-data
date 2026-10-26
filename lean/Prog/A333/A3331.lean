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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A333100: Even numbers k such that both k and k + 2 are nontotients (A005277).

The programs for A333100, the canonical program `A333100.P598868710935215718` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333100 has offset 1).

The definition of A333100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333100.P3387884310400719941

`∩[A005277(n+1)-2, A005277(n+1)]`
-/

namespace A333100.P3387884310400719941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333100.P3387884310400719941

namespace A333100

/-- `∩[A005277(n+1)-2, A005277(n+1)]` -/
def P3387884310400719941.Spec : Prop :=
  ∀ n, (P3387884310400719941.a n : ℤ) = A333100 (n + 1)

end A333100

/-! ## A333100.P598868710935215718

`A005277(eq[2, A005277(n+2)-A005277(n+1)]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A333100

/-- `A005277(eq[2, A005277(n+2)-A005277(n+1)]+1)` -/
def P598868710935215718.Spec : Prop :=
  ∀ n, P598868710935215718.a n = A333100 (n + 1)

theorem P598868710935215718.correct : P598868710935215718.Spec := by
  intro n
  simp only [A333100, Nat.add_sub_cancel]

end A333100

/-! ## A333100.P2742196038717557554

`A005277(eq[2, A005277(n+2)%A005277(n+1)]+1)`
-/

namespace A333100.P2742196038717557554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005277 (n + 2)) (A005277 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333100.P2742196038717557554

namespace A333100

/-- `A005277(eq[2, A005277(n+2)%A005277(n+1)]+1)` -/
def P2742196038717557554.Spec : Prop :=
  ∀ n, P2742196038717557554.a n = A333100 (n + 1)

end A333100

/-! ## A333100.P16654140741552531501

`A103517(eq[A032446(n+1), A057826(n+2)])`
-/

namespace A333100.P16654140741552531501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333100.P16654140741552531501

namespace A333100

/-- `A103517(eq[A032446(n+1), A057826(n+2)])` -/
def P16654140741552531501.Spec : Prop :=
  ∀ n, P16654140741552531501.a n = A333100 (n + 1)

end A333100

/-! ## A333100.P235580711111113781

`A103517(eq[A051445(n+1), A051445(n+2)])`
-/

namespace A333100.P235580711111113781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333100.P235580711111113781

namespace A333100

/-- `A103517(eq[A051445(n+1), A051445(n+2)])` -/
def P235580711111113781.Spec : Prop :=
  ∀ n, P235580711111113781.a n = A333100 (n + 1)

end A333100

/-! ## A333100.P3023926991856936940

`A004277(∩[A079695(n+1)-1, A079695(n+1)])`
-/

namespace A333100.P3023926991856936940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333100.P3023926991856936940

namespace A333100

/-- `A004277(∩[A079695(n+1)-1, A079695(n+1)])` -/
def P3023926991856936940.Spec : Prop :=
  ∀ n, P3023926991856936940.a n = A333100 (n + 1)

end A333100

/-! ## A333100.P11281451214443562105

`A005843(eq[A051445(n+1), A307853(2*n+1)])`
-/

namespace A333100.P11281451214443562105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333100.P11281451214443562105

namespace A333100

/-- `A005843(eq[A051445(n+1), A307853(2*n+1)])` -/
def P11281451214443562105.Spec : Prop :=
  ∀ n, P11281451214443562105.a n = A333100 (n + 1)

end A333100

/-!
# A333101: Numbers k such that both k and k + 2 are noncototients (A005278).

The programs for A333101, there is no canonical definition to state claims against.
-/

/-! ## A333101.P644251342199365209

`∩[A005278(n+1)-2, A005278(n+1)]`
-/

namespace A333101.P644251342199365209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333101.P644251342199365209

/-! ## A333101.P15712246012507915434

`∩[2*A126887(n+1), 2*A126887(n+1)-2]`
-/

namespace A333101.P15712246012507915434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333101.P15712246012507915434

/-! ## A333101.P8684873978001905805

`∩[A005278(n+1), A004275(A126887(n+1))]`
-/

namespace A333101.P8684873978001905805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A126887 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333101.P8684873978001905805

/-! ## A333101.P10672380461855378715

`A004275(∩[A126887(n+1)+1, A126887(n+1)])`
-/

namespace A333101.P10672380461855378715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126887 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333101.P10672380461855378715

/-! ## A333101.P5094268012310891425

`∩[A004275(A005278(n+1)/2), A005278(n+1)]`
-/

namespace A333101.P5094268012310891425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A005278 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333101.P5094268012310891425

/-!
# A333102: Numbers k such that both k and k + 2 are both nontotients and noncototients (A058763).

The programs for A333102, there is no canonical definition to state claims against.
-/

/-! ## A333102.P8380621430269316078

`∩[A058763(n+1)-2, A058763(n+1)]`
-/

namespace A333102.P8380621430269316078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333102.P8380621430269316078

/-! ## A333102.P13658903909973391563

`A058763(eq[2, A058763(n+2)-A058763(n+1)]+1)`
-/

namespace A333102.P13658903909973391563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (n + 2) - A058763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333102.P13658903909973391563

/-! ## A333102.P8824293807985534727

`A058763(eq[2, A058763(n+2)%A058763(n+1)]+1)`
-/

namespace A333102.P8824293807985534727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058763 (n + 2)) (A058763 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A333102.P8824293807985534727

/-! ## A333102.P10557364445702321992

`∩[A333100(n+1), A333101(n+1)]`
-/

namespace A333102.P10557364445702321992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333102.P10557364445702321992

/-!
# A333105: Number of nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (1,v) with v in {-1,0,...,max(y,1)}.

The programs for A333105, there is no canonical definition to state claims against.
-/

/-! ## A333105.P4456007679130308713

`A333106(n)/(n+1)`
-/

namespace A333105.P4456007679130308713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333106 n : ℚ) / (n + 1 : ℚ)

end

end A333105.P4456007679130308713

/-! ## A333105.P10289842232970562473

`floor(A333106(n)/A008619(2*n))`
-/

namespace A333105.P10289842232970562473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A333106 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A333105.P10289842232970562473

/-! ## A333105.P17497416558497914994

`lcm(A333106(n)/A008619(2*n), A020985(n))`
-/

namespace A333105.P17497416558497914994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A333106 n : ℚ) / (A008619 (2 * n) : ℚ))) (A020985 n)

end

end A333105.P17497416558497914994

/-! ## A333105.P2761451962186176815

`A333106(n)/A008619(2*n)*A057077(n)²`
-/

namespace A333105.P2761451962186176815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333106 n : ℚ) / (A008619 (2 * n) : ℚ) * (A057077 n ^ 2 : ℚ)

end

end A333105.P2761451962186176815

/-! ## A333105.P9692738999035107975

`A333106(n)/A008619(2*n)*and(1, A055580(n))`
-/

namespace A333105.P9692738999035107975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333106 n : ℚ) / (A008619 (2 * n) : ℚ) * (Int.land 1 (A055580 n) : ℚ)

end

end A333105.P9692738999035107975

/-! ## A333105.P9061629886347637892

`A333106(n)/A008619(2*n)-n*A000038(n)`
-/

namespace A333105.P9061629886347637892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333106 n : ℚ) / (A008619 (2 * n) : ℚ) - ((n : ℤ) * A000038 n : ℚ)

end

end A333105.P9061629886347637892

/-! ## A333105.P13351045251136446142

`or(A028310(n)-n, A333106(n)/A008619(2*n))`
-/

namespace A333105.P13351045251136446142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028310 n - (n : ℤ)) (SequenceMachineLib.roundAway ((A333106 n : ℚ) / (A008619 (2 * n) : ℚ)))

end

end A333105.P13351045251136446142

/-! ## A333105.P3282330954543868204

`A333106(n)/A008619(2*n)-A000007(ϕ²-(ϕ-n))`
-/

namespace A333105.P3282330954543868204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333106 n : ℚ) / (A008619 (2 * n) : ℚ) - (A000007 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ)

end

end A333105.P3282330954543868204

/-! ## A333105.P13900022154585346446

`A333069(n)/A333070(n)*A333106(n)`
-/

namespace A333105.P13900022154585346446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333069 n : ℚ) / (A333070 n : ℚ) * (A333106 n : ℚ)

end

end A333105.P13900022154585346446

/-! ## A333105.P4867083492190236366

`(A333106(n)/A008619(2*n))%Δ[A001542(n)]`
-/

namespace A333105.P4867083492190236366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A333106 n : ℚ) / (A008619 (2 * n) : ℚ))) (f1 (n + 1) - f1 n)

end

end A333105.P4867083492190236366

/-!
# A333106: Total number of nodes summed over all nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (1,v) with v in {-1,0,...,max(y,1)}.

The programs for A333106, there is no canonical definition to state claims against.
-/

/-! ## A333106.P590789313104949143

`(n+1)*A333105(n)`
-/

namespace A333106.P590789313104949143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333105 n

end

end A333106.P590789313104949143

/-! ## A333106.P18100121836087170545

`abs((1-(n-A005843(n)))*A333105(n))`
-/

namespace A333106.P18100121836087170545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - ((n : ℤ) - A005843 n)) * A333105 n|

end

end A333106.P18100121836087170545

/-! ## A333106.P15862570450807880460

`A333105(n)/A333647(n)*A333680(n)`
-/

namespace A333106.P15862570450807880460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333105 n : ℚ) / (A333647 n : ℚ) * (A333680 n : ℚ)

end

end A333106.P15862570450807880460

/-! ## A333106.P15123476248935082857

`A333105(n)*A341315(A000124(n))`
-/

namespace A333106.P15123476248935082857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333105 n * A341315 (A000124 n).toNat

end

end A333106.P15123476248935082857

/-! ## A333106.P13267745293951151692

`A333070(n)*A333105(n)/A333069(n)`
-/

namespace A333106.P13267745293951151692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333070 n * A333105 n : ℚ) / (A333069 n : ℚ)

end

end A333106.P13267745293951151692

/-!
# A333107: Total area under all nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (1,v) with v in {-1,0,...,max(y,1)}.

The programs for A333107, there is no canonical definition to state claims against.
-/

/-! ## A333107.P13270632800204436264

`A054899(A007716(n)+A001590(2*n+3))`
-/

namespace A333107.P13270632800204436264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A007716 n + A001590 (2 * n + 3)).toNat

end

end A333107.P13270632800204436264

/-! ## A333107.P5707945449904058679

`A003247(A003243(2*n+3))-A003243(2*n+3)`
-/

namespace A333107.P5707945449904058679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003247 (A003243 (2 * n + 3)).toNat - A003243 (2 * n + 3)

end

end A333107.P5707945449904058679

/-! ## A333107.P14423182768605069271

`Δ[A005145(A000608(n))]`
-/

namespace A333107.P14423182768605069271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A000608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333107.P14423182768605069271

/-!
# A333108: a(n) = floor(n*sin(n)*cos(n)).

The programs for A333108, the canonical program `A333108.P16421879003924655202` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333108 has offset 0).

The definition of A333108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*sin(n)*cos(n))` (program `A333108.P16421879003924655202`, by `A333108.P16421879003924655202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333108.P16421879003924655202

`floor(n*sin(n)*cos(n))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333108

/-- `floor(n*sin(n)*cos(n))` -/
def P16421879003924655202.Spec : Prop :=
  ∀ n, P16421879003924655202.a n = A333108 n

theorem P16421879003924655202.correct : P16421879003924655202.Spec := by
  intro n
  simp only [A333108]

end A333108

/-! ## A333108.P6846864710973286656

`floor(n*sin(2*n)/2)`
-/

namespace A333108.P6846864710973286656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sin (2 * n : ℝ) / 2)⌋

end

end A333108.P6846864710973286656

namespace A333108

/-- `floor(n*sin(2*n)/2)` -/
def P6846864710973286656.Spec : Prop :=
  ∀ n, P6846864710973286656.a n = A333108 n

end A333108

/-! ## A333108.P7624636781635065934

`-ceil(-(n*sin(n)*cos(n)))`
-/

namespace A333108.P7624636781635065934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-((n : ℝ) * Real.sin (n : ℝ) * Real.cos (n : ℝ))⌉

end

end A333108.P7624636781635065934

namespace A333108

/-- `-ceil(-(n*sin(n)*cos(n)))` -/
def P7624636781635065934.Spec : Prop :=
  ∀ n, P7624636781635065934.a n = A333108 n

end A333108

/-! ## A333108.P17048360858846228071

`floor(n*cos(asin(1)-n)*cos(n))`
-/

namespace A333108.P17048360858846228071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cos (Real.arcsin (1 : ℝ) - (n : ℝ)) * Real.cos (n : ℝ)⌋

end

end A333108.P17048360858846228071

namespace A333108

/-- `floor(n*cos(asin(1)-n)*cos(n))` -/
def P17048360858846228071.Spec : Prop :=
  ∀ n, P17048360858846228071.a n = A333108 n

end A333108

/-! ## A333108.P9478016734040169565

`floor(n/2*sin(A005843(n)))`
-/

namespace A333108.P9478016734040169565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2 : ℝ) * Real.sin (A005843 n : ℝ)⌋

end

end A333108.P9478016734040169565

namespace A333108

/-- `floor(n/2*sin(A005843(n)))` -/
def P9478016734040169565.Spec : Prop :=
  ∀ n, P9478016734040169565.a n = A333108 n

end A333108

/-!
# A333109: The number of vertices on an octagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333109, there is no canonical definition to state claims against.
-/

/-! ## A333109.P1935990631882066521

`A333110(n+1)+1-A333075(n+1)`
-/

namespace A333109.P1935990631882066521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333110 (n + 1) + (1 - A333075 (n + 1))

end

end A333109.P1935990631882066521

/-!
# A333110: The number of edges on an octagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333110, there is no canonical definition to state claims against.
-/

/-! ## A333110.P15833632274366906226

`A333075(n+1)+A333109(n+1)-1`
-/

namespace A333110.P15833632274366906226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333075 (n + 1) + (A333109 (n + 1) - 1)

end

end A333110.P15833632274366906226

/-!
# A333111: a(n) is the least positive integer not used earlier such that n+1 and the sum of terms up to a(n) are coprime.

The programs for A333111, there is no canonical definition to state claims against.
-/

/-! ## A333111.P8274885975004287876

`A117532(n+2)-1`
-/

namespace A333111.P8274885975004287876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117532 (n + 2) - 1

end

end A333111.P8274885975004287876

/-! ## A333111.P8647146961265188056

`Δ[A117533(n+1)]-1`
-/

namespace A333111.P8647146961265188056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A333111.P8647146961265188056

/-! ## A333111.P2525341179236479782

`abs(Δ[A117533(n-log2(1/2))]-1)`
-/

namespace A333111.P2525341179236479782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - 1|

end

end A333111.P2525341179236479782

/-! ## A333111.P5319206896489517854

`A023443(A117532(n+2))`
-/

namespace A333111.P5319206896489517854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A117532 (n + 2)).toNat

end

end A333111.P5319206896489517854

/-! ## A333111.P2317709102422642581

`A023443(Δ[A117533(n+1)])`
-/

namespace A333111.P2317709102422642581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A333111.P2317709102422642581

/-! ## A333111.P11672380024141001038

`A004275(Δ[A117533(n+1)])/2`
-/

namespace A333111.P11672380024141001038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A333111.P11672380024141001038

/-! ## A333111.P2205164664080640796

`Δ[A117533(n+1)+A001489(n)]`
-/

namespace A333111.P2205164664080640796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333111.P2205164664080640796

/-! ## A333111.P10523987103377970721

`Δ[A117533(n+1)+A001478(n+1)]`
-/

namespace A333111.P10523987103377970721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117533 (n + 1) + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333111.P10523987103377970721

/-!
# A333112: The number of edges inside a heptagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333112, there is no canonical definition to state claims against.
-/

/-! ## A333112.P4608389857742275796

`A329713(n+1)+A333113(n+1)-1`
-/

namespace A333112.P4608389857742275796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329713 (n + 1) + (A333113 (n + 1) - 1)

end

end A333112.P4608389857742275796

/-!
# A333113: The number of vertices inside a heptagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333113, there is no canonical definition to state claims against.
-/

/-! ## A333113.P16691847714613256093

`A333112(n+1)+1-A329713(n+1)`
-/

namespace A333113.P16691847714613256093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333112 (n + 1) + (1 - A329713 (n + 1))

end

end A333113.P16691847714613256093

/-!
# A333114: Sum over all closed Deutsch paths of length n of products over all peaks p of x_p/y_p, where x_p and y_p are the coordinates of peak p.

The programs for A333114, there is no canonical definition to state claims against.
-/

/-! ## A333114.P3029680506246184083

`or(A305384(A168502(n+1)), A330608(n))`
-/

namespace A333114.P3029680506246184083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305384 (A168502 (n + 1)).toNat) (A330608 n)

end

end A333114.P3029680506246184083

/-!
# A333116: The number of vertices inside a hexagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333116, there is no canonical definition to state claims against.
-/

/-! ## A333116.P8117407377907478165

`A333049(n+1)+1-A331908(n+1)`
-/

namespace A333116.P8117407377907478165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333049 (n + 1) + (1 - A331908 (n + 1))

end

end A333116.P8117407377907478165

/-!
# A333117: The number of vertices inside a pentagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333117, there is no canonical definition to state claims against.
-/

/-! ## A333117.P9033963184187611051

`A333118(n+1)+1-A331906(n+1)`
-/

namespace A333117.P9033963184187611051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333118 (n + 1) + (1 - A331906 (n + 1))

end

end A333117.P9033963184187611051

/-!
# A333118: The number of edges inside a pentagram formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333118, there is no canonical definition to state claims against.
-/

/-! ## A333118.P14291385310231138025

`A331906(n+1)+A333117(n+1)-1`
-/

namespace A333118.P14291385310231138025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331906 (n + 1) + (A333117 (n + 1) - 1)

end

end A333118.P14291385310231138025

/-!
# A333119: Triangle T read by rows: T(n, k) = (n - k)*(1 - (-1)^k + 2*k)/4, with 0 <= k < n.

The programs for A333119, the canonical program `A333119.P3624958623573876513` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333119 has offset 1).

The definition of A333119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333119.P3624958623573876513

`(row(n)+1-col(n))*(1-(-1)^col(n)+2*col(n))/4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333119

/-- `(row(n)+1-col(n))*(1-(-1)^col(n)+2*col(n))/4` -/
def P3624958623573876513.Spec : Prop :=
  ∀ n, P3624958623573876513.a n = (A333119 (n + 1) : ℚ)

end A333119

/-! ## A333119.P2740029405122443925

`ceil(A002262(n)/2)*A004736(n+1)`
-/

namespace A333119.P2740029405122443925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002262 n : ℚ) / 2⌉ * A004736 (n + 1)

end

end A333119.P2740029405122443925

namespace A333119

/-- `ceil(A002262(n)/2)*A004736(n+1)` -/
def P2740029405122443925.Spec : Prop :=
  ∀ n, P2740029405122443925.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P7080327226736615783

`floor(A002260(n+1)/2)*A004736(n+1)`
-/

namespace A333119.P7080327226736615783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / 2⌋ * A004736 (n + 1)

end

end A333119.P7080327226736615783

namespace A333119

/-- `floor(A002260(n+1)/2)*A004736(n+1)` -/
def P7080327226736615783.Spec : Prop :=
  ∀ n, P7080327226736615783.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P5576262228663977983

`ceil(A057554(2*n+1)/2)*A004736(n+1)`
-/

namespace A333119.P5576262228663977983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057554 (2 * n + 1) : ℚ) / 2⌉ * A004736 (n + 1)

end

end A333119.P5576262228663977983

namespace A333119

/-- `ceil(A057554(2*n+1)/2)*A004736(n+1)` -/
def P5576262228663977983.Spec : Prop :=
  ∀ n, P5576262228663977983.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P3370586949172307982

`(A064801(n+1)-2*n)*ceil(A002262(n)/2)`
-/

namespace A333119.P3370586949172307982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064801 (n + 1) - (2 * n : ℤ)) * ⌈(A002262 n : ℚ) / 2⌉

end

end A333119.P3370586949172307982

namespace A333119

/-- `(A064801(n+1)-2*n)*ceil(A002262(n)/2)` -/
def P3370586949172307982.Spec : Prop :=
  ∀ n, P3370586949172307982.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P10350742613654685658

`A110654(A002262(n))*A193739(n)`
-/

namespace A333119.P10350742613654685658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002262 n).toNat * A193739 n

end

end A333119.P10350742613654685658

namespace A333119

/-- `A110654(A002262(n))*A193739(n)` -/
def P10350742613654685658.Spec : Prop :=
  ∀ n, P10350742613654685658.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P12833984822327027577

`A004526(A002260(n+1))*A193739(n)`
-/

namespace A333119.P12833984822327027577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002260 (n + 1)).toNat * A193739 n

end

end A333119.P12833984822327027577

namespace A333119

/-- `A004526(A002260(n+1))*A193739(n)` -/
def P12833984822327027577.Spec : Prop :=
  ∀ n, P12833984822327027577.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P12236306440683569842

`A004526(A002260(n+1))*A004736(n+1)`
-/

namespace A333119.P12236306440683569842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002260 (n + 1)).toNat * A004736 (n + 1)

end

end A333119.P12236306440683569842

namespace A333119

/-- `A004526(A002260(n+1))*A004736(n+1)` -/
def P12236306440683569842.Spec : Prop :=
  ∀ n, P12236306440683569842.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P16253881302432780251

`(A025581(n)+1)*A004526(A002260(n+1))`
-/

namespace A333119.P16253881302432780251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A004526 (A002260 (n + 1)).toNat

end

end A333119.P16253881302432780251

namespace A333119

/-- `(A025581(n)+1)*A004526(A002260(n+1))` -/
def P16253881302432780251.Spec : Prop :=
  ∀ n, P16253881302432780251.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P9732217805802904286

`(A025581(n)+1)*A004526(A002262(n)+1)`
-/

namespace A333119.P9732217805802904286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A004526 (A002262 n + 1).toNat

end

end A333119.P9732217805802904286

namespace A333119

/-- `(A025581(n)+1)*A004526(A002262(n)+1)` -/
def P9732217805802904286.Spec : Prop :=
  ∀ n, P9732217805802904286.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P6912314631294111749

`A004736(n+1)*A008624(A158405(n+1))`
-/

namespace A333119.P6912314631294111749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008624 (A158405 (n + 1)).toNat

end

end A333119.P6912314631294111749

namespace A333119

/-- `A004736(n+1)*A008624(A158405(n+1))` -/
def P6912314631294111749.Spec : Prop :=
  ∀ n, P6912314631294111749.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P11622726889352198718

`A004736(n+1)*A057554(A002260(n+1)²)`
-/

namespace A333119.P11622726889352198718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A057554 (A002260 (n + 1) ^ 2).toNat

end

end A333119.P11622726889352198718

namespace A333119

/-- `A004736(n+1)*A057554(A002260(n+1)²)` -/
def P11622726889352198718.Spec : Prop :=
  ∀ n, P11622726889352198718.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P3020767025877448187

`sqrt(A055461(n+1))*A004526(A002260(n+1))`
-/

namespace A333119.P3020767025877448187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A004526 (A002260 (n + 1)).toNat : ℝ)

end

end A333119.P3020767025877448187

namespace A333119

/-- `sqrt(A055461(n+1))*A004526(A002260(n+1))` -/
def P3020767025877448187.Spec : Prop :=
  ∀ n, P3020767025877448187.a n = (A333119 (n + 1) : ℝ)

end A333119

/-! ## A333119.P9917390367427244495

`A004526(sqrt(A133819(n+1)))*A004736(n+1)`
-/

namespace A333119.P9917390367427244495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A004736 (n + 1)

end

end A333119.P9917390367427244495

namespace A333119

/-- `A004526(sqrt(A133819(n+1)))*A004736(n+1)` -/
def P9917390367427244495.Spec : Prop :=
  ∀ n, P9917390367427244495.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P16702578481236153706

`A002265(2*A002260(n+1))*A004736(n+1)`
-/

namespace A333119.P16702578481236153706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A002260 (n + 1)).toNat * A004736 (n + 1)

end

end A333119.P16702578481236153706

namespace A333119

/-- `A002265(2*A002260(n+1))*A004736(n+1)` -/
def P16702578481236153706.Spec : Prop :=
  ∀ n, P16702578481236153706.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P10241451573960505348

`A057554(A002260(n+1)²)*A057554(A004277(n))`
-/

namespace A333119.P10241451573960505348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A002260 (n + 1) ^ 2).toNat * A057554 (A004277 n).toNat

end

end A333119.P10241451573960505348

namespace A333119

/-- `A057554(A002260(n+1)²)*A057554(A004277(n))` -/
def P10241451573960505348.Spec : Prop :=
  ∀ n, P10241451573960505348.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P164875927784420926

`∑[A057027(A080036(n))-A080036(n)]`
-/

namespace A333119.P164875927784420926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A080036 n).toNat - A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333119.P164875927784420926

namespace A333119

/-- `∑[A057027(A080036(n))-A080036(n)]` -/
def P164875927784420926.Spec : Prop :=
  ∀ n, P164875927784420926.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P18000426097851112747

`A004526(A057555(2*n+1))*A057555(2*(n+1))`
-/

namespace A333119.P18000426097851112747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057555 (2 * n + 1)).toNat * A057555 (2 * (n + 1))

end

end A333119.P18000426097851112747

namespace A333119

/-- `A004526(A057555(2*n+1))*A057555(2*(n+1))` -/
def P18000426097851112747.Spec : Prop :=
  ∀ n, P18000426097851112747.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P4278126793634486890

`A057554(A057555(2*n+1)²)*A057555(2*(n+1))`
-/

namespace A333119.P4278126793634486890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A057555 (2 * n + 1) ^ 2).toNat * A057555 (2 * (n + 1))

end

end A333119.P4278126793634486890

namespace A333119

/-- `A057554(A057555(2*n+1)²)*A057555(2*(n+1))` -/
def P4278126793634486890.Spec : Prop :=
  ∀ n, P4278126793634486890.a n = A333119 (n + 1)

end A333119

/-! ## A333119.P4953756799336760313

`A000005(A130321(n))*A110654(A002262(n))`
-/

namespace A333119.P4953756799336760313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A110654 (A002262 n).toNat

end

end A333119.P4953756799336760313

namespace A333119

/-- `A000005(A130321(n))*A110654(A002262(n))` -/
def P4953756799336760313.Spec : Prop :=
  ∀ n, P4953756799336760313.a n = A333119 (n + 1)

end A333119

/-!
# A333120: a(1) = 1, a(n+1) = Sum_{d|n} a(d)^2.

The programs for A333120, there is no canonical definition to state claims against.
-/

/-! ## A333120.P12257526834882813620

`A007740(a(n-1))+a(n-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A333120.P12257526834882813620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007740 (a (n - 1)).toNat + a (n - 1) * a (n - 1)

end

end A333120.P12257526834882813620

/-! ## A333120.P868547468357659691

`A071193(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A333120.P868547468357659691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071193 (a (n - 1) ^ 2).toNat

end

end A333120.P868547468357659691

/-!
# A333121: a(1) = 1; a(n+1) = Product_{d|n} (1 + a(d)).

The programs for A333121, there is no canonical definition to state claims against.
-/

/-! ## A333121.P5986071536437127061

`A279352((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A333121.P5986071536437127061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A279352 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A333121.P5986071536437127061

/-! ## A333121.P13377126628400521368

`A008619(A307034(2*n))`
-/

namespace A333121.P13377126628400521368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A307034 (2 * n)).toNat

end

end A333121.P13377126628400521368

/-!
# A333122: Numbers m such that m = prime(k) + prime(k+5) = prime(k+1) + prime(k+4) for some k.

The programs for A333122, the canonical program `A333122.P5461417936121362507` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333122 has offset 1).

The definition of A333122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333122.P5461417936121362507

`A157996(A022888(n+1))+A022889(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A333122

/-- `A157996(A022888(n+1))+A022889(n+1)` -/
def P5461417936121362507.Spec : Prop :=
  ∀ n, P5461417936121362507.a n = A333122 (n + 1)

theorem P5461417936121362507.correct : P5461417936121362507.Spec := by
  intro n
  simp only [A333122, Nat.add_sub_cancel]

end A333122

/-! ## A333122.P6687502923581928639

`A157996(A022888(n+1))+A065091(A022888(n+1)-1)`
-/

namespace A333122.P6687502923581928639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022888 (n + 1)).toNat + A065091 (A022888 (n + 1) - 1).toNat

end

end A333122.P6687502923581928639

namespace A333122

/-- `A157996(A022888(n+1))+A065091(A022888(n+1)-1)` -/
def P6687502923581928639.Spec : Prop :=
  ∀ n, P6687502923581928639.a n = A333122 (n + 1)

end A333122

/-! ## A333122.P235616995824895191

`A157996(A022888(n+1))+A073846(2*A022888(n+1))`
-/

namespace A333122.P235616995824895191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022888 (n + 1)).toNat + A073846 (2 * A022888 (n + 1)).toNat

end

end A333122.P235616995824895191

namespace A333122

/-- `A157996(A022888(n+1))+A073846(2*A022888(n+1))` -/
def P235616995824895191.Spec : Prop :=
  ∀ n, P235616995824895191.a n = A333122 (n + 1)

end A333122

/-!
# A333123: Consider the mapping k -> (k - (k/p)), where p is any of k's prime factors. a(n) is the number of different possible paths from n to 1.

The programs for A333123, there is no canonical definition to state claims against.
-/

/-! ## A333123.P15464631712596416909

`∑[A332903(n+1)]`
-/

namespace A333123.P15464631712596416909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333123.P15464631712596416909

/-! ## A333123.P17206410554371553059

`abs(∑[A332903(Δ[n²]-n)])`
-/

namespace A333123.P17206410554371553059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A333123.P17206410554371553059

/-! ## A333123.P495842352582716184

`A333000(n+1)/A333002(n+1)*A333003(n+1)`
-/

namespace A333123.P495842352582716184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333000 (n + 1) : ℚ) / (A333002 (n + 1) : ℚ) * (A333003 (n + 1) : ℚ)

end

end A333123.P495842352582716184

/-! ## A333123.P12974390489079435533

`A008458(∑[A332903(Δ[n²]-n)])/6`
-/

namespace A333123.P12974390489079435533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 6

end

end A333123.P12974390489079435533

/-! ## A333123.P9735243858639506702

`A004525(2*∑[A332903(Δ[n²]-n)])`
-/

namespace A333123.P9735243858639506702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A333123.P9735243858639506702

/-! ## A333123.P7194723749359502888

`∑[A332903(Δ[n²]-n)]%A007283(n)`
-/

namespace A333123.P7194723749359502888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007283 n)

end

end A333123.P7194723749359502888

/-!
# A333124: a(n) is the number of square-subwords in the binary representation of n.

The programs for A333124, there is no canonical definition to state claims against.
-/

/-! ## A333124.P5801851769442140716

`A088950((∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A333124.P5801851769442140716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)).toNat

end

end A333124.P5801851769442140716

/-! ## A333124.P7851461953041597831

`A088950(record[A060372(n)])`
-/

namespace A333124.P7851461953041597831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333124.P7851461953041597831

/-! ## A333124.P8539456364886827457

`A088950(record[A117966(n)])`
-/

namespace A333124.P8539456364886827457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333124.P8539456364886827457

/-! ## A333124.P4111003528252227980

`A088950(record[A167877(n)])`
-/

namespace A333124.P4111003528252227980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333124.P4111003528252227980

/-! ## A333124.P6188712511787002176

`A088950(record[A333773(n)])`
-/

namespace A333124.P6188712511787002176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333124.P6188712511787002176

/-!
# A333125: a(n) = binomial(Fibonacci(n),n).

The programs for A333125, the canonical program `A333125.P11322238227318353014` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333125 has offset 0).

The definition of A333125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n), n)` (program `A333125.P11322238227318353014`, by `A333125.P11322238227318353014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333125.P11322238227318353014

`C(A000045(n), n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A333125

/-- `C(A000045(n), n)` -/
def P11322238227318353014.Spec : Prop :=
  ∀ n, (P11322238227318353014.a n : ℤ) = A333125 n

theorem P11322238227318353014.correct : P11322238227318353014.Spec := by
  intro n
  simp only [A333125]

end A333125

/-! ## A333125.P9602829079066322884

`C(round(ϕ^n/sqrt(5)), n)`
-/

namespace A333125.P9602829079066322884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat n

end

end A333125.P9602829079066322884

namespace A333125

/-- `C(round(ϕ^n/sqrt(5)), n)` -/
def P9602829079066322884.Spec : Prop :=
  ∀ n, (P9602829079066322884.a n : ℤ) = A333125 n

end A333125

/-!
# A333126: Numbers whose binary representation does not contain a square-subword of length 4 or more.

The programs for A333126, there is no canonical definition to state claims against.
-/

/-! ## A333126.P4330802294763928241

`eq[A092339(n), A333124(n)]`
-/

namespace A333126.P4330802294763928241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333126.P4330802294763928241

/-! ## A333126.P8189790178665910137

`lt[A017993(n), A162772(A337222(n))]`
-/

namespace A333126.P8189790178665910137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162772 (A337222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333126.P8189790178665910137

/-! ## A333126.P11244969254325909779

`lt[A374517(n), A101386(A337222(n))]`
-/

namespace A333126.P11244969254325909779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 (A337222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333126.P11244969254325909779

/-! ## A333126.P176519624366141498

`lt[A109401(n+1), A304497(A337222(n))]`
-/

namespace A333126.P176519624366141498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A337222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333126.P176519624366141498

/-! ## A333126.P2735892713361657505

`lt[A374638(n+1), A250120(A337222(n))]`
-/

namespace A333126.P2735892713361657505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A337222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333126.P2735892713361657505

/-!
# A333128: Ending position of the first occurrence of n in the decimal expansion of Pi.

The programs for A333128, there is no canonical definition to state claims against.
-/

/-! ## A333128.P7852019963721610464

`A176341(n)+A055642(n)`
-/

namespace A333128.P7852019963721610464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 n + A055642 n

end

end A333128.P7852019963721610464

/-! ## A333128.P11282884946765024213

`A032445(n)-1+A055642(n)`
-/

namespace A333128.P11282884946765024213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 n - 1 + A055642 n

end

end A333128.P11282884946765024213

/-! ## A333128.P3289701439838191128

`A055642(n)+A057428(n+1)+A032445(n)`
-/

namespace A333128.P3289701439838191128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n + (A057428 (n + 1) + A032445 n)

end

end A333128.P3289701439838191128

/-! ## A333128.P16458101693476187773

`A023443(A055642(n)+A032445(n))`
-/

namespace A333128.P16458101693476187773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A055642 n + A032445 n).toNat

end

end A333128.P16458101693476187773

/-! ## A333128.P11154108070415657654

`A065423(2*A032445(n))+A055642(n)`
-/

namespace A333128.P11154108070415657654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A032445 n).toNat + A055642 n

end

end A333128.P11154108070415657654

/-! ## A333128.P4598886451456433001

`A176341(n)+dr(A351653(n))`
-/

namespace A333128.P4598886451456433001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 n + (SequenceMachineLib.digitalRoot (A351653 n) : ℤ)

end

end A333128.P4598886451456433001

/-! ## A333128.P16972373953836914208

`A057427(A326626(n))+A032445(n)`
-/

namespace A333128.P16972373953836914208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A326626 n).toNat + A032445 n

end

end A333128.P16972373953836914208

/-!
# A333129: Product of all distinct least part primes from all partitions of n into prime parts.

The programs for A333129, there is no canonical definition to state claims against.
-/

/-! ## A333129.P5287581481819818359

`A019565(A333259(n))`
-/

namespace A333129.P5287581481819818359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A333259 n).toNat

end

end A333129.P5287581481819818359

/-! ## A333129.P16666278037950199702

`∏{p}[A333690(A028310(n)), #]`
-/

namespace A333129.P16666278037950199702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333690 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A333129.P16666278037950199702

/-! ## A333129.P16263751693797634109

`A374436(∑[A367964(n)]+1)`
-/

namespace A333129.P16263751693797634109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374436 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A333129.P16263751693797634109

/-! ## A333129.P17560708350656755686

`∏{p}[n*A103185(A130132(n+5))+n, #]`
-/

namespace A333129.P17560708350656755686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103185 (A130132 (n + 5)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A333129.P17560708350656755686

/-!
# A333130: Numbers that are super pseudoprimes to both bases 2 and 3.

The programs for A333130, there is no canonical definition to state claims against.
-/

/-! ## A333130.P3057032204196678287

`∩[A050217(n+1), A328662(n+1)]`
-/

namespace A333130.P3057032204196678287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P3057032204196678287

/-! ## A333130.P5423443358026852870

`∩[A179839(n+1), A318761(n+1)]`
-/

namespace A333130.P5423443358026852870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P5423443358026852870

/-! ## A333130.P12343560047539933319

`∩[A073631(n+1), A179839(n+1)]`
-/

namespace A333130.P12343560047539933319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P12343560047539933319

/-! ## A333130.P11313173363029864332

`∩[A052155(n+1), A179707(n+1)]`
-/

namespace A333130.P11313173363029864332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P11313173363029864332

/-! ## A333130.P10763995291988070076

`∩[A153513(n+1), A179707(n+1)]`
-/

namespace A333130.P10763995291988070076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P10763995291988070076

/-! ## A333130.P7962925981484334255

`∩[A020224(n+1), A179839(n+1)]`
-/

namespace A333130.P7962925981484334255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P7962925981484334255

/-! ## A333130.P3652685266756498108

`∩[A020152(n+1), A179839(n+1)]`
-/

namespace A333130.P3652685266756498108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P3652685266756498108

/-! ## A333130.P7529843975619720264

`∩[A020176(n+1), A179839(n+1)]`
-/

namespace A333130.P7529843975619720264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P7529843975619720264

/-! ## A333130.P1358203285212125069

`∩[A050217(n+1), A153514(n+1)]`
-/

namespace A333130.P1358203285212125069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333130.P1358203285212125069

/-!
# A333132: a(n) = n for n <= 3; thereafter a(n) = 2^(a(n-1)-1) + a(n-1).

The programs for A333132, there is no canonical definition to state claims against.
-/

/-! ## A333132.P55036632744264588

`a(n-1)+2^(a(n-1)-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A333132.P55036632744264588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (2 : ℝ) ^ (a (n - 1) - 1)

end

end A333132.P55036632744264588

/-!
# A333136: The number of vertices formed on a triangle with leg lengths equal to the Pythagorean triples by the straight line segments mutually connecting all vertices and all points that divide the sides into unit length parts.

The programs for A333136, there is no canonical definition to state claims against.
-/

/-! ## A333136.P12278218592216666370

`A333137(n+1)+1-A332978(n+1)`
-/

namespace A333136.P12278218592216666370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333137 (n + 1) + (1 - A332978 (n + 1))

end

end A333136.P12278218592216666370

/-!
# A333137: The number of edges formed on a triangle with leg lengths equal to the Pythagorean triples by the straight line segments mutually connecting all vertices and all points that divide the sides into unit length parts.

The programs for A333137, there is no canonical definition to state claims against.
-/

/-! ## A333137.P17871567743058214909

`A332978(n+1)+A333136(n+1)-1`
-/

namespace A333137.P17871567743058214909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332978 (n + 1) + (A333136 (n + 1) - 1)

end

end A333137.P17871567743058214909

/-!
# A333139: The number of regions inside a decagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A333139, there is no canonical definition to state claims against.
-/

/-! ## A333139.P4631993448519827499

`A332419(n+1)+1-A332418(n+1)`
-/

namespace A333139.P4631993448519827499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332419 (n + 1) + (1 - A332418 (n + 1))

end

end A333139.P4631993448519827499

/-!
# A333142: Triangle read by rows: T(n, k) = qStirling1(n, k, q) for q = 2, with 0 <= k <= n.

The programs for A333142, there is no canonical definition to state claims against.
-/

/-! ## A333142.P3723972520969365769

`A245879(A085478(n))`
-/

namespace A333142.P3723972520969365769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245879 (A085478 n).toNat

end

end A333142.P3723972520969365769

/-! ## A333142.P7401770008164887677

`A245879(abs(A123970(n)))`
-/

namespace A333142.P7401770008164887677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245879 |A123970 n|.toNat

end

end A333142.P7401770008164887677

/-! ## A333142.P2588554330572812109

`A193921(A139382(n+1))`
-/

namespace A333142.P2588554330572812109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (A139382 (n + 1)).toNat

end

end A333142.P2588554330572812109

/-! ## A333142.P13906769162859125320

`A345252(A156882(n+1))`
-/

namespace A333142.P13906769162859125320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345252 (A156882 (n + 1)).toNat

end

end A333142.P13906769162859125320

/-! ## A333142.P12202078800189941600

`A375581(A330490(n+1))`
-/

namespace A333142.P12202078800189941600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375581 (A330490 (n + 1)).toNat

end

end A333142.P12202078800189941600

/-!
# A333143: Triangle read by rows: T(n, k) = qStirling2(n, k, q) for q = 3, with 0 <= k <= n.

The programs for A333143, there is no canonical definition to state claims against.
-/

/-! ## A333143.P2190168260939827607

`A109814(A080249(n)²)`
-/

namespace A333143.P2190168260939827607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A080249 n ^ 2).toNat

end

end A333143.P2190168260939827607

/-! ## A333143.P5631666702423823342

`xor(3, A129128(A009998(n)²))`
-/

namespace A333143.P5631666702423823342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A129128 (A009998 n ^ 2).toNat)

end

end A333143.P5631666702423823342

/-! ## A333143.P12369798196515484510

`A160086(A082582(n))+A080249(n)`
-/

namespace A333143.P12369798196515484510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A082582 n).toNat + A080249 n

end

end A333143.P12369798196515484510

/-! ## A333143.P17614220672933166044

`A356264(A269948(n))+A080249(n)`
-/

namespace A333143.P17614220672933166044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356264 (A269948 n).toNat + A080249 n

end

end A333143.P17614220672933166044

/-! ## A333143.P3061803349084927718

`A022168(n)-A160086(A082582(n))`
-/

namespace A333143.P3061803349084927718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n - A160086 (A082582 n).toNat

end

end A333143.P3061803349084927718

/-!
# A333144: Irregular triangle where row n lists the product of the factorials of the exponentials of the partitions of n and the partitions are enumerated in canonical order.

The programs for A333144, there is no canonical definition to state claims against.
-/

/-! ## A333144.P5774290641163676546

`∏{e}[A129129(n), #!]`
-/

namespace A333144.P5774290641163676546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A333144.P5774290641163676546

/-! ## A333144.P5398157413275019950

`A112624(A129129(n))`
-/

namespace A333144.P5398157413275019950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A129129 n).toNat

end

end A333144.P5398157413275019950

/-! ## A333144.P11414435738530757571

`∏{d}[A129129(n), A306694(#)]`
-/

namespace A333144.P11414435738530757571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A306694 d

end

end A333144.P11414435738530757571

/-! ## A333144.P7992783015775091661

`∏{e}[A129129(n), A000142(#)]`
-/

namespace A333144.P7992783015775091661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A333144.P7992783015775091661

/-! ## A333144.P13483878770898858497

`∏{e}[A129129(n), A033646(#)]`
-/

namespace A333144.P13483878770898858497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033646 (Nat.factorization (f1 n).natAbs p)

end

end A333144.P13483878770898858497

/-! ## A333144.P4680674870007130392

`∏{e}[A129129(n), A033647(#)]`
-/

namespace A333144.P4680674870007130392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033647 (Nat.factorization (f1 n).natAbs p)

end

end A333144.P4680674870007130392

/-! ## A333144.P11479917344924379399

`∏{e}[A129129(n), A066459(#)]`
-/

namespace A333144.P11479917344924379399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066459 (Nat.factorization (f1 n).natAbs p)

end

end A333144.P11479917344924379399

/-! ## A333144.P17332165666030269967

`∏{digits}[A322762(A028310(n)), #]`
-/

namespace A333144.P17332165666030269967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322762 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A333144.P17332165666030269967

/-!
# A333145: Number of unimodal negated permutations of the multiset of prime indices of n.

The programs for A333145, the canonical program `A333145.P1416542542552926660` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333145 has offset 1).

The definition of A333145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333145.P15034691272378063163

`A000005(A028234(n+1))`
-/

namespace A333145.P15034691272378063163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028234 (n + 1)).toNat

end

end A333145.P15034691272378063163

namespace A333145

/-- `A000005(A028234(n+1))` -/
def P15034691272378063163.Spec : Prop :=
  ∀ n, P15034691272378063163.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P1416542542552926660

`A000005(n+1)-A069157(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333145

/-- `A000005(n+1)-A069157(n+1)` -/
def P1416542542552926660.Spec : Prop :=
  ∀ n, P1416542542552926660.a n = A333145 (n + 1)

theorem P1416542542552926660.correct : P1416542542552926660.Spec := by
  intro n
  simp only [A333145, Nat.add_sub_cancel]

end A333145

/-! ## A333145.P2607488417994202353

`A001227(A071364(n+1))`
-/

namespace A333145.P2607488417994202353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A071364 (n + 1)).toNat

end

end A333145.P2607488417994202353

namespace A333145

/-- `A001227(A071364(n+1))` -/
def P2607488417994202353.Spec : Prop :=
  ∀ n, P2607488417994202353.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P11977534495015790298

`A001227(A348717(n+1))`
-/

namespace A333145.P11977534495015790298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A348717 (n + 1)).toNat

end

end A333145.P11977534495015790298

namespace A333145

/-- `A001227(A348717(n+1))` -/
def P11977534495015790298.Spec : Prop :=
  ∀ n, P11977534495015790298.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P14720729708623804589

`A069157(2*A028234(n+1))`
-/

namespace A333145.P14720729708623804589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A028234 (n + 1)).toNat

end

end A333145.P14720729708623804589

namespace A333145

/-- `A069157(2*A028234(n+1))` -/
def P14720729708623804589.Spec : Prop :=
  ∀ n, P14720729708623804589.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P15469812937145571806

`A145390(2*A028234(n+1))`
-/

namespace A333145.P15469812937145571806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (2 * A028234 (n + 1)).toNat

end

end A333145.P15469812937145571806

namespace A333145

/-- `A145390(2*A028234(n+1))` -/
def P15469812937145571806.Spec : Prop :=
  ∀ n, P15469812937145571806.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P1919171402284275125

`A008480(n+1)-A333146(n+1)`
-/

namespace A333145.P1919171402284275125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A333146 (n + 1)

end

end A333145.P1919171402284275125

namespace A333145

/-- `A008480(n+1)-A333146(n+1)` -/
def P1919171402284275125.Spec : Prop :=
  ∀ n, P1919171402284275125.a n = A333145 (n + 1)

theorem P1919171402284275125.correct : P1919171402284275125.Spec := by
  intro n
  simp only [A333145, Nat.add_sub_cancel, A333145.P1919171402284275125.a, A333145.P1416542542552926660.a, A000005, A000005.P16091521709108585461.a, A008480, A008480.P11368251790691963799.a, A069157, A069157.P2433626944177830795.a, A333146, A333146.P15226525986822621584.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A067029, A067029.P17255758945913048832.a, A355939, A355939.P3567040578845444235.f1, A355939.P3567040578845444235.f2, A355939.P3567040578845444235.f3, A355939.P3567040578845444235.a, A001222, A001222.P11318177267732088261.a, A362983, A362983.P10540663005040928729.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A329600, A329600.P5147459895201057700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333145

/-! ## A333145.P1463492426904591944

`A046524(A028234(2*n+1-n))`
-/

namespace A333145.P1463492426904591944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046524 (A028234 (2 * n + 1 - n)).toNat

end

end A333145.P1463492426904591944

namespace A333145

/-- `A046524(A028234(2*n+1-n))` -/
def P1463492426904591944.Spec : Prop :=
  ∀ n, P1463492426904591944.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P6266126417800357458

`A000005(n+1)/(A067029(n+1)+1)`
-/

namespace A333145.P6266126417800357458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A067029 (n + 1) + 1 : ℚ)

end

end A333145.P6266126417800357458

namespace A333145

/-- `A000005(n+1)/(A067029(n+1)+1)` -/
def P6266126417800357458.Spec : Prop :=
  ∀ n, P6266126417800357458.a n = (A333145 (n + 1) : ℚ)

end A333145

/-! ## A333145.P8813102165493760083

`A062011(n+1)/2-A069157(n+1)`
-/

namespace A333145.P8813102165493760083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A069157 (n + 1) : ℚ)

end

end A333145.P8813102165493760083

namespace A333145

/-- `A062011(n+1)/2-A069157(n+1)` -/
def P8813102165493760083.Spec : Prop :=
  ∀ n, P8813102165493760083.a n = (A333145 (n + 1) : ℚ)

theorem P8813102165493760083.correct : P8813102165493760083.Spec := by
  intro n
  simp only [A333145, Nat.add_sub_cancel, A333145.P8813102165493760083.a, A333145.P1416542542552926660.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A069157, A069157.P2433626944177830795.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A067029, A067029.P17255758945913048832.a, A001222, A001222.P11318177267732088261.a, A362983, A362983.P10540663005040928729.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A329600, A329600.P5147459895201057700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333145

/-! ## A333145.P14193534525009748095

`∑{d}[A028234(n+1), A028234(A006530(#))]`
-/

namespace A333145.P14193534525009748095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A028234 (A006530 d).toNat

end

end A333145.P14193534525009748095

namespace A333145

/-- `∑{d}[A028234(n+1), A028234(A006530(#))]` -/
def P14193534525009748095.Spec : Prop :=
  ∀ n, P14193534525009748095.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P9001164056999959860

`A069157(A028234(n+1)+A028234(n+1))`
-/

namespace A333145.P9001164056999959860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A028234 (n + 1) + A028234 (n + 1)).toNat

end

end A333145.P9001164056999959860

namespace A333145

/-- `A069157(A028234(n+1)+A028234(n+1))` -/
def P9001164056999959860.Spec : Prop :=
  ∀ n, P9001164056999959860.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P7518312378034510292

`A145390(A028234(n+1)+A028234(n+1))`
-/

namespace A333145.P7518312378034510292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (A028234 (n + 1) + A028234 (n + 1)).toNat

end

end A333145.P7518312378034510292

namespace A333145

/-- `A145390(A028234(n+1)+A028234(n+1))` -/
def P7518312378034510292.Spec : Prop :=
  ∀ n, P7518312378034510292.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P10281113465355420533

`A000005(n+1)/A000005(A028233(n+1))`
-/

namespace A333145.P10281113465355420533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A028233 (n + 1)).toNat : ℚ)

end

end A333145.P10281113465355420533

namespace A333145

/-- `A000005(n+1)/A000005(A028233(n+1))` -/
def P10281113465355420533.Spec : Prop :=
  ∀ n, P10281113465355420533.a n = (A333145 (n + 1) : ℚ)

end A333145

/-! ## A333145.P1041392431180664168

`A001227(n+1)/A001227(A028233(n+1))`
-/

namespace A333145.P1041392431180664168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A001227 (A028233 (n + 1)).toNat : ℚ)

end

end A333145.P1041392431180664168

namespace A333145

/-- `A001227(n+1)/A001227(A028233(n+1))` -/
def P1041392431180664168.Spec : Prop :=
  ∀ n, P1041392431180664168.a n = (A333145 (n + 1) : ℚ)

end A333145

/-! ## A333145.P18373982430789994988

`A302051(A302044(A250245(n+1)))`
-/

namespace A333145.P18373982430789994988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302051 (A302044 (A250245 (n + 1)).toNat).toNat

end

end A333145.P18373982430789994988

namespace A333145

/-- `A302051(A302044(A250245(n+1)))` -/
def P18373982430789994988.Spec : Prop :=
  ∀ n, P18373982430789994988.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P8390913125486230861

`A069157(2*(n+1))-A069157(n+1)`
-/

namespace A333145.P8390913125486230861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * (n + 1)) - A069157 (n + 1)

end

end A333145.P8390913125486230861

namespace A333145

/-- `A069157(2*(n+1))-A069157(n+1)` -/
def P8390913125486230861.Spec : Prop :=
  ∀ n, P8390913125486230861.a n = A333145 (n + 1)

end A333145

/-! ## A333145.P12845344946289132822

`A001227(A318885(n+1))`
-/

namespace A333145.P12845344946289132822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A318885 (n + 1)).toNat

end

end A333145.P12845344946289132822

namespace A333145

/-- `A001227(A318885(n+1))` -/
def P12845344946289132822.Spec : Prop :=
  ∀ n, P12845344946289132822.a n = A333145 (n + 1)

end A333145

/-!
# A333146: Number of non-unimodal negated permutations of the multiset of prime indices of n.

The programs for A333146, the canonical program `A333146.P15226525986822621584` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333146 has offset 1).

The definition of A333146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333146.P15468624244266875627

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A333145(n+1)`
-/

namespace A333146.P15468624244266875627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A333145 (n + 1) : ℚ)

end

end A333146.P15468624244266875627

namespace A333146

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]-A333145(n+1)` -/
def P15468624244266875627.Spec : Prop :=
  ∀ n, P15468624244266875627.a n = (A333146 (n + 1) : ℚ)

end A333146

/-! ## A333146.P15226525986822621584

`A008480(n+1)-A333145(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333146

/-- `A008480(n+1)-A333145(n+1)` -/
def P15226525986822621584.Spec : Prop :=
  ∀ n, P15226525986822621584.a n = A333146 (n + 1)

theorem P15226525986822621584.correct : P15226525986822621584.Spec := by
  intro n
  simp only [A333146, Nat.add_sub_cancel]

end A333146

/-! ## A333146.P7642018299773802597

`A008480(n+1)-A000005(A028234(n+1))`
-/

namespace A333146.P7642018299773802597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A000005 (A028234 (n + 1)).toNat

end

end A333146.P7642018299773802597

namespace A333146

/-- `A008480(n+1)-A000005(A028234(n+1))` -/
def P7642018299773802597.Spec : Prop :=
  ∀ n, P7642018299773802597.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P16878119225317030309

`A050382(A101296(n+1))-A333145(n+1)`
-/

namespace A333146.P16878119225317030309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A101296 (n + 1)).toNat - A333145 (n + 1)

end

end A333146.P16878119225317030309

namespace A333146

/-- `A050382(A101296(n+1))-A333145(n+1)` -/
def P16878119225317030309.Spec : Prop :=
  ∀ n, P16878119225317030309.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P2734803162571618719

`A028310(A168324(n+1))-A333145(n+1)`
-/

namespace A333146.P2734803162571618719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168324 (n + 1)).toNat - A333145 (n + 1)

end

end A333146.P2734803162571618719

namespace A333146

/-- `A028310(A168324(n+1))-A333145(n+1)` -/
def P2734803162571618719.Spec : Prop :=
  ∀ n, P2734803162571618719.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P8605250126502285159

`A321647(n+1)/A321648(n+1)-A333145(n+1)`
-/

namespace A333146.P8605250126502285159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A321648 (n + 1) : ℚ) - (A333145 (n + 1) : ℚ)

end

end A333146.P8605250126502285159

namespace A333146

/-- `A321647(n+1)/A321648(n+1)-A333145(n+1)` -/
def P8605250126502285159.Spec : Prop :=
  ∀ n, P8605250126502285159.a n = (A333146 (n + 1) : ℚ)

end A333146

/-! ## A333146.P16077150180735322116

`A335446(n+1)+A109607(∑{p}[n+1, gcd(n, #)])`
-/

namespace A333146.P16077150180735322116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (n + 1) + A109607 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A333146.P16077150180735322116

namespace A333146

/-- `A335446(n+1)+A109607(∑{p}[n+1, gcd(n, #)])` -/
def P16077150180735322116.Spec : Prop :=
  ∀ n, P16077150180735322116.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P16463680771810882835

`A346698(∑{p}[n+1, ceil(1/#)]!)+A335446(n+1)`
-/

namespace A333146.P16463680771810882835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉).toNat) + A335446 (n + 1)

end

end A333146.P16463680771810882835

namespace A333146

/-- `A346698(∑{p}[n+1, ceil(1/#)]!)+A335446(n+1)` -/
def P16463680771810882835.Spec : Prop :=
  ∀ n, P16463680771810882835.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P5313060002312042739

`A346698(A001222(∏{p}[n+1, #])!)+A335446(n+1)`
-/

namespace A333146.P5313060002312042739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat) + A335446 (n + 1)

end

end A333146.P5313060002312042739

namespace A333146

/-- `A346698(A001222(∏{p}[n+1, #])!)+A335446(n+1)` -/
def P5313060002312042739.Spec : Prop :=
  ∀ n, P5313060002312042739.a n = A333146 (n + 1)

end A333146

/-! ## A333146.P15331530078254848252

`and(A135767(n+1), A159801(n+1))`
-/

namespace A333146.P15331530078254848252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135767 (n + 1)) (A159801 (n + 1))

end

end A333146.P15331530078254848252

namespace A333146

/-- `and(A135767(n+1), A159801(n+1))` -/
def P15331530078254848252.Spec : Prop :=
  ∀ n, P15331530078254848252.a n = A333146 (n + 1)

end A333146

/-!
# A333147: Number of compositions of n that are either strictly increasing or strictly decreasing.

The programs for A333147, there is no canonical definition to state claims against.
-/

/-! ## A333147.P4839199551975779985

`2*A000009(n)-1`
-/

namespace A333147.P4839199551975779985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000009 n - 1

end

end A333147.P4839199551975779985

/-! ## A333147.P565054778391275230

`2*A111133(n)+1`
-/

namespace A333147.P565054778391275230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111133 n + 1

end

end A333147.P565054778391275230

/-! ## A333147.P13732971155019762058

`abs(2*A081360(n))-1`
-/

namespace A333147.P13732971155019762058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A081360 n| - 1

end

end A333147.P13732971155019762058

/-! ## A333147.P3756378819371650632

`∑[2*A087897(n)]-1`
-/

namespace A333147.P3756378819371650632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A333147.P3756378819371650632

/-! ## A333147.P8733165570975638490

`A111133(n)+A000009(n)`
-/

namespace A333147.P8733165570975638490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + A000009 n

end

end A333147.P8733165570975638490

/-! ## A333147.P11605185580144971445

`A087135(n)+A057428(n)`
-/

namespace A333147.P11605185580144971445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n + A057428 n

end

end A333147.P11605185580144971445

/-! ## A333147.P17972152961631067361

`A087135(n)-A057427(n)`
-/

namespace A333147.P17972152961631067361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n - A057427 n

end

end A333147.P17972152961631067361

/-! ## A333147.P15444465800046969873

`A111133(n)+∑[A087897(n)]`
-/

namespace A333147.P15444465800046969873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333147.P15444465800046969873

/-! ## A333147.P6055989210660589634

`∑[A087897(A028310(n))+A087897(n)]`
-/

namespace A333147.P6055989210660589634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A028310 n).toNat + A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333147.P6055989210660589634

/-! ## A333147.P5475215908639876679

`A025147(n)+A111133(n)+A096765(n)`
-/

namespace A333147.P5475215908639876679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A111133 n + A096765 n)

end

end A333147.P5475215908639876679

/-! ## A333147.P12486789521984552103

`A111133(n)+A167932(n)-A032741(n)`
-/

namespace A333147.P12486789521984552103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (A167932 n - A032741 n)

end

end A333147.P12486789521984552103

/-! ## A333147.P9197320814481564547

`∑[A020639(A000010(n+1))*A087897(n)]`
-/

namespace A333147.P9197320814481564547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333147.P9197320814481564547

/-! ## A333147.P10812902825629961382

`A000009(n)-(A033999(n)²-A000009(n))`
-/

namespace A333147.P10812902825629961382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A033999 n ^ 2 - A000009 n)

end

end A333147.P10812902825629961382

/-! ## A333147.P13016209724860257850

`A096765(n+1)+A111133(n)+A096765(n)`
-/

namespace A333147.P13016209724860257850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + (A111133 n + A096765 n)

end

end A333147.P13016209724860257850

/-! ## A333147.P11825659623201197306

`A000009(n)+A000009(n)-A054977(n+1)`
-/

namespace A333147.P11825659623201197306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000009 n - A054977 (n + 1))

end

end A333147.P11825659623201197306

/-! ## A333147.P6546303089821973710

`A000009(n)+A000009(n)-A057427(n+1)`
-/

namespace A333147.P6546303089821973710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000009 n - A057427 (n + 1))

end

end A333147.P6546303089821973710

/-! ## A333147.P4402621390449548653

`A218004(n)-A047967(n)`
-/

namespace A333147.P4402621390449548653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218004 n - A047967 n

end

end A333147.P4402621390449548653

/-! ## A333147.P14291184284292990257

`A000065(n)-A394589(n)`
-/

namespace A333147.P14291184284292990257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A394589 n

end

end A333147.P14291184284292990257

/-! ## A333147.P17837503288130110520

`2*(A000041(n)-A047967(n))-1`
-/

namespace A333147.P17837503288130110520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000041 n - A047967 n) - 1

end

end A333147.P17837503288130110520

/-! ## A333147.P15371813682391759380

`A000009(n)+A000065(n)-A047967(n)`
-/

namespace A333147.P15371813682391759380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A000065 n - A047967 n)

end

end A333147.P15371813682391759380

/-!
# A333148: Number of compositions of n whose non-adjacent parts are weakly decreasing.

The programs for A333148, there is no canonical definition to state claims against.
-/

/-! ## A333148.P17034843894903805702

`A265071(A004906(n+1))-A005843(n)`
-/

namespace A333148.P17034843894903805702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265071 (A004906 (n + 1)).toNat - A005843 n

end

end A333148.P17034843894903805702

/-! ## A333148.P10504497530896423511

`A257639(A000124(n)*A001383(n+1))`
-/

namespace A333148.P10504497530896423511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A000124 n * A001383 (n + 1)).toNat

end

end A333148.P10504497530896423511

/-! ## A333148.P10164695747393998145

`A205677(A070933(n))-A374249(n+4)`
-/

namespace A333148.P10164695747393998145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205677 (A070933 n).toNat - A374249 (n + 4)

end

end A333148.P10164695747393998145

/-! ## A333148.P6602745844073257490

`A005378(∑[A200310(n+1)%A144850(n+1)])`
-/

namespace A333148.P6602745844073257490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200310 (n + 1)) (A144850 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333148.P6602745844073257490

/-! ## A333148.P14897236823524770550

`A204164(A048498(n))`
-/

namespace A333148.P14897236823524770550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A048498 n).toNat

end

end A333148.P14897236823524770550

/-!
# A333149: Number of strict compositions of n that are neither increasing nor decreasing.

The programs for A333149, there is no canonical definition to state claims against.
-/

/-! ## A333149.P4951922455289656466

`A032020(n)-2*A000009(n)+1`
-/

namespace A333149.P4951922455289656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - 2 * A000009 n + 1

end

end A333149.P4951922455289656466

/-! ## A333149.P3813226483767410366

`A032020(n)-A333147(n)`
-/

namespace A333149.P3813226483767410366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A333147 n

end

end A333149.P3813226483767410366

/-! ## A333149.P10791100438663321208

`A216695(n)+1-A333147(n)`
-/

namespace A333149.P10791100438663321208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n + (1 - A333147 n)

end

end A333149.P10791100438663321208

/-! ## A333149.P12723585906598641116

`A216695(n)-2*A111133(n)`
-/

namespace A333149.P12723585906598641116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n - 2 * A111133 n

end

end A333149.P12723585906598641116

/-! ## A333149.P5389690140935946267

`A032020(n)-(A111133(n)+A000009(n))`
-/

namespace A333149.P5389690140935946267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - (A111133 n + A000009 n)

end

end A333149.P5389690140935946267

/-! ## A333149.P13414618604407152208

`A072706(n)+A072707(n)-A333147(n)`
-/

namespace A333149.P13414618604407152208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n + (A072707 n - A333147 n)

end

end A333149.P13414618604407152208

/-! ## A333149.P2395636987958917189

`A324969(n+1)-(A333147(n)+A282694(n))`
-/

namespace A333149.P2395636987958917189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - (A333147 n + A282694 n)

end

end A333149.P2395636987958917189

/-! ## A333149.P13587702933512543474

`A242447(A133263(n)-1)-A333147(n)`
-/

namespace A333149.P13587702933512543474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n - 1).toNat - A333147 n

end

end A333149.P13587702933512543474

/-! ## A333149.P1624265018947978505

`A243081(A034856(n+1))-A333147(n)`
-/

namespace A333149.P1624265018947978505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A034856 (n + 1)).toNat - A333147 n

end

end A333149.P1624265018947978505

/-! ## A333149.P5130738154159923752

`A032020(n)-A004273(A000009(n))`
-/

namespace A333149.P5130738154159923752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - A004273 (A000009 n).toNat

end

end A333149.P5130738154159923752

/-!
# A333150: Number of strict compositions of n whose non-adjacent parts are strictly decreasing.

The programs for A333150, there is no canonical definition to state claims against.
-/

/-! ## A333150.P7074263861407128694

`A239086(A342343(n)-A326592(n))`
-/

namespace A333150.P7074263861407128694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A342343 n - A326592 n).toNat

end

end A333150.P7074263861407128694

/-! ## A333150.P1209938046631174049

`A269394(A342343(n)-A326592(n))`
-/

namespace A333150.P1209938046631174049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A342343 n - A326592 n).toNat

end

end A333150.P1209938046631174049

/-!
# A333152: G.f.: Sum_{k>=1} (k^4 * x^(k^2) / Product_{j=1..k} (1 - x^j)).

The programs for A333152, there is no canonical definition to state claims against.
-/

/-! ## A333152.P12909299499577072427

`and(p?[n^3-7], A193300(n+1))`
-/

namespace A333152.P12909299499577072427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A193300 (n + 1))

end

end A333152.P12909299499577072427

/-! ## A333152.P3979631633807611433

`and(p?[A193299(n+1)], p?[n^3-7])`
-/

namespace A333152.P3979631633807611433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A333152.P3979631633807611433

/-! ## A333152.P10563421829677808947

`and(A166103(4*n+9)², p?[abs(2-n)+2*n])`
-/

namespace A333152.P10563421829677808947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166103 (4 * n + 9) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A333152.P10563421829677808947

/-! ## A333152.P7312813376586836426

`∑[A236112(∑[A306473(n+1)])]`
-/

namespace A333152.P7312813376586836426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236112 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333152.P7312813376586836426

/-! ## A333152.P18196854938157940997

`and(A017534(A003422(n)), A084758(n+1))`
-/

namespace A333152.P18196854938157940997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017534 (A003422 n).toNat) (A084758 (n + 1))

end

end A333152.P18196854938157940997

/-!
# A333156: Number of Dyck paths with no UUU's and no DDD's, of semilength 2n and having exactly n (possibly overlapping) occurrences of the consecutive pattern UDUD, where U=(1,1) and D=(1,-1).

The programs for A333156, there is no canonical definition to state claims against.
-/

/-! ## A333156.P7179640320844786832

`A166288(2*n²+1)`
-/

namespace A333156.P7179640320844786832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166288 (2 * n ^ 2 + 1)

end

end A333156.P7179640320844786832

/-! ## A333156.P6823252667901263104

`A166288(A058331(n))^A178334(n)`
-/

namespace A333156.P6823252667901263104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166288 (A058331 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A333156.P6823252667901263104

/-! ## A333156.P7328156659443305042

`gcd(A094497(n), A166288(A058331(n)))`
-/

namespace A333156.P7328156659443305042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094497 n) (A166288 (A058331 n).toNat)

end

end A333156.P7328156659443305042

/-! ## A333156.P12269481583259926343

`lcm(A020985(n), A166288(A058331(n)))`
-/

namespace A333156.P12269481583259926343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A166288 (A058331 n).toNat)

end

end A333156.P12269481583259926343

/-! ## A333156.P3741907866593014543

`A166288(A058331(n))+A010673(2*n)`
-/

namespace A333156.P3741907866593014543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166288 (A058331 n).toNat + A010673 (2 * n)

end

end A333156.P3741907866593014543

/-! ## A333156.P14878817463677286380

`A166288(A058331(n))%A001565(n)`
-/

namespace A333156.P14878817463677286380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166288 (A058331 n).toNat) (A001565 n)

end

end A333156.P14878817463677286380

/-!
# A333157: Triangle read by rows: T(n,k) is the number of n X n symmetric binary matrices with k ones in every row and column.

The programs for A333157, there is no canonical definition to state claims against.
-/

/-! ## A333157.P7931635137326208354

`A335152(A284731(n+1))`
-/

namespace A333157.P7931635137326208354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335152 (A284731 (n + 1)).toNat

end

end A333157.P7931635137326208354

/-! ## A333157.P11328568924675394052

`A086520(A000040(A009963(n)))`
-/

namespace A333157.P11328568924675394052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A000040 (A009963 n).toNat).toNat

end

end A333157.P11328568924675394052

/-! ## A333157.P6946312072430528066

`A018321(A328887(n))%A285413(n+1)`
-/

namespace A333157.P6946312072430528066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018321 (A328887 n).toNat) (A285413 (n + 1))

end

end A333157.P6946312072430528066

/-!
# A333158: Irregular triangle read by rows: T(n,k) is the number of k-regular graphs on n labeled nodes with loops allowed, n >= 1, 0 <= k <= n + 1.

The programs for A333158, there is no canonical definition to state claims against.
-/

/-! ## A333158.P8645708086829181844

`A122204(A026670(n+3)%A264665(n+1))`
-/

namespace A333158.P8645708086829181844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (Int.tmod (A026670 (n + 3)) (A264665 (n + 1))).toNat

end

end A333158.P8645708086829181844

/-!
# A333159: Triangle read by rows: T(n,k) is the number of non-isomorphic n X n symmetric binary matrices with k ones in every row and column up to permutation of rows and columns.

The programs for A333159, there is no canonical definition to state claims against.
-/

/-! ## A333159.P16838267101104393272

`A005843(A008327(n))-A133687(n)`
-/

namespace A333159.P16838267101104393272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008327 n).toNat - A133687 n

end

end A333159.P16838267101104393272

/-! ## A333159.P14906684943575124910

`A055265(A133687(n)%A005526(n+1))`
-/

namespace A333159.P14906684943575124910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (Int.tmod (A133687 n) (A005526 (n + 1))).toNat

end

end A333159.P14906684943575124910

/-! ## A333159.P18331567711561071612

`A353850(A047996(n)%A325676(3*n+2))`
-/

namespace A333159.P18331567711561071612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353850 (Int.tmod (A047996 n) (A325676 (3 * n + 2))).toNat

end

end A333159.P18331567711561071612

/-! ## A333159.P10349994066634152782

`A055265(A133687(n))%A046412(2*(n+2))`
-/

namespace A333159.P10349994066634152782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055265 (A133687 n).toNat) (A046412 (2 * (n + 2)))

end

end A333159.P10349994066634152782

/-! ## A333159.P1219178710655761317

`A166240(A128545(n))`
-/

namespace A333159.P1219178710655761317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166240 (A128545 n).toNat

end

end A333159.P1219178710655761317

/-!
# A333160: Number of non-isomorphic n X n symmetric binary matrices with an equal number of ones in every row and column up to permutation of rows and columns.

The programs for A333160, there is no canonical definition to state claims against.
-/

/-! ## A333160.P16511606064392636587

`2*A333732(n)-A333681(n)`
-/

namespace A333160.P16511606064392636587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333732 n - A333681 n

end

end A333160.P16511606064392636587

/-! ## A333160.P13888532781867988701

`A004277(A008324(n))-A333681(n)`
-/

namespace A333160.P13888532781867988701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008324 n).toNat - A333681 n

end

end A333160.P13888532781867988701

/-! ## A333160.P9782859822896159007

`A004277(A333732(n))-A333681(n)`
-/

namespace A333160.P9782859822896159007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A333732 n).toNat - A333681 n

end

end A333160.P9782859822896159007

/-!
# A333161: Triangle read by rows: T(n,k) is the number of k-regular graphs on n unlabeled nodes with half-edges.

The programs for A333161, there is no canonical definition to state claims against.
-/

/-! ## A333161.P6577130038848626908

`A170970(A131061(n))+A034852(n)`
-/

namespace A333161.P6577130038848626908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170970 (A131061 n).toNat + A034852 n

end

end A333161.P6577130038848626908

/-! ## A333161.P6759867904651133117

`A117707(∑{d}[A028657(n), #])`
-/

namespace A333161.P6759867904651133117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A333161.P6759867904651133117

/-! ## A333161.P11505839064510082863

`A317465(A103441(n+2))+A046951(A111636(n))`
-/

namespace A333161.P11505839064510082863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A103441 (n + 2)).toNat + A046951 (A111636 n).toNat

end

end A333161.P11505839064510082863

/-! ## A333161.P16410764852539151323

`A317465(A103441(n+2))+A056924(A118180(n))+1`
-/

namespace A333161.P16410764852539151323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317465 (A103441 (n + 2)).toNat + (A056924 (A118180 n).toNat + 1)

end

end A333161.P16410764852539151323

/-! ## A333161.P11971434966589099496

`A322483(3^A004247(n))+A317465(A103441(n+2))`
-/

namespace A333161.P11971434966589099496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A004247 n : ℤ))).toNat + A317465 (A103441 (n + 2)).toNat

end

end A333161.P11971434966589099496

/-!
# A333164: Number of 2n X 2n symmetric matrices with entries in {+1, -1} and all rows and columns summing to zero.

The programs for A333164, there is no canonical definition to state claims against.
-/

/-! ## A333164.P1333847719262888887

`A213793(2*n)`
-/

namespace A333164.P1333847719262888887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213793 (2 * n)

end

end A333164.P1333847719262888887

/-! ## A333164.P7723535720985695030

`record[A213793(n)/(-1)^n]`
-/

namespace A333164.P7723535720985695030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213793 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333164.P7723535720985695030

/-! ## A333164.P5734855121178023673

`lcm(A080757(n), A213793(A005843(n)))`
-/

namespace A333164.P5734855121178023673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080757 n) (A213793 (A005843 n).toNat)

end

end A333164.P5734855121178023673

/-! ## A333164.P4448192424954217235

`A333157(∑[4*n])`
-/

namespace A333164.P4448192424954217235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333164.P4448192424954217235

/-! ## A333164.P3474630800336817082

`record[A333157(A240134(n+1))]`
-/

namespace A333164.P3474630800336817082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 (A240134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333164.P3474630800336817082

/-!
# A333165: Number of non-isomorphic 2n X 2n symmetric matrices with entries in {+1, -1} and all rows and columns summing to zero.

The programs for A333165, there is no canonical definition to state claims against.
-/

/-! ## A333165.P7924523775989098999

`A333159(∑[4*n])`
-/

namespace A333165.P7924523775989098999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333159 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333165.P7924523775989098999

/-! ## A333165.P15874335045936506974

`A333159(A046092(n))*A333159(n)`
-/

namespace A333165.P15874335045936506974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333159 (A046092 n).toNat * A333159 n

end

end A333165.P15874335045936506974

/-! ## A333165.P808310252274131947

`or(A000007(n), A333159(A046092(n)))`
-/

namespace A333165.P808310252274131947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A333159 (A046092 n).toNat)

end

end A333165.P808310252274131947

/-! ## A333165.P16620149412876189053

`or(A000035(n), A333159(A046092(n)))`
-/

namespace A333165.P16620149412876189053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A333159 (A046092 n).toNat)

end

end A333165.P16620149412876189053

/-! ## A333165.P13946730565869109667

`A333159(A046092(n))/A007318(∑[n])`
-/

namespace A333165.P13946730565869109667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333159 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A333165.P13946730565869109667

/-!
# A333166: Number of n-regular graphs on 2n unlabeled vertices with half-edges.

The programs for A333166, there is no canonical definition to state claims against.
-/

/-! ## A333166.P15668085841638127613

`A333161(∑[4*n])`
-/

namespace A333166.P15668085841638127613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333166.P15668085841638127613

/-! ## A333166.P10913565363827324674

`record[A333161(A286145(n))]`
-/

namespace A333166.P10913565363827324674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333166.P10913565363827324674

/-! ## A333166.P749063926202111924

`A333161(A106232(n+1))-A000007(n)`
-/

namespace A333166.P749063926202111924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A106232 (n + 1)).toNat - A000007 n

end

end A333166.P749063926202111924

/-! ## A333166.P13208170185830044465

`A333161(A106232(n+1))-A112316(n)`
-/

namespace A333166.P13208170185830044465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A106232 (n + 1)).toNat - A112316 n

end

end A333166.P13208170185830044465

/-! ## A333166.P2936066443326866767

`A333161(A106232(n+1))-A151622(n)`
-/

namespace A333166.P2936066443326866767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333161 (A106232 (n + 1)).toNat - A151622 n

end

end A333166.P2936066443326866767

/-!
# A333167: a(n) = r_2(n^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

The programs for A333167, the canonical program `A333167.P7830250556896041600` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333167 has offset 0).

The definition of A333167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333167.P13856248829016107006

`A004018(A002522(n))`
-/

namespace A333167.P13856248829016107006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (A002522 n).toNat

end

end A333167.P13856248829016107006

namespace A333167

/-- `A004018(A002522(n))` -/
def P13856248829016107006.Spec : Prop :=
  ∀ n, P13856248829016107006.a n = A333167 n

end A333167

/-! ## A333167.P503941472233807462

`A049744(n)-A000328(n)`
-/

namespace A333167.P503941472233807462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049744 n - A000328 n

end

end A333167.P503941472233807462

namespace A333167

/-- `A049744(n)-A000328(n)` -/
def P503941472233807462.Spec : Prop :=
  ∀ n, P503941472233807462.a n = A333167 n

theorem P503941472233807462.correct : P503941472233807462.Spec := by
  intro n
  simp only [A333167, Nat.add_sub_cancel, A333167.P503941472233807462.a, A333167.P7830250556896041600.a, A000328, A000328.P3563522184609365216.a, A049744, A049744.P13630164365312870052.a, A105397, A105397.P12786109591907576801.a, A193432, A193432.P8452424332635996808.a, A000005, A000005.P16091521709108585461.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333167

/-! ## A333167.P7830250556896041600

`A105397(n)*A193432(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333167

/-- `A105397(n)*A193432(n)` -/
def P7830250556896041600.Spec : Prop :=
  ∀ n, P7830250556896041600.a n = A333167 n

theorem P7830250556896041600.correct : P7830250556896041600.Spec := by
  intro n
  simp only [A333167]

end A333167

/-! ## A333167.P16152794116099328049

`A010694(n+1)*A193432(n)`
-/

namespace A333167.P16152794116099328049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (n + 1) * A193432 n

end

end A333167.P16152794116099328049

namespace A333167

/-- `A010694(n+1)*A193432(n)` -/
def P16152794116099328049.Spec : Prop :=
  ∀ n, P16152794116099328049.a n = A333167 n

end A333167

/-! ## A333167.P10648228947292938015

`Δ[A007310(n+1)]*A193432(n)`
-/

namespace A333167.P10648228947292938015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A193432 n

end

end A333167.P10648228947292938015

namespace A333167

/-- `Δ[A007310(n+1)]*A193432(n)` -/
def P10648228947292938015.Spec : Prop :=
  ∀ n, P10648228947292938015.a n = A333167 n

end A333167

/-! ## A333167.P4991887388589330145

`A049744(n)-(A051132(n)+A046109(n))`
-/

namespace A333167.P4991887388589330145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049744 n - (A051132 n + A046109 n)

end

end A333167.P4991887388589330145

namespace A333167

/-- `A049744(n)-(A051132(n)+A046109(n))` -/
def P4991887388589330145.Spec : Prop :=
  ∀ n, P4991887388589330145.a n = A333167 n

end A333167

/-! ## A333167.P4331150456379033624

`4*∑{d}[n²+1, #%2]`
-/

namespace A333167.P4331150456379033624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A333167.P4331150456379033624

namespace A333167

/-- `4*∑{d}[n²+1, #%2]` -/
def P4331150456379033624.Spec : Prop :=
  ∀ n, (P4331150456379033624.a n : ℤ) = A333167 n

end A333167

/-! ## A333167.P12155106896671567373

`2*gcd(2, n)*∏{e}[n²+1, #+1]`
-/

namespace A333167.P12155106896671567373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A333167.P12155106896671567373

namespace A333167

/-- `2*gcd(2, n)*∏{e}[n²+1, #+1]` -/
def P12155106896671567373.Spec : Prop :=
  ∀ n, (P12155106896671567373.a n : ℤ) = A333167 n

end A333167

/-! ## A333167.P4727782226176889402

`4*A000005(lcm(2, n²+1)/2)`
-/

namespace A333167.P4727782226176889402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n ^ 2 + 1) : ℚ) / 2)).toNat

end

end A333167.P4727782226176889402

namespace A333167

/-- `4*A000005(lcm(2, n²+1)/2)` -/
def P4727782226176889402.Spec : Prop :=
  ∀ n, P4727782226176889402.a n = A333167 n

end A333167

/-! ## A333167.P11478066816672610506

`4*A000005(A228564(n))`
-/

namespace A333167.P11478066816672610506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A228564 n).toNat

end

end A333167.P11478066816672610506

namespace A333167

/-- `4*A000005(A228564(n))` -/
def P11478066816672610506.Spec : Prop :=
  ∀ n, P11478066816672610506.a n = A333167 n

end A333167

/-! ## A333167.P5160223121333817683

`4*A000005(A008530(n)/A298036(n))`
-/

namespace A333167.P5160223121333817683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (SequenceMachineLib.roundAway ((A008530 n : ℚ) / (A298036 n : ℚ))).toNat

end

end A333167.P5160223121333817683

namespace A333167

/-- `4*A000005(A008530(n)/A298036(n))` -/
def P5160223121333817683.Spec : Prop :=
  ∀ n, P5160223121333817683.a n = A333167 n

end A333167

/-! ## A333167.P3554884034407588543

`4*A000005(gcd(A002522(n), A006003(n)))`
-/

namespace A333167.P3554884034407588543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (Int.gcd (A002522 n) (A006003 n))

end

end A333167.P3554884034407588543

namespace A333167

/-- `4*A000005(gcd(A002522(n), A006003(n)))` -/
def P3554884034407588543.Spec : Prop :=
  ∀ n, P3554884034407588543.a n = A333167 n

end A333167

/-! ## A333167.P14976991620771655462

`4*A000005(A168059(n+1)-A165355(n))`
-/

namespace A333167.P14976991620771655462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A168059 (n + 1) - A165355 n).toNat

end

end A333167.P14976991620771655462

namespace A333167

/-- `4*A000005(A168059(n+1)-A165355(n))` -/
def P14976991620771655462.Spec : Prop :=
  ∀ n, P14976991620771655462.a n = A333167 n

end A333167

/-! ## A333167.P529185932184670473

`4*A000005(A000265(n²+1))`
-/

namespace A333167.P529185932184670473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A000265 (n ^ 2 + 1)).toNat

end

end A333167.P529185932184670473

namespace A333167

/-- `4*A000005(A000265(n²+1))` -/
def P529185932184670473.Spec : Prop :=
  ∀ n, P529185932184670473.a n = A333167 n

end A333167

/-! ## A333167.P13096925273745616831

`A008574(A035218(n²+1))`
-/

namespace A333167.P13096925273745616831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A035218 (n ^ 2 + 1)).toNat

end

end A333167.P13096925273745616831

namespace A333167

/-- `A008574(A035218(n²+1))` -/
def P13096925273745616831.Spec : Prop :=
  ∀ n, P13096925273745616831.a n = A333167 n

end A333167

/-! ## A333167.P3777018214145138443

`A005843(A054844(n²+1))`
-/

namespace A333167.P3777018214145138443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A054844 (n ^ 2 + 1)).toNat

end

end A333167.P3777018214145138443

namespace A333167

/-- `A005843(A054844(n²+1))` -/
def P3777018214145138443.Spec : Prop :=
  ∀ n, P3777018214145138443.a n = A333167 n

end A333167

/-! ## A333167.P13900047767073834192

`2*A000005(lcm(2, A002522(n)))`
-/

namespace A333167.P13900047767073834192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (Int.lcm 2 (A002522 n))

end

end A333167.P13900047767073834192

namespace A333167

/-- `2*A000005(lcm(2, A002522(n)))` -/
def P13900047767073834192.Spec : Prop :=
  ∀ n, P13900047767073834192.a n = A333167 n

end A333167

/-! ## A333167.P2565627890016556412

`A005883(A123596(n))`
-/

namespace A333167.P2565627890016556412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (A123596 n).toNat

end

end A333167.P2565627890016556412

namespace A333167

/-- `A005883(A123596(n))` -/
def P2565627890016556412.Spec : Prop :=
  ∀ n, P2565627890016556412.a n = A333167 n

end A333167

/-! ## A333167.P10578192378456496502

`A105352(A047808(n)+1)`
-/

namespace A333167.P10578192378456496502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105352 (A047808 n + 1).toNat

end

end A333167.P10578192378456496502

namespace A333167

/-- `A105352(A047808(n)+1)` -/
def P10578192378456496502.Spec : Prop :=
  ∀ n, P10578192378456496502.a n = A333167 n

end A333167

/-! ## A333167.P15109111754696343438

`4*A320111(n²+1)`
-/

namespace A333167.P15109111754696343438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320111 (n ^ 2 + 1)

end

end A333167.P15109111754696343438

namespace A333167

/-- `4*A320111(n²+1)` -/
def P15109111754696343438.Spec : Prop :=
  ∀ n, P15109111754696343438.a n = A333167 n

end A333167

/-!
# A333168: a(n) = Sum_{k=0..n} r_2(k^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

The programs for A333168, the canonical program `A333168.P11188141478812584799` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333168 has offset 0).

The definition of A333168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333168.P11188141478812584799

`∑[A333167(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333168

/-- `∑[A333167(n)]` -/
def P11188141478812584799.Spec : Prop :=
  ∀ n, P11188141478812584799.a n = A333168 n

theorem P11188141478812584799.correct : P11188141478812584799.Spec := by
  intro n
  simp only [A333168]

end A333168

/-! ## A333168.P13105363732947617366

`∑[A049744(n)-A000328(n)]`
-/

namespace A333168.P13105363732947617366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049744 n - A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P13105363732947617366

namespace A333168

/-- `∑[A049744(n)-A000328(n)]` -/
def P13105363732947617366.Spec : Prop :=
  ∀ n, P13105363732947617366.a n = A333168 n

theorem P13105363732947617366.correct : P13105363732947617366.Spec := by
  intro n
  simp only [A333168, Nat.add_sub_cancel, A333168.P13105363732947617366.f1, A333168.P13105363732947617366.a, A333168.P11188141478812584799.f1, A333168.P11188141478812584799.a, A000328, A000328.P3563522184609365216.a, A049744, A049744.P13630164365312870052.a, A333167, A333167.P7830250556896041600.a, A057655, A057655.P8142405424443184292.a, A105397, A105397.P12786109591907576801.a, A193432, A193432.P8452424332635996808.a, A000005, A000005.P16091521709108585461.a, A014198, A014198.P2354480518814049901.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333168

/-! ## A333168.P6864038002685038958

`∑[A105397(n)*A193432(n)]`
-/

namespace A333168.P6864038002685038958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n * A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P6864038002685038958

namespace A333168

/-- `∑[A105397(n)*A193432(n)]` -/
def P6864038002685038958.Spec : Prop :=
  ∀ n, P6864038002685038958.a n = A333168 n

end A333168

/-! ## A333168.P11020317027449581829

`∑[A049744(n)-(A051132(n)+A046109(n))]`
-/

namespace A333168.P11020317027449581829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049744 n - (A051132 n + A046109 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11020317027449581829

namespace A333168

/-- `∑[A049744(n)-(A051132(n)+A046109(n))]` -/
def P11020317027449581829.Spec : Prop :=
  ∀ n, P11020317027449581829.a n = A333168 n

end A333168

/-! ## A333168.P1682699200776032412

`∑[2*gcd(2, n)*∏{e}[n²+1, #+1]]`
-/

namespace A333168.P1682699200776032412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P1682699200776032412

namespace A333168

/-- `∑[2*gcd(2, n)*∏{e}[n²+1, #+1]]` -/
def P1682699200776032412.Spec : Prop :=
  ∀ n, (P1682699200776032412.a n : ℤ) = A333168 n

end A333168

/-! ## A333168.P3642327278589685358

`∑[4*A000005(A008530(n)/A298036(n))]`
-/

namespace A333168.P3642327278589685358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (SequenceMachineLib.roundAway ((A008530 n : ℚ) / (A298036 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P3642327278589685358

namespace A333168

/-- `∑[4*A000005(A008530(n)/A298036(n))]` -/
def P3642327278589685358.Spec : Prop :=
  ∀ n, P3642327278589685358.a n = A333168 n

end A333168

/-! ## A333168.P16598148579107333002

`∑[4*A000005(A000265(n²+1))]`
-/

namespace A333168.P16598148579107333002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000005 (A000265 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P16598148579107333002

namespace A333168

/-- `∑[4*A000005(A000265(n²+1))]` -/
def P16598148579107333002.Spec : Prop :=
  ∀ n, P16598148579107333002.a n = A333168 n

end A333168

/-! ## A333168.P13070133775522896161

`∑[2*A054844(n²+1)]`
-/

namespace A333168.P13070133775522896161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054844 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P13070133775522896161

namespace A333168

/-- `∑[2*A054844(n²+1)]` -/
def P13070133775522896161.Spec : Prop :=
  ∀ n, P13070133775522896161.a n = A333168 n

end A333168

/-! ## A333168.P11601275118391021822

`∑[A008574(A035218(n²+1))]`
-/

namespace A333168.P11601275118391021822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A035218 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11601275118391021822

namespace A333168

/-- `∑[A008574(A035218(n²+1))]` -/
def P11601275118391021822.Spec : Prop :=
  ∀ n, P11601275118391021822.a n = A333168 n

end A333168

/-! ## A333168.P10781660024003742570

`A005843(∑[A054844(n²+1)])`
-/

namespace A333168.P10781660024003742570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333168.P10781660024003742570

namespace A333168

/-- `A005843(∑[A054844(n²+1)])` -/
def P10781660024003742570.Spec : Prop :=
  ∀ n, P10781660024003742570.a n = A333168 n

end A333168

/-! ## A333168.P11878346953625519735

`∑[A000005(lcm(6, n²+1))]`
-/

namespace A333168.P11878346953625519735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm 6 (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11878346953625519735

namespace A333168

/-- `∑[A000005(lcm(6, n²+1))]` -/
def P11878346953625519735.Spec : Prop :=
  ∀ n, P11878346953625519735.a n = A333168 n

end A333168

/-! ## A333168.P6039058881905539175

`∑[A004018(n²+1)]`
-/

namespace A333168.P6039058881905539175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P6039058881905539175

namespace A333168

/-- `∑[A004018(n²+1)]` -/
def P6039058881905539175.Spec : Prop :=
  ∀ n, P6039058881905539175.a n = A333168 n

end A333168

/-!
# A333169: a(n) = phi(n^2 + 1), where phi is the Euler totient function (A000010).

The programs for A333169, the canonical program `A333169.P11111623842642408816` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333169 has offset 0).

The definition of A333169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333169.P11111623842642408816

`A000010(n²+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333169

/-- `A000010(n²+1)` -/
def P11111623842642408816.Spec : Prop :=
  ∀ n, P11111623842642408816.a n = A333169 n

theorem P11111623842642408816.correct : P11111623842642408816.Spec := by
  intro n
  simp only [A333169]

end A333169

/-! ## A333169.P9457685072898175191

`A066792(n)/A062570(n+1)`
-/

namespace A333169.P9457685072898175191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066792 n : ℚ) / (A062570 (n + 1) : ℚ)

end

end A333169.P9457685072898175191

namespace A333169

/-- `A066792(n)/A062570(n+1)` -/
def P9457685072898175191.Spec : Prop :=
  ∀ n, P9457685072898175191.a n = (A333169 n : ℚ)

end A333169

/-! ## A333169.P12817578038300442758

`A066792(n)/A000010(2*(n+1))`
-/

namespace A333169.P12817578038300442758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066792 n : ℚ) / (A000010 (2 * (n + 1)) : ℚ)

end

end A333169.P12817578038300442758

namespace A333169

/-- `A066792(n)/A000010(2*(n+1))` -/
def P12817578038300442758.Spec : Prop :=
  ∀ n, P12817578038300442758.a n = (A333169 n : ℚ)

end A333169

/-! ## A333169.P8143779832391805853

`A000010(xor(2, n²)-1)/gcd(n, n-1)`
-/

namespace A333169.P8143779832391805853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.xor 2 (n ^ 2) - 1) : ℚ) / (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℚ)

end

end A333169.P8143779832391805853

namespace A333169

/-- `A000010(xor(2, n²)-1)/gcd(n, n-1)` -/
def P8143779832391805853.Spec : Prop :=
  ∀ n, P8143779832391805853.a n = (A333169 n : ℚ)

end A333169

/-! ## A333169.P3338500977670381489

`A000010(∑[2*n]-(n-1))+C(2, n+3)`
-/

namespace A333169.P3338500977670381489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat + (Nat.choose 2 (n + 3) : ℤ)

end

end A333169.P3338500977670381489

namespace A333169

/-- `A000010(∑[2*n]-(n-1))+C(2, n+3)` -/
def P3338500977670381489.Spec : Prop :=
  ∀ n, P3338500977670381489.a n = A333169 n

end A333169

/-! ## A333169.P15713407209726876908

`A000010(∑[2*n+1]-2*n)+and(1, 2*n)`
-/

namespace A333169.P15713407209726876908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n) + (Nat.land 1 (2 * n) : ℤ)

end

end A333169.P15713407209726876908

namespace A333169

/-- `A000010(∑[2*n+1]-2*n)+and(1, 2*n)` -/
def P15713407209726876908.Spec : Prop :=
  ∀ n, P15713407209726876908.a n = A333169 n

end A333169

/-! ## A333169.P11134726071527299264

`A000027(A000010(n*n+1))`
-/

namespace A333169.P11134726071527299264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000010 (n * n + 1)).toNat

end

end A333169.P11134726071527299264

namespace A333169

/-- `A000027(A000010(n*n+1))` -/
def P11134726071527299264.Spec : Prop :=
  ∀ n, P11134726071527299264.a n = A333169 n

end A333169

/-! ## A333169.P10606267332826707895

`abs(1-A000010(A000290(n)+1))+1`
-/

namespace A333169.P10606267332826707895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000010 (A000290 n + 1).toNat| + 1

end

end A333169.P10606267332826707895

namespace A333169

/-- `abs(1-A000010(A000290(n)+1))+1` -/
def P10606267332826707895.Spec : Prop :=
  ∀ n, P10606267332826707895.a n = A333169 n

end A333169

/-! ## A333169.P6991765962303585174

`lcm(A000010(or(2, n²)-1), A040001(n))`
-/

namespace A333169.P6991765962303585174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (Nat.lor 2 (n ^ 2) - 1)) (A040001 n)

end

end A333169.P6991765962303585174

namespace A333169

/-- `lcm(A000010(or(2, n²)-1), A040001(n))` -/
def P6991765962303585174.Spec : Prop :=
  ∀ n, (P6991765962303585174.a n : ℤ) = A333169 n

end A333169

/-! ## A333169.P15035261598021367058

`A000010(or(2, n²)-1)*A000034(2*n)`
-/

namespace A333169.P15035261598021367058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 2 (n ^ 2) - 1) * A000034 (2 * n)

end

end A333169.P15035261598021367058

namespace A333169

/-- `A000010(or(2, n²)-1)*A000034(2*n)` -/
def P15035261598021367058.Spec : Prop :=
  ∀ n, P15035261598021367058.a n = A333169 n

end A333169

/-! ## A333169.P11085056239787573207

`or(A000010(A000290(n)+1), A000007(n))`
-/

namespace A333169.P11085056239787573207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A000290 n + 1).toNat) (A000007 n)

end

end A333169.P11085056239787573207

namespace A333169

/-- `or(A000010(A000290(n)+1), A000007(n))` -/
def P11085056239787573207.Spec : Prop :=
  ∀ n, P11085056239787573207.a n = A333169 n

end A333169

/-! ## A333169.P5048150528911560537

`A000010(∑[A004273(n)]+1)%A144391(n+1)`
-/

namespace A333169.P5048150528911560537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat) (A144391 (n + 1))

end

end A333169.P5048150528911560537

namespace A333169

/-- `A000010(∑[A004273(n)]+1)%A144391(n+1)` -/
def P5048150528911560537.Spec : Prop :=
  ∀ n, P5048150528911560537.a n = A333169 n

end A333169

/-! ## A333169.P15415081180165133864

`A204617(n²+1)`
-/

namespace A333169.P15415081180165133864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (n ^ 2 + 1)

end

end A333169.P15415081180165133864

namespace A333169

/-- `A204617(n²+1)` -/
def P15415081180165133864.Spec : Prop :=
  ∀ n, P15415081180165133864.a n = A333169 n

end A333169

/-! ## A333169.P15605122974375283994

`A337937(A084672(n))`
-/

namespace A333169.P15605122974375283994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337937 (A084672 n).toNat

end

end A333169.P15605122974375283994

namespace A333169

/-- `A337937(A084672(n))` -/
def P15605122974375283994.Spec : Prop :=
  ∀ n, P15605122974375283994.a n = A333169 n

end A333169

/-! ## A333169.P9195761410898149011

`A195459(n²+1)`
-/

namespace A333169.P9195761410898149011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n ^ 2 + 1)

end

end A333169.P9195761410898149011

namespace A333169

/-- `A195459(n²+1)` -/
def P9195761410898149011.Spec : Prop :=
  ∀ n, P9195761410898149011.a n = A333169 n

end A333169

/-! ## A333169.P6946475139165893806

`A232626(n²+1)`
-/

namespace A333169.P6946475139165893806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (n ^ 2 + 1)

end

end A333169.P6946475139165893806

namespace A333169

/-- `A232626(n²+1)` -/
def P6946475139165893806.Spec : Prop :=
  ∀ n, P6946475139165893806.a n = A333169 n

end A333169

/-!
# A333170: a(n) = Sum_{k=0..n} phi(k^2 + 1), where phi is the Euler totient function (A000010).

The programs for A333170, the canonical program `A333170.P5470037590830885907` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333170 has offset 0).

The definition of A333170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333170.P5470037590830885907

`∑[A333169(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333170

/-- `∑[A333169(n)]` -/
def P5470037590830885907.Spec : Prop :=
  ∀ n, P5470037590830885907.a n = A333170 n

theorem P5470037590830885907.correct : P5470037590830885907.Spec := by
  intro n
  simp only [A333170]

end A333170

/-! ## A333170.P17077628332084224669

`∑[A066792(n)/A062570(n+1)]`
-/

namespace A333170.P17077628332084224669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066792 n : ℚ) / (A062570 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P17077628332084224669

namespace A333170

/-- `∑[A066792(n)/A062570(n+1)]` -/
def P17077628332084224669.Spec : Prop :=
  ∀ n, P17077628332084224669.a n = (A333170 n : ℚ)

end A333170

/-! ## A333170.P9690108477150865589

`∑[A000010(n²+1)]`
-/

namespace A333170.P9690108477150865589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P9690108477150865589

namespace A333170

/-- `∑[A000010(n²+1)]` -/
def P9690108477150865589.Spec : Prop :=
  ∀ n, P9690108477150865589.a n = A333170 n

end A333170

/-! ## A333170.P15383338900848292318

`A000010((n+1)²-2*n)+a(n-1)` with `a(0)=1`
-/

namespace A333170.P15383338900848292318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n + 1) ^ 2 - 2 * n) + a (n - 1)

end

end A333170.P15383338900848292318

namespace A333170

/-- `A000010((n+1)²-2*n)+a(n-1)` -/
def P15383338900848292318.Spec : Prop :=
  ∀ n, P15383338900848292318.a n = A333170 n

end A333170

/-! ## A333170.P6422781090583792797

`∑[2*A000010(A000290(n)+1)]/2`
-/

namespace A333170.P6422781090583792797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A000290 n + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A333170.P6422781090583792797

namespace A333170

/-- `∑[2*A000010(A000290(n)+1)]/2` -/
def P6422781090583792797.Spec : Prop :=
  ∀ n, P6422781090583792797.a n = (A333170 n : ℚ)

end A333170

/-! ## A333170.P4697835821051261012

`∑[A000010(A002522(n))%A002496(n+1)]`
-/

namespace A333170.P4697835821051261012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A002522 n).toNat) (A002496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P4697835821051261012

namespace A333170

/-- `∑[A000010(A002522(n))%A002496(n+1)]` -/
def P4697835821051261012.Spec : Prop :=
  ∀ n, P4697835821051261012.a n = A333170 n

end A333170

/-! ## A333170.P7942994916820281787

`∑[A000010(A056107(n)+2)/2]`
-/

namespace A333170.P7942994916820281787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A056107 n + 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P7942994916820281787

namespace A333170

/-- `∑[A000010(A056107(n)+2)/2]` -/
def P7942994916820281787.Spec : Prop :=
  ∀ n, P7942994916820281787.a n = (A333170 n : ℚ)

end A333170

/-! ## A333170.P15334842178963742624

`∑[A000010(A049450(n)+n+3)/2]`
-/

namespace A333170.P15334842178963742624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A049450 n + (n + 3 : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P15334842178963742624

namespace A333170

/-- `∑[A000010(A049450(n)+n+3)/2]` -/
def P15334842178963742624.Spec : Prop :=
  ∀ n, P15334842178963742624.a n = (A333170 n : ℚ)

end A333170

/-! ## A333170.P5819641493228445297

`∑[A204617(n²+1)]`
-/

namespace A333170.P5819641493228445297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P5819641493228445297

namespace A333170

/-- `∑[A204617(n²+1)]` -/
def P5819641493228445297.Spec : Prop :=
  ∀ n, P5819641493228445297.a n = A333170 n

end A333170

/-! ## A333170.P7684942873773216497

`∑[A195459(n²+1)]`
-/

namespace A333170.P7684942873773216497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P7684942873773216497

namespace A333170

/-- `∑[A195459(n²+1)]` -/
def P7684942873773216497.Spec : Prop :=
  ∀ n, P7684942873773216497.a n = A333170 n

end A333170

/-! ## A333170.P528131488100556460

`∑[A232626(n²+1)]`
-/

namespace A333170.P528131488100556460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232626 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P528131488100556460

namespace A333170

/-- `∑[A232626(n²+1)]` -/
def P528131488100556460.Spec : Prop :=
  ∀ n, P528131488100556460.a n = A333170 n

end A333170

/-! ## A333170.P5643888069300658965

`∑[A359102(n²+1)]`
-/

namespace A333170.P5643888069300658965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P5643888069300658965

namespace A333170

/-- `∑[A359102(n²+1)]` -/
def P5643888069300658965.Spec : Prop :=
  ∀ n, P5643888069300658965.a n = A333170 n

end A333170

/-! ## A333170.P7378598594526951997

`∑[A372676(n²+1)]`
-/

namespace A333170.P7378598594526951997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372676 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P7378598594526951997

namespace A333170

/-- `∑[A372676(n²+1)]` -/
def P7378598594526951997.Spec : Prop :=
  ∀ n, P7378598594526951997.a n = A333170 n

end A333170

/-! ## A333170.P10361227007012527784

`∑[A109606(n²+1)+1]`
-/

namespace A333170.P10361227007012527784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n ^ 2 + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P10361227007012527784

namespace A333170

/-- `∑[A109606(n²+1)+1]` -/
def P10361227007012527784.Spec : Prop :=
  ∀ n, P10361227007012527784.a n = A333170 n

theorem P10361227007012527784.correct : P10361227007012527784.Spec := by
  intro n
  simp only [A333170, Nat.add_sub_cancel, A333170.P10361227007012527784.f1, A333170.P10361227007012527784.a, A333170.P5470037590830885907.f1, A333170.P5470037590830885907.a, A109606, A109606.P2415810041766612210.a, A333169, A333169.P11111623842642408816.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333170

/-! ## A333170.P14179703215351439913

`∑[A039649(n²+1)-1]`
-/

namespace A333170.P14179703215351439913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n ^ 2 + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333170.P14179703215351439913

namespace A333170

/-- `∑[A039649(n²+1)-1]` -/
def P14179703215351439913.Spec : Prop :=
  ∀ n, P14179703215351439913.a n = A333170 n

theorem P14179703215351439913.correct : P14179703215351439913.Spec := by
  intro n
  simp only [A333170, Nat.add_sub_cancel, A333170.P14179703215351439913.f1, A333170.P14179703215351439913.a, A333170.P5470037590830885907.f1, A333170.P5470037590830885907.a, A039649, A039649.P16717312505280968063.a, A333169, A333169.P11111623842642408816.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333170

/-!
# A333171: a(n) = Sum_{k=0..n} d(k^2 + 1), where d(k) is the number of divisors of k (A000005).

The programs for A333171, the canonical program `A333171.P4309938117730159280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333171 has offset 0).

The definition of A333171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333171.P5739691291573193061

`∑[A193432(n)]`
-/

namespace A333171.P5739691291573193061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P5739691291573193061

namespace A333171

/-- `∑[A193432(n)]` -/
def P5739691291573193061.Spec : Prop :=
  ∀ n, P5739691291573193061.a n = A333171 n

end A333171

/-! ## A333171.P3774453132827970251

`a(n-1)+2*A147810(n)` with `a(0)=1`
-/

namespace A333171.P3774453132827970251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A147810 n

end

end A333171.P3774453132827970251

namespace A333171

/-- `a(n-1)+2*A147810(n)` -/
def P3774453132827970251.Spec : Prop :=
  ∀ n, P3774453132827970251.a n = A333171 n

end A333171

/-! ## A333171.P5601055254094126056

`∑[A000005(A278162(n))]`
-/

namespace A333171.P5601055254094126056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P5601055254094126056

namespace A333171

/-- `∑[A000005(A278162(n))]` -/
def P5601055254094126056.Spec : Prop :=
  ∀ n, P5601055254094126056.a n = A333171 n

end A333171

/-! ## A333171.P4309938117730159280

`∑[A333167(n)/A105397(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333171

/-- `∑[A333167(n)/A105397(n)]` -/
def P4309938117730159280.Spec : Prop :=
  ∀ n, P4309938117730159280.a n = (A333171 n : ℚ)

end A333171

/-! ## A333171.P16431909408618915476

`∑[∏{e}[n²+1, #+1]]`
-/

namespace A333171.P16431909408618915476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P16431909408618915476

namespace A333171

/-- `∑[∏{e}[n²+1, #+1]]` -/
def P16431909408618915476.Spec : Prop :=
  ∀ n, (P16431909408618915476.a n : ℤ) = A333171 n

end A333171

/-! ## A333171.P8211998563691124037

`∑[∑{d}[n²+1, (#%2)!]]`
-/

namespace A333171.P8211998563691124037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.factorial (d % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P8211998563691124037

namespace A333171

/-- `∑[∑{d}[n²+1, (#%2)!]]` -/
def P8211998563691124037.Spec : Prop :=
  ∀ n, (P8211998563691124037.a n : ℤ) = A333171 n

end A333171

/-! ## A333171.P4534130385135552384

`∏{e}[n²+1, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A333171.P4534130385135552384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + a (n - 1)

end

end A333171.P4534130385135552384

namespace A333171

/-- `∏{e}[n²+1, #+1]+a(n-1)` -/
def P4534130385135552384.Spec : Prop :=
  ∀ n, (P4534130385135552384.a n : ℤ) = A333171 n

end A333171

/-! ## A333171.P15003248551430027747

`∑[A250244(∏{e}[A000290(n)+1, #+1]+1)-1]`
-/

namespace A333171.P15003248551430027747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P15003248551430027747

namespace A333171

/-- `∑[A250244(∏{e}[A000290(n)+1, #+1]+1)-1]` -/
def P15003248551430027747.Spec : Prop :=
  ∀ n, P15003248551430027747.a n = A333171 n

end A333171

/-! ## A333171.P4456399778440323466

`∑[A000005(n²+1)]`
-/

namespace A333171.P4456399778440323466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P4456399778440323466

namespace A333171

/-- `∑[A000005(n²+1)]` -/
def P4456399778440323466.Spec : Prop :=
  ∀ n, P4456399778440323466.a n = A333171 n

end A333171

/-! ## A333171.P13307999471299810054

`A000005((n+1)²-2*n)+a(n-1)` with `a(0)=1`
-/

namespace A333171.P13307999471299810054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1) ^ 2 - 2 * n) + a (n - 1)

end

end A333171.P13307999471299810054

namespace A333171

/-- `A000005((n+1)²-2*n)+a(n-1)` -/
def P13307999471299810054.Spec : Prop :=
  ∀ n, P13307999471299810054.a n = A333171 n

end A333171

/-! ## A333171.P12521984141417565641

`∑[A000005(A002522(n))%47]`
-/

namespace A333171.P12521984141417565641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A002522 n).toNat) 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P12521984141417565641

namespace A333171

/-- `∑[A000005(A002522(n))%47]` -/
def P12521984141417565641.Spec : Prop :=
  ∀ n, P12521984141417565641.a n = A333171 n

end A333171

/-! ## A333171.P17177148417240494678

`∑[A000005(A000290(n)+1)%A000040(n+1)]`
-/

namespace A333171.P17177148417240494678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000290 n + 1).toNat) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P17177148417240494678

namespace A333171

/-- `∑[A000005(A000290(n)+1)%A000040(n+1)]` -/
def P17177148417240494678.Spec : Prop :=
  ∀ n, P17177148417240494678.a n = A333171 n

end A333171

/-! ## A333171.P4546902516182343484

`∑[A167447(n²+1)]`
-/

namespace A333171.P4546902516182343484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P4546902516182343484

namespace A333171

/-- `∑[A167447(n²+1)]` -/
def P4546902516182343484.Spec : Prop :=
  ∀ n, P4546902516182343484.a n = A333171 n

end A333171

/-! ## A333171.P13988478483578300498

`∑[A331308(n²+1)]`
-/

namespace A333171.P13988478483578300498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P13988478483578300498

namespace A333171

/-- `∑[A331308(n²+1)]` -/
def P13988478483578300498.Spec : Prop :=
  ∀ n, P13988478483578300498.a n = A333171 n

end A333171

/-! ## A333171.P16058239094045092978

`∑[A322986(n²+1)]`
-/

namespace A333171.P16058239094045092978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322986 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P16058239094045092978

namespace A333171

/-- `∑[A322986(n²+1)]` -/
def P16058239094045092978.Spec : Prop :=
  ∀ n, P16058239094045092978.a n = A333171 n

end A333171

/-! ## A333171.P629068334342672114

`∑[A035181(n²+1)]`
-/

namespace A333171.P629068334342672114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P629068334342672114

namespace A333171

/-- `∑[A035181(n²+1)]` -/
def P629068334342672114.Spec : Prop :=
  ∀ n, P629068334342672114.a n = A333171 n

end A333171

/-! ## A333171.P7407156187307271910

`∑[A035184(n²+1)]`
-/

namespace A333171.P7407156187307271910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P7407156187307271910

namespace A333171

/-- `∑[A035184(n²+1)]` -/
def P7407156187307271910.Spec : Prop :=
  ∀ n, P7407156187307271910.a n = A333171 n

end A333171

/-! ## A333171.P15342970029842880618

`∑[A035191(n²+1)]`
-/

namespace A333171.P15342970029842880618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P15342970029842880618

namespace A333171

/-- `∑[A035191(n²+1)]` -/
def P15342970029842880618.Spec : Prop :=
  ∀ n, P15342970029842880618.a n = A333171 n

end A333171

/-! ## A333171.P6156316431367462321

`∑[A069733(n²+1)]`
-/

namespace A333171.P6156316431367462321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P6156316431367462321

namespace A333171

/-- `∑[A069733(n²+1)]` -/
def P6156316431367462321.Spec : Prop :=
  ∀ n, P6156316431367462321.a n = A333171 n

end A333171

/-! ## A333171.P7010715783248219787

`∑[A074848(n²+1)]`
-/

namespace A333171.P7010715783248219787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P7010715783248219787

namespace A333171

/-- `∑[A074848(n²+1)]` -/
def P7010715783248219787.Spec : Prop :=
  ∀ n, P7010715783248219787.a n = A333171 n

end A333171

/-!
# A333172: a(n) = Sum_{k=0..n} sigma(k^2 + 1), where sigma(k) is the sum of divisors of k (A000203).

The programs for A333172, the canonical program `A333172.P6393076482524309599` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333172 has offset 0).

The definition of A333172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333172.P6393076482524309599

`∑[A193433(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333172

/-- `∑[A193433(n)]` -/
def P6393076482524309599.Spec : Prop :=
  ∀ n, P6393076482524309599.a n = A333172 n

theorem P6393076482524309599.correct : P6393076482524309599.Spec := by
  intro n
  simp only [A333172]

end A333172

/-! ## A333172.P4965747467404056177

`A333174(n)/8`
-/

namespace A333172.P4965747467404056177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333174 n : ℚ) / 8

end

end A333172.P4965747467404056177

namespace A333172

/-- `A333174(n)/8` -/
def P4965747467404056177.Spec : Prop :=
  ∀ n, P4965747467404056177.a n = (A333172 n : ℚ)

end A333172

/-! ## A333172.P1247088730010505467

`∑[A333173(n)/8]`
-/

namespace A333172.P1247088730010505467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333173 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P1247088730010505467

namespace A333172

/-- `∑[A333173(n)/8]` -/
def P1247088730010505467.Spec : Prop :=
  ∀ n, P1247088730010505467.a n = (A333172 n : ℚ)

end A333172

/-! ## A333172.P15086144294333868147

`∑[∑{d}[n²+1, #]]`
-/

namespace A333172.P15086144294333868147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P15086144294333868147

namespace A333172

/-- `∑[∑{d}[n²+1, #]]` -/
def P15086144294333868147.Spec : Prop :=
  ∀ n, (P15086144294333868147.a n : ℤ) = A333172 n

theorem P15086144294333868147.correct : P15086144294333868147.Spec := by
  intro n
  simp only [A333172, Nat.add_sub_cancel, A333172.P15086144294333868147.f2, A333172.P15086144294333868147.f1, A333172.P15086144294333868147.a, A333172.P6393076482524309599.f1, A333172.P6393076482524309599.a, A193433, A193433.P10219355296769695026.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333172

/-! ## A333172.P2307789537499116077

`∑{d}[n²+1, #]+a(n-1)` with `a(0)=1`
-/

namespace A333172.P2307789537499116077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A333172.P2307789537499116077

namespace A333172

/-- `∑{d}[n²+1, #]+a(n-1)` -/
def P2307789537499116077.Spec : Prop :=
  ∀ n, (P2307789537499116077.a n : ℤ) = A333172 n

end A333172

/-! ## A333172.P9647888235666929437

`abs(2-∑[∑{d}[n^(2%(n+1))+1, #]])`
-/

namespace A333172.P9647888235666929437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A333172.P9647888235666929437

namespace A333172

/-- `abs(2-∑[∑{d}[n^(2%(n+1))+1, #]])` -/
def P9647888235666929437.Spec : Prop :=
  ∀ n, P9647888235666929437.a n = A333172 n

end A333172

/-! ## A333172.P15452091511636504329

`∑[A000203(n²+1)]`
-/

namespace A333172.P15452091511636504329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P15452091511636504329

namespace A333172

/-- `∑[A000203(n²+1)]` -/
def P15452091511636504329.Spec : Prop :=
  ∀ n, P15452091511636504329.a n = A333172 n

end A333172

/-! ## A333172.P9667164639795034579

`A000203((n+1)²-2*n)+a(n-1)` with `a(0)=1`
-/

namespace A333172.P9667164639795034579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 ((n + 1) ^ 2 - 2 * n) + a (n - 1)

end

end A333172.P9667164639795034579

namespace A333172

/-- `A000203((n+1)²-2*n)+a(n-1)` -/
def P9667164639795034579.Spec : Prop :=
  ∀ n, P9667164639795034579.a n = A333172 n

end A333172

/-! ## A333172.P10200411973342412354

`∑[abs(A000203(A000290(n)+1)-1)+1]`
-/

namespace A333172.P10200411973342412354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (A000290 n + 1).toNat - 1| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P10200411973342412354

namespace A333172

/-- `∑[abs(A000203(A000290(n)+1)-1)+1]` -/
def P10200411973342412354.Spec : Prop :=
  ∀ n, P10200411973342412354.a n = A333172 n

end A333172

/-! ## A333172.P7249092890056842955

`∑[A000118(n²+1)]/8`
-/

namespace A333172.P7249092890056842955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2 + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A333172.P7249092890056842955

namespace A333172

/-- `∑[A000118(n²+1)]/8` -/
def P7249092890056842955.Spec : Prop :=
  ∀ n, P7249092890056842955.a n = (A333172 n : ℚ)

end A333172

/-! ## A333172.P1507931526103856615

`∑[A069184(n²+1)]`
-/

namespace A333172.P1507931526103856615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P1507931526103856615

namespace A333172

/-- `∑[A069184(n²+1)]` -/
def P1507931526103856615.Spec : Prop :=
  ∀ n, P1507931526103856615.a n = A333172 n

end A333172

/-! ## A333172.P12911273570028507480

`∑[A046897(n²+1)]`
-/

namespace A333172.P12911273570028507480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P12911273570028507480

namespace A333172

/-- `∑[A046897(n²+1)]` -/
def P12911273570028507480.Spec : Prop :=
  ∀ n, P12911273570028507480.a n = A333172 n

end A333172

/-! ## A333172.P5006204527338447688

`∑[A046913(n²+1)]`
-/

namespace A333172.P5006204527338447688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P5006204527338447688

namespace A333172

/-- `∑[A046913(n²+1)]` -/
def P5006204527338447688.Spec : Prop :=
  ∀ n, P5006204527338447688.a n = A333172 n

end A333172

/-! ## A333172.P10742801849684897639

`∑[A074847(n²+1)]`
-/

namespace A333172.P10742801849684897639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074847 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P10742801849684897639

namespace A333172

/-- `∑[A074847(n²+1)]` -/
def P10742801849684897639.Spec : Prop :=
  ∀ n, P10742801849684897639.a n = A333172 n

end A333172

/-! ## A333172.P17225154642801494144

`∑[A078708(n²+1)]`
-/

namespace A333172.P17225154642801494144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P17225154642801494144

namespace A333172

/-- `∑[A078708(n²+1)]` -/
def P17225154642801494144.Spec : Prop :=
  ∀ n, P17225154642801494144.a n = A333172 n

end A333172

/-! ## A333172.P978998975300031185

`∑[A082053(n²+1)]`
-/

namespace A333172.P978998975300031185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P978998975300031185

namespace A333172

/-- `∑[A082053(n²+1)]` -/
def P978998975300031185.Spec : Prop :=
  ∀ n, P978998975300031185.a n = A333172 n

end A333172

/-! ## A333172.P2142357616195583861

`∑[A097863(n²+1)]`
-/

namespace A333172.P2142357616195583861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097863 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P2142357616195583861

namespace A333172

/-- `∑[A097863(n²+1)]` -/
def P2142357616195583861.Spec : Prop :=
  ∀ n, P2142357616195583861.a n = A333172 n

end A333172

/-! ## A333172.P16776027196152362398

`∑[A113957(n²+1)]`
-/

namespace A333172.P16776027196152362398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113957 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P16776027196152362398

namespace A333172

/-- `∑[A113957(n²+1)]` -/
def P16776027196152362398.Spec : Prop :=
  ∀ n, P16776027196152362398.a n = A333172 n

end A333172

/-! ## A333172.P3497192218007953359

`∑[A116607(n²+1)]`
-/

namespace A333172.P3497192218007953359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116607 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P3497192218007953359

namespace A333172

/-- `∑[A116607(n²+1)]` -/
def P3497192218007953359.Spec : Prop :=
  ∀ n, P3497192218007953359.a n = A333172 n

end A333172

/-! ## A333172.P15057471409892328145

`∑[A214361(n²+1)]`
-/

namespace A333172.P15057471409892328145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214361 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333172.P15057471409892328145

namespace A333172

/-- `∑[A214361(n²+1)]` -/
def P15057471409892328145.Spec : Prop :=
  ∀ n, P15057471409892328145.a n = A333172 n

end A333172

/-!
# A333173: a(n) = r_4(n^2 + 1), where r_4(k) is the number of ways of writing k as a sum of 4 squares (A000118).

The programs for A333173, the canonical program `A333173.P13774738622394836103` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333173 has offset 0).

The definition of A333173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333173.P8679466617519569794

`A000118(A002522(n))`
-/

namespace A333173.P8679466617519569794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A002522 n).toNat

end

end A333173.P8679466617519569794

namespace A333173

/-- `A000118(A002522(n))` -/
def P8679466617519569794.Spec : Prop :=
  ∀ n, P8679466617519569794.a n = A333173 n

end A333173

/-! ## A333173.P13774738622394836103

`8*A193433(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333173

/-- `8*A193433(n)` -/
def P13774738622394836103.Spec : Prop :=
  ∀ n, P13774738622394836103.a n = A333173 n

theorem P13774738622394836103.correct : P13774738622394836103.Spec := by
  intro n
  simp only [A333173]

end A333173

/-! ## A333173.P1092109852105159554

`8*∑{d}[n²+1, #]`
-/

namespace A333173.P1092109852105159554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A333173.P1092109852105159554

namespace A333173

/-- `8*∑{d}[n²+1, #]` -/
def P1092109852105159554.Spec : Prop :=
  ∀ n, (P1092109852105159554.a n : ℤ) = A333173 n

theorem P1092109852105159554.correct : P1092109852105159554.Spec := by
  intro n
  simp only [A333173, Nat.add_sub_cancel, A333173.P1092109852105159554.f1, A333173.P1092109852105159554.a, A333173.P13774738622394836103.a, A193433, A193433.P10219355296769695026.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333173

/-! ## A333173.P16229539908700715911

`∑{d}[lcm(7, n²+1), #]`
-/

namespace A333173.P16229539908700715911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A333173.P16229539908700715911

namespace A333173

/-- `∑{d}[lcm(7, n²+1), #]` -/
def P16229539908700715911.Spec : Prop :=
  ∀ n, (P16229539908700715911.a n : ℤ) = A333173 n

end A333173

/-! ## A333173.P9988686222159457717

`∑{d}[A247541(n)+6, #]`
-/

namespace A333173.P9988686222159457717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A333173.P9988686222159457717

namespace A333173

/-- `∑{d}[A247541(n)+6, #]` -/
def P9988686222159457717.Spec : Prop :=
  ∀ n, (P9988686222159457717.a n : ℤ) = A333173 n

end A333173

/-! ## A333173.P5536348374609222108

`∑{d}[A033582(n)+7, #]`
-/

namespace A333173.P5536348374609222108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A333173.P5536348374609222108

namespace A333173

/-- `∑{d}[A033582(n)+7, #]` -/
def P5536348374609222108.Spec : Prop :=
  ∀ n, (P5536348374609222108.a n : ℤ) = A333173 n

end A333173

/-! ## A333173.P540315232167822861

`∑{d}[∑[abs(A016921(n+1)-20*n)], #]`
-/

namespace A333173.P540315232167822861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016921 (n + 1) - (20 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A333173.P540315232167822861

namespace A333173

/-- `∑{d}[∑[abs(A016921(n+1)-20*n)], #]` -/
def P540315232167822861.Spec : Prop :=
  ∀ n, (P540315232167822861.a n : ℤ) = A333173 n

end A333173

/-! ## A333173.P17517071539817612458

`8*A000203(n²+1)`
-/

namespace A333173.P17517071539817612458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000203 (n ^ 2 + 1)

end

end A333173.P17517071539817612458

namespace A333173

/-- `8*A000203(n²+1)` -/
def P17517071539817612458.Spec : Prop :=
  ∀ n, P17517071539817612458.a n = A333173 n

end A333173

/-! ## A333173.P15593717044507178231

`4*(A000203(A097066(2*n))+A000203(A097066(2*n)))`
-/

namespace A333173.P15593717044507178231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000203 (A097066 (2 * n)).toNat + A000203 (A097066 (2 * n)).toNat)

end

end A333173.P15593717044507178231

namespace A333173

/-- `4*(A000203(A097066(2*n))+A000203(A097066(2*n)))` -/
def P15593717044507178231.Spec : Prop :=
  ∀ n, P15593717044507178231.a n = A333173 n

end A333173

/-! ## A333173.P10341555008168736976

`A000118(n²+1)`
-/

namespace A333173.P10341555008168736976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2 + 1)

end

end A333173.P10341555008168736976

namespace A333173

/-- `A000118(n²+1)` -/
def P10341555008168736976.Spec : Prop :=
  ∀ n, P10341555008168736976.a n = A333173 n

end A333173

/-! ## A333173.P6970091751113335398

`lcm(2, A000118(A000290(n)+1))`
-/

namespace A333173.P6970091751113335398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000118 (A000290 n + 1).toNat)

end

end A333173.P6970091751113335398

namespace A333173

/-- `lcm(2, A000118(A000290(n)+1))` -/
def P6970091751113335398.Spec : Prop :=
  ∀ n, (P6970091751113335398.a n : ℤ) = A333173 n

end A333173

/-! ## A333173.P11999576000590331638

`A000203(lcm(7, n²+1))`
-/

namespace A333173.P11999576000590331638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lcm 7 (n ^ 2 + 1))

end

end A333173.P11999576000590331638

namespace A333173

/-- `A000203(lcm(7, n²+1))` -/
def P11999576000590331638.Spec : Prop :=
  ∀ n, P11999576000590331638.a n = A333173 n

end A333173

/-! ## A333173.P1458934496885201052

`A000203(7*A002522(n))`
-/

namespace A333173.P1458934496885201052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (7 * A002522 n).toNat

end

end A333173.P1458934496885201052

namespace A333173

/-- `A000203(7*A002522(n))` -/
def P1458934496885201052.Spec : Prop :=
  ∀ n, P1458934496885201052.a n = A333173 n

end A333173

/-! ## A333173.P3587270582145844490

`A283078(n²+1)`
-/

namespace A333173.P3587270582145844490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283078 (n ^ 2 + 1)

end

end A333173.P3587270582145844490

namespace A333173

/-- `A283078(n²+1)` -/
def P3587270582145844490.Spec : Prop :=
  ∀ n, P3587270582145844490.a n = A333173 n

end A333173

/-! ## A333173.P15807050747014667299

`A319528(n²+1)`
-/

namespace A333173.P15807050747014667299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (n ^ 2 + 1)

end

end A333173.P15807050747014667299

namespace A333173

/-- `A319528(n²+1)` -/
def P15807050747014667299.Spec : Prop :=
  ∀ n, P15807050747014667299.a n = A333173 n

end A333173

/-! ## A333173.P10810485341053450691

`abs(A096727(n²+1))`
-/

namespace A333173.P10810485341053450691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 (n ^ 2 + 1)|

end

end A333173.P10810485341053450691

namespace A333173

/-- `abs(A096727(n²+1))` -/
def P10810485341053450691.Spec : Prop :=
  ∀ n, P10810485341053450691.a n = A333173 n

end A333173

/-! ## A333173.P6372343939963019967

`A000203(A008589(n²+1))`
-/

namespace A333173.P6372343939963019967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008589 (n ^ 2 + 1)).toNat

end

end A333173.P6372343939963019967

namespace A333173

/-- `A000203(A008589(n²+1))` -/
def P6372343939963019967.Spec : Prop :=
  ∀ n, P6372343939963019967.a n = A333173 n

end A333173

/-! ## A333173.P14436072077736753892

`A000203(A017053(n²)+1)`
-/

namespace A333173.P14436072077736753892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017053 (n ^ 2) + 1).toNat

end

end A333173.P14436072077736753892

namespace A333173

/-- `A000203(A017053(n²)+1)` -/
def P14436072077736753892.Spec : Prop :=
  ∀ n, P14436072077736753892.a n = A333173 n

end A333173

/-! ## A333173.P18425836526063710763

`A000203(A109048(n²+1))`
-/

namespace A333173.P18425836526063710763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109048 (n ^ 2 + 1)).toNat

end

end A333173.P18425836526063710763

namespace A333173

/-- `A000203(A109048(n²+1))` -/
def P18425836526063710763.Spec : Prop :=
  ∀ n, P18425836526063710763.a n = A333173 n

end A333173

/-! ## A333173.P5008412808058147968

`A000203(A283444(n²+1))`
-/

namespace A333173.P5008412808058147968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A283444 (n ^ 2 + 1)).toNat

end

end A333173.P5008412808058147968

namespace A333173

/-- `A000203(A283444(n²+1))` -/
def P5008412808058147968.Spec : Prop :=
  ∀ n, P5008412808058147968.a n = A333173 n

end A333173

/-!
# A333174: a(n) = Sum_{k=0..n} r_4(k^2 + 1), where r_4(k) is the number of ways of writing k as a sum of 4 squares (A000118).

The programs for A333174, the canonical program `A333174.P15533700412874415267` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333174 has offset 0).

The definition of A333174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333174.P15533700412874415267

`∑[A333173(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A333174

/-- `∑[A333173(n)]` -/
def P15533700412874415267.Spec : Prop :=
  ∀ n, P15533700412874415267.a n = A333174 n

theorem P15533700412874415267.correct : P15533700412874415267.Spec := by
  intro n
  simp only [A333174]

end A333174

/-! ## A333174.P4863196966388545582

`8*A333172(n)`
-/

namespace A333174.P4863196966388545582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A333172 n

end

end A333174.P4863196966388545582

namespace A333174

/-- `8*A333172(n)` -/
def P4863196966388545582.Spec : Prop :=
  ∀ n, P4863196966388545582.a n = A333174 n

end A333174

/-! ## A333174.P1318199976221071958

`∑[8*A193433(n)]`
-/

namespace A333174.P1318199976221071958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A193433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P1318199976221071958

namespace A333174

/-- `∑[8*A193433(n)]` -/
def P1318199976221071958.Spec : Prop :=
  ∀ n, P1318199976221071958.a n = A333174 n

end A333174

/-! ## A333174.P11625381775302221669

`∑[8*∑{d}[n²+1, #]]`
-/

namespace A333174.P11625381775302221669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P11625381775302221669

namespace A333174

/-- `∑[8*∑{d}[n²+1, #]]` -/
def P11625381775302221669.Spec : Prop :=
  ∀ n, (P11625381775302221669.a n : ℤ) = A333174 n

theorem P11625381775302221669.correct : P11625381775302221669.Spec := by
  intro n
  simp only [A333174, Nat.add_sub_cancel, A333174.P11625381775302221669.f2, A333174.P11625381775302221669.f1, A333174.P11625381775302221669.a, A333174.P15533700412874415267.f1, A333174.P15533700412874415267.a, A333173, A333173.P13774738622394836103.a, A193433, A193433.P10219355296769695026.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333174

/-! ## A333174.P5145895803970632650

`∑[∑{d}[7*A002522(n), #]]`
-/

namespace A333174.P5145895803970632650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002522 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P5145895803970632650

namespace A333174

/-- `∑[∑{d}[7*A002522(n), #]]` -/
def P5145895803970632650.Spec : Prop :=
  ∀ n, (P5145895803970632650.a n : ℤ) = A333174 n

end A333174

/-! ## A333174.P2065488258822911866

`∑[8*A000203(n²+1)]`
-/

namespace A333174.P2065488258822911866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000203 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P2065488258822911866

namespace A333174

/-- `∑[8*A000203(n²+1)]` -/
def P2065488258822911866.Spec : Prop :=
  ∀ n, P2065488258822911866.a n = A333174 n

end A333174

/-! ## A333174.P2529552029679797885

`2*4*∑[A000203(n*n+1)]`
-/

namespace A333174.P2529552029679797885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A333174.P2529552029679797885

namespace A333174

/-- `2*4*∑[A000203(n*n+1)]` -/
def P2529552029679797885.Spec : Prop :=
  ∀ n, P2529552029679797885.a n = A333174 n

end A333174

/-! ## A333174.P11329707841712733217

`∑[A000118(n²+1)]`
-/

namespace A333174.P11329707841712733217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P11329707841712733217

namespace A333174

/-- `∑[A000118(n²+1)]` -/
def P11329707841712733217.Spec : Prop :=
  ∀ n, P11329707841712733217.a n = A333174 n

end A333174

/-! ## A333174.P16161636633940297698

`∑[A283078(n²+1)]`
-/

namespace A333174.P16161636633940297698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283078 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P16161636633940297698

namespace A333174

/-- `∑[A283078(n²+1)]` -/
def P16161636633940297698.Spec : Prop :=
  ∀ n, P16161636633940297698.a n = A333174 n

end A333174

/-! ## A333174.P18442931495172974438

`∑[A319528(n²+1)]`
-/

namespace A333174.P18442931495172974438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P18442931495172974438

namespace A333174

/-- `∑[A319528(n²+1)]` -/
def P18442931495172974438.Spec : Prop :=
  ∀ n, P18442931495172974438.a n = A333174 n

end A333174

/-! ## A333174.P4842803166616335934

`∑[8*A214361(n²+1)]`
-/

namespace A333174.P4842803166616335934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A214361 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P4842803166616335934

namespace A333174

/-- `∑[8*A214361(n²+1)]` -/
def P4842803166616335934.Spec : Prop :=
  ∀ n, P4842803166616335934.a n = A333174 n

end A333174

/-! ## A333174.P11847116362656031247

`∑[8*A245092(2*n²+1)]`
-/

namespace A333174.P11847116362656031247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A245092 (2 * n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333174.P11847116362656031247

namespace A333174

/-- `∑[8*A245092(2*n²+1)]` -/
def P11847116362656031247.Spec : Prop :=
  ∀ n, P11847116362656031247.a n = A333174 n

end A333174

/-!
# A333175: If n = Product (p_j^k_j) then a(n) = Sum (a(n/p_j^k_j)), with a(1) = 1.

The programs for A333175, the canonical program `A333175.P8896469802029774977` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333175 has offset 1).

The definition of A333175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333175.P8896469802029774977

`A001221(n+1)!`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333175

/-- `A001221(n+1)!` -/
def P8896469802029774977.Spec : Prop :=
  ∀ n, (P8896469802029774977.a n : ℤ) = A333175 (n + 1)

theorem P8896469802029774977.correct : P8896469802029774977.Spec := by
  intro n
  simp only [A333175, Nat.add_sub_cancel]

end A333175

/-! ## A333175.P3930927733145281593

`∑{e}[∏{p}[n+1, #], #]!`
-/

namespace A333175.P3930927733145281593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A333175.P3930927733145281593

namespace A333175

/-- `∑{e}[∏{p}[n+1, #], #]!` -/
def P3930927733145281593.Spec : Prop :=
  ∀ n, (P3930927733145281593.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P4383862681345955891

`∑{p}[n+1, floor(atan(#))]!`
-/

namespace A333175.P4383862681345955891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋).toNat

end

end A333175.P4383862681345955891

namespace A333175

/-- `∑{p}[n+1, floor(atan(#))]!` -/
def P4383862681345955891.Spec : Prop :=
  ∀ n, (P4383862681345955891.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P16421919496147428023

`∑{e}[n+1, round(atan(#))]!`
-/

namespace A333175.P16421919496147428023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ))).toNat

end

end A333175.P16421919496147428023

namespace A333175

/-- `∑{e}[n+1, round(atan(#))]!` -/
def P16421919496147428023.Spec : Prop :=
  ∀ n, (P16421919496147428023.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P577583263201845450

`∑{e}[n+1, ceil(tanh(#))]!`
-/

namespace A333175.P577583263201845450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉).toNat

end

end A333175.P577583263201845450

namespace A333175

/-- `∑{e}[n+1, ceil(tanh(#))]!` -/
def P577583263201845450.Spec : Prop :=
  ∀ n, (P577583263201845450.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P5834086353536162783

`∑{p}[n+1, ceil(acot(#))]!`
-/

namespace A333175.P5834086353536162783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉).toNat

end

end A333175.P5834086353536162783

namespace A333175

/-- `∑{p}[n+1, ceil(acot(#))]!` -/
def P5834086353536162783.Spec : Prop :=
  ∀ n, (P5834086353536162783.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P10430136084738103507

`∑{e}[n+1, round(tanh(#))]!`
-/

namespace A333175.P10430136084738103507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f1 n) p : ℝ))).toNat

end

end A333175.P10430136084738103507

namespace A333175

/-- `∑{e}[n+1, round(tanh(#))]!` -/
def P10430136084738103507.Spec : Prop :=
  ∀ n, (P10430136084738103507.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P13483751594733273568

`∑{e}[n+1, ceil(acot(#))]!`
-/

namespace A333175.P13483751594733273568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉).toNat

end

end A333175.P13483751594733273568

namespace A333175

/-- `∑{e}[n+1, ceil(acot(#))]!` -/
def P13483751594733273568.Spec : Prop :=
  ∀ n, (P13483751594733273568.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P10918828919689215061

`∑{p}[n+1, ceil(1/#)]!`
-/

namespace A333175.P10918828919689215061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉).toNat

end

end A333175.P10918828919689215061

namespace A333175

/-- `∑{p}[n+1, ceil(1/#)]!` -/
def P10918828919689215061.Spec : Prop :=
  ∀ n, (P10918828919689215061.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P6784880007372823338

`∑{e}[n+1, ceil(1/#)]!`
-/

namespace A333175.P6784880007372823338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉).toNat

end

end A333175.P6784880007372823338

namespace A333175

/-- `∑{e}[n+1, ceil(1/#)]!` -/
def P6784880007372823338.Spec : Prop :=
  ∀ n, (P6784880007372823338.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P11102610180977823122

`dr(∑{e}[n+1, 10^#])!`
-/

namespace A333175.P11102610180977823122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n), 10 ^ Nat.factorization (f1 n) p : ℕ) : ℤ))

end

end A333175.P11102610180977823122

namespace A333175

/-- `dr(∑{e}[n+1, 10^#])!` -/
def P11102610180977823122.Spec : Prop :=
  ∀ n, (P11102610180977823122.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P7006419376976780988

`val(∏{p}[n+1, 4*#], 4)!`
-/

namespace A333175.P7006419376976780988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 4 * p) 4)

end

end A333175.P7006419376976780988

namespace A333175

/-- `val(∏{p}[n+1, 4*#], 4)!` -/
def P7006419376976780988.Spec : Prop :=
  ∀ n, (P7006419376976780988.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P14370300951198230205

`-∑{p}[n+1, or(#, -1)]!`
-/

namespace A333175.P14370300951198230205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (-(∑ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1))).toNat

end

end A333175.P14370300951198230205

namespace A333175

/-- `-∑{p}[n+1, or(#, -1)]!` -/
def P14370300951198230205.Spec : Prop :=
  ∀ n, (P14370300951198230205.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P13768774725139869443

`-∑{e}[n+1, or(#, -1)]!`
-/

namespace A333175.P13768774725139869443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (-(∑ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1))).toNat

end

end A333175.P13768774725139869443

namespace A333175

/-- `-∑{e}[n+1, or(#, -1)]!` -/
def P13768774725139869443.Spec : Prop :=
  ∀ n, (P13768774725139869443.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P10520628781623014860

`(∑{p}[n+1, lcm(#, n+1)]/(n+1))!`
-/

namespace A333175.P10520628781623014860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A333175.P10520628781623014860

namespace A333175

/-- `(∑{p}[n+1, lcm(#, n+1)]/(n+1))!` -/
def P10520628781623014860.Spec : Prop :=
  ∀ n, (P10520628781623014860.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P807349489546634297

`val(∏{e}[n+1, #*(n+2)], n+2)!`
-/

namespace A333175.P807349489546634297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (n + 2)) (n + 2))

end

end A333175.P807349489546634297

namespace A333175

/-- `val(∏{e}[n+1, #*(n+2)], n+2)!` -/
def P807349489546634297.Spec : Prop :=
  ∀ n, (P807349489546634297.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P7142113210462596113

`A087624(n+1)!`
-/

namespace A333175.P7142113210462596113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A087624 (n + 1)).toNat

end

end A333175.P7142113210462596113

namespace A333175

/-- `A087624(n+1)!` -/
def P7142113210462596113.Spec : Prop :=
  ∀ n, (P7142113210462596113.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P10602716807554027275

`abs(A158210(n+1))!`
-/

namespace A333175.P10602716807554027275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A158210 (n + 1)|.toNat

end

end A333175.P10602716807554027275

namespace A333175

/-- `abs(A158210(n+1))!` -/
def P10602716807554027275.Spec : Prop :=
  ∀ n, (P10602716807554027275.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P15380808970126759349

`abs(A392285(n+1))!`
-/

namespace A333175.P15380808970126759349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A392285 (n + 1)|.toNat

end

end A333175.P15380808970126759349

namespace A333175

/-- `abs(A392285(n+1))!` -/
def P15380808970126759349.Spec : Prop :=
  ∀ n, (P15380808970126759349.a n : ℤ) = A333175 (n + 1)

end A333175

/-! ## A333175.P3532064698309595090

`log2(A034444(n+1))!`
-/

namespace A333175.P3532064698309595090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A034444 (n + 1) : ℝ))).toNat

end

end A333175.P3532064698309595090

namespace A333175

/-- `log2(A034444(n+1))!` -/
def P3532064698309595090.Spec : Prop :=
  ∀ n, (P3532064698309595090.a n : ℤ) = A333175 (n + 1)

end A333175

/-!
# A333176: a(n) = Sum_{k=1..n} (binomial(n,k) mod 2) * prime(k).

The programs for A333176, there is no canonical definition to state claims against.
-/

/-! ## A333176.P4054562779643473244

`A302054(A001317(n))`
-/

namespace A333176.P4054562779643473244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A001317 n).toNat

end

end A333176.P4054562779643473244

/-! ## A333176.P2555145632897858705

`A302054(A053576(n))`
-/

namespace A333176.P2555145632897858705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (A053576 n).toNat

end

end A333176.P2555145632897858705

/-! ## A333176.P4225298788840070351

`A302054(record[A133179(n)])`
-/

namespace A333176.P4225298788840070351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333176.P4225298788840070351

/-! ## A333176.P7784976595272369200

`∑{p}[A302033(record[A133179(n)]), #]`
-/

namespace A333176.P7784976595272369200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A333176.P7784976595272369200

/-!
# A333177: a(n) = Sum_{d|n, gcd(d, n/d) = 1} (-1)^omega(n/d) * prime(d).

The programs for A333177, the canonical program `A333177.P9788677441292484781` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333177 has offset 1).

The definition of A333177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333177.P9788677441292484781

`∑{d}[(n+1)/∏{p}[n+1, #], A007444((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333177

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A007444((n+1)/#)]` -/
def P9788677441292484781.Spec : Prop :=
  ∀ n, P9788677441292484781.a n = A333177 (n + 1)

theorem P9788677441292484781.correct : P9788677441292484781.Spec := by
  intro n
  simp only [A333177, Nat.add_sub_cancel]

end A333177

/-! ## A333177.P15628896986811066223

`∑{d}[A003557(n+1), A007444((n+1)/#)]`
-/

namespace A333177.P15628896986811066223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333177.P15628896986811066223

namespace A333177

/-- `∑{d}[A003557(n+1), A007444((n+1)/#)]` -/
def P15628896986811066223.Spec : Prop :=
  ∀ n, P15628896986811066223.a n = A333177 (n + 1)

theorem P15628896986811066223.correct : P15628896986811066223.Spec := by
  intro n
  simp only [A333177, Nat.add_sub_cancel, A333177.P15628896986811066223.f1, A333177.P15628896986811066223.a, A333177.P9788677441292484781.f2, A333177.P9788677441292484781.f1, A333177.P9788677441292484781.a, A003557, A003557.P6364735403900941810.a, A007444, A007444.P105140508511523845.f1, A007444.P105140508511523845.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333177

/-!
# A333178: a(n) = Sum_{d|n, gcd(d, n/d) = 1} prime(d).

The programs for A333178, the canonical program `A333178.P282739070696705010` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333178 has offset 1).

The definition of A333178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333178.P282739070696705010

`∑{d}[A064549(n+1), A007444(A003557(#))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333178

/-- `∑{d}[A064549(n+1), A007444(A003557(#))]` -/
def P282739070696705010.Spec : Prop :=
  ∀ n, P282739070696705010.a n = A333178 (n + 1)

theorem P282739070696705010.correct : P282739070696705010.Spec := by
  intro n
  simp only [A333178, Nat.add_sub_cancel]

end A333178

/-!
# A333179: G.f.: Sum_{k>=0} (x^(k*(k+1)) * Product_{j=1..k} (1 + x^j)).

The programs for A333179, there is no canonical definition to state claims against.
-/

/-! ## A333179.P3239235023586114751

`A171919(A003557(A272402(n+1)+2))`
-/

namespace A333179.P3239235023586114751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171919 (A003557 (A272402 (n + 1) + 2).toNat).toNat

end

end A333179.P3239235023586114751

/-! ## A333179.P7623263523894340040

`A008584(A253580(n))^A213276(A008486(n))`
-/

namespace A333179.P7623263523894340040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008584 (A253580 n).toNat : ℚ) ^ (A213276 (A008486 n).toNat : ℤ)

end

end A333179.P7623263523894340040

/-! ## A333179.P18058066112591150293

`A353303(n+1)^A359893(A357977(n+1))`
-/

namespace A333179.P18058066112591150293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353303 (n + 1) : ℚ) ^ (A359893 (A357977 (n + 1)).toNat : ℤ)

end

end A333179.P18058066112591150293

/-! ## A333179.P1881094585201292670

`A364209(n+1)%A333381(A065091(n+1))`
-/

namespace A333179.P1881094585201292670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364209 (n + 1)) (A333381 (A065091 (n + 1)).toNat)

end

end A333179.P1881094585201292670

/-! ## A333179.P16138559089769586810

`A205745(A175330(n+3)+A000045(n))`
-/

namespace A333179.P16138559089769586810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A175330 (n + 3) + A000045 n).toNat

end

end A333179.P16138559089769586810

/-!
# A333180: G.f.: Sum_{k>=1} (k * x^(k^2) * Product_{j=1..k} (1 + x^j)).

The programs for A333180, there is no canonical definition to state claims against.
-/

/-! ## A333180.P14955098720768363415

`A333181(A028392(n))%A086978(n+1)`
-/

namespace A333180.P14955098720768363415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333181 (A028392 n).toNat) (A086978 (n + 1))

end

end A333180.P14955098720768363415

/-! ## A333180.P12706070721379731564

`A333181(A028392(n))+A000007(A025065(2*n))`
-/

namespace A333180.P12706070721379731564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333181 (A028392 n).toNat + A000007 (A025065 (2 * n)).toNat

end

end A333180.P12706070721379731564

/-! ## A333180.P12120089414076359980

`A333181(A028392(n))+A000007(A272402(n+1))`
-/

namespace A333180.P12120089414076359980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333181 (A028392 n).toNat + A000007 (A272402 (n + 1)).toNat

end

end A333180.P12120089414076359980

/-!
# A333181: G.f.: Sum_{k>=1} (k * x^(k*(k+1)) * Product_{j=1..k} (1 + x^j)).

The programs for A333181, there is no canonical definition to state claims against.
-/

/-! ## A333181.P1399790725140140708

`A259361(n)%A306664(2*(n+2))*A333179(n)`
-/

namespace A333181.P1399790725140140708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259361 n) (A306664 (2 * (n + 2))) * A333179 n

end

end A333181.P1399790725140140708

/-!
# A333183: Number of digits in concatenation of first n positive even integers.

The programs for A333183, the canonical program `A333183.P12522991503939484636` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333183 has offset 1).

The definition of A333183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333183.P11946292764156643390

`∑[A054055(A308003(2*(n+1)))]`
-/

namespace A333183.P11946292764156643390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A308003 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P11946292764156643390

namespace A333183

/-- `∑[A054055(A308003(2*(n+1)))]` -/
def P11946292764156643390.Spec : Prop :=
  ∀ n, P11946292764156643390.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P12522991503939484636

`∑[∑{digits}[2*(n+1), A007318(A007318(#))]]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A333183

/-- `∑[∑{digits}[2*(n+1), A007318(A007318(#))]]` -/
def P12522991503939484636.Spec : Prop :=
  ∀ n, P12522991503939484636.a n = A333183 (n + 1)

theorem P12522991503939484636.correct : P12522991503939484636.Spec := by
  intro n
  simp only [A333183, Nat.add_sub_cancel]

end A333183

/-! ## A333183.P17425221690438179142

`∑[A055642(∑[A203571(n)])]`
-/

namespace A333183.P17425221690438179142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P17425221690438179142

namespace A333183

/-- `∑[A055642(∑[A203571(n)])]` -/
def P17425221690438179142.Spec : Prop :=
  ∀ n, P17425221690438179142.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P8064592201510014113

`∑[A055642(2*(n+1))]`
-/

namespace A333183.P8064592201510014113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P8064592201510014113

namespace A333183

/-- `∑[A055642(2*(n+1))]` -/
def P8064592201510014113.Spec : Prop :=
  ∀ n, P8064592201510014113.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P13869512678164730189

`∑[A004216(2*(n+1))+1]`
-/

namespace A333183.P13869512678164730189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P13869512678164730189

namespace A333183

/-- `∑[A004216(2*(n+1))+1]` -/
def P13869512678164730189.Spec : Prop :=
  ∀ n, P13869512678164730189.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P5413680822929102529

`A055642(2*n+2)+a(n-1)` with `a(0)=1`
-/

namespace A333183.P5413680822929102529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (2 * n + 2) + a (n - 1)

end

end A333183.P5413680822929102529

namespace A333183

/-- `A055642(2*n+2)+a(n-1)` -/
def P5413680822929102529.Spec : Prop :=
  ∀ n, P5413680822929102529.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P5621488519851272380

`∑[A058183(2*(n+1))-A058183(2*n+1)]`
-/

namespace A333183.P5621488519851272380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (2 * (n + 1)) - A058183 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P5621488519851272380

namespace A333183

/-- `∑[A058183(2*(n+1))-A058183(2*n+1)]` -/
def P5621488519851272380.Spec : Prop :=
  ∀ n, P5621488519851272380.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P7265482385256302548

`A004218(2*(n+2))+a(n-1)` with `a(0)=1`
-/

namespace A333183.P7265482385256302548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004218 (2 * (n + 2)) + a (n - 1)

end

end A333183.P7265482385256302548

namespace A333183

/-- `A004218(2*(n+2))+a(n-1)` -/
def P7265482385256302548.Spec : Prop :=
  ∀ n, P7265482385256302548.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P17019294393078135907

`∑[A086858(A194173(n+2)+1)]`
-/

namespace A333183.P17019294393078135907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (A194173 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P17019294393078135907

namespace A333183

/-- `∑[A086858(A194173(n+2)+1)]` -/
def P17019294393078135907.Spec : Prop :=
  ∀ n, P17019294393078135907.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P13465225482789381238

`∑[A004218(A099375(∑[n])+2)]`
-/

namespace A333183.P13465225482789381238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A099375 (∑ j ∈ Finset.range (n + 1), f2 j) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P13465225482789381238

namespace A333183

/-- `∑[A004218(A099375(∑[n])+2)]` -/
def P13465225482789381238.Spec : Prop :=
  ∀ n, P13465225482789381238.a n = A333183 (n + 1)

end A333183

/-! ## A333183.P16887654835441653642

`∑[∑[A010054(A004883(n+7))]]`
-/

namespace A333183.P16887654835441653642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A004883 (n + 7)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333183.P16887654835441653642

namespace A333183

/-- `∑[∑[A010054(A004883(n+7))]]` -/
def P16887654835441653642.Spec : Prop :=
  ∀ n, P16887654835441653642.a n = A333183 (n + 1)

end A333183

/-!
# A333184: a(n) = n^n - (PrevPrime(n^n) + NextPrime(n^n)) / 2.

The programs for A333184, there is no canonical definition to state claims against.
-/

/-! ## A333184.P9014589062367488187

`(A074967(n+2)-A074966(n+2))/2`
-/

namespace A333184.P9014589062367488187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074967 (n + 2) - A074966 (n + 2) : ℚ) / 2

end

end A333184.P9014589062367488187

/-! ## A333184.P5070041633531730653

`A074967(n+2)-A161503(n+2)/2`
-/

namespace A333184.P5070041633531730653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074967 (n + 2) : ℚ) - (A161503 (n + 2) : ℚ) / 2

end

end A333184.P5070041633531730653

/-! ## A333184.P18151509320904869411

`A074967(n+2)-A025480(A161503(n+2))`
-/

namespace A333184.P18151509320904869411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (n + 2) - A025480 (A161503 (n + 2)).toNat

end

end A333184.P18151509320904869411

/-! ## A333184.P16149816646193915683

`A074967(n+2)-A004526(A074967(n+2)+A074966(n+2))`
-/

namespace A333184.P16149816646193915683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (n + 2) - A004526 (A074967 (n + 2) + A074966 (n + 2)).toNat

end

end A333184.P16149816646193915683

/-! ## A333184.P11288466028249998565

`A074967(n+2)-A025480(A074967(n+2)+A074966(n+2))`
-/

namespace A333184.P11288466028249998565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (n + 2) - A025480 (A074967 (n + 2) + A074966 (n + 2)).toNat

end

end A333184.P11288466028249998565

/-! ## A333184.P16859282003293486475

`A161503(n+2)-A074966(n+2)-A004526(A161503(n+2))`
-/

namespace A333184.P16859282003293486475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (n + 2) - A074966 (n + 2) - A004526 (A161503 (n + 2)).toNat

end

end A333184.P16859282003293486475

/-! ## A333184.P13175454928386327192

`A074967(n+2)-A004526(A098682(n+2)-A098681(n+2))`
-/

namespace A333184.P13175454928386327192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (n + 2) - A004526 (A098682 (n + 2) - A098681 (n + 2)).toNat

end

end A333184.P13175454928386327192

/-! ## A333184.P13890109434797874414

`A074967(n+2)-A032742(A098682(n+2)-A098681(n+2))`
-/

namespace A333184.P13890109434797874414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074967 (n + 2) - A032742 (A098682 (n + 2) - A098681 (n + 2)).toNat

end

end A333184.P13890109434797874414

/-!
# A333186: a(n) = floor(2^n csc(1/n)).

The programs for A333186, the canonical program `A333186.P1988053523329754177` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333186 has offset 1).

The definition of A333186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333186.P1988053523329754177

`floor(A000079(n+1)/sin(1/(n+1)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A333186

/-- `floor(A000079(n+1)/sin(1/(n+1)))` -/
def P1988053523329754177.Spec : Prop :=
  ∀ n, P1988053523329754177.a n = A333186 (n + 1)

theorem P1988053523329754177.correct : P1988053523329754177.Spec := by
  intro n
  simp only [A333186, Nat.add_sub_cancel]

end A333186

/-! ## A333186.P7425525780867421980

`A333188(n+1)+A333187(n+1)`
-/

namespace A333186.P7425525780867421980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333188 (n + 1) + A333187 (n + 1)

end

end A333186.P7425525780867421980

namespace A333186

/-- `A333188(n+1)+A333187(n+1)` -/
def P7425525780867421980.Spec : Prop :=
  ∀ n, P7425525780867421980.a n = A333186 (n + 1)

theorem P7425525780867421980.correct : P7425525780867421980.Spec := by
  intro n
  simp only [A333186, Nat.add_sub_cancel, A333186.P7425525780867421980.a, A333186.P1988053523329754177.a, A000079, A000079.P10855139691139572931.a, A333187, A333187.P2153606281102941777.a, A333188, A333188.P17147979355688188816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333186

/-! ## A333186.P481395961667658095

`A003261(n+1)+A002264(A333188(n+1))+1`
-/

namespace A333186.P481395961667658095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1) + (A002264 (A333188 (n + 1)).toNat + 1)

end

end A333186.P481395961667658095

namespace A333186

/-- `A003261(n+1)+A002264(A333188(n+1))+1` -/
def P481395961667658095.Spec : Prop :=
  ∀ n, P481395961667658095.a n = A333186 (n + 1)

end A333186

/-! ## A333186.P6627341593691149328

`A333187(n+1)+A123108(A063776(n+1)-A175676(n+1))`
-/

namespace A333186.P6627341593691149328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333187 (n + 1) + A123108 (A063776 (n + 1) - A175676 (n + 1)).toNat

end

end A333186.P6627341593691149328

namespace A333186

/-- `A333187(n+1)+A123108(A063776(n+1)-A175676(n+1))` -/
def P6627341593691149328.Spec : Prop :=
  ∀ n, P6627341593691149328.a n = A333186 (n + 1)

end A333186

/-! ## A333186.P5859896727851718625

`A028310(A333188(n+1)+floor(2^(n+1)/tan(1/(n+1))))`
-/

namespace A333186.P5859896727851718625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A333188 (n + 1) + ⌊(2 ^ (n + 1) : ℝ) / Real.tan (1 / (n + 1 : ℚ) : ℝ)⌋).toNat

end

end A333186.P5859896727851718625

namespace A333186

/-- `A028310(A333188(n+1)+floor(2^(n+1)/tan(1/(n+1))))` -/
def P5859896727851718625.Spec : Prop :=
  ∀ n, P5859896727851718625.a n = A333186 (n + 1)

end A333186

/-!
# A333187: a(n) = floor(2^n cot(1/n)).

The programs for A333187, the canonical program `A333187.P2153606281102941777` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333187 has offset 1).

The definition of A333187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333187.P2153606281102941777

`floor(2^(n+1)/tan(1/(n+1)))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333187

/-- `floor(2^(n+1)/tan(1/(n+1)))` -/
def P2153606281102941777.Spec : Prop :=
  ∀ n, P2153606281102941777.a n = A333187 (n + 1)

theorem P2153606281102941777.correct : P2153606281102941777.Spec := by
  intro n
  simp only [A333187, Nat.add_sub_cancel]

end A333187

/-! ## A333187.P3508136019870291197

`floor(2^(n+1)*cot(1/(n+1)))`
-/

namespace A333187.P3508136019870291197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℝ) * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A333187.P3508136019870291197

namespace A333187

/-- `floor(2^(n+1)*cot(1/(n+1)))` -/
def P3508136019870291197.Spec : Prop :=
  ∀ n, P3508136019870291197.a n = A333187 (n + 1)

end A333187

/-! ## A333187.P11084559045448912071

`A333186(n+1)-A333188(n+1)`
-/

namespace A333187.P11084559045448912071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333186 (n + 1) - A333188 (n + 1)

end

end A333187.P11084559045448912071

namespace A333187

/-- `A333186(n+1)-A333188(n+1)` -/
def P11084559045448912071.Spec : Prop :=
  ∀ n, P11084559045448912071.a n = A333187 (n + 1)

theorem P11084559045448912071.correct : P11084559045448912071.Spec := by
  intro n
  simp only [A333187, Nat.add_sub_cancel, A333187.P11084559045448912071.a, A333187.P2153606281102941777.a, A333186, A333186.P1988053523329754177.a, A333188, A333188.P17147979355688188816.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333187

/-! ## A333187.P6189122902903782405

`floor(A000079(n+1)/sin(1/(n+1)))-A333188(n+1)`
-/

namespace A333187.P6189122902903782405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℝ) / Real.sin (1 / (n + 1 : ℚ) : ℝ)⌋ - A333188 (n + 1)

end

end A333187.P6189122902903782405

namespace A333187

/-- `floor(A000079(n+1)/sin(1/(n+1)))-A333188(n+1)` -/
def P6189122902903782405.Spec : Prop :=
  ∀ n, P6189122902903782405.a n = A333187 (n + 1)

theorem P6189122902903782405.correct : P6189122902903782405.Spec := by
  intro n
  simp only [A333187, Nat.add_sub_cancel, A333187.P6189122902903782405.a, A333187.P2153606281102941777.a, A000079, A000079.P10855139691139572931.a, A333188, A333188.P17147979355688188816.a, A333186, A333186.P1988053523329754177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333187

/-! ## A333187.P18438179656882230263

`A003261(n+1)-A002264(A000799(n+1))`
-/

namespace A333187.P18438179656882230263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1) - A002264 (A000799 (n + 1)).toNat

end

end A333187.P18438179656882230263

namespace A333187

/-- `A003261(n+1)-A002264(A000799(n+1))` -/
def P18438179656882230263.Spec : Prop :=
  ∀ n, P18438179656882230263.a n = A333187 (n + 1)

end A333187

/-!
# A333188: a(n) = [2^n csc(1/n)] - [2^n cot(1/n)], where [ ] = floor.

The programs for A333188, the canonical program `A333188.P17147979355688188816` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333188 has offset 1).

The definition of A333188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333188.P17147979355688188816

`A333186(n+1)-A333187(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333188

/-- `A333186(n+1)-A333187(n+1)` -/
def P17147979355688188816.Spec : Prop :=
  ∀ n, P17147979355688188816.a n = A333188 (n + 1)

theorem P17147979355688188816.correct : P17147979355688188816.Spec := by
  intro n
  simp only [A333188, Nat.add_sub_cancel]

end A333188

/-! ## A333188.P6334400909374228635

`floor(A000079(n+1)/sin(1/(n+1)))-A333187(n+1)`
-/

namespace A333188.P6334400909374228635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℝ) / Real.sin (1 / (n + 1 : ℚ) : ℝ)⌋ - A333187 (n + 1)

end

end A333188.P6334400909374228635

namespace A333188

/-- `floor(A000079(n+1)/sin(1/(n+1)))-A333187(n+1)` -/
def P6334400909374228635.Spec : Prop :=
  ∀ n, P6334400909374228635.a n = A333188 (n + 1)

end A333188

/-! ## A333188.P17742375373114211723

`A333186(n+1)-floor(2^(n+1)*cot(1/(n+1)))%A333186(2*(n+1))`
-/

namespace A333188.P17742375373114211723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333186 (n + 1) - Int.tmod ⌊(2 ^ (n + 1) : ℝ) * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋ (A333186 (2 * (n + 1)))

end

end A333188.P17742375373114211723

namespace A333188

/-- `A333186(n+1)-floor(2^(n+1)*cot(1/(n+1)))%A333186(2*(n+1))` -/
def P17742375373114211723.Spec : Prop :=
  ∀ n, P17742375373114211723.a n = A333188 (n + 1)

end A333188

/-! ## A333188.P13546479836986430002

`A028310(A333186(n+1)-floor(2^(n+1)/tan(1/(n+1))))`
-/

namespace A333188.P13546479836986430002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A333186 (n + 1) - ⌊(2 ^ (n + 1) : ℝ) / Real.tan (1 / (n + 1 : ℚ) : ℝ)⌋).toNat

end

end A333188.P13546479836986430002

namespace A333188

/-- `A028310(A333186(n+1)-floor(2^(n+1)/tan(1/(n+1))))` -/
def P13546479836986430002.Spec : Prop :=
  ∀ n, P13546479836986430002.a n = A333188 (n + 1)

end A333188

/-! ## A333188.P1756435738388364507

`A028310(A333186(n+1)-floor(2^(n+1)*cot(1/(n+1))))`
-/

namespace A333188.P1756435738388364507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A333186 (n + 1) - ⌊(2 ^ (n + 1) : ℝ) * Real.cot (1 / (n + 1 : ℚ) : ℝ)⌋).toNat

end

end A333188.P1756435738388364507

namespace A333188

/-- `A028310(A333186(n+1)-floor(2^(n+1)*cot(1/(n+1))))` -/
def P1756435738388364507.Spec : Prop :=
  ∀ n, P1756435738388364507.a n = A333188 (n + 1)

end A333188

/-!
# A333189: a(n) = [2^n csc(1/n)] - [2^n cot(1/n)] - [2^n (csc(1/n) - cot(1/n))], where [ ] = floor.

The programs for A333189, there is no canonical definition to state claims against.
-/

/-! ## A333189.P546992347813408669

`A091247(and(A091204(n), A091251(n+1)))`
-/

namespace A333189.P546992347813408669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (Int.land (A091204 n) (A091251 (n + 1))).toNat

end

end A333189.P546992347813408669

/-! ## A333189.P15321621308216941322

`A003849(A032020(n+1)+4)`
-/

namespace A333189.P15321621308216941322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A032020 (n + 1) + 4).toNat

end

end A333189.P15321621308216941322

/-! ## A333189.P2101845195830515965

`A316824(A077118(n)%A000041(n))`
-/

namespace A333189.P2101845195830515965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (Int.tmod (A077118 n) (A000041 n)).toNat

end

end A333189.P2101845195830515965

/-! ## A333189.P7512132189834021950

`A000035(A073961(n+2)%A130780(n))`
-/

namespace A333189.P7512132189834021950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A073961 (n + 2)) (A130780 n)).toNat

end

end A333189.P7512132189834021950

/-! ## A333189.P9754854277444744952

`and(A225654(n), A269129(A102705(n+1)))`
-/

namespace A333189.P9754854277444744952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225654 n) (A269129 (A102705 (n + 1)).toNat)

end

end A333189.P9754854277444744952

/-!
# A333190: Number of integer partitions of n whose run-lengths are either strictly increasing or strictly decreasing.

The programs for A333190, there is no canonical definition to state claims against.
-/

/-! ## A333190.P284146766540314930

`A098859(n)-A317369(A048068(n+1))`
-/

namespace A333190.P284146766540314930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A317369 (A048068 (n + 1)).toNat

end

end A333190.P284146766540314930

/-! ## A333190.P5462985693603943439

`A098859(n)-A032446(A061275(n+1))`
-/

namespace A333190.P5462985693603943439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A032446 (A061275 (n + 1)).toNat

end

end A333190.P5462985693603943439

/-! ## A333190.P1004399892318067568

`A098859(n)-A033886(A071059(n+1))`
-/

namespace A333190.P1004399892318067568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A033886 (A071059 (n + 1)).toNat

end

end A333190.P1004399892318067568

/-! ## A333190.P16840319690065191396

`A098859(n)-A340998(A072616(n+1))`
-/

namespace A333190.P16840319690065191396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A340998 ((A072616 (n + 1)).toNat + 140)

end

end A333190.P16840319690065191396

/-! ## A333190.P7982714870933448954

`A098859(n)-A268836(A185284(3*n+1))`
-/

namespace A333190.P7982714870933448954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098859 n - A268836 (A185284 (3 * n + 1)).toNat

end

end A333190.P7982714870933448954

/-!
# A333191: Number of compositions of n whose run-lengths are either strictly increasing or strictly decreasing.

The programs for A333191, there is no canonical definition to state claims against.
-/

/-! ## A333191.P3438000928772965736

`A004273(A333192(n))-A032741(n)`
-/

namespace A333191.P3438000928772965736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A333192 n).toNat - A032741 n

end

end A333191.P3438000928772965736

/-! ## A333191.P7615337051831085404

`A329133(A329137(n))+char[5]`
-/

namespace A333191.P7615337051831085404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (A329137 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333191.P7615337051831085404

/-! ## A333191.P17504580758125288994

`A329133(A329137(n)+1)-1`
-/

namespace A333191.P17504580758125288994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (A329137 n + 1).toNat - 1

end

end A333191.P17504580758125288994

/-! ## A333191.P4306198200848549912

`A325547(n)-A296657(A333188(n+1))`
-/

namespace A333191.P4306198200848549912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325547 n - A296657 (A333188 (n + 1)).toNat

end

end A333191.P4306198200848549912

/-!
# A333192: Number of compositions of n with strictly increasing run-lengths.

The programs for A333192, there is no canonical definition to state claims against.
-/

/-! ## A333192.P2250677875370378973

`round((A333191(n)+A032741(n))/2)`
-/

namespace A333192.P2250677875370378973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A333191 n + A032741 n : ℚ) / 2)

end

end A333192.P2250677875370378973

/-! ## A333192.P11038443636937416297

`(A333191(n)+A032741(n)+1)/A020639(2*(n+1))`
-/

namespace A333192.P11038443636937416297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333191 n + A032741 n + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A333192.P11038443636937416297

/-! ## A333192.P16276019738963176383

`(A333191(n)+A032741(n)+1)/A000005(A205687(n+1))`
-/

namespace A333192.P16276019738963176383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333191 n + A032741 n + 1 : ℚ) / (A000005 (A205687 (n + 1)).toNat : ℚ)

end

end A333192.P16276019738963176383

/-! ## A333192.P5861359678052277998

`(A333191(n)+A032741(n)+1)/A001222(A073046(n+2))`
-/

namespace A333192.P5861359678052277998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333191 n + A032741 n + 1 : ℚ) / (A001222 (A073046 (n + 2)).toNat : ℚ)

end

end A333192.P5861359678052277998

/-! ## A333192.P4328662216219938633

`A296209(∑[n+3]+7)+(A333191(n)+A032741(n)+1)/2`
-/

namespace A333192.P4328662216219938633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296209 (∑ j ∈ Finset.range (n + 1), f1 j + 7) : ℚ) + (A333191 n + A032741 n + 1 : ℚ) / 2

end

end A333192.P4328662216219938633

/-! ## A333192.P1528080563477274796

`(A333191(n)+A032741(n)+1)/A000034(A157924(n+1))`
-/

namespace A333192.P1528080563477274796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333191 n + A032741 n + 1 : ℚ) / (A000034 (A157924 (n + 1)).toNat : ℚ)

end

end A333192.P1528080563477274796

/-! ## A333192.P15090551141498462274

`A014682(A032741(n)+A333191(n)+1)`
-/

namespace A333192.P15090551141498462274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032741 n + (A333191 n + 1)).toNat

end

end A333192.P15090551141498462274

/-!
# A333193: Number of compositions of n whose non-adjacent parts are strictly decreasing.

The programs for A333193, there is no canonical definition to state claims against.
-/

/-! ## A333193.P3112002799303747272

`A035986(n+1)-A118759(Δ[A027342(n)])`
-/

namespace A333193.P3112002799303747272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035986 (n + 1) - A118759 (f1 (n + 1) - f1 n).toNat

end

end A333193.P3112002799303747272

/-! ## A333193.P610298927311412796

`A281744(2*n)+A058276(A058276(n)+6)`
-/

namespace A333193.P610298927311412796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281744 (2 * n) + A058276 (A058276 n + 6).toNat

end

end A333193.P610298927311412796

/-! ## A333193.P4922230455005313594

`A000701(n)+A001221(A090837(n+1))*A115671(n)`
-/

namespace A333193.P4922230455005313594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A001221 (A090837 (n + 1)).toNat * A115671 n

end

end A333193.P4922230455005313594

/-! ## A333193.P16599854531300984552

`A000701(n)+A067513(A057468(n+2))*A115671(n)`
-/

namespace A333193.P16599854531300984552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + A067513 (A057468 (n + 2)).toNat * A115671 n

end

end A333193.P16599854531300984552

/-! ## A333193.P11748594789950871000

`A000701(n)+A115671(n)+A000007(A080054(2*n+1))`
-/

namespace A333193.P11748594789950871000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A115671 n + A000007 (A080054 (2 * n + 1)).toNat)

end

end A333193.P11748594789950871000

/-!
# A333194: a(n) = Sum_{k=1..n} (ceiling(n/k) mod 2) * k.

The programs for A333194, the canonical program `A333194.P13463208347369344208` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333194 has offset 1).

The definition of A333194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333194.P13463208347369344208

`∑[n+1-∑{d}[n, #*#%2]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333194

/-- `∑[n+1-∑{d}[n, #*#%2]]` -/
def P13463208347369344208.Spec : Prop :=
  ∀ n, P13463208347369344208.a n = A333194 (n + 1)

theorem P13463208347369344208.correct : P13463208347369344208.Spec := by
  intro n
  simp only [A333194, Nat.add_sub_cancel]

end A333194

/-! ## A333194.P17544268440016418318

`∑[n+1-∑{d}[n, lcm(2, #)-#]]`
-/

namespace A333194.P17544268440016418318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P17544268440016418318

namespace A333194

/-- `∑[n+1-∑{d}[n, lcm(2, #)-#]]` -/
def P17544268440016418318.Spec : Prop :=
  ∀ n, P17544268440016418318.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P13054378001167187206

`∑[n+1-∑{d}[n, #*and(1, #)]]`
-/

namespace A333194.P13054378001167187206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d * Nat.land 1 d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P13054378001167187206

namespace A333194

/-- `∑[n+1-∑{d}[n, #*and(1, #)]]` -/
def P13054378001167187206.Spec : Prop :=
  ∀ n, P13054378001167187206.a n = A333194 (n + 1)

theorem P13054378001167187206.correct : P13054378001167187206.Spec := by
  intro n
  simp only [A333194, Nat.add_sub_cancel, A333194.P13054378001167187206.f2, A333194.P13054378001167187206.f1, A333194.P13054378001167187206.a, A333194.P13463208347369344208.f2, A333194.P13463208347369344208.f1, A333194.P13463208347369344208.a, SequenceMachineLib.memo_apply]
  try simp

end A333194

/-! ## A333194.P6477403817307487436

`∑[n+1-∑{d}[n, A193356(#)]]`
-/

namespace A333194.P6477403817307487436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A193356 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P6477403817307487436

namespace A333194

/-- `∑[n+1-∑{d}[n, A193356(#)]]` -/
def P6477403817307487436.Spec : Prop :=
  ∀ n, P6477403817307487436.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P3906612554532316773

`a(n-1)+n+1-A000593(n)` with `a(0)=1`
-/

namespace A333194.P3906612554532316773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - A000593 n)

end

end A333194.P3906612554532316773

namespace A333194

/-- `a(n-1)+n+1-A000593(n)` -/
def P3906612554532316773.Spec : Prop :=
  ∀ n, P3906612554532316773.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P476269015105474556

`A000217(n+1)+A000593(n+1)-A078471(n+1)`
-/

namespace A333194.P476269015105474556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000593 (n + 1) - A078471 (n + 1))

end

end A333194.P476269015105474556

namespace A333194

/-- `A000217(n+1)+A000593(n+1)-A078471(n+1)` -/
def P476269015105474556.Spec : Prop :=
  ∀ n, P476269015105474556.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P18026844067340381021

`∑[n+1-∑{d}[A030101(A030101(n)), #]]`
-/

namespace A333194.P18026844067340381021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P18026844067340381021

namespace A333194

/-- `∑[n+1-∑{d}[A030101(A030101(n)), #]]` -/
def P18026844067340381021.Spec : Prop :=
  ∀ n, P18026844067340381021.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P16989243810145776079

`∑[n+1-A091570(A004277(n))]`
-/

namespace A333194.P16989243810145776079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A091570 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P16989243810145776079

namespace A333194

/-- `∑[n+1-A091570(A004277(n))]` -/
def P16989243810145776079.Spec : Prop :=
  ∀ n, P16989243810145776079.a n = A333194 (n + 1)

end A333194

/-! ## A333194.P6693023257581763623

`∑[n+1-A091570(A008574(n))]`
-/

namespace A333194.P6693023257581763623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A091570 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333194.P6693023257581763623

namespace A333194

/-- `∑[n+1-A091570(A008574(n))]` -/
def P6693023257581763623.Spec : Prop :=
  ∀ n, P6693023257581763623.a n = A333194 (n + 1)

end A333194

/-!
# A333195: Numbers with three consecutive prime indices in arithmetic progression.

The programs for A333195, there is no canonical definition to state claims against.
-/

/-! ## A333195.P6812942529582492049

`∩[A115180(n+1), A389599(n+1)]`
-/

namespace A333195.P6812942529582492049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333195.P6812942529582492049

/-! ## A333195.P9456093144406197948

`∩[A122409(n+1), A389599(n+1)]`
-/

namespace A333195.P9456093144406197948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333195.P9456093144406197948

/-! ## A333195.P15478108066677164653

`∩[A345921(n+1), A389599(n+1)]`
-/

namespace A333195.P15478108066677164653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333195.P15478108066677164653

/-! ## A333195.P9129138697029468126

`∩[A346151(n), A389599(n+1)]`
-/

namespace A333195.P9129138697029468126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333195.P9129138697029468126

/-!
# A333196: Least k such that Sum_{i=1..n} k^n / i is a positive integer.

The programs for A333196, the canonical program `A333196.P6861657637734927549` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333196 has offset 1).

The definition of A333196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333196.P6861657637734927549

`A007947(A002805(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333196

/-- `A007947(A002805(n+1))` -/
def P6861657637734927549.Spec : Prop :=
  ∀ n, P6861657637734927549.a n = A333196 (n + 1)

theorem P6861657637734927549.correct : P6861657637734927549.Spec := by
  intro n
  simp only [A333196, Nat.add_sub_cancel]

end A333196

/-! ## A333196.P17543216168465696791

`gcd(A002805(n+1), A034386(n+1))`
-/

namespace A333196.P17543216168465696791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (n + 1)) (A034386 (n + 1))

end

end A333196.P17543216168465696791

namespace A333196

/-- `gcd(A002805(n+1), A034386(n+1))` -/
def P17543216168465696791.Spec : Prop :=
  ∀ n, (P17543216168465696791.a n : ℤ) = A333196 (n + 1)

end A333196

/-! ## A333196.P6207405293404964717

`gcd(A003418(n+1)/A110566(n+1), A034386(2*n))`
-/

namespace A333196.P6207405293404964717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ))) (A034386 (2 * n))

end

end A333196.P6207405293404964717

namespace A333196

/-- `gcd(A003418(n+1)/A110566(n+1), A034386(2*n))` -/
def P6207405293404964717.Spec : Prop :=
  ∀ n, (P6207405293404964717.a n : ℤ) = A333196 (n + 1)

end A333196

/-! ## A333196.P15791035333837108339

`gcd(A002110(n), A002805(n+1))`
-/

namespace A333196.P15791035333837108339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A002805 (n + 1))

end

end A333196.P15791035333837108339

namespace A333196

/-- `gcd(A002110(n), A002805(n+1))` -/
def P15791035333837108339.Spec : Prop :=
  ∀ n, (P15791035333837108339.a n : ℤ) = A333196 (n + 1)

end A333196

/-! ## A333196.P6815099141598910801

`gcd(A002805(n+1)², Δ[A143293(n)])`
-/

namespace A333196.P6815099141598910801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A333196.P6815099141598910801

namespace A333196

/-- `gcd(A002805(n+1)², Δ[A143293(n)])` -/
def P6815099141598910801.Spec : Prop :=
  ∀ n, (P6815099141598910801.a n : ℤ) = A333196 (n + 1)

end A333196

/-!
# A333197: Nonprime numbers k such that each nonprime divisor of k is 1 away from a prime number.

The programs for A333197, there is no canonical definition to state claims against.
-/

/-! ## A333197.P718540756704656335

`A175427(A018837(p?[A289012(n+1)]))`
-/

namespace A333197.P718540756704656335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A018837 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A333197.P718540756704656335

/-! ## A333197.P15745241287618758113

`eq[A000669(A327640(n)), A051699(n)]`
-/

namespace A333197.P15745241287618758113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (A327640 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333197.P15745241287618758113

/-! ## A333197.P11945445591308954566

`eq[A051699(n), A064989(A327640(n)²)]`
-/

namespace A333197.P11945445591308954566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A327640 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333197.P11945445591308954566

/-! ## A333197.P1525296823254024463

`eq[A051699(n), A327640(A327640(n)²)]`
-/

namespace A333197.P1525296823254024463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327640 (A327640 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333197.P1525296823254024463

/-! ## A333197.P16715052035579557260

`A256416(lt[A259784(n+1), A195207(3*n+2)])`
-/

namespace A333197.P16715052035579557260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195207 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333197.P16715052035579557260

/-!
# A333199: Primes in A180646.

The programs for A333199, the canonical program `A333199.P5004072551827767386` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333199 has offset 1).

The definition of A333199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333199.P5286725361210334605

`p?[A180646(n+1)]`
-/

namespace A333199.P5286725361210334605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333199.P5286725361210334605

namespace A333199

/-- `p?[A180646(n+1)]` -/
def P5286725361210334605.Spec : Prop :=
  ∀ n, P5286725361210334605.a n = A333199 (n + 1)

end A333199

/-! ## A333199.P5004072551827767386

`p?[A049441(n+1)+1]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333199

/-- `p?[A049441(n+1)+1]` -/
def P5004072551827767386.Spec : Prop :=
  ∀ n, P5004072551827767386.a n = A333199 (n + 1)

theorem P5004072551827767386.correct : P5004072551827767386.Spec := by
  intro n
  simp only [A333199, Nat.add_sub_cancel]

end A333199

/-! ## A333199.P1094711904986926213

`∩[A045410(n+1), A180646(n+1)]`
-/

namespace A333199.P1094711904986926213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P1094711904986926213

namespace A333199

/-- `∩[A045410(n+1), A180646(n+1)]` -/
def P1094711904986926213.Spec : Prop :=
  ∀ n, (P1094711904986926213.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P925749392935887295

`∩[A045309(n+1), A180646(n+1)]`
-/

namespace A333199.P925749392935887295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P925749392935887295

namespace A333199

/-- `∩[A045309(n+1), A180646(n+1)]` -/
def P925749392935887295.Spec : Prop :=
  ∀ n, (P925749392935887295.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P10071658322113097839

`∩[A049596(n+1), A180646(n+1)]`
-/

namespace A333199.P10071658322113097839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P10071658322113097839

namespace A333199

/-- `∩[A049596(n+1), A180646(n+1)]` -/
def P10071658322113097839.Spec : Prop :=
  ∀ n, (P10071658322113097839.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P3873957919242012146

`∩[A164319(n+1), A180646(n+1)]`
-/

namespace A333199.P3873957919242012146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P3873957919242012146

namespace A333199

/-- `∩[A164319(n+1), A180646(n+1)]` -/
def P3873957919242012146.Spec : Prop :=
  ∀ n, (P3873957919242012146.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P13083748244934368551

`∩[A040044(n+1), A180646(n+1)]`
-/

namespace A333199.P13083748244934368551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P13083748244934368551

namespace A333199

/-- `∩[A040044(n+1), A180646(n+1)]` -/
def P13083748244934368551.Spec : Prop :=
  ∀ n, (P13083748244934368551.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P10510215419377553513

`∩[A040046(n+1), A180646(n+1)]`
-/

namespace A333199.P10510215419377553513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P10510215419377553513

namespace A333199

/-- `∩[A040046(n+1), A180646(n+1)]` -/
def P10510215419377553513.Spec : Prop :=
  ∀ n, (P10510215419377553513.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P7772367446267959779

`∩[A040087(n+1), A180646(n+1)]`
-/

namespace A333199.P7772367446267959779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P7772367446267959779

namespace A333199

/-- `∩[A040087(n+1), A180646(n+1)]` -/
def P7772367446267959779.Spec : Prop :=
  ∀ n, (P7772367446267959779.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P8020187824803693152

`∩[A040060(n+1), A180646(n+1)]`
-/

namespace A333199.P8020187824803693152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P8020187824803693152

namespace A333199

/-- `∩[A040060(n+1), A180646(n+1)]` -/
def P8020187824803693152.Spec : Prop :=
  ∀ n, (P8020187824803693152.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P10001019772656520823

`∩[A040083(n+1), A180646(n+1)]`
-/

namespace A333199.P10001019772656520823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P10001019772656520823

namespace A333199

/-- `∩[A040083(n+1), A180646(n+1)]` -/
def P10001019772656520823.Spec : Prop :=
  ∀ n, (P10001019772656520823.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P5868126706322505800

`∩[A040095(n+1), A180646(n+1)]`
-/

namespace A333199.P5868126706322505800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P5868126706322505800

namespace A333199

/-- `∩[A040095(n+1), A180646(n+1)]` -/
def P5868126706322505800.Spec : Prop :=
  ∀ n, (P5868126706322505800.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P9762092049831485105

`∩[A040036(n+1), A180646(n+1)]`
-/

namespace A333199.P9762092049831485105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P9762092049831485105

namespace A333199

/-- `∩[A040036(n+1), A180646(n+1)]` -/
def P9762092049831485105.Spec : Prop :=
  ∀ n, (P9762092049831485105.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P2375987164867588865

`∩[A040028(n+1), A180646(n+1)]`
-/

namespace A333199.P2375987164867588865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P2375987164867588865

namespace A333199

/-- `∩[A040028(n+1), A180646(n+1)]` -/
def P2375987164867588865.Spec : Prop :=
  ∀ n, (P2375987164867588865.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P2920788656693699819

`∩[A040049(n+1), A180646(n+1)]`
-/

namespace A333199.P2920788656693699819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P2920788656693699819

namespace A333199

/-- `∩[A040049(n+1), A180646(n+1)]` -/
def P2920788656693699819.Spec : Prop :=
  ∀ n, (P2920788656693699819.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P4315267656214287994

`∩[A040054(n+1), A180646(n+1)]`
-/

namespace A333199.P4315267656214287994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P4315267656214287994

namespace A333199

/-- `∩[A040054(n+1), A180646(n+1)]` -/
def P4315267656214287994.Spec : Prop :=
  ∀ n, (P4315267656214287994.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P790224698489196864

`∩[A040062(n+1), A180646(n+1)]`
-/

namespace A333199.P790224698489196864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P790224698489196864

namespace A333199

/-- `∩[A040062(n+1), A180646(n+1)]` -/
def P790224698489196864.Spec : Prop :=
  ∀ n, (P790224698489196864.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P8166845078255909321

`∩[A040065(n+1), A180646(n+1)]`
-/

namespace A333199.P8166845078255909321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P8166845078255909321

namespace A333199

/-- `∩[A040065(n+1), A180646(n+1)]` -/
def P8166845078255909321.Spec : Prop :=
  ∀ n, (P8166845078255909321.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P7238653042177847012

`∩[A040078(n+1), A180646(n+1)]`
-/

namespace A333199.P7238653042177847012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P7238653042177847012

namespace A333199

/-- `∩[A040078(n+1), A180646(n+1)]` -/
def P7238653042177847012.Spec : Prop :=
  ∀ n, (P7238653042177847012.a n : ℤ) = A333199 (n + 1)

end A333199

/-! ## A333199.P15949411098683552361

`∩[A040085(n+1), A180646(n+1)]`
-/

namespace A333199.P15949411098683552361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333199.P15949411098683552361

namespace A333199

/-- `∩[A040085(n+1), A180646(n+1)]` -/
def P15949411098683552361.Spec : Prop :=
  ∀ n, (P15949411098683552361.a n : ℤ) = A333199 (n + 1)

end A333199

