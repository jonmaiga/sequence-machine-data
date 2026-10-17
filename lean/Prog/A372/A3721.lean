import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A372100: a(n) = 2*A000120(3^k) - A070939(3^k) with k = A372099(n).

The programs for A372100, there is no canonical definition to state claims against.
-/

/-! ## A372100.P665290697390385135

`record[A011754(n)-A118736(n)]`
-/

namespace A372100.P665290697390385135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 n - A118736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372100.P665290697390385135

/-! ## A372100.P18208136122706025847

`record[2*A011754(n)-A020914(n)]`
-/

namespace A372100.P18208136122706025847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011754 n - A020914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372100.P18208136122706025847

/-! ## A372100.P12103004248160501735

`A245938(A030154(n+1))+A004207(n)`
-/

namespace A372100.P12103004248160501735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245938 (A030154 (n + 1)).toNat + A004207 n

end

end A372100.P12103004248160501735

/-! ## A372100.P737440872020751517

`A286654(A036569(n+1))+A004207(n)`
-/

namespace A372100.P737440872020751517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286654 (A036569 (n + 1)).toNat + A004207 n

end

end A372100.P737440872020751517

/-! ## A372100.P18088931633839322654

`A143538(A076550(2*n))+A004207(n)`
-/

namespace A372100.P18088931633839322654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A076550 (2 * n)).toNat + A004207 n

end

end A372100.P18088931633839322654

/-!
# A372101: Number of steps required to kill a hydra composed of a linear graph with n edges where, after removing the rightmost head at step s, s new heads grow to the right of the head's grandparent node (see comments).

The programs for A372101, there is no canonical definition to state claims against.
-/

/-! ## A372101.P7313675288521141594

`A372592(A003101(n))`
-/

namespace A372101.P7313675288521141594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372592 (A003101 n).toNat

end

end A372101.P7313675288521141594

/-!
# A372102: Number of permutations of [n] whose non-fixed points are not neighbors.

The programs for A372102, there is no canonical definition to state claims against.
-/

/-! ## A372102.P8911524280092074095

`A004525(A003008(n+1))`
-/

namespace A372102.P8911524280092074095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003008 (n + 1)).toNat

end

end A372102.P8911524280092074095

/-! ## A372102.P14243445133557067892

`A357861(A317884(n+1))`
-/

namespace A372102.P14243445133557067892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357861 (A317884 (n + 1)).toNat

end

end A372102.P14243445133557067892

/-! ## A372102.P251858716593714359

`A105223(A038561(n)+n)`
-/

namespace A372102.P251858716593714359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A038561 n + (n : ℤ)).toNat

end

end A372102.P251858716593714359

/-! ## A372102.P7184305801872761750

`or(A036614(n), A184159(A004148(n)))`
-/

namespace A372102.P7184305801872761750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036614 n) (A184159 (A004148 n).toNat)

end

end A372102.P7184305801872761750

/-! ## A372102.P2390197412549191822

`or(A036580(A036599(2*n+1)), A036614(n))`
-/

namespace A372102.P2390197412549191822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036580 (A036599 (2 * n + 1)).toNat) (A036614 n)

end

end A372102.P2390197412549191822

/-!
# A372104: G.f. A(x) satisfies A(x) = 1/( 1 - 4*x*A(x)/(1-x) )^(1/2).

The programs for A372104, there is no canonical definition to state claims against.
-/

/-! ## A372104.P5618845739001090989

`A053693(or(2, A287825(n)))`
-/

namespace A372104.P5618845739001090989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053693 (Int.lor 2 (A287825 n)).toNat

end

end A372104.P5618845739001090989

/-!
# A372105: G.f. A(x) satisfies A(x) = 1/( 1 - 9*x*A(x)/(1-x) )^(1/3).

The programs for A372105, there is no canonical definition to state claims against.
-/

/-! ## A372105.P15140845004420562201

`A344682(A137501(n)+A085527(n))`
-/

namespace A372105.P15140845004420562201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344682 (A137501 n + A085527 n).toNat

end

end A372105.P15140845004420562201

/-!
# A372107: G.f. A(x) satisfies A(x) = 1/( 1 - 4*x/(1 - x*A(x)) )^(1/2).

The programs for A372107, there is no canonical definition to state claims against.
-/

/-! ## A372107.P10906259313313450062

`A302492(A369836(n))`
-/

namespace A372107.P10906259313313450062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A369836 n).toNat

end

end A372107.P10906259313313450062

/-! ## A372107.P6154593580437888443

`A302492(∑[A079675(n+1)])`
-/

namespace A372107.P6154593580437888443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372107.P6154593580437888443

/-!
# A372108: G.f. A(x) satisfies A(x) = 1/( 1 - 9*x/(1 - x*A(x)) )^(1/3).

The programs for A372108, there is no canonical definition to state claims against.
-/

/-! ## A372108.P3346083742745898306

`A055874(A258903(n))*A194724(n)`
-/

namespace A372108.P3346083742745898306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A258903 n).toNat * A194724 n

end

end A372108.P3346083742745898306

/-! ## A372108.P2706026271195331890

`A007913(A229649(n)*A335465(n))`
-/

namespace A372108.P2706026271195331890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A229649 n * A335465 n).toNat

end

end A372108.P2706026271195331890

/-!
# A372109: G.f. A(x) satisfies A(x) = ( (1 - x*A(x))/(1 - 5*x*A(x)) )^(1/2).

The programs for A372109, there is no canonical definition to state claims against.
-/

/-! ## A372109.P5311092292511448534

`A144252(A116884(n+1))`
-/

namespace A372109.P5311092292511448534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144252 (A116884 (n + 1)).toNat

end

end A372109.P5311092292511448534

/-!
# A372110: G.f. A(x) satisfies A(x) = ( (1 - x*A(x))/(1 - 10*x*A(x)) )^(1/3).

The programs for A372110, there is no canonical definition to state claims against.
-/

/-! ## A372110.P5690689599462514491

`A062484(A151048(n))`
-/

namespace A372110.P5690689599462514491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062484 (A151048 n).toNat

end

end A372110.P5690689599462514491

/-!
# A372111: Partial sums of A124652.

The programs for A372111, there is no canonical definition to state claims against.
-/

/-! ## A372111.P868611335405180442

`∑[A124652(n+1)]`
-/

namespace A372111.P868611335405180442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372111.P868611335405180442

/-!
# A372112: Rad-transform of the squarefree numbers A005117 (see Comments).

The programs for A372112, the canonical program `A372112.P1502568326743945115` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372112 has offset 1).

The definition of A372112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372112.P16196511146051571057

`gcd(A073482(n+1), A115013(n+1))`
-/

namespace A372112.P16196511146051571057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073482 (n + 1)) (A115013 (n + 1))

end

end A372112.P16196511146051571057

namespace A372112

/-- `gcd(A073482(n+1), A115013(n+1))` -/
def P16196511146051571057.Spec : Prop :=
  ∀ n, (P16196511146051571057.a n : ℤ) = A372112 (n + 1)

end A372112

/-! ## A372112.P17726089101542451730

`gcd(A156899(n+1), A156900(n+1))`
-/

namespace A372112.P17726089101542451730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156899 (n + 1)) (A156900 (n + 1))

end

end A372112.P17726089101542451730

namespace A372112

/-- `gcd(A156899(n+1), A156900(n+1))` -/
def P17726089101542451730.Spec : Prop :=
  ∀ n, (P17726089101542451730.a n : ℤ) = A372112 (n + 1)

end A372112

/-! ## A372112.P1502568326743945115

`A014963(record[∏{p}[n, #]])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372112

/-- `A014963(record[∏{p}[n, #]])` -/
def P1502568326743945115.Spec : Prop :=
  ∀ n, P1502568326743945115.a n = A372112 (n + 1)

theorem P1502568326743945115.correct : P1502568326743945115.Spec := by
  intro n
  simp only [A372112, Nat.add_sub_cancel]

end A372112

/-! ## A372112.P9700419362966996183

`A014963(comp[A105570(n)])`
-/

namespace A372112.P9700419362966996183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A372112.P9700419362966996183

namespace A372112

/-- `A014963(comp[A105570(n)])` -/
def P9700419362966996183.Spec : Prop :=
  ∀ n, P9700419362966996183.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P4719947263468268144

`A089026(comp[A105570(n)])`
-/

namespace A372112.P4719947263468268144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A372112.P4719947263468268144

namespace A372112

/-- `A089026(comp[A105570(n)])` -/
def P4719947263468268144.Spec : Prop :=
  ∀ n, P4719947263468268144.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P6985911550053838167

`A014963(A005117(n+1))`
-/

namespace A372112.P6985911550053838167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005117 (n + 1)).toNat

end

end A372112.P6985911550053838167

namespace A372112

/-- `A014963(A005117(n+1))` -/
def P6985911550053838167.Spec : Prop :=
  ∀ n, P6985911550053838167.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P6443964103668955891

`A014963(record[A007913(n+1)])`
-/

namespace A372112.P6443964103668955891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372112.P6443964103668955891

namespace A372112

/-- `A014963(record[A007913(n+1)])` -/
def P6443964103668955891.Spec : Prop :=
  ∀ n, P6443964103668955891.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P16840469732303139845

`A014963(record[A007947(n+1)])`
-/

namespace A372112.P16840469732303139845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372112.P16840469732303139845

namespace A372112

/-- `A014963(record[A007947(n+1)])` -/
def P16840469732303139845.Spec : Prop :=
  ∀ n, P16840469732303139845.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P5232811949687777651

`A014963(record[A055231(n+1)])`
-/

namespace A372112.P5232811949687777651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A372112.P5232811949687777651

namespace A372112

/-- `A014963(record[A055231(n+1)])` -/
def P5232811949687777651.Spec : Prop :=
  ∀ n, P5232811949687777651.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P11238995747381634258

`A089026(A005117(2*n+1-n))`
-/

namespace A372112.P11238995747381634258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A005117 (2 * n + 1 - n)).toNat

end

end A372112.P11238995747381634258

namespace A372112

/-- `A089026(A005117(2*n+1-n))` -/
def P11238995747381634258.Spec : Prop :=
  ∀ n, P11238995747381634258.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P9557859573300767183

`A295665(A302491(n+1))`
-/

namespace A372112.P9557859573300767183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A302491 (n + 1)).toNat

end

end A372112.P9557859573300767183

namespace A372112

/-- `A295665(A302491(n+1))` -/
def P9557859573300767183.Spec : Prop :=
  ∀ n, P9557859573300767183.a n = A372112 (n + 1)

end A372112

/-! ## A372112.P146112799291614324

`gcd(A005117(n+1), A261130(n))`
-/

namespace A372112.P146112799291614324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (n + 1)) (A261130 n)

end

end A372112.P146112799291614324

namespace A372112

/-- `gcd(A005117(n+1), A261130(n))` -/
def P146112799291614324.Spec : Prop :=
  ∀ n, (P146112799291614324.a n : ℤ) = A372112 (n + 1)

end A372112

/-! ## A372112.P3625918119924988586

`A089026(A007947(A005117(n+1)²))`
-/

namespace A372112.P3625918119924988586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A007947 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A372112.P3625918119924988586

namespace A372112

/-- `A089026(A007947(A005117(n+1)²))` -/
def P3625918119924988586.Spec : Prop :=
  ∀ n, P3625918119924988586.a n = A372112 (n + 1)

end A372112

/-!
# A372113: Numbers k for which (k-1)/2 and 2*k+1 are both primes.

The programs for A372113, there is no canonical definition to state claims against.
-/

/-! ## A372113.P14150394820257759987

`2*A023213(n+1)+1`
-/

namespace A372113.P14150394820257759987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023213 (n + 1) + 1

end

end A372113.P14150394820257759987

/-! ## A372113.P15716006079886979379

`(A126330(n+1)-1)/2`
-/

namespace A372113.P15716006079886979379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126330 (n + 1) - 1 : ℚ) / 2

end

end A372113.P15716006079886979379

/-! ## A372113.P14543353518263850045

`floor(A126330(n+1)/2)`
-/

namespace A372113.P14543353518263850045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126330 (n + 1) : ℚ) / 2⌋

end

end A372113.P14543353518263850045

/-! ## A372113.P5223236955950258325

`∩[A072055(n+1), A104635(n+1)]`
-/

namespace A372113.P5223236955950258325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P5223236955950258325

/-! ## A372113.P11711226059062097252

`∩[A034784(n+1), A072055(n+1)]`
-/

namespace A372113.P11711226059062097252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P11711226059062097252

/-! ## A372113.P12860156376576384576

`∩[A005097(n+1), A072055(n+1)]`
-/

namespace A372113.P12860156376576384576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P12860156376576384576

/-! ## A372113.P5356695067215235284

`∩[A072055(n+1), A102781(n+1)]`
-/

namespace A372113.P5356695067215235284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P5356695067215235284

/-! ## A372113.P3846246176555252225

`∩[A072055(n+1), A326583(n+1)]`
-/

namespace A372113.P3846246176555252225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P3846246176555252225

/-! ## A372113.P2088644491818984534

`filter[A072055(n+1), A101264(#)]`
-/

namespace A372113.P2088644491818984534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A372113.P2088644491818984534

/-! ## A372113.P5599389820095083802

`∩[A088707(n+1), A104635(n+1)]`
-/

namespace A372113.P5599389820095083802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372113.P5599389820095083802

/-! ## A372113.P9733496452657578760

`A002659(A023213(n+1))`
-/

namespace A372113.P9733496452657578760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A023213 (n + 1)).toNat

end

end A372113.P9733496452657578760

/-! ## A372113.P14771344878317387652

`eq[A049716(n+1), A338770(n+1)]`
-/

namespace A372113.P14771344878317387652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P14771344878317387652

/-! ## A372113.P13471501327301536439

`eq[A046926(n+1), A363258(n+1)]`
-/

namespace A372113.P13471501327301536439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P13471501327301536439

/-! ## A372113.P5718722874114219495

`eq[A046926(n+1), A363316(n+1)]`
-/

namespace A372113.P5718722874114219495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P5718722874114219495

/-! ## A372113.P10814730633770431476

`eq[A099774(n+1), A338770(n+1)]`
-/

namespace A372113.P10814730633770431476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P10814730633770431476

/-! ## A372113.P17462445242394765043

`eq[A119323(n+1), A338770(n+1)]`
-/

namespace A372113.P17462445242394765043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P17462445242394765043

/-! ## A372113.P17467833503925565915

`eq[A278223(n+1), A338770(n+1)]`
-/

namespace A372113.P17467833503925565915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P17467833503925565915

/-! ## A372113.P964933805619423026

`eq[A305973(n+1), A338770(n+1)]`
-/

namespace A372113.P964933805619423026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P964933805619423026

/-! ## A372113.P8504866922316131337

`eq[A338770(n+1), A361289(n+1)]`
-/

namespace A372113.P8504866922316131337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P8504866922316131337

/-! ## A372113.P14411297180724114976

`eq[A338770(n+1), A377758(n+2)]`
-/

namespace A372113.P14411297180724114976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377758 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372113.P14411297180724114976

/-!
# A372114: Sum of squares of divisors of the numbers m such that m and m+2 have the same sum of squares of divisors.

The programs for A372114, there is no canonical definition to state claims against.
-/

/-! ## A372114.P18006357624542961199

`∑{d}[A169635(n+1), #²]`
-/

namespace A372114.P18006357624542961199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A372114.P18006357624542961199

/-!
# A372115: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1 + 4*x)^(1/2) * A(x) ).

The programs for A372115, there is no canonical definition to state claims against.
-/

/-! ## A372115.P11593960130813550195

`A122646(A064934(n))`
-/

namespace A372115.P11593960130813550195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122646 (A064934 n).toNat

end

end A372115.P11593960130813550195

/-! ## A372115.P11649037429526291753

`A085680(or(2, A236397(n)))`
-/

namespace A372115.P11649037429526291753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085680 (Int.lor 2 (A236397 n)).toNat

end

end A372115.P11649037429526291753

/-!
# A372119: Numbers k such that the k-th composition in standard order is not biquanimous.

The programs for A372119, there is no canonical definition to state claims against.
-/

/-! ## A372119.P1802565337491318001

`comp[A372120(n+1)]`
-/

namespace A372119.P1802565337491318001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372119.P1802565337491318001

/-! ## A372119.P2407838602203580266

`comp[record[A372120(A100727(n))]]`
-/

namespace A372119.P2407838602203580266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372120 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372119.P2407838602203580266

/-! ## A372119.P2382754806061559698

`lt[A357879(A333219(n+1)), 1]`
-/

namespace A372119.P2382754806061559698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A333219 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372119.P2382754806061559698

/-! ## A372119.P2632085202001534103

`eq[char[A372120(n+1)], A357879(3*n+2)]`
-/

namespace A372119.P2632085202001534103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372120 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A372119.P2632085202001534103

/-! ## A372119.P18027730725368724934

`lt[A334968(n)%2, 1]`
-/

namespace A372119.P18027730725368724934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334968 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372119.P18027730725368724934

/-!
# A372120: Numbers k such that the k-th composition in standard order is biquanimous.

The programs for A372120, there is no canonical definition to state claims against.
-/

/-! ## A372120.P12866244746572757499

`lt[(A334968(n)+7)%2, 1]`
-/

namespace A372120.P12866244746572757499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334968 n + 7) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372120.P12866244746572757499

/-! ## A372120.P16071634339202081298

`lt[gcd(A323249(2*n+5), A334968(n)), 2]`
-/

namespace A372120.P16071634339202081298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323249 (2 * n + 5)) (A334968 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372120.P16071634339202081298

/-! ## A372120.P14038155730217893555

`comp[A372119(n+1)]%A345946(n+1)`
-/

namespace A372120.P14038155730217893555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372119 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A345946 (n + 1))

end

end A372120.P14038155730217893555

/-! ## A372120.P5861568340580497580

`eq[1, A344618(A265509(n))]`
-/

namespace A372120.P5861568340580497580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (A265509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372120.P5861568340580497580

/-! ## A372120.P6785244647159677950

`eq[1, A344618(2*n+1)^A381399(n+1)]`
-/

namespace A372120.P6785244647159677950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344618 (2 * n + 1) : ℚ) ^ (A381399 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A372120.P6785244647159677950

/-!
# A372121: Row sums of A371783 and A371954 (k-quanimous partitions).

The programs for A372121, there is no canonical definition to state claims against.
-/

/-! ## A372121.P482927352498806360

`A338466(A305551(n+1))`
-/

namespace A372121.P482927352498806360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A305551 (n + 1)).toNat

end

end A372121.P482927352498806360

/-!
# A372123: Number of multisets of free polyominoes that can be constructed from n squares.

The programs for A372123, there is no canonical definition to state claims against.
-/

/-! ## A372123.P6084756526236334387

`A262689((n+2)!)`
-/

namespace A372123.P6084756526236334387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Nat.factorial (n + 2))

end

end A372123.P6084756526236334387

/-! ## A372123.P10476422516630922738

`A262689(∏[n+2])`
-/

namespace A372123.P10476422516630922738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A372123.P10476422516630922738

/-! ## A372123.P14863735996938454785

`sqrt(A262690((n+2)!))`
-/

namespace A372123.P14863735996938454785
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262690 (Nat.factorial (n + 2)) : ℝ)

end

end A372123.P14863735996938454785

/-!
# A372125: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)*(1 + 4*x*A(x))^(1/2) ).

The programs for A372125, there is no canonical definition to state claims against.
-/

/-! ## A372125.P17250650049788133515

`A362392(n)+A003313(A088695(n))`
-/

namespace A372125.P17250650049788133515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362392 n + A003313 (A088695 n).toNat

end

end A372125.P17250650049788133515

/-! ## A372125.P12915567957255894139

`A073996(n+1)+A030308(A367396(2*n+3))`
-/

namespace A372125.P12915567957255894139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A030308 (A367396 (2 * n + 3)).toNat

end

end A372125.P12915567957255894139

/-!
# A372126: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)*(1 + 9*x*A(x))^(1/3) ).

The programs for A372126, there is no canonical definition to state claims against.
-/

/-! ## A372126.P15304842455870736137

`A064866(lcm(A000142(n), A361331(n+1)))`
-/

namespace A372126.P15304842455870736137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (Int.lcm (A000142 n) (A361331 (n + 1)))

end

end A372126.P15304842455870736137

/-! ## A372126.P1879241274934901119

`A240574(A123603(2*n+3)+A013916(n+1))`
-/

namespace A372126.P1879241274934901119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (A123603 (2 * n + 3) + A013916 (n + 1)).toNat

end

end A372126.P1879241274934901119

/-!
# A372127: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, a(2*n+2) = LCM(a(2*n+1), a(n+1)).

The programs for A372127, there is no canonical definition to state claims against.
-/

/-! ## A372127.P13777150355662518731

`A372031(n+1)%A333228(A316413(3*n+2))`
-/

namespace A372127.P13777150355662518731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372031 (n + 1)) (A333228 (A316413 (3 * n + 2)).toNat)

end

end A372127.P13777150355662518731

/-!
# A372135: Nonsquarefree numbers not in A225353; equivalently, nonsquarefree numbers in A225354.

The programs for A372135, there is no canonical definition to state claims against.
-/

/-! ## A372135.P9793348052721235654

`filter[A392652(n+1), A359471(#)]`
-/

namespace A372135.P9793348052721235654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A372135.P9793348052721235654

/-! ## A372135.P4503827292663515200

`filter[A392652(n+1), A359474(#)]`
-/

namespace A372135.P4503827292663515200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A372135.P4503827292663515200

/-! ## A372135.P14221832469604769650

`filter[A392652(n+1), A359475(#)]`
-/

namespace A372135.P14221832469604769650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A372135.P14221832469604769650

/-! ## A372135.P2056157735136254490

`filter[A392652(n+1), A359592(#)]`
-/

namespace A372135.P2056157735136254490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A372135.P2056157735136254490

/-! ## A372135.P8723927605521100592

`filter[A392652(n+1), A379970(#)]`
-/

namespace A372135.P8723927605521100592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379970 (f1 j).toNat = 1) n)

end

end A372135.P8723927605521100592

/-!
# A372136: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^2*(1 + 9*x*A(x))^(1/3) ).

The programs for A372136, there is no canonical definition to state claims against.
-/

/-! ## A372136.P6436207388658588042

`A181807(A026525(n))`
-/

namespace A372136.P6436207388658588042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A026525 n).toNat

end

end A372136.P6436207388658588042

/-!
# A372137: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1 + 9*x)^(1/3) * A(x)^2 ).

The programs for A372137, there is no canonical definition to state claims against.
-/

/-! ## A372137.P978358902203865518

`A225086(A149569(n))`
-/

namespace A372137.P978358902203865518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A149569 n).toNat

end

end A372137.P978358902203865518

/-!
# A372138: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^2*(1 + 4*x*A(x))^(1/2) ).

The programs for A372138, there is no canonical definition to state claims against.
-/

/-! ## A372138.P13888162928577599808

`A110655(A357630(n+1)+A137644(n))`
-/

namespace A372138.P13888162928577599808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A357630 (n + 1) + A137644 n).toNat

end

end A372138.P13888162928577599808

/-!
# A372139: G.f. A(x) satisfies A(x) = 1/( 1 - x * (1 + 4*x)^(1/2) * A(x)^2 ).

The programs for A372139, there is no canonical definition to state claims against.
-/

/-! ## A372139.P802785829826973982

`A008616(n)+A008616(A221578(n))`
-/

namespace A372139.P802785829826973982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n + A008616 (A221578 n).toNat

end

end A372139.P802785829826973982

/-! ## A372139.P15892374544541918885

`A316978(n+2)+A079691(A002457(n))`
-/

namespace A372139.P15892374544541918885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (n + 2) + A079691 (A002457 n).toNat

end

end A372139.P15892374544541918885

/-!
# A372140: a(n) = Product_{k=1..n} BarnesG(k)^k.

The programs for A372140, there is no canonical definition to state claims against.
-/

/-! ## A372140.P13192346286878198438

`A338029(∑[A386450(n)])`
-/

namespace A372140.P13192346286878198438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372140.P13192346286878198438

/-! ## A372140.P2005817849796489348

`A338029(A037401(n+1))`
-/

namespace A372140.P2005817849796489348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338029 (A037401 (n + 1)).toNat

end

end A372140.P2005817849796489348

/-!
# A372141: Primes p that are palindromic in some prime base q, where q < p.

The programs for A372141, there is no canonical definition to state claims against.
-/

/-! ## A372141.P4793110530746620250

`∩[A092195(n+1), A239427(n+1)]`
-/

namespace A372141.P4793110530746620250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372141.P4793110530746620250

/-! ## A372141.P1606912794986574430

`record[A134204(A326625(n+1))]`
-/

namespace A372141.P1606912794986574430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 (A326625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372141.P1606912794986574430

/-!
# A372145: Number of domino tilings of the order n Aztec diamond which are centrally symmetric.

The programs for A372145, there is no canonical definition to state claims against.
-/

/-! ## A372145.P10198252561578487755

`∏[A088519(2^n)]`
-/

namespace A372145.P10198252561578487755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372145.P10198252561578487755

/-! ## A372145.P6159428653506560017

`∏[A331245(2^n)]`
-/

namespace A372145.P6159428653506560017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331245 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372145.P6159428653506560017

/-! ## A372145.P14981576414530738043

`A161764(∏[ceil(sqrt(2^n))])`
-/

namespace A372145.P14981576414530738043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 ^ n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372145.P14981576414530738043

/-!
# A372147: Numbers k for which k and k^2 are digitally balanced numbers in base 3 (A049354).

The programs for A372147, there is no canonical definition to state claims against.
-/

/-! ## A372147.P14579126686803510802

`A061657(A151435(n)+A057716(n+1))`
-/

namespace A372147.P14579126686803510802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061657 (A151435 n + A057716 (n + 1)).toNat

end

end A372147.P14579126686803510802

/-! ## A372147.P10326122450778179423

`A061657(A004709(n+4)%A051483(n+3))`
-/

namespace A372147.P10326122450778179423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061657 (Int.tmod (A004709 (n + 4)) (A051483 (n + 3))).toNat

end

end A372147.P10326122450778179423

/-!
# A372148: a(n) = A371764(n, 2).

The programs for A372148, the canonical program `A372148.P507033719497536603` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372148 has offset 1).

The definition of A372148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372148.P507033719497536603

`A091344(n)+A383910(n)+A091344(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A372148

/-- `A091344(n)+A383910(n)+A091344(n)` -/
def P507033719497536603.Spec : Prop :=
  ∀ n, P507033719497536603.a n = A372148 (n + 1)

theorem P507033719497536603.correct : P507033719497536603.Spec := by
  intro n
  simp only [A372148, Nat.add_sub_cancel]

end A372148

/-! ## A372148.P4920358262848250667

`A366058(n+1)-(A173033(n+1)+A173033(n))`
-/

namespace A372148.P4920358262848250667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366058 (n + 1) - (A173033 (n + 1) + A173033 n)

end

end A372148.P4920358262848250667

namespace A372148

/-- `A366058(n+1)-(A173033(n+1)+A173033(n))` -/
def P4920358262848250667.Spec : Prop :=
  ∀ n, P4920358262848250667.a n = A372148 (n + 1)

end A372148

/-! ## A372148.P3362700258704013540

`A371764(∑[n])+A006230(n+4)`
-/

namespace A372148.P3362700258704013540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371764 (∑ j ∈ Finset.range (n + 1), f1 j) + A006230 (n + 4)

end

end A372148.P3362700258704013540

namespace A372148

/-- `A371764(∑[n])+A006230(n+4)` -/
def P3362700258704013540.Spec : Prop :=
  ∀ n, P3362700258704013540.a n = A372148 (n + 1)

end A372148

/-! ## A372148.P10084762262376662505

`record[A371764(comp[∑[n]])]`
-/

namespace A372148.P10084762262376662505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371764 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372148.P10084762262376662505

namespace A372148

/-- `record[A371764(comp[∑[n]])]` -/
def P10084762262376662505.Spec : Prop :=
  ∀ n, P10084762262376662505.a n = A372148 (n + 1)

end A372148

/-!
# A372149: Palindrome numbers consisting only of odd digits.

The programs for A372149, there is no canonical definition to state claims against.
-/

/-! ## A372149.P14787906648149288404

`∩[A002113(n+1), A014261(n+1)]`
-/

namespace A372149.P14787906648149288404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P14787906648149288404

/-! ## A372149.P2717126013015359186

`∩[A014261(n+1), A029950(n+1)]`
-/

namespace A372149.P2717126013015359186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P2717126013015359186

/-! ## A372149.P5837112730073859887

`∩[A014261(n+1), A061379(n+1)]`
-/

namespace A372149.P5837112730073859887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P5837112730073859887

/-! ## A372149.P15563978266715774852

`∩[A014261(n+1), A061917(n+1)]`
-/

namespace A372149.P15563978266715774852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P15563978266715774852

/-! ## A372149.P17914433378240822480

`∩[A014261(n+1), A131207(n+1)]`
-/

namespace A372149.P17914433378240822480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P17914433378240822480

/-! ## A372149.P3597378339142661646

`∩[A014261(n+1), A169824(n+1)]`
-/

namespace A372149.P3597378339142661646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P3597378339142661646

/-! ## A372149.P15040015018089185569

`∩[A014261(n+1), A178354(n+1)]`
-/

namespace A372149.P15040015018089185569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P15040015018089185569

/-! ## A372149.P15034975476611953964

`∩[A029950(n+1), A059708(n+1)]`
-/

namespace A372149.P15034975476611953964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P15034975476611953964

/-! ## A372149.P10092238885357018586

`∩[A014261(n+1), A092361(n+1)]`
-/

namespace A372149.P10092238885357018586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372149.P10092238885357018586

/-!
# A372154: E.g.f. A(x) satisfies A(x) = exp( 2 * x * (1 + x) * A(x)^(1/2) ).

The programs for A372154, there is no canonical definition to state claims against.
-/

/-! ## A372154.P2194617553840645481

`A005229(A333331(n+1))`
-/

namespace A372154.P2194617553840645481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A333331 (n + 1)).toNat

end

end A372154.P2194617553840645481

/-!
# A372155: E.g.f. A(x) satisfies A(x) = exp( 3 * x * (1 + x) * A(x)^(1/3) ).

The programs for A372155, there is no canonical definition to state claims against.
-/

/-! ## A372155.P7359953418735506293

`A274427(A055897(n+1)+1)-1`
-/

namespace A372155.P7359953418735506293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274427 (A055897 (n + 1) + 1).toNat - 1

end

end A372155.P7359953418735506293

/-!
# A372156: E.g.f. A(x) satisfies A(x) = exp( 2 * x * (1 + x * A(x)^(1/2)) ).

The programs for A372156, there is no canonical definition to state claims against.
-/

/-! ## A372156.P6577790163703045675

`A028397(∏[2*n+1])`
-/

namespace A372156.P6577790163703045675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028397 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A372156.P6577790163703045675

/-!
# A372157: E.g.f. A(x) satisfies A(x) = exp( 3 * x * (1 + x * A(x)^(1/3)) ).

The programs for A372157, there is no canonical definition to state claims against.
-/

/-! ## A372157.P9105007877541600677

`∑[A003160(A277382(n))]`
-/

namespace A372157.P9105007877541600677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A277382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372157.P9105007877541600677

/-!
# A372158: E.g.f. A(x) satisfies A(x) = exp( 2 * x * A(x)^(1/2) / (1 - x) ).

The programs for A372158, there is no canonical definition to state claims against.
-/

/-! ## A372158.P8914962392583359799

`A076436(A004102(n+1)-n)`
-/

namespace A372158.P8914962392583359799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A004102 (n + 1) - (n : ℤ)).toNat

end

end A372158.P8914962392583359799

/-!
# A372159: E.g.f. A(x) satisfies A(x) = exp( 3 * x * A(x)^(1/3) / (1 - x) ).

The programs for A372159, there is no canonical definition to state claims against.
-/

/-! ## A372159.P15674549715647837157

`A105747(n)-A322393(A000984(n))`
-/

namespace A372159.P15674549715647837157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105747 n - A322393 (A000984 n).toNat

end

end A372159.P15674549715647837157

/-!
# A372160: E.g.f. A(x) satisfies A(x) = exp( 2 * x / (1 - x * A(x)^(1/2)) ).

The programs for A372160, there is no canonical definition to state claims against.
-/

/-! ## A372160.P9243421080405017350

`A070548(3*(n+1)^n)`
-/

namespace A372160.P9243421080405017350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (3 * (n + 1) ^ n)

end

end A372160.P9243421080405017350

/-!
# A372161: E.g.f. A(x) satisfies A(x) = exp( 3 * x / (1 - x * A(x)^(1/3)) ).

The programs for A372161, there is no canonical definition to state claims against.
-/

/-! ## A372161.P7563873897297226511

`or(1, A244367(A008544(n)))`
-/

namespace A372161.P7563873897297226511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A244367 (A008544 n).toNat)

end

end A372161.P7563873897297226511

/-!
# A372162: E.g.f. A(x) satisfies A(x) = exp( x * sqrt(1+2*x) * A(x) ).

The programs for A372162, there is no canonical definition to state claims against.
-/

/-! ## A372162.P10288251560451725253

`A306772(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A372162.P10288251560451725253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A306772 (a (n - 1)).toNat

end

end A372162.P10288251560451725253

/-!
# A372163: E.g.f. A(x) satisfies A(x) = exp( x * (1+3*x)^(1/3) * A(x) ).

The programs for A372163, there is no canonical definition to state claims against.
-/

/-! ## A372163.P15976552781485215677

`A154444(n^n)+floor((n²+6)/12)`
-/

namespace A372163.P15976552781485215677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (n ^ n) + ⌊(n ^ 2 + 6 : ℚ) / 12⌋

end

end A372163.P15976552781485215677

/-!
# A372168: Number of triangle-free simple labeled graphs covering n vertices.

The programs for A372168, there is no canonical definition to state claims against.
-/

/-! ## A372168.P3425099116476548131

`A372167(A014626(n))`
-/

namespace A372168.P3425099116476548131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372167 (A014626 n).toNat

end

end A372168.P3425099116476548131

/-! ## A372168.P1608993488870646543

`A372167(∑[A050407(n)])`
-/

namespace A372168.P1608993488870646543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372168.P1608993488870646543

/-! ## A372168.P15542127149568572644

`A372167(A000332(n)+n)`
-/

namespace A372168.P15542127149568572644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372167 (A000332 n + (n : ℤ)).toNat

end

end A372168.P15542127149568572644

/-!
# A372169: Number of unlabeled triangle-free graphs covering n vertices.

The programs for A372169, there is no canonical definition to state claims against.
-/

/-! ## A372169.P12879995158961700709

`A372173(A014626(n))`
-/

namespace A372169.P12879995158961700709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372173 (A014626 n).toNat

end

end A372169.P12879995158961700709

/-! ## A372169.P10671841076983774063

`A372173(∑[A050407(n)])`
-/

namespace A372169.P10671841076983774063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372173 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372169.P10671841076983774063

/-! ## A372169.P3478018352763993805

`A372173(A000332(n)+n)`
-/

namespace A372169.P3478018352763993805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372173 (A000332 n + (n : ℤ)).toNat

end

end A372169.P3478018352763993805

/-!
# A372171: Number of labeled simple graphs covering n vertices with a unique triangle.

The programs for A372171, there is no canonical definition to state claims against.
-/

/-! ## A372171.P16986755118799915054

`A372167(A336142(n)^A136755(3*n))`
-/

namespace A372171.P16986755118799915054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372167 (SequenceMachineLib.roundAway ((A336142 n : ℚ) ^ (A136755 (3 * n) : ℤ))).toNat

end

end A372171.P16986755118799915054

/-! ## A372171.P13614926607352469533

`A239516(2^n-n)`
-/

namespace A372171.P13614926607352469533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239516 (2 ^ n - n)

end

end A372171.P13614926607352469533

/-!
# A372172: Number of labeled simple graphs on n vertices with exactly one triangle.

The programs for A372172, there is no canonical definition to state claims against.
-/

/-! ## A372172.P12308563389840966750

`A241342(A027934(n))`
-/

namespace A372172.P12308563389840966750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241342 (A027934 n).toNat

end

end A372172.P12308563389840966750

/-! ## A372172.P8901128582949530325

`A164994(A158107(n))`
-/

namespace A372172.P8901128582949530325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 (A158107 n).toNat

end

end A372172.P8901128582949530325

/-!
# A372174: Number of unlabeled simple graphs covering n vertices with a unique triangle.

The programs for A372174, there is no canonical definition to state claims against.
-/

/-! ## A372174.P13911548432784881899

`A372194(n)-A372194(abs(1-n))`
-/

namespace A372174.P13911548432784881899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372194 n - A372194 |1 - (n : ℤ)|.toNat

end

end A372174.P13911548432784881899

/-!
# A372177: E.g.f. A(x) satisfies A(x) = exp( x * A(x)^(1/2) * (1 + A(x)^(1/2)) ).

The programs for A372177, there is no canonical definition to state claims against.
-/

/-! ## A372177.P2027631035812311021

`A372232(n)/A000079(n)`
-/

namespace A372177.P2027631035812311021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372232 n : ℚ) / (A000079 n : ℚ)

end

end A372177.P2027631035812311021

/-!
# A372178: E.g.f. A(x) satisfies A(x) = exp( 2 * x * A(x)^(1/2) * (1 + x * A(x)) ).

The programs for A372178, there is no canonical definition to state claims against.
-/

/-! ## A372178.P6576934297099336228

`A062968(A173219(n)+1)`
-/

namespace A372178.P6576934297099336228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A173219 n + 1).toNat

end

end A372178.P6576934297099336228

/-!
# A372179: E.g.f. A(x) satisfies A(x) = exp( 2 * x * A(x)^(1/2) / (1 - x * A(x)) ).

The programs for A372179, there is no canonical definition to state claims against.
-/

/-! ## A372179.P13727032842785057794

`A070867(A060174(n))`
-/

namespace A372179.P13727032842785057794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070867 (A060174 n).toNat

end

end A372179.P13727032842785057794

/-!
# A372181: a(n) is the smallest number whose symmetric representation of sigma consists of n copies of unimodal pattern 121 (separated by 0's if n > 1).

The programs for A372181, there is no canonical definition to state claims against.
-/

/-! ## A372181.P11226105920969801358

`A372180(∑[n+1])`
-/

namespace A372181.P11226105920969801358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372180 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372181.P11226105920969801358

/-! ## A372181.P6627554203245319891

`lcm(2, A372180(A341192(n+3)))`
-/

namespace A372181.P6627554203245319891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A372180 (A341192 (n + 3)).toNat)

end

end A372181.P6627554203245319891

/-! ## A372181.P6399642900775382938

`record[A372180(n+1)/A053122(n)]`
-/

namespace A372181.P6399642900775382938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372180 (n + 1) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372181.P6399642900775382938

/-! ## A372181.P4225353428204881623

`A372180(A341192(n+3))+A297881(n)`
-/

namespace A372181.P4225353428204881623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372180 (A341192 (n + 3)).toNat + A297881 n

end

end A372181.P4225353428204881623

/-! ## A372181.P12877405022825964371

`A372180(A341192(n+3))+A348798(n)`
-/

namespace A372181.P12877405022825964371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372180 (A341192 (n + 3)).toNat + A348798 n

end

end A372181.P12877405022825964371

/-!
# A372184: a(n) = 2^(1-3*n)*((2*n)!)^2/n.

The programs for A372184, there is no canonical definition to state claims against.
-/

/-! ## A372184.P10233366472398776657

`(2*n+1)²*a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A372184.P10233366472398776657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 2 * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372184.P10233366472398776657

/-! ## A372184.P6732199041751501682

`(2*n+1)²*C(n+1, 2)*a(n-1)` with `a(0)=1`
-/

namespace A372184.P6732199041751501682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 2 * Nat.choose (n + 1) 2 * a (n - 1)

end

end A372184.P6732199041751501682

/-! ## A372184.P14534127405450729205

`(2*n+1)*(2*n+1)*a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A372184.P14534127405450729205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * ((2 * n + 1) * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A372184.P14534127405450729205

/-! ## A372184.P6962562976379090371

`a(n-1)*A339483(n)` with `a(0)=1`
-/

namespace A372184.P6962562976379090371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A339483 n

end

end A372184.P6962562976379090371

/-! ## A372184.P3500723441913900253

`A001147(n+1)*A001147(n+1)*A006472(n+1)`
-/

namespace A372184.P3500723441913900253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) * A001147 (n + 1) * A006472 (n + 1)

end

end A372184.P3500723441913900253

/-!
# A372189: Number of terms of A372186 that do not exceed 10^n.

The programs for A372189, there is no canonical definition to state claims against.
-/

/-! ## A372189.P7047554959583934768

`A126257(A001426(n)*A020910(n))`
-/

namespace A372189.P7047554959583934768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A001426 n * A020910 n).toNat

end

end A372189.P7047554959583934768

/-! ## A372189.P17648415389799095052

`A005500(n)-A097847(A147875(n+1))`
-/

namespace A372189.P17648415389799095052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005500 n - A097847 (A147875 (n + 1)).toNat

end

end A372189.P17648415389799095052

/-!
# A372190: Number of terms of A372188 that do not exceed 10^n.

The programs for A372190, there is no canonical definition to state claims against.
-/

/-! ## A372190.P11049096021530868422

`A198832(A121398(n))`
-/

namespace A372190.P11049096021530868422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198832 (A121398 n).toNat

end

end A372190.P11049096021530868422

/-!
# A372191: Number of unlabeled simple graphs covering n vertices with a unique undirected cycle of length > 2.

The programs for A372191, there is no canonical definition to state claims against.
-/

/-! ## A372191.P2021732833350919801

`A051889(A378383(n))`
-/

namespace A372191.P2021732833350919801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A378383 n).toNat

end

end A372191.P2021732833350919801

/-! ## A372191.P8219375199154957120

`A071839(A240651(n+1))`
-/

namespace A372191.P8219375199154957120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071839 (A240651 (n + 1)).toNat

end

end A372191.P8219375199154957120

/-! ## A372191.P11990283127238440754

`A241952(A018156(n))-1`
-/

namespace A372191.P11990283127238440754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241952 (A018156 n).toNat - 1

end

end A372191.P11990283127238440754

/-! ## A372191.P3042899820554782210

`A319503(A219324(n+1)+1)`
-/

namespace A372191.P3042899820554782210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319503 (A219324 (n + 1) + 1).toNat

end

end A372191.P3042899820554782210

/-! ## A372191.P11527228465250929736

`A319503(A352462(n+1)+1)`
-/

namespace A372191.P11527228465250929736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319503 (A352462 (n + 1) + 1).toNat

end

end A372191.P11527228465250929736

/-!
# A372192: a(n) = A010846(n) - A373738(n).

The programs for A372192, there is no canonical definition to state claims against.
-/

/-! ## A372192.P15700297692262725474

`A010846(n+1)-A373738(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372192.P15700297692262725474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A373738 (n + 1)

end

end A372192.P15700297692262725474

/-! ## A372192.P16164289915702241529

`A365788(n+1)-A375011(n+1)`
-/

namespace A372192.P16164289915702241529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A375011 (n + 1)

end

end A372192.P16164289915702241529

/-! ## A372192.P16725271937529707010

`1-A010847(n+1)+n-A373738(n+1)`
-/

namespace A372192.P16725271937529707010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010847 (n + 1) + (n : ℤ) - A373738 (n + 1)

end

end A372192.P16725271937529707010

/-! ## A372192.P16427935494415392267

`A243822(n+1)+∏{e}[n+1, #+1]-A373738(n+1)`
-/

namespace A372192.P16427935494415392267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A373738 (n + 1)

end

end A372192.P16427935494415392267

/-! ## A372192.P1740793305486704362

`A243822(n+1)+Δ[A054519(n)]-A373738(n+1)`
-/

namespace A372192.P1740793305486704362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (f1 (n + 1) - f1 n) - A373738 (n + 1)

end

end A372192.P1740793305486704362

/-! ## A372192.P5852267040727313759

`A010846(n+1)-(A375011(n+1)+A008479(n+1))`
-/

namespace A372192.P5852267040727313759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - (A375011 (n + 1) + A008479 (n + 1))

end

end A372192.P5852267040727313759

/-! ## A372192.P11833709363258768794

`A000005(n+1)+A045763(n+1)-A243823(n+1)-A373738(n+1)`
-/

namespace A372192.P11833709363258768794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A045763 (n + 1) - A243823 (n + 1)) - A373738 (n + 1)

end

end A372192.P11833709363258768794

/-! ## A372192.P6442987382323096870

`A376567(n+1)+A376846(n+1)-A376847(n+1)-A373738(n+1)`
-/

namespace A372192.P6442987382323096870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (n + 1) + (A376846 (n + 1) - A376847 (n + 1)) - A373738 (n + 1)

end

end A372192.P6442987382323096870

/-!
# A372193: Number of labeled simple graphs on n vertices with a unique cycle of length > 2.

The programs for A372193, there is no canonical definition to state claims against.
-/

/-! ## A372193.P5433613079723637296

`A241320(A277258(n+1))`
-/

namespace A372193.P5433613079723637296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241320 (A277258 (n + 1)).toNat

end

end A372193.P5433613079723637296

/-! ## A372193.P4919801320963923597

`A067059(A357661(n))-1`
-/

namespace A372193.P4919801320963923597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A357661 n).toNat - 1

end

end A372193.P4919801320963923597

/-!
# A372194: Number of unlabeled graphs with n vertices and a unique triangle.

The programs for A372194, there is no canonical definition to state claims against.
-/

/-! ## A372194.P17532850742406940472

`∑[A372174(n)]`
-/

namespace A372194.P17532850742406940472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372194.P17532850742406940472

/-! ## A372194.P1848091954257162044

`A372174(n)+a(A088382(n+1)-2)` with `a(0)=0`
-/

namespace A372194.P1848091954257162044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A372174 n + a (A088382 (n + 1) - 2).toNat

end

end A372194.P1848091954257162044

/-! ## A372194.P5526421880363434332

`round(A085632(n+1)/7)`
-/

namespace A372194.P5526421880363434332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085632 (n + 1) : ℚ) / 7)

end

end A372194.P5526421880363434332

/-! ## A372194.P15499244466044787873

`A070107(A149588(n))`
-/

namespace A372194.P15499244466044787873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (A149588 n).toNat

end

end A372194.P15499244466044787873

/-!
# A372195: Number of labeled simple graphs covering n vertices with a unique undirected cycle of length > 2.

The programs for A372195, there is no canonical definition to state claims against.
-/

/-! ## A372195.P3138522600425240923

`A359907(2^n-1)-∑{digits}[9*n, #/9]`
-/

namespace A372195.P3138522600425240923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359907 (2 ^ n - 1) : ℚ) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 9).sum

end

end A372195.P3138522600425240923

/-! ## A372195.P1016043776264363480

`A333601(A062454(n))`
-/

namespace A372195.P1016043776264363480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333601 (A062454 n).toNat

end

end A372195.P1016043776264363480

/-!
# A372196: a(1) = 1. For n > 1, let m be the number of times that the value a(n-1) has appeared (including its appearance at a(n-1)); if m > 1 then a(n) = m, otherwise a(n) = a(a(n-1)).

The programs for A372196, there is no canonical definition to state claims against.
-/

/-! ## A372196.P11544202396697883662

`A346175(n)+1`
-/

namespace A372196.P11544202396697883662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346175 n + 1

end

end A372196.P11544202396697883662

/-! ## A372196.P12431474314208644556

`A000005(2^A346175(n))`
-/

namespace A372196.P12431474314208644556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346175 n : ℤ))).toNat

end

end A372196.P12431474314208644556

/-! ## A372196.P1833076627438054226

`A093653(2^A346175(n))`
-/

namespace A372196.P1833076627438054226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346175 n : ℤ))).toNat

end

end A372196.P1833076627438054226

/-! ## A372196.P13051552526001432050

`A001511(2^A346175(n))`
-/

namespace A372196.P13051552526001432050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346175 n : ℤ))).toNat

end

end A372196.P13051552526001432050

/-! ## A372196.P7356458583103640690

`A010846(2^A346175(n))`
-/

namespace A372196.P7356458583103640690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346175 n : ℤ))).toNat

end

end A372196.P7356458583103640690

/-! ## A372196.P7385770274406879060

`A070939(2^A346175(n))`
-/

namespace A372196.P7385770274406879060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A346175 n : ℤ))).toNat

end

end A372196.P7385770274406879060

/-!
# A372197: Primes that can be represented as k*R(k) + 1, where R(k) is the reverse of k.

The programs for A372197, there is no canonical definition to state claims against.
-/

/-! ## A372197.P9870173601556566453

`filter[A215013(n+1), A176330(#)]`
-/

namespace A372197.P9870173601556566453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176330 ((f1 j).toNat + 127) = 1) n)

end

end A372197.P9870173601556566453

/-! ## A372197.P13358913697871411983

`filter[A318786(n+1), A176330(#)]`
-/

namespace A372197.P13358913697871411983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176330 ((f1 j).toNat + 127) = 1) n)

end

end A372197.P13358913697871411983

/-! ## A372197.P8139877978641968291

`filter[A341661(n+1), A283683(#)]`
-/

namespace A372197.P8139877978641968291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283683 (f1 j).toNat = 1) n)

end

end A372197.P8139877978641968291

/-!
# A372199: a(n) = n! * F(n) * H(n), where F(n) is the n-th Fibonacci number and H(n) the n-th harmonic number.

The programs for A372199, there is no canonical definition to state claims against.
-/

/-! ## A372199.P3909301240150666674

`A000045(n+1)*A000254(n+1)`
-/

namespace A372199.P3909301240150666674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000254 (n + 1)

end

end A372199.P3909301240150666674

/-! ## A372199.P5498014904226650888

`record[A256589(n+1)]*A000045(n+1)`
-/

namespace A372199.P5498014904226650888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000045 (n + 1)

end

end A372199.P5498014904226650888

/-! ## A372199.P5186170596955433297

`A000254(n+1)*A123231(2*n+1)`
-/

namespace A372199.P5186170596955433297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A123231 (2 * n + 1)

end

end A372199.P5186170596955433297

/-! ## A372199.P18265461967255338385

`A000254(n+1)*A213576(A000217(n+1))`
-/

namespace A372199.P18265461967255338385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) * A213576 (A000217 (n + 1)).toNat

end

end A372199.P18265461967255338385

/-! ## A372199.P14376907955685633017

`record[A165674(n+1)]*A000045(n+1)`
-/

namespace A372199.P14376907955685633017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000045 (n + 1)

end

end A372199.P14376907955685633017

