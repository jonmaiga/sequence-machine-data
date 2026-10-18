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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A047700: Numbers that are the sum of 5 positive squares.

The programs for A047700, the canonical program `A047700.P18185700753765629327` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047700 has offset 1).

The definition of A047700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047700.P18185700753765629327

`floor(∑[8/A275580(n+1)+1])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047700

/-- `floor(∑[8/A275580(n+1)+1])` -/
def P18185700753765629327.Spec : Prop :=
  ∀ n, P18185700753765629327.a n = A047700 (n + 1)

theorem P18185700753765629327.correct : P18185700753765629327.Spec := by
  intro n
  simp only [A047700, Nat.add_sub_cancel]

end A047700

/-!
# A047701: All positive numbers that are not the sum of 5 nonzero squares.

The programs for A047701, there is no canonical definition to state claims against.
-/

/-! ## A047701.P857429543074069383

`eq[0, A025429(n)^n]`
-/

namespace A047701.P857429543074069383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047701.P857429543074069383

/-! ## A047701.P1193951222164188429

`lt[A025429(n+1), 1]+1`
-/

namespace A047701.P1193951222164188429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A047701.P1193951222164188429

/-! ## A047701.P16621638589865969039

`A347624(A280593(n+1))`
-/

namespace A047701.P16621638589865969039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A280593 (n + 1)).toNat

end

end A047701.P16621638589865969039

/-! ## A047701.P14911165761814959644

`A347624(A322511(n+1))`
-/

namespace A047701.P14911165761814959644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A322511 (n + 1)).toNat

end

end A047701.P14911165761814959644

/-! ## A047701.P13411453934279853572

`A347624(A280594(n+2))`
-/

namespace A047701.P13411453934279853572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A280594 (n + 2)).toNat

end

end A047701.P13411453934279853572

/-!
# A047702: Numbers that are the sum of 3 but no fewer positive cubes.

The programs for A047702, there is no canonical definition to state claims against.
-/

/-! ## A047702.P11669623033622748620

`∩[A003072(n+1), A022555(n+1)]`
-/

namespace A047702.P11669623033622748620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047702.P11669623033622748620

/-! ## A047702.P16729801759975107246

`∩[A004825(n+1), A022555(n+1)]`
-/

namespace A047702.P16729801759975107246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047702.P16729801759975107246

/-! ## A047702.P11792491886590945546

`eq[3, A002376(n+1)]+1`
-/

namespace A047702.P11792491886590945546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047702.P11792491886590945546

/-! ## A047702.P2313313241724727030

`eq[1, A002376(A028310(n))-2]`
-/

namespace A047702.P2313313241724727030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047702.P2313313241724727030

/-! ## A047702.P1042682791689017029

`lt[(2*A173677(n))², A051343(n)]`
-/

namespace A047702.P1042682791689017029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A173677 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047702.P1042682791689017029

/-! ## A047702.P13763640290343477458

`eq[A000007(A051343(n)), A173677(n)]`
-/

namespace A047702.P13763640290343477458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051343 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047702.P13763640290343477458

/-! ## A047702.P703008888398035443

`eq[A010057(A051343(n)+1), A173677(n)]`
-/

namespace A047702.P703008888398035443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A051343 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047702.P703008888398035443

/-! ## A047702.P8800626954952802283

`eq[A051344(A051343(n)+3), A173677(n)]`
-/

namespace A047702.P8800626954952802283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A051343 n + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047702.P8800626954952802283

/-! ## A047702.P6550014065388878499

`eq[A010057(2*A051343(n)), A173677(n)]`
-/

namespace A047702.P6550014065388878499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (2 * A051343 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047702.P6550014065388878499

/-!
# A047703: Numbers that are the sum of 4 but no fewer positive cubes.

The programs for A047703, there is no canonical definition to state claims against.
-/

/-! ## A047703.P16181028363352812003

`∩[A003327(n+1), A022561(n+1)]`
-/

namespace A047703.P16181028363352812003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047703.P16181028363352812003

/-! ## A047703.P11921386468937061589

`∩[A004826(n+1), A022561(n+1)]`
-/

namespace A047703.P11921386468937061589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047703.P11921386468937061589

/-! ## A047703.P5913675860039668088

`eq[4, A002376(n+1)]+1`
-/

namespace A047703.P5913675860039668088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047703.P5913675860039668088

/-! ## A047703.P5313603547426408566

`eq[4, A002376(A028310(n))]`
-/

namespace A047703.P5313603547426408566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047703.P5313603547426408566

/-! ## A047703.P7485410314861298621

`A020725(eq[4, A002376(n+1)])`
-/

namespace A047703.P7485410314861298621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047703.P7485410314861298621

/-! ## A047703.P13662326144839451060

`lt[A175365(n)²², A175368(n)]`
-/

namespace A047703.P13662326144839451060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175365 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047703.P13662326144839451060

/-! ## A047703.P12354150126268173133

`eq[A010057(A173678(n)+1), A051343(n)]`
-/

namespace A047703.P12354150126268173133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A173678 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047703.P12354150126268173133

/-! ## A047703.P16113856988875072309

`eq[A000122(5*A175368(n)), A175365(n)]`
-/

namespace A047703.P16113856988875072309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (5 * A175368 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047703.P16113856988875072309

/-! ## A047703.P4770481062355196574

`eq[A010057(10*A173678(n)), A051343(n)]`
-/

namespace A047703.P4770481062355196574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (10 * A173678 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047703.P4770481062355196574

/-! ## A047703.P3673953609153038580

`eq[4, A002376(A233583(n+1))]`
-/

namespace A047703.P3673953609153038580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047703.P3673953609153038580

/-! ## A047703.P9518350022786926868

`eq[A004016(17*A175368(n)), A175365(n)]`
-/

namespace A047703.P9518350022786926868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (17 * A175368 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047703.P9518350022786926868

/-!
# A047704: Numbers that are the sum of 5 but no fewer positive cubes.

The programs for A047704, there is no canonical definition to state claims against.
-/

/-! ## A047704.P15318667983517832484

`∩[A003328(n+1), A022566(n+1)]`
-/

namespace A047704.P15318667983517832484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047704.P15318667983517832484

/-! ## A047704.P4612022574572358743

`∩[A004827(n+1), A022566(n+1)]`
-/

namespace A047704.P4612022574572358743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047704.P4612022574572358743

/-! ## A047704.P17360829812845736198

`eq[5, A002376(n+1)]+1`
-/

namespace A047704.P17360829812845736198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047704.P17360829812845736198

/-! ## A047704.P7250655782973241952

`eq[A000007(A173679(n)), A173678(n)]`
-/

namespace A047704.P7250655782973241952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173679 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047704.P7250655782973241952

/-! ## A047704.P18119844132490674951

`eq[A173677(3*A173679(n)), A173678(n)]`
-/

namespace A047704.P18119844132490674951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 (3 * A173679 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047704.P18119844132490674951

/-!
# A047705: First differences of A047699.

The programs for A047705, there is no canonical definition to state claims against.
-/

/-! ## A047705.P14639493628594610188

`Δ[A047699(n)]`
-/

namespace A047705.P14639493628594610188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047705.P14639493628594610188

/-! ## A047705.P10722639742548743361

`A047706(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A047705.P10722639742548743361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047706 (n - 1) + a (n - 1)

end

end A047705.P10722639742548743361

/-! ## A047705.P9300461704839756401

`A047699(n+1)-A047699(n)`
-/

namespace A047705.P9300461704839756401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047699 (n + 1) - A047699 n

end

end A047705.P9300461704839756401

/-! ## A047705.P17423460063177089476

`∑[A047706(n)]+1-A047706(n)`
-/

namespace A047705.P17423460063177089476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A047706 n)

end

end A047705.P17423460063177089476

/-! ## A047705.P12748957274190095747

`∑[A047706(A028310(n))]-A047706(n)`
-/

namespace A047705.P12748957274190095747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047706 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047706 n

end

end A047705.P12748957274190095747

/-!
# A047706: Second differences of A047699.

The programs for A047706, there is no canonical definition to state claims against.
-/

/-! ## A047706.P11136936552025640206

`Δ[Δ[A047699(n)]]`
-/

namespace A047706.P11136936552025640206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047706.P11136936552025640206

/-! ## A047706.P7411792373914649302

`Δ[A047705(n)]`
-/

namespace A047706.P7411792373914649302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047706.P7411792373914649302

/-! ## A047706.P3381804821101504912

`A047705(n+1)-A047705(n)`
-/

namespace A047706.P3381804821101504912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047705 (n + 1) - A047705 n

end

end A047706.P3381804821101504912

/-! ## A047706.P750064171487940441

`record[A047705(A328477(n))]-A047705(n)`
-/

namespace A047706.P750064171487940441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047705 (A328477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047705 n

end

end A047706.P750064171487940441

/-!
# A047707: Number of monotone Boolean functions of n variables with 3 mincuts. Also Sperner systems with 3 blocks.

The programs for A047707, there is no canonical definition to state claims against.
-/

/-! ## A047707.P996210509836098126

`A084870(n)-A092880(n)`
-/

namespace A047707.P996210509836098126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084870 n - A092880 n

end

end A047707.P996210509836098126

/-! ## A047707.P5072048076848565232

`A084870(n)-(4^n-3^n-A003063(n+1))`
-/

namespace A047707.P5072048076848565232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084870 n - ((4 ^ n : ℤ) - (3 ^ n : ℤ) - A003063 (n + 1))

end

end A047707.P5072048076848565232

/-! ## A047707.P15003748898157863861

`A001047(n)+A084870(n)-A083324(n)`
-/

namespace A047707.P15003748898157863861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n + (A084870 n - A083324 n)

end

end A047707.P15003748898157863861

/-! ## A047707.P7694519018285782898

`A084870(n)+A245804(n)-A020522(n)`
-/

namespace A047707.P7694519018285782898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084870 n + (A245804 n - A020522 n)

end

end A047707.P7694519018285782898

/-! ## A047707.P13653039252420847524

`A084870(n)+Δ[A003063(n+1)-A047849(n)]`
-/

namespace A047707.P13653039252420847524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 1) - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084870 n + (f1 (n + 1) - f1 n)

end

end A047707.P13653039252420847524

/-!
# A047708: Diagonal of Sprague-Grundy function for Wyt Queens (Wythoff's game).

The programs for A047708, there is no canonical definition to state claims against.
-/

/-! ## A047708.P4022516364209356177

`A004481(∑[4*n])`
-/

namespace A047708.P4022516364209356177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047708.P4022516364209356177

/-! ## A047708.P15774412821398715049

`or(char[2], A004481(A046092(n)))`
-/

namespace A047708.P15774412821398715049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004481 (A046092 n).toNat)

end

end A047708.P15774412821398715049

/-! ## A047708.P17245136429523093638

`A004481(A046092(n))*A057427(n)`
-/

namespace A047708.P17245136429523093638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A046092 n).toNat * A057427 n

end

end A047708.P17245136429523093638

/-! ## A047708.P4968044212813561811

`A004481(A046092(n))%A001844(n)`
-/

namespace A047708.P4968044212813561811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004481 (A046092 n).toNat) (A001844 n)

end

end A047708.P4968044212813561811

/-! ## A047708.P15223826750375556371

`lcm(A004481(A046092(n)), A033999(n))`
-/

namespace A047708.P15223826750375556371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004481 (A046092 n).toNat) (A033999 n)

end

end A047708.P15223826750375556371

/-! ## A047708.P2756933163387008418

`∑{d}[A004481(A046092(n)), A000010(#)]`
-/

namespace A047708.P2756933163387008418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A047708.P2756933163387008418

/-! ## A047708.P5018493125071407527

`A004481(A046092(n))+A000007(n+1)`
-/

namespace A047708.P5018493125071407527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A046092 n).toNat + A000007 (n + 1)

end

end A047708.P5018493125071407527

/-! ## A047708.P5112066801069185341

`∑{e}[A006530(n+1), #]*A004481(A046092(n))`
-/

namespace A047708.P5112066801069185341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A004481 (A046092 n).toNat

end

end A047708.P5112066801069185341

/-! ## A047708.P12814710589319190300

`A004481(A046092(n))+val(A006530(n+2), 4)²`
-/

namespace A047708.P12814710589319190300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A046092 n).toNat + (SequenceMachineLib.valuation (A006530 (n + 2)).toNat 4 ^ 2 : ℤ)

end

end A047708.P12814710589319190300

/-! ## A047708.P7724913371197816294

`A317205(∑[n]+n)`
-/

namespace A047708.P7724913371197816294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317205 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A047708.P7724913371197816294

/-!
# A047709: Low-temperature series in u = exp(-4J/kT) for ferromagnetic susceptibility for the spin-1/2 Ising model on hexagonal lattice.

The programs for A047709, there is no canonical definition to state claims against.
-/

/-! ## A047709.P1207483387464633367

`A340764(A128751(∑[n]))`
-/

namespace A047709.P1207483387464633367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A128751 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047709.P1207483387464633367

/-! ## A047709.P15781338261315862351

`A334655(A338084(n)+2^floor(log2(n+1))-1)`
-/

namespace A047709.P15781338261315862351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334655 (A338084 n + ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A047709.P15781338261315862351

/-! ## A047709.P8412808018581902242

`A000108(n)-A045778(A124552(n))`
-/

namespace A047709.P8412808018581902242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A045778 (A124552 n).toNat

end

end A047709.P8412808018581902242

/-!
# A047710: Low temperature series associated with square lattice.

The programs for A047710, there is no canonical definition to state claims against.
-/

/-! ## A047710.P17656268111592263784

`4*n*A162203(A004988(n))`
-/

namespace A047710.P17656268111592263784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A162203 (A004988 n).toNat

end

end A047710.P17656268111592263784

/-!
# A047711: High-temperature coefficients for internal energy for spin-1/2 Ising model on b.c.c. lattice.

The programs for A047711, there is no canonical definition to state claims against.
-/

/-! ## A047711.P11446898262095493121

`∑[A002917(n)]/Δ[n²]`
-/

namespace A047711.P11446898262095493121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002917 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A047711.P11446898262095493121

/-! ## A047711.P5704834700293638728

`floor(∑[A002917(n)]/A005408(n))`
-/

namespace A047711.P5704834700293638728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A005408 n : ℚ)⌋

end

end A047711.P5704834700293638728

/-! ## A047711.P5148324819163248656

`∑[A002917(n)]/(2*n+1)*A033999(n)²`
-/

namespace A047711.P5148324819163248656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002917 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 1 : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A047711.P5148324819163248656

/-! ## A047711.P13301111757767282256

`∑[A002917(n)]/(2*n+1)*A033999(2*(n+2))`
-/

namespace A047711.P13301111757767282256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002917 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 1 : ℚ) * (A033999 (2 * (n + 2)) : ℚ)

end

end A047711.P13301111757767282256

/-!
# A047712: High-temperature coefficients for internal energy for spin-1/2 Ising model on f.c.c. lattice.

The programs for A047712, there is no canonical definition to state claims against.
-/

/-! ## A047712.P1211327249734814257

`A298026(A317783(3*n+1)+A007081(n+1))`
-/

namespace A047712.P1211327249734814257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (A317783 (3 * n + 1) + A007081 (n + 1)).toNat

end

end A047712.P1211327249734814257

/-!
# A047713: Euler-Jacobi pseudoprimes: 2^((n-1)/2) == (2 / n) mod n, where (2 / n) is a Jacobi symbol.

The programs for A047713, there is no canonical definition to state claims against.
-/

/-! ## A047713.P55034906271912863

`∪[A001262(n+1), A006971(n+1)]`
-/

namespace A047713.P55034906271912863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047713.P55034906271912863

/-! ## A047713.P13666482413175790936

`∪[A001262(n+1), A270698(n+1)]`
-/

namespace A047713.P13666482413175790936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047713.P13666482413175790936

/-! ## A047713.P16311573563062211317

`∪[A006971(n+1), A288153(n+1)]`
-/

namespace A047713.P16311573563062211317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047713.P16311573563062211317

/-! ## A047713.P17712273162650094978

`∪[A270697(n+1), A270698(n+1)]`
-/

namespace A047713.P17712273162650094978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047713.P17712273162650094978

/-! ## A047713.P12572743498083880829

`∪[A270698(n+1), A288153(n+1)]`
-/

namespace A047713.P12572743498083880829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A047713.P12572743498083880829

/-!
# A047714: 

The programs for A047714, there is no canonical definition to state claims against.
-/

/-! ## A047714.P17999991962265437311

`eq[3, A002377(n+1)]+1`
-/

namespace A047714.P17999991962265437311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047714.P17999991962265437311

/-! ## A047714.P5183010206940929334

`eq[3, A002377(A028310(n))]`
-/

namespace A047714.P5183010206940929334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047714.P5183010206940929334

/-! ## A047714.P16602449457988706724

`A020725(eq[3, A002377(n+1)])`
-/

namespace A047714.P16602449457988706724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047714.P16602449457988706724

/-! ## A047714.P4921308719266826395

`eq[A175372(n), A175372(A175375(n))]`
-/

namespace A047714.P4921308719266826395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047714.P4921308719266826395

/-!
# A047715: Numbers that are the sum of 4 but no fewer nonzero fourth powers.

The programs for A047715, there is no canonical definition to state claims against.
-/

/-! ## A047715.P12439028782193641225

`eq[4, A002377(n+1)]+1`
-/

namespace A047715.P12439028782193641225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047715.P12439028782193641225

/-! ## A047715.P158395881676225938

`eq[4, A002377(A028310(n))]`
-/

namespace A047715.P158395881676225938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047715.P158395881676225938

/-! ## A047715.P8924200577494251447

`A020725(eq[4, A002377(n+1)])`
-/

namespace A047715.P8924200577494251447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047715.P8924200577494251447

/-! ## A047715.P1882298558492801490

`A065475(eq[4, A002377(n+1)])`
-/

namespace A047715.P1882298558492801490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047715.P1882298558492801490

/-!
# A047716: Sums of 5 but no fewer nonzero fourth powers.

The programs for A047716, there is no canonical definition to state claims against.
-/

/-! ## A047716.P11533278652672518253

`eq[5, A002377(n+1)]+1`
-/

namespace A047716.P11533278652672518253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047716.P11533278652672518253

/-! ## A047716.P11053654687540094628

`eq[5, A002377(A028310(n))]`
-/

namespace A047716.P11053654687540094628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047716.P11053654687540094628

/-! ## A047716.P515379497967584563

`A020725(eq[5, A002377(n+1)])`
-/

namespace A047716.P515379497967584563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047716.P515379497967584563

/-! ## A047716.P11431545543167475553

`A065475(eq[5, A002377(n+1)])`
-/

namespace A047716.P11431545543167475553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047716.P11431545543167475553

/-! ## A047716.P4637758802384926259

`A153152(eq[5, A002377(n+1)])`
-/

namespace A047716.P4637758802384926259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047716.P4637758802384926259

/-! ## A047716.P14952521462451561928

`eq[5, A002377(A233583(n+1))]`
-/

namespace A047716.P14952521462451561928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047716.P14952521462451561928

/-!
# A047717: Numbers that are the sum of 6 but no fewer nonzero fourth powers.

The programs for A047717, there is no canonical definition to state claims against.
-/

/-! ## A047717.P4097275785172628016

`eq[6, A002377(n+1)]+1`
-/

namespace A047717.P4097275785172628016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047717.P4097275785172628016

/-! ## A047717.P18198297380780519790

`eq[6, A002377(A028310(n))]`
-/

namespace A047717.P18198297380780519790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047717.P18198297380780519790

/-! ## A047717.P13947059169284327844

`A020725(eq[6, A002377(n+1)])`
-/

namespace A047717.P13947059169284327844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047717.P13947059169284327844

/-! ## A047717.P10606177933597638049

`A065475(eq[6, A002377(n+1)])`
-/

namespace A047717.P10606177933597638049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047717.P10606177933597638049

/-! ## A047717.P15313001769898336284

`A153152(eq[6, A002377(n+1)])`
-/

namespace A047717.P15313001769898336284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047717.P15313001769898336284

/-! ## A047717.P8409942104893308197

`eq[6, A002377(A065033(A004273(n)))]`
-/

namespace A047717.P8409942104893308197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047717.P8409942104893308197

/-! ## A047717.P15814274543009866405

`eq[6, A002377(A065033(A005843(n)))]`
-/

namespace A047717.P15814274543009866405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047717.P15814274543009866405

/-! ## A047717.P16730596098518185879

`eq[6, A002377(A233583(n+1))]`
-/

namespace A047717.P16730596098518185879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047717.P16730596098518185879

/-!
# A047718: Numbers that are the sum of 7 but no fewer nonzero fourth powers.

The programs for A047718, there is no canonical definition to state claims against.
-/

/-! ## A047718.P5478215812346068745

`eq[7, A002377(n+1)]+1`
-/

namespace A047718.P5478215812346068745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047718.P5478215812346068745

/-! ## A047718.P4161286019732597118

`eq[7, A002377(A028310(n))]`
-/

namespace A047718.P4161286019732597118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047718.P4161286019732597118

/-! ## A047718.P1979670365223138592

`A020725(eq[7, A002377(n+1)])`
-/

namespace A047718.P1979670365223138592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047718.P1979670365223138592

/-! ## A047718.P2857113288927061146

`A065475(eq[7, A002377(n+1)])`
-/

namespace A047718.P2857113288927061146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047718.P2857113288927061146

/-! ## A047718.P16923415416038344419

`A153152(eq[7, A002377(n+1)])`
-/

namespace A047718.P16923415416038344419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047718.P16923415416038344419

/-! ## A047718.P4024729577431346580

`eq[7, A002377(A065033(2*n))]`
-/

namespace A047718.P4024729577431346580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047718.P4024729577431346580

/-! ## A047718.P3841913915002080934

`eq[7, A002377(A123108(2*n))]`
-/

namespace A047718.P3841913915002080934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047718.P3841913915002080934

/-! ## A047718.P3317971506399291802

`eq[7, A002377(A233583(n+1))]`
-/

namespace A047718.P3317971506399291802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047718.P3317971506399291802

/-!
# A047719: Numbers that are the sum of 8 but no fewer nonzero fourth powers.

The programs for A047719, there is no canonical definition to state claims against.
-/

/-! ## A047719.P2042728935053440578

`eq[8, A002377(n+1)]+1`
-/

namespace A047719.P2042728935053440578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047719.P2042728935053440578

/-! ## A047719.P706082435597365550

`eq[8, A002377(A028310(n))]`
-/

namespace A047719.P706082435597365550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047719.P706082435597365550

/-! ## A047719.P9024913645164927276

`A020725(eq[8, A002377(n+1)])`
-/

namespace A047719.P9024913645164927276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047719.P9024913645164927276

/-! ## A047719.P9781532679181394222

`eq[8, A002377(A060000(n+1))]`
-/

namespace A047719.P9781532679181394222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047719.P9781532679181394222

/-! ## A047719.P16915059254693436047

`eq[8, A002377(A065033(2*n))]`
-/

namespace A047719.P16915059254693436047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047719.P16915059254693436047

/-! ## A047719.P18228496017982707565

`eq[8, A002377(A123108(2*n))]`
-/

namespace A047719.P18228496017982707565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047719.P18228496017982707565

/-! ## A047719.P11494987700070794008

`eq[8, A002377(A233583(n+1))]`
-/

namespace A047719.P11494987700070794008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047719.P11494987700070794008

/-!
# A047720: Numbers that are the sum of 9 but no fewer nonzero fourth powers.

The programs for A047720, there is no canonical definition to state claims against.
-/

/-! ## A047720.P3064723937203592669

`eq[9, A002377(n+1)]+1`
-/

namespace A047720.P3064723937203592669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047720.P3064723937203592669

/-! ## A047720.P17404460352875469799

`eq[9, A002377(A028310(n))]`
-/

namespace A047720.P17404460352875469799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047720.P17404460352875469799

/-! ## A047720.P10671130015916297435

`A020725(eq[9, A002377(n+1)])`
-/

namespace A047720.P10671130015916297435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047720.P10671130015916297435

/-! ## A047720.P14091893496905096494

`A065475(eq[9, A002377(n+1)])`
-/

namespace A047720.P14091893496905096494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047720.P14091893496905096494

/-! ## A047720.P17910832867613911825

`A153152(eq[9, A002377(n+1)])`
-/

namespace A047720.P17910832867613911825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047720.P17910832867613911825

/-! ## A047720.P2578234351427606296

`eq[9, A002377(A065033(A004273(n)))]`
-/

namespace A047720.P2578234351427606296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047720.P2578234351427606296

/-! ## A047720.P11522757562496848959

`eq[9, A002377(A065033(A005843(n)))]`
-/

namespace A047720.P11522757562496848959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047720.P11522757562496848959

/-! ## A047720.P11477825270417968016

`eq[9, A002377(A233583(n+1))]`
-/

namespace A047720.P11477825270417968016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047720.P11477825270417968016

/-!
# A047721: Sum of 10 but no fewer nonzero fourth powers.

The programs for A047721, there is no canonical definition to state claims against.
-/

/-! ## A047721.P1995965012187349352

`eq[10, A002377(n+1)]+1`
-/

namespace A047721.P1995965012187349352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047721.P1995965012187349352

/-! ## A047721.P15690134743775834947

`eq[10, A002377(A028310(n))]`
-/

namespace A047721.P15690134743775834947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047721.P15690134743775834947

/-! ## A047721.P9743277722522574652

`A020725(eq[10, A002377(n+1)])`
-/

namespace A047721.P9743277722522574652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047721.P9743277722522574652

/-! ## A047721.P12975179498636632568

`eq[10, A002377(A060000(n+1))]`
-/

namespace A047721.P12975179498636632568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047721.P12975179498636632568

/-! ## A047721.P10950422514203801757

`A065475(eq[10, A002377(n+1)])`
-/

namespace A047721.P10950422514203801757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047721.P10950422514203801757

/-! ## A047721.P2409756612109457220

`A153152(eq[10, A002377(n+1)])`
-/

namespace A047721.P2409756612109457220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047721.P2409756612109457220

/-! ## A047721.P161737596573533851

`eq[10, A002377(A138153(n+1))]`
-/

namespace A047721.P161737596573533851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047721.P161737596573533851

/-! ## A047721.P5923630267255161872

`eq[10, A002377(A233583(n+1))]`
-/

namespace A047721.P5923630267255161872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047721.P5923630267255161872

/-!
# A047722: Sum of 11 but no fewer nonzero fourth powers.

The programs for A047722, there is no canonical definition to state claims against.
-/

/-! ## A047722.P17283774255610428594

`eq[11, A002377(A028310(n))]`
-/

namespace A047722.P17283774255610428594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047722.P17283774255610428594

/-! ## A047722.P4209861145270696460

`A020725(eq[11, A002377(n+1)])`
-/

namespace A047722.P4209861145270696460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047722.P4209861145270696460

/-! ## A047722.P11232318640240807170

`eq[11, A002377(A060000(n+1))]`
-/

namespace A047722.P11232318640240807170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047722.P11232318640240807170

/-! ## A047722.P14697027785432437028

`A065475(eq[11, A002377(n+1)])`
-/

namespace A047722.P14697027785432437028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047722.P14697027785432437028

/-! ## A047722.P10682893421635319636

`A153152(eq[11, A002377(n+1)])`
-/

namespace A047722.P10682893421635319636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047722.P10682893421635319636

/-! ## A047722.P4605960530097666480

`eq[11, A002377(A138153(n+1))]`
-/

namespace A047722.P4605960530097666480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047722.P4605960530097666480

/-! ## A047722.P1617898216339381114

`eq[11, A002377(A065033(2*n))]`
-/

namespace A047722.P1617898216339381114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047722.P1617898216339381114

/-! ## A047722.P9466838843490795169

`eq[11, A002377(A233583(n+1))]`
-/

namespace A047722.P9466838843490795169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047722.P9466838843490795169

/-!
# A047723: Sum of 12 but no fewer nonzero fourth powers.

The programs for A047723, there is no canonical definition to state claims against.
-/

/-! ## A047723.P6919070322336471728

`eq[12, A002377(n+1)]+1`
-/

namespace A047723.P6919070322336471728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047723.P6919070322336471728

/-! ## A047723.P612209015854420803

`eq[12, A002377(A028310(n))]`
-/

namespace A047723.P612209015854420803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047723.P612209015854420803

/-! ## A047723.P13321861875207707859

`A020725(eq[12, A002377(n+1)])`
-/

namespace A047723.P13321861875207707859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047723.P13321861875207707859

/-! ## A047723.P2015298150939860577

`A065475(eq[12, A002377(n+1)])`
-/

namespace A047723.P2015298150939860577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047723.P2015298150939860577

/-! ## A047723.P1582799432954333337

`A153152(eq[12, A002377(n+1)])`
-/

namespace A047723.P1582799432954333337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047723.P1582799432954333337

/-! ## A047723.P17465272105867690218

`eq[12, A002377(gcd(n, A022144(n)))]`
-/

namespace A047723.P17465272105867690218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.gcd (n : ℤ) (A022144 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047723.P17465272105867690218

/-! ## A047723.P9837380870489507491

`eq[12, A002377(A138153(n+1))]`
-/

namespace A047723.P9837380870489507491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047723.P9837380870489507491

/-! ## A047723.P18058606158096515460

`eq[12, A002377(A233583(n+1))]`
-/

namespace A047723.P18058606158096515460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047723.P18058606158096515460

/-! ## A047723.P11753034564314102081

`eq[12, A002377(A022144(2*n))]`
-/

namespace A047723.P11753034564314102081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A022144 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047723.P11753034564314102081

/-!
# A047724: Sum of 13 nonzero fourth powers.

The programs for A047724, there is no canonical definition to state claims against.
-/

/-! ## A047724.P7592470700122365503

`A057428(A060546(n))+A047725(n+1)`
-/

namespace A047724.P7592470700122365503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A060546 n).toNat + A047725 (n + 1)

end

end A047724.P7592470700122365503

/-! ## A047724.P16736810654615295162

`A047725(n+1)-A006466(A038013(n))`
-/

namespace A047724.P16736810654615295162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047725 (n + 1) - A006466 (A038013 n).toNat

end

end A047724.P16736810654615295162

/-! ## A047724.P11133350464370946299

`A099837(A216527(n+1))+A047725(n+1)`
-/

namespace A047724.P11133350464370946299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A216527 (n + 1)).toNat + A047725 (n + 1)

end

end A047724.P11133350464370946299

/-! ## A047724.P14845581907802014918

`A047725(n+1)-A038548(A061323(n+1))`
-/

namespace A047724.P14845581907802014918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047725 (n + 1) - A038548 (A061323 (n + 1)).toNat

end

end A047724.P14845581907802014918

/-! ## A047724.P9075807053756775627

`A047725(n+1)-A057427(A074149(n+1))`
-/

namespace A047724.P9075807053756775627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047725 (n + 1) - A057427 (A074149 (n + 1)).toNat

end

end A047724.P9075807053756775627

/-!
# A047725: Sum of 14 nonzero fourth powers.

The programs for A047725, there is no canonical definition to state claims against.
-/

/-! ## A047725.P17957167164124961176

`(A047724(n+1)+1)%A075929(n)`
-/

namespace A047725.P17957167164124961176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047724 (n + 1) + 1) (A075929 n)

end

end A047725.P17957167164124961176

/-! ## A047725.P11777132721777579408

`A047724(n+1)^(A217565(n+1)%2)+1`
-/

namespace A047725.P11777132721777579408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047724 (n + 1) : ℚ) ^ (Int.tmod (A217565 (n + 1)) 2 : ℤ) + 1

end

end A047725.P11777132721777579408

/-! ## A047725.P14339464543119358751

`A047724(n+1)+A006466(A038013(n))`
-/

namespace A047725.P14339464543119358751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047724 (n + 1) + A006466 (A038013 n).toNat

end

end A047725.P14339464543119358751

/-! ## A047725.P5786289876722404841

`A057427(A274112(n))+A047724(n+1)`
-/

namespace A047725.P5786289876722404841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274112 n).toNat + A047724 (n + 1)

end

end A047725.P5786289876722404841

/-! ## A047725.P16291185471167857182

`A047724(n+1)-A057428(A060546(n))`
-/

namespace A047725.P16291185471167857182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047724 (n + 1) - A057428 (A060546 n).toNat

end

end A047725.P16291185471167857182

/-!
# A047726: Number of different numbers that are formed by permuting digits of n.

The programs for A047726, there is no canonical definition to state claims against.
-/

/-! ## A047726.P3902082668356591544

`A276716(n+1)/∑{digits}[n+1, #]`
-/

namespace A047726.P3902082668356591544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A047726.P3902082668356591544

/-! ## A047726.P1286170948762818199

`A276716(n+1)/Δ[A037123(n)]`
-/

namespace A047726.P1286170948762818199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A047726.P1286170948762818199

/-! ## A047726.P992916765444971065

`A086150(n+1)+A039999(n+1)`
-/

namespace A047726.P992916765444971065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086150 (n + 1) + A039999 (n + 1)

end

end A047726.P992916765444971065

/-! ## A047726.P4397797713333426827

`A276716(n+1)/A007953(n+1)`
-/

namespace A047726.P4397797713333426827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A007953 (n + 1) : ℚ)

end

end A047726.P4397797713333426827

/-! ## A047726.P13347235296663801035

`A276716(n+1)/A062329(A057169(n+1))`
-/

namespace A047726.P13347235296663801035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276716 (n + 1) : ℚ) / (A062329 (A057169 (n + 1)).toNat : ℚ)

end

end A047726.P13347235296663801035

/-! ## A047726.P16807224780033443691

`A055098(A213217(n+1))`
-/

namespace A047726.P16807224780033443691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055098 (A213217 (n + 1)).toNat

end

end A047726.P16807224780033443691

/-! ## A047726.P6351603829499673568

`A043537(A196222(n+1)²)`
-/

namespace A047726.P6351603829499673568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A196222 (n + 1) ^ 2).toNat

end

end A047726.P6351603829499673568

/-! ## A047726.P524256038950801956

`A043562(A196222(n+1)²)`
-/

namespace A047726.P524256038950801956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A196222 (n + 1) ^ 2).toNat

end

end A047726.P524256038950801956

/-!
# A047727: Average divisor is an integer (A003601) and the number is refactorable (A033950).

The programs for A047727, the canonical program `A047727.P4578526210664008932` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047727 has offset 1).

The definition of A047727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047727.P4578526210664008932

`∩[A033950(n+1), A301975(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A047727

/-- `∩[A033950(n+1), A301975(n+1)]` -/
def P4578526210664008932.Spec : Prop :=
  ∀ n, (P4578526210664008932.a n : ℤ) = A047727 (n + 1)

theorem P4578526210664008932.correct : P4578526210664008932.Spec := by
  intro n
  simp only [A047727, Nat.add_sub_cancel]

end A047727

/-! ## A047727.P17819427705634262032

`filter[A033950(n+1), A245656(#)]`
-/

namespace A047727.P17819427705634262032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A047727.P17819427705634262032

namespace A047727

/-- `filter[A033950(n+1), A245656(#)]` -/
def P17819427705634262032.Spec : Prop :=
  ∀ n, P17819427705634262032.a n = A047727 (n + 1)

end A047727

/-! ## A047727.P17750123766214535784

`∩[A023883(n+1), A033950(n+1)]`
-/

namespace A047727.P17750123766214535784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P17750123766214535784

namespace A047727

/-- `∩[A023883(n+1), A033950(n+1)]` -/
def P17750123766214535784.Spec : Prop :=
  ∀ n, (P17750123766214535784.a n : ℤ) = A047727 (n + 1)

end A047727

/-! ## A047727.P3972575042749301575

`∩[A003601(n+1), A033950(n+1)]`
-/

namespace A047727.P3972575042749301575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P3972575042749301575

namespace A047727

/-- `∩[A003601(n+1), A033950(n+1)]` -/
def P3972575042749301575.Spec : Prop :=
  ∀ n, (P3972575042749301575.a n : ℤ) = A047727 (n + 1)

end A047727

/-! ## A047727.P5668955018228905936

`filter[A277368(n+1), A245656(#)]`
-/

namespace A047727.P5668955018228905936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A047727.P5668955018228905936

namespace A047727

/-- `filter[A277368(n+1), A245656(#)]` -/
def P5668955018228905936.Spec : Prop :=
  ∀ n, P5668955018228905936.a n = A047727 (n + 1)

end A047727

/-! ## A047727.P18386448441027418484

`filter[A277368(n+1), A336040(#)]`
-/

namespace A047727.P18386448441027418484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A047727.P18386448441027418484

namespace A047727

/-- `filter[A277368(n+1), A336040(#)]` -/
def P18386448441027418484.Spec : Prop :=
  ∀ n, P18386448441027418484.a n = A047727 (n + 1)

end A047727

/-! ## A047727.P7270621780592758061

`∩[A033950(n+1), A277368(n+1)]`
-/

namespace A047727.P7270621780592758061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P7270621780592758061

namespace A047727

/-- `∩[A033950(n+1), A277368(n+1)]` -/
def P7270621780592758061.Spec : Prop :=
  ∀ n, (P7270621780592758061.a n : ℤ) = A047727 (n + 1)

end A047727

/-! ## A047727.P1512401094194005520

`∩[A277368(n+1), A301975(n+1)]`
-/

namespace A047727.P1512401094194005520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047727.P1512401094194005520

namespace A047727

/-- `∩[A277368(n+1), A301975(n+1)]` -/
def P1512401094194005520.Spec : Prop :=
  ∀ n, (P1512401094194005520.a n : ℤ) = A047727 (n + 1)

end A047727

/-!
# A047728: Intersection of A046985 and A033950: multiply perfect, refactorable numbers with integer average divisor dividing the number.

The programs for A047728, there is no canonical definition to state claims against.
-/

/-! ## A047728.P16021863472508603905

`∩[A007691(n+1), A331666(n+1)]`
-/

namespace A047728.P16021863472508603905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047728.P16021863472508603905

/-! ## A047728.P2362502605746390503

`A245782(A190856(n+1)%A056720(2*n+5))`
-/

namespace A047728.P2362502605746390503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245782 (Int.tmod (A190856 (n + 1)) (A056720 (2 * n + 5))).toNat

end

end A047728.P2362502605746390503

/-!
# A047729: Number of score sequences in tournament with n players, when 3 points are awarded in each game.

The programs for A047729, there is no canonical definition to state claims against.
-/

/-! ## A047729.P517732458686129455

`A284318(∑[A192908(n)²])`
-/

namespace A047729.P517732458686129455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047729.P517732458686129455

/-! ## A047729.P14792416509010286221

`∑[A127757(A115325(2*n))]`
-/

namespace A047729.P14792416509010286221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A115325 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047729.P14792416509010286221

/-!
# A047730: Number of score sequences in tournament with n players, when 4 points are awarded in each game.

The programs for A047730, there is no canonical definition to state claims against.
-/

/-! ## A047730.P13932367699622748738

`A256698(A001515(n))`
-/

namespace A047730.P13932367699622748738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256698 (A001515 n).toNat

end

end A047730.P13932367699622748738

/-!
# A047731: Number of score sequences in tournament with n players, when 5 points are awarded in each game.

The programs for A047731, there is no canonical definition to state claims against.
-/

/-! ## A047731.P11152602422293929655

`A130954(A112333(∑[n]))`
-/

namespace A047731.P11152602422293929655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130954 (A112333 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047731.P11152602422293929655

/-!
# A047732: First differences are A005563.

The programs for A047732, the canonical program `A047732.P11496206871586496479` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047732 has offset 0).

The definition of A047732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047732.P14647728066616917091

`(2*n^3+9*n²+7*n+6)/6`
-/

namespace A047732.P14647728066616917091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 9 * n ^ 2 + 7 * n + 6 : ℚ) / 6

end

end A047732.P14647728066616917091

namespace A047732

/-- `(2*n^3+9*n²+7*n+6)/6` -/
def P14647728066616917091.Spec : Prop :=
  ∀ n, P14647728066616917091.a n = (A047732 n : ℚ)

theorem P14647728066616917091.correct : P14647728066616917091.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A047732, Nat.add_sub_cancel, A047732.P14647728066616917091.a, A047732.P11496206871586496479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A047732, Nat.add_sub_cancel, A047732.P14647728066616917091.a, A047732.P11496206871586496479.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A047732

/-! ## A047732.P11496206871586496479

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=27`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047732

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11496206871586496479.Spec : Prop :=
  ∀ n, P11496206871586496479.a n = A047732 n

theorem P11496206871586496479.correct : P11496206871586496479.Spec := by
  intro n
  simp only [A047732]

end A047732

/-! ## A047732.P17122103259486477568

`A000330(n+1)-n`
-/

namespace A047732.P17122103259486477568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - (n : ℤ)

end

end A047732.P17122103259486477568

namespace A047732

/-- `A000330(n+1)-n` -/
def P17122103259486477568.Spec : Prop :=
  ∀ n, P17122103259486477568.a n = A047732 n

end A047732

/-! ## A047732.P5001790568964304308

`A051925(n+1)+1`
-/

namespace A047732.P5001790568964304308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (n + 1) + 1

end

end A047732.P5001790568964304308

namespace A047732

/-- `A051925(n+1)+1` -/
def P5001790568964304308.Spec : Prop :=
  ∀ n, P5001790568964304308.a n = A047732 n

end A047732

/-! ## A047732.P3881604406213074307

`∑[record[abs(1-n²)]]`
-/

namespace A047732.P3881604406213074307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P3881604406213074307

namespace A047732

/-- `∑[record[abs(1-n²)]]` -/
def P3881604406213074307.Spec : Prop :=
  ∀ n, P3881604406213074307.a n = A047732 n

end A047732

/-! ## A047732.P4969788143869598562

`∑[xor(n, -1)²]-n`
-/

namespace A047732.P4969788143869598562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A047732.P4969788143869598562

namespace A047732

/-- `∑[xor(n, -1)²]-n` -/
def P4969788143869598562.Spec : Prop :=
  ∀ n, P4969788143869598562.a n = A047732 n

end A047732

/-! ## A047732.P16189345541890168346

`∑[sqrt(record[(1-n²)²])]`
-/

namespace A047732.P16189345541890168346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P16189345541890168346

namespace A047732

/-- `∑[sqrt(record[(1-n²)²])]` -/
def P16189345541890168346.Spec : Prop :=
  ∀ n, P16189345541890168346.a n = (A047732 n : ℝ)

end A047732

/-! ## A047732.P17239217240458035826

`∑[floor((n+2)/acot(n))]`
-/

namespace A047732.P17239217240458035826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P17239217240458035826

namespace A047732

/-- `∑[floor((n+2)/acot(n))]` -/
def P17239217240458035826.Spec : Prop :=
  ∀ n, P17239217240458035826.a n = A047732 n

end A047732

/-! ## A047732.P16308178991408653181

`∑[∑[xor(2*n+1, char[1])]]`
-/

namespace A047732.P16308178991408653181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P16308178991408653181

namespace A047732

/-- `∑[∑[xor(2*n+1, char[1])]]` -/
def P16308178991408653181.Spec : Prop :=
  ∀ n, (P16308178991408653181.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P7829160821474685486

`-xor(-1, ∑[n*(n+2)])`
-/

namespace A047732.P7829160821474685486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A047732.P7829160821474685486

namespace A047732

/-- `-xor(-1, ∑[n*(n+2)])` -/
def P7829160821474685486.Spec : Prop :=
  ∀ n, P7829160821474685486.a n = A047732 n

end A047732

/-! ## A047732.P11765010823302483211

`∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A047732.P11765010823302483211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P11765010823302483211

namespace A047732

/-- `∑[∑[a(n-1)+2]]` -/
def P11765010823302483211.Spec : Prop :=
  ∀ n, (P11765010823302483211.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P13284152486983737591

`a(n-1)+(n+2)*n` with `a(0)=1`
-/

namespace A047732.P13284152486983737591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 2) * n

end

end A047732.P13284152486983737591

namespace A047732

/-- `a(n-1)+(n+2)*n` -/
def P13284152486983737591.Spec : Prop :=
  ∀ n, (P13284152486983737591.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P15191695907152214591

`∑[∑[ogf((1+2x^2-x^3)/(1-2x+x^2))]]`
-/

namespace A047732.P15191695907152214591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, -1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P15191695907152214591

namespace A047732

/-- `∑[∑[ogf((1+2x^2-x^3)/(1-2x+x^2))]]` -/
def P15191695907152214591.Spec : Prop :=
  ∀ n, P15191695907152214591.a n = A047732 n

end A047732

/-! ## A047732.P6395210845125108248

`(n+1)²+a(n-1)-1` with `a(0)=1`
-/

namespace A047732.P6395210845125108248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 1) - 1)

end

end A047732.P6395210845125108248

namespace A047732

/-- `(n+1)²+a(n-1)-1` -/
def P6395210845125108248.Spec : Prop :=
  ∀ n, P6395210845125108248.a n = A047732 n

end A047732

/-! ## A047732.P8723286288941990281

`∑[C(2, n+2)+n*(n+2)]`
-/

namespace A047732.P8723286288941990281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P8723286288941990281

namespace A047732

/-- `∑[C(2, n+2)+n*(n+2)]` -/
def P8723286288941990281.Spec : Prop :=
  ∀ n, (P8723286288941990281.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P697648010521042245

`∑[n^(2%(n+1))+2*n]`
-/

namespace A047732.P697648010521042245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1)) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P697648010521042245

namespace A047732

/-- `∑[n^(2%(n+1))+2*n]` -/
def P697648010521042245.Spec : Prop :=
  ∀ n, (P697648010521042245.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P1947640594897331194

`∑[round(((n+1)²*acot(n+1))²)]`
-/

namespace A047732.P1947640594897331194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P1947640594897331194

namespace A047732

/-- `∑[round(((n+1)²*acot(n+1))²)]` -/
def P1947640594897331194.Spec : Prop :=
  ∀ n, P1947640594897331194.a n = A047732 n

end A047732

/-! ## A047732.P14199215001210690745

`∑[∑[4*n-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A047732.P14199215001210690745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f2 =>
  (4 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P14199215001210690745

namespace A047732

/-- `∑[∑[4*n-a(n-1)]]` -/
def P14199215001210690745.Spec : Prop :=
  ∀ n, P14199215001210690745.a n = A047732 n

end A047732

/-! ## A047732.P4704490980055728531

`a(n-1)+lcm(n, n+1)+n` with `a(0)=1`
-/

namespace A047732.P4704490980055728531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lcm n (n + 1) + n

end

end A047732.P4704490980055728531

namespace A047732

/-- `a(n-1)+lcm(n, n+1)+n` -/
def P4704490980055728531.Spec : Prop :=
  ∀ n, (P4704490980055728531.a n : ℤ) = A047732 n

end A047732

/-! ## A047732.P9151983358300460089

`∑[gcd(n*(n+2), floor(1/(n+1)))]`
-/

namespace A047732.P9151983358300460089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * (n + 2) : ℤ) ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047732.P9151983358300460089

namespace A047732

/-- `∑[gcd(n*(n+2), floor(1/(n+1)))]` -/
def P9151983358300460089.Spec : Prop :=
  ∀ n, (P9151983358300460089.a n : ℤ) = A047732 n

end A047732

/-!
# A047733: Number of score sequences in tournament with n players, when 6 points are awarded in each game.

The programs for A047733, there is no canonical definition to state claims against.
-/

/-! ## A047733.P10120848749840083575

`∑[∑[A100959(A349311(n))]]`
-/

namespace A047733.P10120848749840083575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A349311 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047733.P10120848749840083575

/-!
# A047734: Number of score sequences in tournament with n players, when 7 points are awarded in each game.

The programs for A047734, there is no canonical definition to state claims against.
-/

/-! ## A047734.P14358739743544309529

`A057365(A192401(2*n+1)+A002326(n))`
-/

namespace A047734.P14358739743544309529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A192401 (2 * n + 1) + A002326 n).toNat

end

end A047734.P14358739743544309529

/-!
# A047735: Number of score sequences in tournament with n players, when 8 points are awarded in each game.

The programs for A047735, there is no canonical definition to state claims against.
-/

/-! ## A047735.P10724294763798491947

`A182318(A262718(n+1)+A117262(n))`
-/

namespace A047735.P10724294763798491947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (A262718 (n + 1) + A117262 n).toNat

end

end A047735.P10724294763798491947

/-!
# A047739: Economical palindromes.

The programs for A047739, there is no canonical definition to state claims against.
-/

/-! ## A047739.P16379836973896270268

`∩[A029950(n+1), A046759(n+1)]`
-/

namespace A047739.P16379836973896270268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047739.P16379836973896270268

/-!
# A047740: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_e (k) ).

The programs for A047740, the canonical program `A047740.P17773259167292935010` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047740 has offset 2).

The definition of A047740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047740.P17773259167292935010

`floor(∑[1/log(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047740

/-- `floor(∑[1/log(n+2)])` -/
def P17773259167292935010.Spec : Prop :=
  ∀ n, P17773259167292935010.a n = A047740 (n + 2)

theorem P17773259167292935010.correct : P17773259167292935010.Spec := by
  intro n
  simp only [A047740, Nat.add_sub_cancel]

end A047740

/-! ## A047740.P15366561475823219143

`ceil(∑[1/log(n+2)]-gcd(n, n+1))`
-/

namespace A047740.P15366561475823219143
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A047740.P15366561475823219143

namespace A047740

/-- `ceil(∑[1/log(n+2)]-gcd(n, n+1))` -/
def P15366561475823219143.Spec : Prop :=
  ∀ n, P15366561475823219143.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P11217579786890664244

`A047742(n+2)-1`
-/

namespace A047740.P11217579786890664244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047742 (n + 2) - 1

end

end A047740.P11217579786890664244

namespace A047740

/-- `A047742(n+2)-1` -/
def P11217579786890664244.Spec : Prop :=
  ∀ n, P11217579786890664244.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P4785957608113797995

`A023443(A047742(n+2))`
-/

namespace A047740.P4785957608113797995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047742 (n + 2)).toNat

end

end A047740.P4785957608113797995

namespace A047740

/-- `A023443(A047742(n+2))` -/
def P4785957608113797995.Spec : Prop :=
  ∀ n, P4785957608113797995.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P9685590511938097403

`A059169(4*A047742(n+2))`
-/

namespace A047740.P9685590511938097403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A047742 (n + 2)).toNat

end

end A047740.P9685590511938097403

namespace A047740

/-- `A059169(4*A047742(n+2))` -/
def P9685590511938097403.Spec : Prop :=
  ∀ n, P9685590511938097403.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P2681882397120739510

`A001478(n+1)+A047742(n+2)+n`
-/

namespace A047740.P2681882397120739510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A047742 (n + 2) + (n : ℤ))

end

end A047740.P2681882397120739510

namespace A047740

/-- `A001478(n+1)+A047742(n+2)+n` -/
def P2681882397120739510.Spec : Prop :=
  ∀ n, P2681882397120739510.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P10935042924242568635

`A163805(A016813(n))+A047742(n+2)`
-/

namespace A047740.P10935042924242568635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A016813 n).toNat + A047742 (n + 2)

end

end A047740.P10935042924242568635

namespace A047740

/-- `A163805(A016813(n))+A047742(n+2)` -/
def P10935042924242568635.Spec : Prop :=
  ∀ n, P10935042924242568635.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P18084117644657944819

`A047743(n+2)+A047742(n+2)%A047745(n+2)`
-/

namespace A047740.P18084117644657944819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + Int.tmod (A047742 (n + 2)) (A047745 (n + 2))

end

end A047740.P18084117644657944819

namespace A047740

/-- `A047743(n+2)+A047742(n+2)%A047745(n+2)` -/
def P18084117644657944819.Spec : Prop :=
  ∀ n, P18084117644657944819.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P1504537581515199239

`A080323(A296937(n+1))+A047742(n+2)`
-/

namespace A047740.P1504537581515199239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A296937 (n + 1)).toNat + A047742 (n + 2)

end

end A047740.P1504537581515199239

namespace A047740

/-- `A080323(A296937(n+1))+A047742(n+2)` -/
def P1504537581515199239.Spec : Prop :=
  ∀ n, P1504537581515199239.a n = A047740 (n + 2)

end A047740

/-! ## A047740.P10713184789770307192

`A080323(A167844(n+1))+A047742(n+2)`
-/

namespace A047740.P10713184789770307192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A167844 (n + 1)).toNat + A047742 (n + 2)

end

end A047740.P10713184789770307192

namespace A047740

/-- `A080323(A167844(n+1))+A047742(n+2)` -/
def P10713184789770307192.Spec : Prop :=
  ∀ n, P10713184789770307192.a n = A047740 (n + 2)

end A047740

/-!
# A047741: A discrete analog of Li(n): a(n) = round(Sum_{k=2..n} 1/log(k)).

The programs for A047741, the canonical program `A047741.P945592386863934921` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047741 has offset 2).

The definition of A047741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047741.P945592386863934921

`round(∑[1/log(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047741

/-- `round(∑[1/log(n+2)])` -/
def P945592386863934921.Spec : Prop :=
  ∀ n, P945592386863934921.a n = A047741 (n + 2)

theorem P945592386863934921.correct : P945592386863934921.Spec := by
  intro n
  simp only [A047741, Nat.add_sub_cancel]

end A047741

/-! ## A047741.P11117925076491245734

`A048766(A022342(∑[A004431(n+1)]))`
-/

namespace A047741.P11117925076491245734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A022342 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047741.P11117925076491245734

namespace A047741

/-- `A048766(A022342(∑[A004431(n+1)]))` -/
def P11117925076491245734.Spec : Prop :=
  ∀ n, P11117925076491245734.a n = A047741 (n + 2)

end A047741

/-! ## A047741.P8659805974808285415

`A048766(A001962(A034856(n+1)+A000120(n)))`
-/

namespace A047741.P8659805974808285415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A001962 (A034856 (n + 1) + A000120 n).toNat).toNat

end

end A047741.P8659805974808285415

namespace A047741

/-- `A048766(A001962(A034856(n+1)+A000120(n)))` -/
def P8659805974808285415.Spec : Prop :=
  ∀ n, P8659805974808285415.a n = A047741 (n + 2)

end A047741

/-! ## A047741.P14076062535959645734

`A048766(A001962(A048766(n)+A034856(n+1)))`
-/

namespace A047741.P14076062535959645734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A001962 (A048766 n + A034856 (n + 1)).toNat).toNat

end

end A047741.P14076062535959645734

namespace A047741

/-- `A048766(A001962(A048766(n)+A034856(n+1)))` -/
def P14076062535959645734.Spec : Prop :=
  ∀ n, P14076062535959645734.a n = A047741 (n + 2)

end A047741

/-! ## A047741.P3705600124355299420

`A048766(∑[A043513(n+1)-5])`
-/

namespace A047741.P3705600124355299420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043513 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047741.P3705600124355299420

namespace A047741

/-- `A048766(∑[A043513(n+1)-5])` -/
def P3705600124355299420.Spec : Prop :=
  ∀ n, P3705600124355299420.a n = A047741 (n + 2)

end A047741

/-!
# A047742: A discrete analog of Li(n): a(n) = ceiling(Sum_{k=2..n} 1/log(k)).

The programs for A047742, the canonical program `A047742.P2652561409493939309` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047742 has offset 2).

The definition of A047742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047742.P6027353200242942589

`ceil(∑[1/log(n+2)])`
-/

namespace A047742.P6027353200242942589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047742.P6027353200242942589

namespace A047742

/-- `ceil(∑[1/log(n+2)])` -/
def P6027353200242942589.Spec : Prop :=
  ∀ n, P6027353200242942589.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P16005838080041582862

`floor(∑[1/log(n+2)]+gcd(n, n+1))`
-/

namespace A047742.P16005838080041582862
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℝ)⌋

end

end A047742.P16005838080041582862

namespace A047742

/-- `floor(∑[1/log(n+2)]+gcd(n, n+1))` -/
def P16005838080041582862.Spec : Prop :=
  ∀ n, P16005838080041582862.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P2652561409493939309

`A047740(n+2)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047742

/-- `A047740(n+2)+1` -/
def P2652561409493939309.Spec : Prop :=
  ∀ n, P2652561409493939309.a n = A047742 (n + 2)

theorem P2652561409493939309.correct : P2652561409493939309.Spec := by
  intro n
  simp only [A047742, Nat.add_sub_cancel]

end A047742

/-! ## A047742.P15147288830050387824

`A000027(floor(∑[1/log(n+2)])+1)`
-/

namespace A047742.P15147288830050387824
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A047742.P15147288830050387824

namespace A047742

/-- `A000027(floor(∑[1/log(n+2)])+1)` -/
def P15147288830050387824.Spec : Prop :=
  ∀ n, P15147288830050387824.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P14320478088948906639

`floor(∑[1/log(n+2)]+A046978(n)²!)`
-/

namespace A047742.P14320478088948906639
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.log (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (A046978 n ^ 2).toNat : ℝ)⌋

end

end A047742.P14320478088948906639

namespace A047742

/-- `floor(∑[1/log(n+2)]+A046978(n)²!)` -/
def P14320478088948906639.Spec : Prop :=
  ∀ n, P14320478088948906639.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P6556059375971347994

`A020725(A047740(n+2))`
-/

namespace A047742.P6556059375971347994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A047740 (n + 2)).toNat

end

end A047742.P6556059375971347994

namespace A047742

/-- `A020725(A047740(n+2))` -/
def P6556059375971347994.Spec : Prop :=
  ∀ n, P6556059375971347994.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P11562927635736163626

`A331195(3*A055999(n+2))`
-/

namespace A047742.P11562927635736163626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331195 (3 * A055999 (n + 2)).toNat

end

end A047742.P11562927635736163626

namespace A047742

/-- `A331195(3*A055999(n+2))` -/
def P11562927635736163626.Spec : Prop :=
  ∀ n, P11562927635736163626.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P11744672934297647752

`A048766(A313803(∑[n+3]))`
-/

namespace A047742.P11744672934297647752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A313803 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047742.P11744672934297647752

namespace A047742

/-- `A048766(A313803(∑[n+3]))` -/
def P11744672934297647752.Spec : Prop :=
  ∀ n, P11744672934297647752.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P9530420965687364887

`A048766(A314151(∑[n+3]))`
-/

namespace A047742.P9530420965687364887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A314151 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047742.P9530420965687364887

namespace A047742

/-- `A048766(A314151(∑[n+3]))` -/
def P9530420965687364887.Spec : Prop :=
  ∀ n, P9530420965687364887.a n = A047742 (n + 2)

end A047742

/-! ## A047742.P4245039686724937132

`A048766(∑[A315331(n+3)])`
-/

namespace A047742.P4245039686724937132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047742.P4245039686724937132

namespace A047742

/-- `A048766(∑[A315331(n+3)])` -/
def P4245039686724937132.Spec : Prop :=
  ∀ n, P4245039686724937132.a n = A047742 (n + 2)

end A047742

/-!
# A047743: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_2 (k) ).

The programs for A047743, the canonical program `A047743.P3026413750480478684` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047743 has offset 2).

The definition of A047743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047743.P3026413750480478684

`floor(∑[1/log2(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047743

/-- `floor(∑[1/log2(n+2)])` -/
def P3026413750480478684.Spec : Prop :=
  ∀ n, P3026413750480478684.a n = A047743 (n + 2)

theorem P3026413750480478684.correct : P3026413750480478684.Spec := by
  intro n
  simp only [A047743, Nat.add_sub_cancel]

end A047743

/-! ## A047743.P9330850350759643175

`A057428(n)+A047745(n+2)`
-/

namespace A047743.P9330850350759643175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A047745 (n + 2)

end

end A047743.P9330850350759643175

namespace A047743

/-- `A057428(n)+A047745(n+2)` -/
def P9330850350759643175.Spec : Prop :=
  ∀ n, P9330850350759643175.a n = A047743 (n + 2)

end A047743

/-! ## A047743.P17573520546648294525

`A047745(n+2)-A057427(n)`
-/

namespace A047743.P17573520546648294525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047745 (n + 2) - A057427 n

end

end A047743.P17573520546648294525

namespace A047743

/-- `A047745(n+2)-A057427(n)` -/
def P17573520546648294525.Spec : Prop :=
  ∀ n, P17573520546648294525.a n = A047743 (n + 2)

end A047743

/-! ## A047743.P17985866060493966410

`A047745(n+2)-char[A054429(n+1)]`
-/

namespace A047743.P17985866060493966410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047745 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047743.P17985866060493966410

namespace A047743

/-- `A047745(n+2)-char[A054429(n+1)]` -/
def P17985866060493966410.Spec : Prop :=
  ∀ n, P17985866060493966410.a n = A047743 (n + 2)

end A047743

/-! ## A047743.P13448538316432698423

`A047745(n+2)-A001221(A001316(n))`
-/

namespace A047743.P13448538316432698423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047745 (n + 2) - A001221 (A001316 n).toNat

end

end A047743.P13448538316432698423

namespace A047743

/-- `A047745(n+2)-A001221(A001316(n))` -/
def P13448538316432698423.Spec : Prop :=
  ∀ n, P13448538316432698423.a n = A047743 (n + 2)

end A047743

/-! ## A047743.P16685705138716070489

`ceil(∑[1/log2(n+2)]-A052409(n²+1))`
-/

namespace A047743.P16685705138716070489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - (A052409 (n ^ 2 + 1) : ℝ)⌉

end

end A047743.P16685705138716070489

namespace A047743

/-- `ceil(∑[1/log2(n+2)]-A052409(n²+1))` -/
def P16685705138716070489.Spec : Prop :=
  ∀ n, P16685705138716070489.a n = A047743 (n + 2)

end A047743

/-!
# A047744: A discrete analog of Li(n): round ( Sum_{k=2..n} 1/log_2 (k) ).

The programs for A047744, the canonical program `A047744.P12755964723356844168` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047744 has offset 2).

The definition of A047744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047744.P12755964723356844168

`round(∑[1/log2(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047744

/-- `round(∑[1/log2(n+2)])` -/
def P12755964723356844168.Spec : Prop :=
  ∀ n, P12755964723356844168.a n = A047744 (n + 2)

theorem P12755964723356844168.correct : P12755964723356844168.Spec := by
  intro n
  simp only [A047744, Nat.add_sub_cancel]

end A047744

/-! ## A047744.P1069915671968706924

`floor((∑[A020639(2*(n+1))/log2(n+2)]+1)/2)`
-/

namespace A047744.P1069915671968706924
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) : ℝ) / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j + 1) / 2⌋

end

end A047744.P1069915671968706924

namespace A047744

/-- `floor((∑[A020639(2*(n+1))/log2(n+2)]+1)/2)` -/
def P1069915671968706924.Spec : Prop :=
  ∀ n, P1069915671968706924.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P9825144822291203057

`A316843(A331256(n+1)+A005044(2*n+1))`
-/

namespace A047744.P9825144822291203057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A331256 (n + 1) + A005044 (2 * n + 1)).toNat

end

end A047744.P9825144822291203057

namespace A047744

/-- `A316843(A331256(n+1)+A005044(2*n+1))` -/
def P9825144822291203057.Spec : Prop :=
  ∀ n, P9825144822291203057.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P6166184512461740061

`A048766(∑[A345918(n+4)])`
-/

namespace A047744.P6166184512461740061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047744.P6166184512461740061

namespace A047744

/-- `A048766(∑[A345918(n+4)])` -/
def P6166184512461740061.Spec : Prop :=
  ∀ n, P6166184512461740061.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P11461026035780444988

`A056556(A330118(n+1)+A008752(n))`
-/

namespace A047744.P11461026035780444988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A330118 (n + 1) + A008752 n).toNat

end

end A047744.P11461026035780444988

namespace A047744

/-- `A056556(A330118(n+1)+A008752(n))` -/
def P11461026035780444988.Spec : Prop :=
  ∀ n, P11461026035780444988.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P2751386278995899246

`A048766(A028811(n+1)+∑[A028811(n+1)])`
-/

namespace A047744.P2751386278995899246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A028811 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047744.P2751386278995899246

namespace A047744

/-- `A048766(A028811(n+1)+∑[A028811(n+1)])` -/
def P2751386278995899246.Spec : Prop :=
  ∀ n, P2751386278995899246.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P8316452414155315175

`A048766(∑[A028811(n+2)]+2)`
-/

namespace A047744.P8316452414155315175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028811 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A047744.P8316452414155315175

namespace A047744

/-- `A048766(∑[A028811(n+2)]+2)` -/
def P8316452414155315175.Spec : Prop :=
  ∀ n, P8316452414155315175.a n = A047744 (n + 2)

end A047744

/-! ## A047744.P8746885084099531272

`∑[A265691(n+1)^A024019(n)]`
-/

namespace A047744.P8746885084099531272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265691 (n + 1) : ℚ) ^ (A024019 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047744.P8746885084099531272

namespace A047744

/-- `∑[A265691(n+1)^A024019(n)]` -/
def P8746885084099531272.Spec : Prop :=
  ∀ n, P8746885084099531272.a n = (A047744 (n + 2) : ℚ)

end A047744

/-!
# A047745: A discrete analog of Li(n): ceiling ( Sum_{k=2..n} 1/log_2 (k) ).

The programs for A047745, the canonical program `A047745.P5235938481276681511` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047745 has offset 2).

The definition of A047745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047745.P2803777793336328038

`ceil(∑[1/log2(n+2)])`
-/

namespace A047745.P2803777793336328038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047745.P2803777793336328038

namespace A047745

/-- `ceil(∑[1/log2(n+2)])` -/
def P2803777793336328038.Spec : Prop :=
  ∀ n, P2803777793336328038.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P5235938481276681511

`A047743(n+2)%(n+1)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047745

/-- `A047743(n+2)%(n+1)+1` -/
def P5235938481276681511.Spec : Prop :=
  ∀ n, P5235938481276681511.a n = A047745 (n + 2)

theorem P5235938481276681511.correct : P5235938481276681511.Spec := by
  intro n
  simp only [A047745, Nat.add_sub_cancel]

end A047745

/-! ## A047745.P10092198673548348391

`A057427(n)+A047743(n+2)`
-/

namespace A047745.P10092198673548348391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A047743 (n + 2)

end

end A047745.P10092198673548348391

namespace A047745

/-- `A057427(n)+A047743(n+2)` -/
def P10092198673548348391.Spec : Prop :=
  ∀ n, P10092198673548348391.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P15087510093344400209

`A047743(n+2)-A057428(n)`
-/

namespace A047745.P15087510093344400209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) - A057428 n

end

end A047745.P15087510093344400209

namespace A047745

/-- `A047743(n+2)-A057428(n)` -/
def P15087510093344400209.Spec : Prop :=
  ∀ n, P15087510093344400209.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P9640784767269627847

`A047743(n+2)+1-A000007(n)`
-/

namespace A047745.P9640784767269627847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + (1 - A000007 n)

end

end A047745.P9640784767269627847

namespace A047745

/-- `A047743(n+2)+1-A000007(n)` -/
def P9640784767269627847.Spec : Prop :=
  ∀ n, P9640784767269627847.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P13989402289262258450

`A047743(n+2)+char[A003188(n+1)]`
-/

namespace A047745.P13989402289262258450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047745.P13989402289262258450

namespace A047745

/-- `A047743(n+2)+char[A003188(n+1)]` -/
def P13989402289262258450.Spec : Prop :=
  ∀ n, P13989402289262258450.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P17431558192553928287

`A047743(n+2)+A000045(round(n/(n+1)))`
-/

namespace A047745.P17431558192553928287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A047745.P17431558192553928287

namespace A047745

/-- `A047743(n+2)+A000045(round(n/(n+1)))` -/
def P17431558192553928287.Spec : Prop :=
  ∀ n, P17431558192553928287.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P3533831482342108862

`A047743(n+2)+A001221(A001316(n))`
-/

namespace A047745.P3533831482342108862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + A001221 (A001316 n).toNat

end

end A047745.P3533831482342108862

namespace A047745

/-- `A047743(n+2)+A001221(A001316(n))` -/
def P3533831482342108862.Spec : Prop :=
  ∀ n, P3533831482342108862.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P12094941167270572087

`A047743(n+2)+A000007(A000007(n)*A047743(n+2))`
-/

namespace A047745.P12094941167270572087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + A000007 (A000007 n * A047743 (n + 2)).toNat

end

end A047745.P12094941167270572087

namespace A047745

/-- `A047743(n+2)+A000007(A000007(n)*A047743(n+2))` -/
def P12094941167270572087.Spec : Prop :=
  ∀ n, P12094941167270572087.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P10097454025324947731

`A047743(n+2)+A000007(A000007(n)/A047743(n+2))`
-/

namespace A047745.P10097454025324947731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2) + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A047743 (n + 2) : ℚ))).toNat

end

end A047745.P10097454025324947731

namespace A047745

/-- `A047743(n+2)+A000007(A000007(n)/A047743(n+2))` -/
def P10097454025324947731.Spec : Prop :=
  ∀ n, P10097454025324947731.a n = A047745 (n + 2)

end A047745

/-! ## A047745.P1006432848178235290

`floor(A052409(n²+1)+∑[1/log2(n+2)])`
-/

namespace A047745.P1006432848178235290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052409 (n ^ 2 + 1) : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047745.P1006432848178235290

namespace A047745

/-- `floor(A052409(n²+1)+∑[1/log2(n+2)])` -/
def P1006432848178235290.Spec : Prop :=
  ∀ n, P1006432848178235290.a n = A047745 (n + 2)

end A047745

/-!
# A047746: A discrete analog of Li(n): floor ( Sum_{k=2..n} 1/log_10 (k) ).

The programs for A047746, the canonical program `A047746.P17922380256769330309` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047746 has offset 2).

The definition of A047746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047746.P17922380256769330309

`floor(∑[log2(10)/log2(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047746

/-- `floor(∑[log2(10)/log2(n+2)])` -/
def P17922380256769330309.Spec : Prop :=
  ∀ n, P17922380256769330309.a n = A047746 (n + 2)

theorem P17922380256769330309.correct : P17922380256769330309.Spec := by
  intro n
  simp only [A047746, Nat.add_sub_cancel]

end A047746

/-! ## A047746.P12671411190755054020

`A047748(n+2)-1`
-/

namespace A047746.P12671411190755054020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047748 (n + 2) - 1

end

end A047746.P12671411190755054020

namespace A047746

/-- `A047748(n+2)-1` -/
def P12671411190755054020.Spec : Prop :=
  ∀ n, P12671411190755054020.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P7805492431554630043

`A023443(A047748(n+2))`
-/

namespace A047746.P7805492431554630043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047748 (n + 2)).toNat

end

end A047746.P7805492431554630043

namespace A047746

/-- `A023443(A047748(n+2))` -/
def P7805492431554630043.Spec : Prop :=
  ∀ n, P7805492431554630043.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P11798417456478767581

`A140106(2*A047748(n+2))`
-/

namespace A047746.P11798417456478767581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A047748 (n + 2)).toNat

end

end A047746.P11798417456478767581

namespace A047746

/-- `A140106(2*A047748(n+2))` -/
def P11798417456478767581.Spec : Prop :=
  ∀ n, P11798417456478767581.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P1580879937304413834

`A057428(n+1)+A047748(n+2)`
-/

namespace A047746.P1580879937304413834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A047748 (n + 2)

end

end A047746.P1580879937304413834

namespace A047746

/-- `A057428(n+1)+A047748(n+2)` -/
def P1580879937304413834.Spec : Prop :=
  ∀ n, P1580879937304413834.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P894430447492271427

`A028310(A047748(n+2)+log2(1/2))`
-/

namespace A047746.P894430447492271427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A047748 (n + 2) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A047746.P894430447492271427

namespace A047746

/-- `A028310(A047748(n+2)+log2(1/2))` -/
def P894430447492271427.Spec : Prop :=
  ∀ n, P894430447492271427.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P17500548226862592418

`A140106(A047748(n+2)+A047748(n+2)+1)`
-/

namespace A047746.P17500548226862592418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A047748 (n + 2) + (A047748 (n + 2) + 1)).toNat

end

end A047746.P17500548226862592418

namespace A047746

/-- `A140106(A047748(n+2)+A047748(n+2)+1)` -/
def P17500548226862592418.Spec : Prop :=
  ∀ n, P17500548226862592418.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P11376728861475535204

`A057918(A047748(n+2)²)`
-/

namespace A047746.P11376728861475535204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A047748 (n + 2) ^ 2).toNat

end

end A047746.P11376728861475535204

namespace A047746

/-- `A057918(A047748(n+2)²)` -/
def P11376728861475535204.Spec : Prop :=
  ∀ n, P11376728861475535204.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P11460415857772045256

`A088226(A047748(n+2)²)`
-/

namespace A047746.P11460415857772045256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A047748 (n + 2) ^ 2).toNat

end

end A047746.P11460415857772045256

namespace A047746

/-- `A088226(A047748(n+2)²)` -/
def P11460415857772045256.Spec : Prop :=
  ∀ n, P11460415857772045256.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P2332919619547254009

`A259361(A047748(n+2)²)`
-/

namespace A047746.P2332919619547254009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A047748 (n + 2) ^ 2).toNat

end

end A047746.P2332919619547254009

namespace A047746

/-- `A259361(A047748(n+2)²)` -/
def P2332919619547254009.Spec : Prop :=
  ∀ n, P2332919619547254009.a n = A047746 (n + 2)

end A047746

/-! ## A047746.P8922295186675181846

`A057918(2*A047748(n+2)*A047748(n+2))`
-/

namespace A047746.P8922295186675181846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A047748 (n + 2) * A047748 (n + 2)).toNat

end

end A047746.P8922295186675181846

namespace A047746

/-- `A057918(2*A047748(n+2)*A047748(n+2))` -/
def P8922295186675181846.Spec : Prop :=
  ∀ n, P8922295186675181846.a n = A047746 (n + 2)

end A047746

/-!
# A047747: A discrete analog of Li(n): round ( Sum_{k=2..n} 1/log_10 (k) ).

The programs for A047747, the canonical program `A047747.P1006680452910214710` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047747 has offset 2).

The definition of A047747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1640 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047747.P1006680452910214710

`round(∑[log2(10)/log2(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047747

/-- `round(∑[log2(10)/log2(n+2)])` -/
def P1006680452910214710.Spec : Prop :=
  ∀ n, P1006680452910214710.a n = A047747 (n + 2)

theorem P1006680452910214710.correct : P1006680452910214710.Spec := by
  intro n
  simp only [A047747, Nat.add_sub_cancel]

end A047747

/-! ## A047747.P3243644924174380309

`ceil(∑[A062575(2*(n+2))/(n+1)])`
-/

namespace A047747.P3243644924174380309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062575 (2 * (n + 2)) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A047747.P3243644924174380309

namespace A047747

/-- `ceil(∑[A062575(2*(n+2))/(n+1)])` -/
def P3243644924174380309.Spec : Prop :=
  ∀ n, P3243644924174380309.a n = A047747 (n + 2)

end A047747

/-! ## A047747.P17955453142114464298

`A316843(∑[A045043(n+1)]-A045038(n+1))`
-/

namespace A047747.P17955453142114464298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (∑ j ∈ Finset.range (n + 1), f1 j - A045038 (n + 1)).toNat

end

end A047747.P17955453142114464298

namespace A047747

/-- `A316843(∑[A045043(n+1)]-A045038(n+1))` -/
def P17955453142114464298.Spec : Prop :=
  ∀ n, P17955453142114464298.a n = A047747 (n + 2)

end A047747

/-! ## A047747.P6396794966622442790

`A316843(∑[A045043(n+1)-A210967(n+3)])`
-/

namespace A047747.P6396794966622442790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045043 (n + 1) - A210967 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047747.P6396794966622442790

namespace A047747

/-- `A316843(∑[A045043(n+1)-A210967(n+3)])` -/
def P6396794966622442790.Spec : Prop :=
  ∀ n, P6396794966622442790.a n = A047747 (n + 2)

end A047747

/-! ## A047747.P9857637278645503561

`A227177((2*n+7)*A313538(n))`
-/

namespace A047747.P9857637278645503561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 ((2 * n + 7 : ℤ) * A313538 n).toNat

end

end A047747.P9857637278645503561

namespace A047747

/-- `A227177((2*n+7)*A313538(n))` -/
def P9857637278645503561.Spec : Prop :=
  ∀ n, P9857637278645503561.a n = A047747 (n + 2)

end A047747

/-!
# A047748: A discrete analog of Li(n): ceiling(Sum_{k=2..n} 1/log_10 (k)).

The programs for A047748, the canonical program `A047748.P9629679660432266307` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047748 has offset 2).

The definition of A047748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047748.P9629679660432266307

`ceil(∑[log2(10)/log2(n+2)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047748

/-- `ceil(∑[log2(10)/log2(n+2)])` -/
def P9629679660432266307.Spec : Prop :=
  ∀ n, P9629679660432266307.a n = A047748 (n + 2)

theorem P9629679660432266307.correct : P9629679660432266307.Spec := by
  intro n
  simp only [A047748, Nat.add_sub_cancel]

end A047748

/-! ## A047748.P4796030112439652156

`A047746(n+2)+1`
-/

namespace A047748.P4796030112439652156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047746 (n + 2) + 1

end

end A047748.P4796030112439652156

namespace A047748

/-- `A047746(n+2)+1` -/
def P4796030112439652156.Spec : Prop :=
  ∀ n, P4796030112439652156.a n = A047748 (n + 2)

end A047748

/-! ## A047748.P4712391716789763728

`A020725(A047746(n+2))`
-/

namespace A047748.P4712391716789763728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A047746 (n + 2)).toNat

end

end A047748.P4712391716789763728

namespace A047748

/-- `A020725(A047746(n+2))` -/
def P4712391716789763728.Spec : Prop :=
  ∀ n, P4712391716789763728.a n = A047748 (n + 2)

end A047748

/-! ## A047748.P10780719782917233416

`A227177(A022276(n+1))+1`
-/

namespace A047748.P10780719782917233416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A022276 (n + 1)).toNat + 1

end

end A047748.P10780719782917233416

namespace A047748

/-- `A227177(A022276(n+1))+1` -/
def P10780719782917233416.Spec : Prop :=
  ∀ n, P10780719782917233416.a n = A047748 (n + 2)

end A047748

/-! ## A047748.P10653714186368776235

`A227177(A016885(n)*A020739(n))`
-/

namespace A047748.P10653714186368776235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A016885 n * A020739 n).toNat

end

end A047748.P10653714186368776235

namespace A047748

/-- `A227177(A016885(n)*A020739(n))` -/
def P10653714186368776235.Spec : Prop :=
  ∀ n, P10653714186368776235.a n = A047748 (n + 2)

end A047748

/-!
# A047749: If n = 2*m then a(n) = binomial(3*m, m)/(2*m+1), if n=2*m+1 then a(n) = binomial(3*m+1, m+1)/(2*m+1).

The programs for A047749, the canonical program `A047749.P16878488090282076310` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047749 has offset 0).

The definition of A047749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047749.P12601289466576870553

`A047764(6*n+2)`
-/

namespace A047749.P12601289466576870553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (6 * n + 2)

end

end A047749.P12601289466576870553

namespace A047749

/-- `A047764(6*n+2)` -/
def P12601289466576870553.Spec : Prop :=
  ∀ n, P12601289466576870553.a n = A047749 n

end A047749

/-! ## A047749.P145421280408943999

`A047751(A017581(n))`
-/

namespace A047749.P145421280408943999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A017581 n).toNat

end

end A047749.P145421280408943999

namespace A047749

/-- `A047751(A017581(n))` -/
def P145421280408943999.Spec : Prop :=
  ∀ n, P145421280408943999.a n = A047749 n

end A047749

/-! ## A047749.P14071909390858422006

`A069269(A165157(n))`
-/

namespace A047749.P14071909390858422006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (A165157 n).toNat

end

end A047749.P14071909390858422006

namespace A047749

/-- `A069269(A165157(n))` -/
def P14071909390858422006.Spec : Prop :=
  ∀ n, P14071909390858422006.a n = A047749 n

end A047749

/-! ## A047749.P1393488705406869910

`ceil(A116637(n)/2)`
-/

namespace A047749.P1393488705406869910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116637 n : ℚ) / 2⌉

end

end A047749.P1393488705406869910

namespace A047749

/-- `ceil(A116637(n)/2)` -/
def P1393488705406869910.Spec : Prop :=
  ∀ n, P1393488705406869910.a n = A047749 n

end A047749

/-! ## A047749.P16764071243454706104

`A116637(C(n, C(n, C(2, n))))/2`
-/

namespace A047749.P16764071243454706104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (Nat.choose n (Nat.choose n (Nat.choose 2 n))) : ℚ) / 2

end

end A047749.P16764071243454706104

namespace A047749

/-- `A116637(C(n, C(n, C(2, n))))/2` -/
def P16764071243454706104.Spec : Prop :=
  ∀ n, P16764071243454706104.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P12101830113377236999

`A116637(n)/A036453(n+1)`
-/

namespace A047749.P12101830113377236999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A047749.P12101830113377236999

namespace A047749

/-- `A116637(n)/A036453(n+1)` -/
def P12101830113377236999.Spec : Prop :=
  ∀ n, P12101830113377236999.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P6856363045453315257

`A116637(A000007(n)+n)/2`
-/

namespace A047749.P6856363045453315257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A047749.P6856363045453315257

namespace A047749

/-- `A116637(A000007(n)+n)/2` -/
def P6856363045453315257.Spec : Prop :=
  ∀ n, P6856363045453315257.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P11212730962996540926

`A116637(n)/(2-A000007(n))`
-/

namespace A047749.P11212730962996540926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (2 - A000007 n : ℚ)

end

end A047749.P11212730962996540926

namespace A047749

/-- `A116637(n)/(2-A000007(n))` -/
def P11212730962996540926.Spec : Prop :=
  ∀ n, P11212730962996540926.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P6337950582311380926

`A116637(A004277(n)-n)/2`
-/

namespace A047749.P6337950582311380926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A047749.P6337950582311380926

namespace A047749

/-- `A116637(A004277(n)-n)/2` -/
def P6337950582311380926.Spec : Prop :=
  ∀ n, P6337950582311380926.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P4604453702693325477

`A116637(n)/A020639(A001316(n))`
-/

namespace A047749.P4604453702693325477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A047749.P4604453702693325477

namespace A047749

/-- `A116637(n)/A020639(A001316(n))` -/
def P4604453702693325477.Spec : Prop :=
  ∀ n, P4604453702693325477.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P3912802620996343159

`A116637(n)/A020639(A103517(n))`
-/

namespace A047749.P3912802620996343159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A047749.P3912802620996343159

namespace A047749

/-- `A116637(n)/A020639(A103517(n))` -/
def P3912802620996343159.Spec : Prop :=
  ∀ n, P3912802620996343159.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P12950871458317448542

`A116637(n)/A000005(A008578(n+1))`
-/

namespace A047749.P12950871458317448542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A047749.P12950871458317448542

namespace A047749

/-- `A116637(n)/A000005(A008578(n+1))` -/
def P12950871458317448542.Spec : Prop :=
  ∀ n, P12950871458317448542.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P4406867543047872935

`A116637(n)/A020639(A006093(n+1))`
-/

namespace A047749.P4406867543047872935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A047749.P4406867543047872935

namespace A047749

/-- `A116637(n)/A020639(A006093(n+1))` -/
def P4406867543047872935.Spec : Prop :=
  ∀ n, P4406867543047872935.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P8555946086905979484

`A116637(n)/A000034(record[A020639(n+2)])`
-/

namespace A047749.P8555946086905979484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A000034 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A047749.P8555946086905979484

namespace A047749

/-- `A116637(n)/A000034(record[A020639(n+2)])` -/
def P8555946086905979484.Spec : Prop :=
  ∀ n, P8555946086905979484.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P9180172402432146328

`A116637(n)/A020639(A000040(n+1)-1)`
-/

namespace A047749.P9180172402432146328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A047749.P9180172402432146328

namespace A047749

/-- `A116637(n)/A020639(A000040(n+1)-1)` -/
def P9180172402432146328.Spec : Prop :=
  ∀ n, P9180172402432146328.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P12272921998343226215

`abs(A134565(A028310(n)))`
-/

namespace A047749.P12272921998343226215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134565 (A028310 n).toNat|

end

end A047749.P12272921998343226215

namespace A047749

/-- `abs(A134565(A028310(n)))` -/
def P12272921998343226215.Spec : Prop :=
  ∀ n, P12272921998343226215.a n = A047749 n

end A047749

/-! ## A047749.P2596877536451395126

`A065942(n)/A026741(n+1)`
-/

namespace A047749.P2596877536451395126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065942 n : ℚ) / (A026741 (n + 1) : ℚ)

end

end A047749.P2596877536451395126

namespace A047749

/-- `A065942(n)/A026741(n+1)` -/
def P2596877536451395126.Spec : Prop :=
  ∀ n, P2596877536451395126.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P13056188889289083961

`A081204(n)/A063914(n+1)`
-/

namespace A047749.P13056188889289083961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081204 n : ℚ) / (A063914 (n + 1) : ℚ)

end

end A047749.P13056188889289083961

namespace A047749

/-- `A081204(n)/A063914(n+1)` -/
def P13056188889289083961.Spec : Prop :=
  ∀ n, P13056188889289083961.a n = (A047749 n : ℚ)

end A047749

/-! ## A047749.P16878488090282076310

`A328901(A213037(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A047749

/-- `A328901(A213037(n+1))` -/
def P16878488090282076310.Spec : Prop :=
  ∀ n, P16878488090282076310.a n = A047749 n

theorem P16878488090282076310.correct : P16878488090282076310.Spec := by
  intro n
  simp only [A047749]

end A047749

/-!
# A047750: If n mod 2 = 0 then m := n/2 and a(n) = (3*m)!*(5*m+1)/((m+1)!*(2*m+1)!); otherwise m := (n-1)/2, a(n) = 6*(3*m+2)!/(m!*(2*m+3)!).

The programs for A047750, there is no canonical definition to state claims against.
-/

/-! ## A047750.P7078188411716749413

`A028310(record[Δ[A167763(2*n+1)]])`
-/

namespace A047750.P7078188411716749413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047750.P7078188411716749413

/-! ## A047750.P17643969520178293877

`A277620(A099517(n+1))`
-/

namespace A047750.P17643969520178293877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277620 (A099517 (n + 1)).toNat

end

end A047750.P17643969520178293877

/-! ## A047750.P17866821317891405494

`A230022(A149079(n+1))`
-/

namespace A047750.P17866821317891405494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230022 (A149079 (n + 1)).toNat

end

end A047750.P17866821317891405494

/-! ## A047750.P12488407072516757853

`A234852(A191388(n+1))`
-/

namespace A047750.P12488407072516757853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (A191388 (n + 1)).toNat

end

end A047750.P12488407072516757853

/-!
# A047751: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type K.

The programs for A047751, there is no canonical definition to state claims against.
-/

/-! ## A047751.P14461925671500889289

`A047764((n+1)%∑[1-a(n-1)]+1)` with `a(0)=2`
-/

namespace A047751.P14461925671500889289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A047751.P14461925671500889289

/-! ## A047751.P9180008846358250454

`A047764(A004525(n)+A000038(n))`
-/

namespace A047751.P9180008846358250454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A004525 n + A000038 n).toNat

end

end A047751.P9180008846358250454

/-! ## A047751.P16648964991392616342

`A047764(or(A000038(n), A004525(n)))`
-/

namespace A047751.P16648964991392616342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (Int.lor (A000038 n) (A004525 n)).toNat

end

end A047751.P16648964991392616342

/-! ## A047751.P15788775874565881988

`A047764(xor(A000038(n), A004525(n)))`
-/

namespace A047751.P15788775874565881988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (Int.xor (A000038 n) (A004525 n)).toNat

end

end A047751.P15788775874565881988

/-! ## A047751.P16178133403228463630

`A047764(A242457(n+1)+A004525(n))`
-/

namespace A047751.P16178133403228463630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A242457 (n + 1) + A004525 n).toNat

end

end A047751.P16178133403228463630

/-! ## A047751.P10163117436024621795

`A047764(A026741(n)+A000038(n))`
-/

namespace A047751.P10163117436024621795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A026741 n + A000038 n).toNat

end

end A047751.P10163117436024621795

/-! ## A047751.P1731919955756008361

`A047764(or(A000038(n), A026741(n)))`
-/

namespace A047751.P1731919955756008361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (Int.lor (A000038 n) (A026741 n)).toNat

end

end A047751.P1731919955756008361

/-! ## A047751.P12820018950768950733

`A047764(gcd(A001057(n), A233583(n+1)))`
-/

namespace A047751.P12820018950768950733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (Int.gcd (A001057 n) (A233583 (n + 1)))

end

end A047751.P12820018950768950733

/-! ## A047751.P3605766133083658055

`and(A076948(n+1), A313099(n²))`
-/

namespace A047751.P3605766133083658055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076948 (n + 1)) (A313099 (n ^ 2))

end

end A047751.P3605766133083658055

/-! ## A047751.P8080005689860475632

`and(A076948(n+1), A313110(n²))`
-/

namespace A047751.P8080005689860475632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076948 (n + 1)) (A313110 (n ^ 2))

end

end A047751.P8080005689860475632

/-!
# A047752: Number of chiral pairs of dissectable polyhedra with n tetrahedral cells and symmetry of type J.

The programs for A047752, there is no canonical definition to state claims against.
-/

/-! ## A047752.P3831692941161137731

`A047766(A165818(n+1))`
-/

namespace A047752.P3831692941161137731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A165818 (n + 1)).toNat

end

end A047752.P3831692941161137731

/-! ## A047752.P14235155621124157082

`A047766(gcd(n, A065033(n)))`
-/

namespace A047752.P14235155621124157082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (Int.gcd (n : ℤ) (A065033 n))

end

end A047752.P14235155621124157082

/-! ## A047752.P14824843078577450339

`A047766(A028310(A004525(n)))`
-/

namespace A047752.P14824843078577450339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A028310 (A004525 n).toNat).toNat

end

end A047752.P14824843078577450339

/-! ## A047752.P5925633435808980354

`A047766(A004525(A065033(2*n)))`
-/

namespace A047752.P5925633435808980354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A004525 (A065033 (2 * n)).toNat).toNat

end

end A047752.P5925633435808980354

/-! ## A047752.P2693802278227797145

`A047766(gcd(A001057(n), A008458(n)))`
-/

namespace A047752.P2693802278227797145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (Int.gcd (A001057 n) (A008458 n))

end

end A047752.P2693802278227797145

/-! ## A047752.P15874840238311805691

`A047766(gcd(A004526(n), A008486(n)))`
-/

namespace A047752.P15874840238311805691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (Int.gcd (A004526 n) (A008486 n))

end

end A047752.P15874840238311805691

/-! ## A047752.P3645343365341607478

`A047766(gcd(A004524(n), A008574(n)))`
-/

namespace A047752.P3645343365341607478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (Int.gcd (A004524 n) (A008574 n))

end

end A047752.P3645343365341607478

/-! ## A047752.P6074417937882345095

`A047766(or(A000035(n), A065033(n)))`
-/

namespace A047752.P6074417937882345095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (Int.lor (A000035 n) (A065033 n)).toNat

end

end A047752.P6074417937882345095

/-! ## A047752.P18000606553798546262

`A000035(n+1)*A047766(A065033(n))`
-/

namespace A047752.P18000606553798546262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A047766 (A065033 n).toNat

end

end A047752.P18000606553798546262

/-! ## A047752.P6803886813927959838

`A047766(A100261(n+1))`
-/

namespace A047752.P6803886813927959838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A100261 (n + 1)).toNat

end

end A047752.P6803886813927959838

/-! ## A047752.P7403618236286549753

`A047766(A007318(∑[A057979(n)]))`
-/

namespace A047752.P7403618236286549753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047752.P7403618236286549753

/-! ## A047752.P14159394861916727295

`A047766(A004739(∑[A123108(n)]))`
-/

namespace A047752.P14159394861916727295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A004739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047752.P14159394861916727295

/-!
# A047753: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type I.

The programs for A047753, there is no canonical definition to state claims against.
-/

/-! ## A047753.P5205408497588633921

`A047765(A165818(n+1))`
-/

namespace A047753.P5205408497588633921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A165818 (n + 1)).toNat

end

end A047753.P5205408497588633921

/-! ## A047753.P16210062330296001718

`A047765(gcd(n, A065033(n)))`
-/

namespace A047753.P16210062330296001718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (Int.gcd (n : ℤ) (A065033 n))

end

end A047753.P16210062330296001718

/-! ## A047753.P1805947433567250987

`A047765(gcd(a(n-1), A004525(n)))` with `a(0)=0`
-/

namespace A047753.P1805947433567250987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A047765 (Int.gcd (a (n - 1)) (A004525 n))

end

end A047753.P1805947433567250987

/-! ## A047753.P7996283601814567097

`A047765(A028310(A004525(n)))`
-/

namespace A047753.P7996283601814567097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A028310 (A004525 n).toNat).toNat

end

end A047753.P7996283601814567097

/-! ## A047753.P106615221083480840

`A047765(A028310(A142150(n)))`
-/

namespace A047753.P106615221083480840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A028310 (A142150 n).toNat).toNat

end

end A047753.P106615221083480840

/-! ## A047753.P2745971262022505508

`A047765(A004525(A000007(n)+n))`
-/

namespace A047753.P2745971262022505508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A004525 (A000007 n + (n : ℤ)).toNat).toNat

end

end A047753.P2745971262022505508

/-! ## A047753.P17966614606464215405

`A047765(A007318(∑[A057979(n)]))`
-/

namespace A047753.P17966614606464215405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047753.P17966614606464215405

/-! ## A047753.P10147888413475340466

`A047765(A026300(∑[A057979(n)]))`
-/

namespace A047753.P10147888413475340466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A026300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047753.P10147888413475340466

/-! ## A047753.P12260342753354146857

`A047765(A132044(A101881(n)))`
-/

namespace A047753.P12260342753354146857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A132044 (A101881 n).toNat).toNat

end

end A047753.P12260342753354146857

/-! ## A047753.P1378827972506742766

`A047765(A046854(∑[A004442(n)]))`
-/

namespace A047753.P1378827972506742766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (A046854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047753.P1378827972506742766

/-!
# A047754: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type H.

The programs for A047754, there is no canonical definition to state claims against.
-/

/-! ## A047754.P2767639947158465819

`A047766(∑[and(3, n+2)])`
-/

namespace A047754.P2767639947158465819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047754.P2767639947158465819

/-! ## A047754.P7762718049229077108

`A047752(3*(n+1)+2)`
-/

namespace A047754.P7762718049229077108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (3 * (n + 1) + 2)

end

end A047754.P7762718049229077108

/-! ## A047754.P312491578859423682

`A047766(A114119(n))`
-/

namespace A047754.P312491578859423682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A114119 n).toNat

end

end A047754.P312491578859423682

/-! ## A047754.P7315830853691616170

`A047766(A166517(n))`
-/

namespace A047754.P7315830853691616170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A166517 n).toNat

end

end A047754.P7315830853691616170

/-! ## A047754.P5260400492565999753

`A047766(A299542(n))`
-/

namespace A047754.P5260400492565999753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A299542 n).toNat

end

end A047754.P5260400492565999753

/-! ## A047754.P15717978473488131887

`A047766(Δ[A001859(n)])`
-/

namespace A047754.P15717978473488131887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (f1 (n + 1) - f1 n).toNat

end

end A047754.P15717978473488131887

/-! ## A047754.P11583607128630587687

`A047766(A007494(n+1))`
-/

namespace A047754.P11583607128630587687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A007494 (n + 1)).toNat

end

end A047754.P11583607128630587687

/-! ## A047754.P1661826402465968635

`A047766(A026143(n+1))`
-/

namespace A047754.P1661826402465968635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A026143 (n + 1)).toNat

end

end A047754.P1661826402465968635

/-! ## A047754.P11596884621088002992

`A047766(A026214(n+1))`
-/

namespace A047754.P11596884621088002992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A026214 (n + 1)).toNat

end

end A047754.P11596884621088002992

/-! ## A047754.P14997849474930175690

`A047766(A047247(n+1))`
-/

namespace A047754.P14997849474930175690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A047247 (n + 1)).toNat

end

end A047754.P14997849474930175690

/-! ## A047754.P18148688252902109787

`A047766(A160016(n+1))`
-/

namespace A047754.P18148688252902109787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A160016 (n + 1)).toNat

end

end A047754.P18148688252902109787

/-! ## A047754.P13433909910914501321

`A047766(A285354(n+1))`
-/

namespace A047754.P13433909910914501321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A285354 (n + 1)).toNat

end

end A047754.P13433909910914501321

/-! ## A047754.P8008483753824635472

`A047766(A342131(n+1))`
-/

namespace A047754.P8008483753824635472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A342131 (n + 1)).toNat

end

end A047754.P8008483753824635472

/-! ## A047754.P752773951612080600

`A047766(A001651(n+2))`
-/

namespace A047754.P752773951612080600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A001651 (n + 2)).toNat

end

end A047754.P752773951612080600

/-! ## A047754.P6854482612991522869

`A047766(A006368(n)+2)`
-/

namespace A047754.P6854482612991522869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A006368 n + 2).toNat

end

end A047754.P6854482612991522869

/-! ## A047754.P11497901052798324368

`A047766(A026182(n+2))`
-/

namespace A047754.P11497901052798324368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A026182 (n + 2)).toNat

end

end A047754.P11497901052798324368

/-! ## A047754.P2348045218084373266

`A047766(A026194(n+2))`
-/

namespace A047754.P2348045218084373266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A026194 (n + 2)).toNat

end

end A047754.P2348045218084373266

/-! ## A047754.P17945643352392031438

`A047766(A026200(n+2))`
-/

namespace A047754.P17945643352392031438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A026200 (n + 2)).toNat

end

end A047754.P17945643352392031438

/-! ## A047754.P6010001094123980442

`A047766(A047227(n+2))`
-/

namespace A047754.P6010001094123980442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (A047227 (n + 2)).toNat

end

end A047754.P6010001094123980442

/-! ## A047754.P14882429367019893156

`A047766(∑[A006530(a(n-2))])` with `a(0)=2, a(1)=1`
-/

namespace A047754.P14882429367019893156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A006530 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047754.P14882429367019893156

/-!
# A047755: a(n) = A047752(12n+5).

The programs for A047755, the canonical program `A047755.P17216177778010743063` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047755 has offset 0).

The definition of A047755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047755.P14087623694469872932

`A047752(12*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047755.P14087623694469872932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (12 * n + 5)

end

end A047755.P14087623694469872932

namespace A047755

/-- `A047752(12*n+5)` -/
def P14087623694469872932.Spec : Prop :=
  ∀ n, P14087623694469872932.a n = A047755 n

end A047755

/-! ## A047755.P16646784856525253322

`A047774(3*n+1)`
-/

namespace A047755.P16646784856525253322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047774 (3 * n + 1)

end

end A047755.P16646784856525253322

namespace A047755

/-- `A047774(3*n+1)` -/
def P16646784856525253322.Spec : Prop :=
  ∀ n, P16646784856525253322.a n = A047755 n

end A047755

/-! ## A047755.P3208776403341090975

`A047766(6*n+2)`
-/

namespace A047755.P3208776403341090975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (6 * n + 2)

end

end A047755.P3208776403341090975

namespace A047755

/-- `A047766(6*n+2)` -/
def P3208776403341090975.Spec : Prop :=
  ∀ n, P3208776403341090975.a n = A047755 n

end A047755

/-! ## A047755.P13970503118274581764

`A047754(3*n+n+1)`
-/

namespace A047755.P13970503118274581764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (3 * n + (n + 1))

end

end A047755.P13970503118274581764

namespace A047755

/-- `A047754(3*n+n+1)` -/
def P13970503118274581764.Spec : Prop :=
  ∀ n, P13970503118274581764.a n = A047755 n

end A047755

/-! ## A047755.P17216177778010743063

`(A001764(n)-A047749(n))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A047755

/-- `(A001764(n)-A047749(n))/2` -/
def P17216177778010743063.Spec : Prop :=
  ∀ n, P17216177778010743063.a n = (A047755 n : ℚ)

end A047755

/-! ## A047755.P13058563266696931265

`(A047749(2*n)-A047749(n))/2`
-/

namespace A047755.P13058563266696931265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 (2 * n) - A047749 n : ℚ) / 2

end

end A047755.P13058563266696931265

namespace A047755

/-- `(A047749(2*n)-A047749(n))/2` -/
def P13058563266696931265.Spec : Prop :=
  ∀ n, P13058563266696931265.a n = (A047755 n : ℚ)

end A047755

/-! ## A047755.P3903032496571338825

`A047769(A004277(n))+A047766(A004277(n))`
-/

namespace A047755.P3903032496571338825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047769 (A004277 n).toNat + A047766 (A004277 n).toNat

end

end A047755.P3903032496571338825

namespace A047755

/-- `A047769(A004277(n))+A047766(A004277(n))` -/
def P3903032496571338825.Spec : Prop :=
  ∀ n, P3903032496571338825.a n = A047755 n

end A047755

/-! ## A047755.P227404786403607750

`A047770(A028310(n))+A047752(A016813(n))`
-/

namespace A047755.P227404786403607750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (A028310 n).toNat + A047752 (A016813 n).toNat

end

end A047755.P227404786403607750

namespace A047755

/-- `A047770(A028310(n))+A047752(A016813(n))` -/
def P227404786403607750.Spec : Prop :=
  ∀ n, P227404786403607750.a n = A047755 n

end A047755

/-! ## A047755.P17821370058252233881

`(A243662(∑[n-1]+2)-A047749(n))/2`
-/

namespace A047755.P17821370058252233881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243662 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat - A047749 n : ℚ) / 2

end

end A047755.P17821370058252233881

namespace A047755

/-- `(A243662(∑[n-1]+2)-A047749(n))/2` -/
def P17821370058252233881.Spec : Prop :=
  ∀ n, P17821370058252233881.a n = (A047755 n : ℚ)

end A047755

/-!
# A047758: Number of chiral pairs of dissectable polyhedra with n tetrahedral cells and symmetry of type G.

The programs for A047758, there is no canonical definition to state claims against.
-/

/-! ## A047758.P16350003892577611308

`A047771(A165818(n+1))`
-/

namespace A047758.P16350003892577611308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A165818 (n + 1)).toNat

end

end A047758.P16350003892577611308

/-! ## A047758.P276646150703391290

`A047771(gcd(n, A065033(n)))`
-/

namespace A047758.P276646150703391290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (Int.gcd (n : ℤ) (A065033 n))

end

end A047758.P276646150703391290

/-! ## A047758.P12020505024360342395

`A047771(A152271(abs(1-n)))`
-/

namespace A047758.P12020505024360342395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A152271 |1 - (n : ℤ)|.toNat).toNat

end

end A047758.P12020505024360342395

/-! ## A047758.P12471058056711176181

`A047771(A028310(A004525(n)))`
-/

namespace A047758.P12471058056711176181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A028310 (A004525 n).toNat).toNat

end

end A047758.P12471058056711176181

/-! ## A047758.P17109980362454731141

`A047771(A054576(A004277(n)))`
-/

namespace A047758.P17109980362454731141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A054576 (A004277 n).toNat).toNat

end

end A047758.P17109980362454731141

/-! ## A047758.P1097172100905874875

`A047771(A028310(A142150(n)))`
-/

namespace A047758.P1097172100905874875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A028310 (A142150 n).toNat).toNat

end

end A047758.P1097172100905874875

/-! ## A047758.P8295330439036483580

`A047771(A004525(A000007(n)+n))`
-/

namespace A047758.P8295330439036483580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A004525 (A000007 n + (n : ℤ)).toNat).toNat

end

end A047758.P8295330439036483580

/-! ## A047758.P3871907943628605148

`A047771(A004525(A000038(n)+n))`
-/

namespace A047758.P3871907943628605148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A004525 (A000038 n + (n : ℤ)).toNat).toNat

end

end A047758.P3871907943628605148

/-! ## A047758.P3569581404559257159

`A047771(gcd(A001057(n), A008574(n)))`
-/

namespace A047758.P3569581404559257159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (Int.gcd (A001057 n) (A008574 n))

end

end A047758.P3569581404559257159

/-! ## A047758.P16828008198311689919

`A047771(gcd(A004526(n), A008486(n)))`
-/

namespace A047758.P16828008198311689919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (Int.gcd (A004526 n) (A008486 n))

end

end A047758.P16828008198311689919

/-! ## A047758.P1410776728614953855

`A047771(or(A000007(n), A004525(n)))`
-/

namespace A047758.P1410776728614953855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (Int.lor (A000007 n) (A004525 n)).toNat

end

end A047758.P1410776728614953855

/-!
# A047760: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type F.

The programs for A047760, there is no canonical definition to state claims against.
-/

/-! ## A047760.P16552543633716739025

`A047761(A142150(n))`
-/

namespace A047760.P16552543633716739025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (A142150 n).toNat

end

end A047760.P16552543633716739025

/-! ## A047760.P7837861745667367741

`A047761(A237420(n)/2)`
-/

namespace A047760.P7837861745667367741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

end

end A047760.P7837861745667367741

/-! ## A047760.P12294720851344146347

`A047761(n-A026741(n))`
-/

namespace A047760.P12294720851344146347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 ((n : ℤ) - A026741 n).toNat

end

end A047760.P12294720851344146347

/-! ## A047760.P12596474698899500519

`A047761(n/2*A059841(n))`
-/

namespace A047760.P12596474698899500519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A059841 n : ℚ))).toNat

end

end A047760.P12596474698899500519

/-! ## A047760.P18305956732947292294

`A047761((n+1)%A008619(n))`
-/

namespace A047760.P18305956732947292294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (Int.tmod (n + 1 : ℤ) (A008619 n)).toNat

end

end A047760.P18305956732947292294

/-! ## A047760.P4518492471327474729

`xor(a(n-1), A047761(A004526(n)))` with `a(0)=0`
-/

namespace A047760.P4518492471327474729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A047761 (A004526 n).toNat)

end

end A047760.P4518492471327474729

/-! ## A047760.P6736630810877730227

`A047761(A004526(A237420(n)))`
-/

namespace A047760.P6736630810877730227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (A004526 (A237420 n).toNat).toNat

end

end A047760.P6736630810877730227

/-! ## A047760.P8444385884876851631

`A047761(A004526(n*A059841(n)))`
-/

namespace A047760.P8444385884876851631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (A004526 ((n : ℤ) * A059841 n).toNat).toNat

end

end A047760.P8444385884876851631

/-! ## A047760.P11471425576444903176

`A047761(A000217(n)%A028310(n))`
-/

namespace A047760.P11471425576444903176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (Int.tmod (A000217 n) (A028310 n)).toNat

end

end A047760.P11471425576444903176

/-! ## A047760.P10344896258315052840

`A047761(A064680(n)%A004277(n))`
-/

namespace A047760.P10344896258315052840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (Int.tmod (A064680 n) (A004277 n)).toNat

end

end A047760.P10344896258315052840

/-! ## A047760.P17111444859739613392

`A047761(val(A285543(n), 2))`
-/

namespace A047760.P17111444859739613392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 (SequenceMachineLib.valuation (A285543 n).toNat 2)

end

end A047760.P17111444859739613392

/-!
# A047761: a(n) = A047760(2n+1).

The programs for A047761, there is no canonical definition to state claims against.
-/

/-! ## A047761.P151480004016923429

`A047760(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047761.P151480004016923429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047760 (2 * n + 1)

end

end A047761.P151480004016923429

/-! ## A047761.P12093383790796268637

`A047773(A047239(n+2))`
-/

namespace A047761.P12093383790796268637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047773 (A047239 (n + 2)).toNat

end

end A047761.P12093383790796268637

/-! ## A047761.P16429801349590681975

`A047760(A005408(n))*A057427(n)`
-/

namespace A047761.P16429801349590681975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047760 (A005408 n).toNat * A057427 n

end

end A047761.P16429801349590681975

/-! ## A047761.P9790272141223064150

`lcm(A033999(n), A047760(A005408(n)))`
-/

namespace A047761.P9790272141223064150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047760 (A005408 n).toNat)

end

end A047761.P9790272141223064150

/-! ## A047761.P17450126341706995234

`A047773(A063221(n+1)-A008486(n))`
-/

namespace A047761.P17450126341706995234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047773 (A063221 (n + 1) - A008486 n).toNat

end

end A047761.P17450126341706995234

/-! ## A047761.P10093640815554853236

`A033999(2*n)*A047760(A005408(n))`
-/

namespace A047761.P10093640815554853236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A047760 (A005408 n).toNat

end

end A047761.P10093640815554853236

/-! ## A047761.P14364854350174376592

`A047760(A005408(n))%A000244(n)`
-/

namespace A047761.P14364854350174376592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047760 (A005408 n).toNat) (A000244 n)

end

end A047761.P14364854350174376592

/-!
# A047762: Number of chiral pairs of dissectable polyhedra with n tetrahedral cells and symmetry of type E.

The programs for A047762, there is no canonical definition to state claims against.
-/

/-! ## A047762.P11121266362848132627

`A047763(A142150(n))`
-/

namespace A047762.P11121266362848132627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (A142150 n).toNat

end

end A047762.P11121266362848132627

/-! ## A047762.P7214294864781210659

`A047763(A057979(n+1))`
-/

namespace A047762.P7214294864781210659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (A057979 (n + 1)).toNat

end

end A047762.P7214294864781210659

/-! ## A047762.P1331536902473364232

`A047763(A174571(2*n))`
-/

namespace A047762.P1331536902473364232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (A174571 (2 * n)).toNat

end

end A047762.P1331536902473364232

/-! ## A047762.P4995605620549062985

`A047763(n-A026741(n))`
-/

namespace A047762.P4995605620549062985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 ((n : ℤ) - A026741 n).toNat

end

end A047762.P4995605620549062985

/-! ## A047762.P3013849364482590363

`A047763(gcd(n, A001057(n)))`
-/

namespace A047762.P3013849364482590363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (Int.gcd (n : ℤ) (A001057 n))

end

end A047762.P3013849364482590363

/-! ## A047762.P10864568694231107990

`A047763(gcd(∑[n], A004526(n)))`
-/

namespace A047762.P10864568694231107990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A004526 n))

end

end A047762.P10864568694231107990

/-! ## A047762.P15174027313992161210

`A047763((n+1)%A008619(n))`
-/

namespace A047762.P15174027313992161210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047763 (Int.tmod (n + 1 : ℤ) (A008619 n)).toNat

end

end A047762.P15174027313992161210

/-!
# A047763: a(n) = A047762(2n+1).

The programs for A047763, there is no canonical definition to state claims against.
-/

/-! ## A047763.P8840974042791445804

`A047762(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047763.P8840974042791445804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047762 (2 * n + 1)

end

end A047763.P8840974042791445804

/-! ## A047763.P3608997391356503450

`lcm(A033999(n), A047762(A005408(n)))`
-/

namespace A047763.P3608997391356503450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047762 (A005408 n).toNat)

end

end A047763.P3608997391356503450

/-! ## A047763.P15912656279483677158

`A033999(2*n)*A047762(A005408(n))`
-/

namespace A047763.P15912656279483677158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A047762 (A005408 n).toNat

end

end A047763.P15912656279483677158

/-! ## A047763.P4157512416132130528

`A055671(A055671(n))+A047762(A005408(n))`
-/

namespace A047763.P4157512416132130528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055671 n).toNat + A047762 (A005408 n).toNat

end

end A047763.P4157512416132130528

/-! ## A047763.P16890020522427075060

`A098158(A000217(n+1))+A047762(A005408(n))`
-/

namespace A047763.P16890020522427075060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 (A000217 (n + 1)).toNat + A047762 (A005408 n).toNat

end

end A047763.P16890020522427075060

/-! ## A047763.P2920719180124293175

`A047762(A005408(n))-A055671(n²)`
-/

namespace A047763.P2920719180124293175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047762 (A005408 n).toNat - A055671 (n ^ 2)

end

end A047763.P2920719180124293175

/-!
# A047764: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type Q.

The programs for A047764, there is no canonical definition to state claims against.
-/

/-! ## A047764.P10710834908138725860

`A047751(2*n+3)`
-/

namespace A047764.P10710834908138725860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (2 * n + 3)

end

end A047764.P10710834908138725860

/-! ## A047764.P2211571596797155096

`lcm(A033999(n), A047751(A047271(n+2)))`
-/

namespace A047764.P2211571596797155096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047751 (A047271 (n + 2)).toNat)

end

end A047764.P2211571596797155096

/-! ## A047764.P9765267195095992840

`A047751(A047271(n+2))+A000007(n+1)`
-/

namespace A047764.P9765267195095992840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A047271 (n + 2)).toNat + A000007 (n + 1)

end

end A047764.P9765267195095992840

/-! ## A047764.P6430081854215767696

`A047751(A047271(n+2))/A000005(floor(1/(n+1))!)`
-/

namespace A047764.P6430081854215767696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047751 (A047271 (n + 2)).toNat : ℚ) / (A000005 (Nat.factorial ⌊1 / (n + 1 : ℚ)⌋.toNat) : ℚ)

end

end A047764.P6430081854215767696

/-! ## A047764.P1996961259435470038

`A047751(A047271(n+2))+A008683(A046109(n+1))`
-/

namespace A047764.P1996961259435470038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A047271 (n + 2)).toNat + A008683 (A046109 (n + 1)).toNat

end

end A047764.P1996961259435470038

/-! ## A047764.P1498184235752038449

`A047751(A047271(n+2))%A018917(n)`
-/

namespace A047764.P1498184235752038449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047751 (A047271 (n + 2)).toNat) (A018917 n)

end

end A047764.P1498184235752038449

/-! ## A047764.P9211579518258366427

`A047751(A047271(n+2))/A285097(A044403(n+1))`
-/

namespace A047764.P9211579518258366427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047751 (A047271 (n + 2)).toNat : ℚ) / (A285097 (A044403 (n + 1)).toNat : ℚ)

end

end A047764.P9211579518258366427

/-! ## A047764.P8497303144955002573

`A047751(A047271(n+2))/Δ[A187829(n+1)]`
-/

namespace A047764.P8497303144955002573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047751 (A047271 (n + 2)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A047764.P8497303144955002573

/-!
# A047765: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type P.

The programs for A047765, there is no canonical definition to state claims against.
-/

/-! ## A047765.P5355574031897263155

`A047753(2*n+3)`
-/

namespace A047765.P5355574031897263155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047753 (2 * n + 3)

end

end A047765.P5355574031897263155

/-! ## A047765.P8042990285755491603

`A047767(A152271(n))`
-/

namespace A047765.P8042990285755491603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A152271 n).toNat

end

end A047765.P8042990285755491603

/-! ## A047765.P8611954904436927122

`A047767(A057979(n+2))`
-/

namespace A047765.P8611954904436927122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A057979 (n + 2)).toNat

end

end A047765.P8611954904436927122

/-! ## A047765.P974636070077035847

`A047767(A133265(n)/2)`
-/

namespace A047765.P974636070077035847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A047765.P974636070077035847

/-! ## A047765.P8759370616008163670

`A047767((A093178(n)+1)/2)`
-/

namespace A047765.P8759370616008163670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)).toNat

end

end A047765.P8759370616008163670

/-! ## A047765.P4486936031098780249

`A047764(3*n+5)-A047764(n+1)`
-/

namespace A047765.P4486936031098780249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (3 * n + 5) - A047764 (n + 1)

end

end A047765.P4486936031098780249

/-! ## A047765.P9827112503302112722

`A047767(A003602(A093178(n)))`
-/

namespace A047765.P9827112503302112722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A003602 (A093178 n).toNat).toNat

end

end A047765.P9827112503302112722

/-! ## A047765.P6435106744318517671

`A047767(A028310(∑[A001057(n)]))`
-/

namespace A047765.P6435106744318517671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047765.P6435106744318517671

/-! ## A047765.P172666493878443330

`A047767(A008619(Δ[A008794(n)]))`
-/

namespace A047765.P172666493878443330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A047765.P172666493878443330

/-! ## A047765.P8704127596725223974

`n%2*A047767(A008619(n))`
-/

namespace A047765.P8704127596725223974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A047767 (A008619 n).toNat

end

end A047765.P8704127596725223974

/-! ## A047765.P6848879482454373656

`∑{d}[n+1, A047767(#)*A063524((n+1)/#-1)]`
-/

namespace A047765.P6848879482454373656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047767 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A047765.P6848879482454373656

/-! ## A047765.P6631840598571861202

`A047767(A109400(∑[A028242(n)]))`
-/

namespace A047765.P6631840598571861202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A109400 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047765.P6631840598571861202

/-! ## A047765.P4337360368144599108

`A047767(A004737(∑[A008619(n)]))`
-/

namespace A047765.P4337360368144599108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A004737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A047765.P4337360368144599108

/-! ## A047765.P3114490373301669587

`A047767(A108756(∑[n]))`
-/

namespace A047765.P3114490373301669587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047767 (A108756 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047765.P3114490373301669587

/-!
# A047766: Number of dissectable polyhedra with n tetrahedral cells with symmetry of type N or chiral pairs with symmetry of type O.

The programs for A047766, there is no canonical definition to state claims against.
-/

/-! ## A047766.P3170063833489974516

`A047752(2*n+3)`
-/

namespace A047766.P3170063833489974516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (2 * n + 3)

end

end A047766.P3170063833489974516

/-! ## A047766.P6306295230985006649

`A047754(A005131(n)+1)`
-/

namespace A047766.P6306295230985006649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A005131 n + 1).toNat

end

end A047766.P6306295230985006649

/-! ## A047766.P12972830015794719752

`A047754(A131737(n)+1)`
-/

namespace A047766.P12972830015794719752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A131737 n + 1).toNat

end

end A047766.P12972830015794719752

/-! ## A047766.P14344380045377426099

`A047754(A131380(n+1))`
-/

namespace A047766.P14344380045377426099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A131380 (n + 1)).toNat

end

end A047766.P14344380045377426099

/-! ## A047766.P974127044315386885

`A047754(A367286(n+1))`
-/

namespace A047766.P974127044315386885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A367286 (n + 1)).toNat

end

end A047766.P974127044315386885

/-! ## A047766.P9432835300600741333

`A047754(A160191(n))`
-/

namespace A047766.P9432835300600741333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A160191 n).toNat

end

end A047766.P9432835300600741333

/-! ## A047766.P446932459035632434

`A047754(A026142(n+1))`
-/

namespace A047766.P446932459035632434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A026142 (n + 1)).toNat

end

end A047766.P446932459035632434

/-! ## A047766.P15990444828698448465

`A047754(A026215(n+1))`
-/

namespace A047766.P15990444828698448465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A026215 (n + 1)).toNat

end

end A047766.P15990444828698448465

/-! ## A047766.P4942598108680582254

`A047754(A338206(n+1))`
-/

namespace A047766.P4942598108680582254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A338206 (n + 1)).toNat

end

end A047766.P4942598108680582254

/-! ## A047766.P14246700013129882474

`A047754(A342369(n+1))`
-/

namespace A047766.P14246700013129882474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A342369 (n + 1)).toNat

end

end A047766.P14246700013129882474

/-! ## A047766.P7499094439059621555

`A047754(A173773(n))`
-/

namespace A047766.P7499094439059621555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (A173773 n).toNat

end

end A047766.P7499094439059621555

/-!
# A047767: a(n) = A047765(2n).

The programs for A047767, there is no canonical definition to state claims against.
-/

/-! ## A047767.P16771280465032033794

`A047765(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047767.P16771280465032033794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (2 * (n + 1))

end

end A047767.P16771280465032033794

/-! ## A047767.P5802922994220953304

`A047753(A004766(n+1))`
-/

namespace A047767.P5802922994220953304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047753 (A004766 (n + 1)).toNat

end

end A047767.P5802922994220953304

/-! ## A047767.P15384819210364445369

`A047753(A016813(n+1))`
-/

namespace A047767.P15384819210364445369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047753 (A016813 (n + 1)).toNat

end

end A047767.P15384819210364445369

/-! ## A047767.P13575233452905823033

`A047753(A222945(n+1))`
-/

namespace A047767.P13575233452905823033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047753 (A222945 (n + 1)).toNat

end

end A047767.P13575233452905823033

/-! ## A047767.P5716516187225791753

`A047749(n+1)-A047764(2*(n+1))`
-/

namespace A047767.P5716516187225791753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (n + 1) - A047764 (2 * (n + 1))

end

end A047767.P5716516187225791753

/-! ## A047767.P10785348710833029283

`A047764(A016933(n+1))-A047764(2*(n+1))`
-/

namespace A047767.P10785348710833029283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A016933 (n + 1)).toNat - A047764 (2 * (n + 1))

end

end A047767.P10785348710833029283

/-! ## A047767.P9153914037379467154

`A047765(A103517(n))%A000032(2*n)`
-/

namespace A047767.P9153914037379467154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047765 (A103517 n).toNat) (A000032 (2 * n))

end

end A047767.P9153914037379467154

/-!
# A047769: Number of chiral pairs of dissectable polyhedra with n tetrahedral cells and symmetry of type M.

The programs for A047769, there is no canonical definition to state claims against.
-/

/-! ## A047769.P2330946799470256644

`A047770(A152271(n))`
-/

namespace A047769.P2330946799470256644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (A152271 n).toNat

end

end A047769.P2330946799470256644

/-! ## A047769.P27291527034865959

`A047770(A057979(n+2))`
-/

namespace A047769.P27291527034865959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (A057979 (n + 2)).toNat

end

end A047769.P27291527034865959

/-! ## A047769.P13716561218361490678

`A047770((n+1)/A141310(n))`
-/

namespace A047769.P13716561218361490678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A141310 n : ℚ))).toNat

end

end A047769.P13716561218361490678

/-! ## A047769.P17976740785850336942

`A047770(gcd(n+1, A008619(n)))`
-/

namespace A047769.P17976740785850336942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A047769.P17976740785850336942

/-! ## A047769.P2035556211738242300

`A047765(n+1)+3*A047771(n+1)`
-/

namespace A047769.P2035556211738242300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (n + 1) + 3 * A047771 (n + 1)

end

end A047769.P2035556211738242300

/-! ## A047769.P12482182202968386475

`A047770(A008619(n*A000035(n)))`
-/

namespace A047769.P12482182202968386475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047770 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A047769.P12482182202968386475

/-! ## A047769.P13951653627820239772

`∑{d}[n+1, A047770(#)*A084928((n+1)/#)]`
-/

namespace A047769.P13951653627820239772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047770 d * A084928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047769.P13951653627820239772

/-! ## A047769.P9668493499068911256

`∑{d}[n+1, A047770(#)*A063524((n+1)/#-1)]`
-/

namespace A047769.P9668493499068911256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047770 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A047769.P9668493499068911256

/-! ## A047769.P11824800250966976922

`∑{d}[n+1, A047770(#)*A178333((n+1)/#-1)]`
-/

namespace A047769.P11824800250966976922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047770 d * A178333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A047769.P11824800250966976922

/-!
# A047770: a(n) = A047769(2n).

The programs for A047770, there is no canonical definition to state claims against.
-/

/-! ## A047770.P2846888175436684239

`A047769(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047770.P2846888175436684239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047769 (2 * (n + 1))

end

end A047770.P2846888175436684239

/-! ## A047770.P1276483394027333541

`record[A047769(n+1)]`
-/

namespace A047770.P1276483394027333541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047770.P1276483394027333541

/-! ## A047770.P6762411898087423172

`record[Δ[A047769(A028310(n))]]`
-/

namespace A047770.P6762411898087423172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047769 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047770.P6762411898087423172

/-! ## A047770.P7255580368005472579

`record[A047754(n+1)-A047752(n+1)]`
-/

namespace A047770.P7255580368005472579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047754 (n + 1) - A047752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047770.P7255580368005472579

/-! ## A047770.P2106976626045934979

`record[A047765(n+1)+3*A047771(n+1)]`
-/

namespace A047770.P2106976626045934979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047765 (n + 1) + 3 * A047771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047770.P2106976626045934979

/-! ## A047770.P71124172458285105

`A047755(n+1)-A047754(A004773(n+1))`
-/

namespace A047770.P71124172458285105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047755 (n + 1) - A047754 (A004773 (n + 1)).toNat

end

end A047770.P71124172458285105

/-! ## A047770.P2413471875277222090

`A047766(Δ[A001859(2*n+1)])-A047766(2*(n+1))`
-/

namespace A047770.P2413471875277222090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (f1 (n + 1) - f1 n).toNat - A047766 (2 * (n + 1))

end

end A047770.P2413471875277222090

/-!
# A047771: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type L.

The programs for A047771, there is no canonical definition to state claims against.
-/

/-! ## A047771.P5275776006817163317

`A047758(2*n+3)`
-/

namespace A047771.P5275776006817163317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047758 (2 * n + 3)

end

end A047771.P5275776006817163317

/-! ## A047771.P3524651435662280703

`A047772(A152271(n))`
-/

namespace A047771.P3524651435662280703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (A152271 n).toNat

end

end A047771.P3524651435662280703

/-! ## A047771.P12191621392175673262

`A047772(A057979(n)+1)`
-/

namespace A047771.P12191621392175673262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (A057979 n + 1).toNat

end

end A047771.P12191621392175673262

/-! ## A047771.P11026406551723769480

`A047772(A133265(n)/2)`
-/

namespace A047771.P11026406551723769480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A047771.P11026406551723769480

/-! ## A047771.P18002656809383243428

`A047772(gcd(∑[n], A008619(n)))`
-/

namespace A047771.P18002656809383243428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A008619 n))

end

end A047771.P18002656809383243428

/-! ## A047771.P17894791146325061971

`A047772(gcd(n+1, A001057(n)))`
-/

namespace A047771.P17894791146325061971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (Int.gcd (n + 1 : ℤ) (A001057 n))

end

end A047771.P17894791146325061971

/-! ## A047771.P8503211709665069530

`A047772(A108756(∑[n]))`
-/

namespace A047771.P8503211709665069530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047772 (A108756 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047771.P8503211709665069530

/-! ## A047771.P11452093442951416359

`∑{d}[n+1, A047772(#)*A084928((n+1)/#)]`
-/

namespace A047771.P11452093442951416359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047772 d * A084928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A047771.P11452093442951416359

/-!
# A047772: Dissections: bisection of A047771.

The programs for A047772, there is no canonical definition to state claims against.
-/

/-! ## A047772.P14520855679739067045

`A047771(2*(n+1))`
-/

namespace A047772.P14520855679739067045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (2 * (n + 1))

end

end A047772.P14520855679739067045

/-! ## A047772.P606633775215708835

`A047758(3*n+5+n)`
-/

namespace A047772.P606633775215708835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047758 (3 * n + 5 + n)

end

end A047772.P606633775215708835

/-! ## A047772.P4863481258794004231

`or(char[2], A047771(A103517(n)))`
-/

namespace A047772.P4863481258794004231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A047771 (A103517 n).toNat)

end

end A047772.P4863481258794004231

/-! ## A047772.P11006994296296294668

`char[A007318(n)]*A047771(A103517(n))`
-/

namespace A047772.P11006994296296294668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A047771 (A103517 n).toNat

end

end A047772.P11006994296296294668

/-! ## A047772.P6839438227863006360

`A047771(A103517(n))+A000007(n+1)`
-/

namespace A047772.P6839438227863006360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A103517 n).toNat + A000007 (n + 1)

end

end A047772.P6839438227863006360

/-! ## A047772.P2040080286637387228

`(1-A000007(n))*A047771(A103517(n))`
-/

namespace A047772.P2040080286637387228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A047771 (A103517 n).toNat

end

end A047772.P2040080286637387228

/-! ## A047772.P3181639405176753761

`A047771(A103517(n))+A000122(A051698(n))`
-/

namespace A047772.P3181639405176753761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A103517 n).toNat + A000122 (A051698 n).toNat

end

end A047772.P3181639405176753761

/-! ## A047772.P8112848668329415289

`A014963(A008458(n))*A047771(A103517(n))`
-/

namespace A047772.P8112848668329415289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A047771 (A103517 n).toNat

end

end A047772.P8112848668329415289

/-! ## A047772.P8211134126141759892

`A014963(A016825(n))*A047771(A103517(n))`
-/

namespace A047772.P8211134126141759892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A047771 (A103517 n).toNat

end

end A047772.P8211134126141759892

/-! ## A047772.P16838247839008902088

`A047771(A014963(n+1))+A047771(A103517(n))`
-/

namespace A047772.P16838247839008902088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047771 (A014963 (n + 1)).toNat + A047771 (A103517 n).toNat

end

end A047772.P16838247839008902088

/-!
# A047773: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type D.

The programs for A047773, there is no canonical definition to state claims against.
-/

/-! ## A047773.P13684676885758038475

`val(A067180(n+1)!, A030634(n+1))`
-/

namespace A047773.P13684676885758038475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A067180 (n + 1)).toNat) (A030634 (n + 1)).toNat

end

end A047773.P13684676885758038475

/-! ## A047773.P7056160401834199689

`A218604(A218585(n+1)+A218577(3*(n+1)))`
-/

namespace A047773.P7056160401834199689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 (A218585 (n + 1) + A218577 (3 * (n + 1))).toNat

end

end A047773.P7056160401834199689

/-! ## A047773.P433711678948872577

`∑{e}[A048103(3*n+1)+A036766(n), #-1]`
-/

namespace A047773.P433711678948872577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (3 * n + 1) + A036766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A047773.P433711678948872577

/-! ## A047773.P11851858589029468295

`A307319(A307307(n+1)%A288807(n))`
-/

namespace A047773.P11851858589029468295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (Int.tmod (A307307 (n + 1)) (A288807 n)).toNat

end

end A047773.P11851858589029468295

/-! ## A047773.P7314639626633607159

`A065033(A000642(n+1))%A061375(n+1)`
-/

namespace A047773.P7314639626633607159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A000642 (n + 1)).toNat) (A061375 (n + 1))

end

end A047773.P7314639626633607159

/-!
# A047774: Number of chiral pairs of dissectable polyhedra with n tetrahedral cells and symmetry of type C.

The programs for A047774, there is no canonical definition to state claims against.
-/

/-! ## A047774.P4673010773870227670

`A121180(A092942(A000007(n)+n))`
-/

namespace A047774.P4673010773870227670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121180 (A092942 (A000007 n + (n : ℤ)).toNat).toNat

end

end A047774.P4673010773870227670

/-! ## A047774.P1309359851285477922

`A121180(gcd(A062919(n), A092942(n)))`
-/

namespace A047774.P1309359851285477922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121180 (Int.gcd (A062919 n) (A092942 n))

end

end A047774.P1309359851285477922

/-! ## A047774.P7789205085105515590

`A121180(or(A000007(n), A092942(n)))`
-/

namespace A047774.P7789205085105515590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121180 (Int.lor (A000007 n) (A092942 n)).toNat

end

end A047774.P7789205085105515590

/-! ## A047774.P17273577325636857284

`A121180(xor(A000007(n), A092942(n)))`
-/

namespace A047774.P17273577325636857284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121180 (Int.xor (A000007 n) (A092942 n)).toNat

end

end A047774.P17273577325636857284

/-! ## A047774.P16192491680533279340

`A121180(or(A047751(n+1), A092942(n)))`
-/

namespace A047774.P16192491680533279340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121180 (Int.lor (A047751 (n + 1)) (A092942 n)).toNat

end

end A047774.P16192491680533279340

/-!
# A047775: Number of dissectable polyhedra with n tetrahedral cells and symmetry of type B.

The programs for A047775, there is no canonical definition to state claims against.
-/

/-! ## A047775.P4973176013619138250

`1/2*(A047749(n+1)-2*A047773(n+1)-2*A047760(n+1)-A047753(n+1)-A047751(n+1)-A047764(n+1)-A047765(n+1))`
-/

namespace A047775.P4973176013619138250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A047749 (n + 1) - 2 * A047773 (n + 1) - 2 * A047760 (n + 1) - A047753 (n + 1) - A047751 (n + 1) - A047764 (n + 1) - A047765 (n + 1) : ℚ)

end

end A047775.P4973176013619138250

/-! ## A047775.P3479665102557942054

`A024317(A056569(n))`
-/

namespace A047775.P3479665102557942054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A056569 n).toNat

end

end A047775.P3479665102557942054

/-! ## A047775.P15642638904940001100

`A001432(A081408(n+1))`
-/

namespace A047775.P15642638904940001100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001432 (A081408 (n + 1)).toNat

end

end A047775.P15642638904940001100

/-! ## A047775.P5858379041740658653

`∑[A305025(A000055(n)²)]`
-/

namespace A047775.P5858379041740658653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A000055 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047775.P5858379041740658653

/-! ## A047775.P1363480828070101139

`A292115(A006979(n+1)+1)`
-/

namespace A047775.P1363480828070101139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292115 (A006979 (n + 1) + 1).toNat

end

end A047775.P1363480828070101139

/-!
# A047776: Number of chiral pairs of asymmetric dissectable polyhedra with n tetrahedral cells (type A).

The programs for A047776, there is no canonical definition to state claims against.
-/

/-! ## A047776.P14744416686033919514

`A059995(A154654(n)-A007092(n))`
-/

namespace A047776.P14744416686033919514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A154654 n - A007092 n).toNat

end

end A047776.P14744416686033919514

/-! ## A047776.P2635303954200867693

`A059995(A154654(n)-A264975(n))`
-/

namespace A047776.P2635303954200867693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A154654 n - A264975 n).toNat

end

end A047776.P2635303954200867693

/-! ## A047776.P5569188444503606202

`A059995(A154654(n)-A213166(n+1))`
-/

namespace A047776.P5569188444503606202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A154654 n - A213166 (n + 1)).toNat

end

end A047776.P5569188444503606202

/-!
# A047778: Concatenation of the first n numbers in binary (converted to base 10).

The programs for A047778, the canonical program `A047778.P14137822839373427457` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047778 has offset 1).

The definition of A047778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047778.P14137822839373427457

`a(n-1)*2^(1+floor(log2(n+1)))+n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047778

/-- `a(n-1)*2^(1+floor(log2(n+1)))+n+1` -/
def P14137822839373427457.Spec : Prop :=
  ∀ n, (P14137822839373427457.a n : ℤ) = A047778 (n + 1)

theorem P14137822839373427457.correct : P14137822839373427457.Spec := by
  intro n
  simp only [A047778, Nat.add_sub_cancel]

end A047778

/-! ## A047778.P5906876031001323605

`A055143(A001855(n+2))`
-/

namespace A047778.P5906876031001323605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (A001855 (n + 2)).toNat

end

end A047778.P5906876031001323605

namespace A047778

/-- `A055143(A001855(n+2))` -/
def P5906876031001323605.Spec : Prop :=
  ∀ n, P5906876031001323605.a n = A047778 (n + 1)

end A047778

/-! ## A047778.P15155812844791689108

`A055143(∑[∑[A036987(n)]])`
-/

namespace A047778.P15155812844791689108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047778.P15155812844791689108

namespace A047778

/-- `A055143(∑[∑[A036987(n)]])` -/
def P15155812844791689108.Spec : Prop :=
  ∀ n, P15155812844791689108.a n = A047778 (n + 1)

end A047778

/-! ## A047778.P1256567139083093214

`A055143(∑[A070939(n+1)])`
-/

namespace A047778.P1256567139083093214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047778.P1256567139083093214

namespace A047778

/-- `A055143(∑[A070939(n+1)])` -/
def P1256567139083093214.Spec : Prop :=
  ∀ n, P1256567139083093214.a n = A047778 (n + 1)

end A047778

/-! ## A047778.P13561490746279317302

`A055143(A296349(n+2)-1)`
-/

namespace A047778.P13561490746279317302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055143 (A296349 (n + 2) - 1).toNat

end

end A047778.P13561490746279317302

namespace A047778

/-- `A055143(A296349(n+2)-1)` -/
def P13561490746279317302.Spec : Prop :=
  ∀ n, P13561490746279317302.a n = A047778 (n + 1)

end A047778

/-!
# A047779: Abundant or perfect numbers k such that neither k-1 nor k+1 is a prime.

The programs for A047779, the canonical program `A047779.P5728304473776711494` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047779 has offset 1).

The definition of A047779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1757 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047779.P5728304473776711494

`∩[A023196(n+1), A079364(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047779

/-- `∩[A023196(n+1), A079364(n+1)]` -/
def P5728304473776711494.Spec : Prop :=
  ∀ n, (P5728304473776711494.a n : ℤ) = A047779 (n + 1)

theorem P5728304473776711494.correct : P5728304473776711494.Spec := by
  intro n
  simp only [A047779, Nat.add_sub_cancel]

end A047779

/-! ## A047779.P2616381615740824157

`∩[A079364(n+1), A326133(n+1)]`
-/

namespace A047779.P2616381615740824157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P2616381615740824157

namespace A047779

/-- `∩[A079364(n+1), A326133(n+1)]` -/
def P2616381615740824157.Spec : Prop :=
  ∀ n, (P2616381615740824157.a n : ℤ) = A047779 (n + 1)

end A047779

/-! ## A047779.P2077498021205429850

`∩[A023196(n+1), A099047(n+1)]`
-/

namespace A047779.P2077498021205429850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P2077498021205429850

namespace A047779

/-- `∩[A023196(n+1), A099047(n+1)]` -/
def P2077498021205429850.Spec : Prop :=
  ∀ n, (P2077498021205429850.a n : ℤ) = A047779 (n + 1)

end A047779

/-! ## A047779.P4614366200215649409

`∩[A099047(n+1), A326133(n+1)]`
-/

namespace A047779.P4614366200215649409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P4614366200215649409

namespace A047779

/-- `∩[A099047(n+1), A326133(n+1)]` -/
def P4614366200215649409.Spec : Prop :=
  ∀ n, (P4614366200215649409.a n : ℤ) = A047779 (n + 1)

end A047779

/-! ## A047779.P9626377448416153886

`∩[A061673(n+1), A175837(n+1)]`
-/

namespace A047779.P9626377448416153886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047779.P9626377448416153886

namespace A047779

/-- `∩[A061673(n+1), A175837(n+1)]` -/
def P9626377448416153886.Spec : Prop :=
  ∀ n, (P9626377448416153886.a n : ℤ) = A047779 (n + 1)

end A047779

/-!
# A047780: Number of inequivalent ways to color faces of a cube using at most n colors.

The programs for A047780, the canonical program `A047780.P242356902050001316` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047780 has offset 0).

The definition of A047780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047780.P13696835206301506314

`(n^6+3*n^4+12*n^3+8*n²)/24`
-/

namespace A047780.P13696835206301506314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + 3 * n ^ 4 + 12 * n ^ 3 + 8 * n ^ 2 : ℚ) / 24

end

end A047780.P13696835206301506314

namespace A047780

/-- `(n^6+3*n^4+12*n^3+8*n²)/24` -/
def P13696835206301506314.Spec : Prop :=
  ∀ n, P13696835206301506314.a n = (A047780 n : ℚ)

end A047780

/-! ## A047780.P242356902050001316

`n+8*C(n, 2)+30*C(n, 3)+68*C(n, 4)+75*C(n, 5)+30*C(n, 6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047780

/-- `n+8*C(n, 2)+30*C(n, 3)+68*C(n, 4)+75*C(n, 5)+30*C(n, 6)` -/
def P242356902050001316.Spec : Prop :=
  ∀ n, (P242356902050001316.a n : ℤ) = A047780 n

theorem P242356902050001316.correct : P242356902050001316.Spec := by
  intro n
  simp only [A047780]

end A047780

/-! ## A047780.P14955104184378437042

`floor(A115286(n)/4)`
-/

namespace A047780.P14955104184378437042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115286 n : ℚ) / 4⌋

end

end A047780.P14955104184378437042

namespace A047780

/-- `floor(A115286(n)/4)` -/
def P14955104184378437042.Spec : Prop :=
  ∀ n, P14955104184378437042.a n = A047780 n

end A047780

/-! ## A047780.P395473370160786233

`∑[A100790(n)]-A100790(n)`
-/

namespace A047780.P395473370160786233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100790 n

end

end A047780.P395473370160786233

namespace A047780

/-- `∑[A100790(n)]-A100790(n)` -/
def P395473370160786233.Spec : Prop :=
  ∀ n, P395473370160786233.a n = A047780 n

end A047780

/-! ## A047780.P7515598923747515475

`A115286(n)/4*A001222(A005145(n+1))`
-/

namespace A047780.P7515598923747515475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115286 n : ℚ) / 4 * (A001222 (A005145 (n + 1)).toNat : ℚ)

end

end A047780.P7515598923747515475

namespace A047780

/-- `A115286(n)/4*A001222(A005145(n+1))` -/
def P7515598923747515475.Spec : Prop :=
  ∀ n, P7515598923747515475.a n = (A047780 n : ℚ)

end A047780

/-! ## A047780.P15410920177586447804

`A093566(n+1)+A000292(A000217(n))`
-/

namespace A047780.P15410920177586447804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 1) + A000292 (A000217 n).toNat

end

end A047780.P15410920177586447804

namespace A047780

/-- `A093566(n+1)+A000292(A000217(n))` -/
def P15410920177586447804.Spec : Prop :=
  ∀ n, P15410920177586447804.a n = A047780 n

end A047780

/-! ## A047780.P11384751760156675113

`A011842(n²)+A002620(n²+n)`
-/

namespace A047780.P11384751760156675113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 (n ^ 2) + A002620 (n ^ 2 + n)

end

end A047780.P11384751760156675113

namespace A047780

/-- `A011842(n²)+A002620(n²+n)` -/
def P11384751760156675113.Spec : Prop :=
  ∀ n, P11384751760156675113.a n = A047780 n

end A047780

/-!
# A047781: a(n) = Sum_{k=0..n-1} binomial(n-1,k)*binomial(n+k,k). Also a(n) = T(n,n), array T as in A049600.

The programs for A047781, the canonical program `A047781.P7244301787128564813` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047781 has offset 0).

The definition of A047781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047781.P193327415557176464

`record[A000035(n)*A247623(n)]`
-/

namespace A047781.P193327415557176464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A247623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047781.P193327415557176464

namespace A047781

/-- `record[A000035(n)*A247623(n)]` -/
def P193327415557176464.Spec : Prop :=
  ∀ n, P193327415557176464.a n = A047781 n

end A047781

/-! ## A047781.P3980267373947711674

`record[lcm(A188510(n), A247623(n))]`
-/

namespace A047781.P3980267373947711674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A188510 n) (A247623 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047781.P3980267373947711674

namespace A047781

/-- `record[lcm(A188510(n), A247623(n))]` -/
def P3980267373947711674.Spec : Prop :=
  ∀ n, (P3980267373947711674.a n : ℤ) = A047781 n

end A047781

/-! ## A047781.P8242675248214660559

`record[(A014681(n)-n)*A247623(n)]`
-/

namespace A047781.P8242675248214660559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A247623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047781.P8242675248214660559

namespace A047781

/-- `record[(A014681(n)-n)*A247623(n)]` -/
def P8242675248214660559.Spec : Prop :=
  ∀ n, P8242675248214660559.a n = A047781 n

end A047781

/-! ## A047781.P12305015927338430873

`A247623(A004273(n))-A000007(n)`
-/

namespace A047781.P12305015927338430873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247623 (A004273 n).toNat - A000007 n

end

end A047781.P12305015927338430873

namespace A047781

/-- `A247623(A004273(n))-A000007(n)` -/
def P12305015927338430873.Spec : Prop :=
  ∀ n, P12305015927338430873.a n = A047781 n

end A047781

/-! ## A047781.P2884959133601068287

`A057427(n)*A247623(A004273(n))`
-/

namespace A047781.P2884959133601068287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A247623 (A004273 n).toNat

end

end A047781.P2884959133601068287

namespace A047781

/-- `A057427(n)*A247623(A004273(n))` -/
def P2884959133601068287.Spec : Prop :=
  ∀ n, P2884959133601068287.a n = A047781 n

end A047781

/-! ## A047781.P2476344184168041703

`record[A124625(A124625(n))*A247623(n)]`
-/

namespace A047781.P2476344184168041703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A124625 n).toNat * A247623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047781.P2476344184168041703

namespace A047781

/-- `record[A124625(A124625(n))*A247623(n)]` -/
def P2476344184168041703.Spec : Prop :=
  ∀ n, P2476344184168041703.a n = A047781 n

end A047781

/-! ## A047781.P10447678982872593704

`A002003(n)/2`
-/

namespace A047781.P10447678982872593704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002003 n : ℚ) / 2

end

end A047781.P10447678982872593704

namespace A047781

/-- `A002003(n)/2` -/
def P10447678982872593704.Spec : Prop :=
  ∀ n, P10447678982872593704.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P7244301787128564813

`floor(A123164(n)/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A047781

/-- `floor(A123164(n)/2)` -/
def P7244301787128564813.Spec : Prop :=
  ∀ n, P7244301787128564813.a n = A047781 n

theorem P7244301787128564813.correct : P7244301787128564813.Spec := by
  intro n
  simp only [A047781]

end A047781

/-! ## A047781.P15580875798199989901

`floor(A241023(n)/4)`
-/

namespace A047781.P15580875798199989901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241023 n : ℚ) / 4⌋

end

end A047781.P15580875798199989901

namespace A047781

/-- `floor(A241023(n)/4)` -/
def P15580875798199989901.Spec : Prop :=
  ∀ n, P15580875798199989901.a n = A047781 n

end A047781

/-! ## A047781.P6655014977074244953

`(A236407(n)-n)/2`
-/

namespace A047781.P6655014977074244953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236407 n - (n : ℤ) : ℚ) / 2

end

end A047781.P6655014977074244953

namespace A047781

/-- `(A236407(n)-n)/2` -/
def P6655014977074244953.Spec : Prop :=
  ∀ n, P6655014977074244953.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P4188648128363621969

`A001850(n)-A176479(n)`
-/

namespace A047781.P4188648128363621969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A176479 n

end

end A047781.P4188648128363621969

namespace A047781

/-- `A001850(n)-A176479(n)` -/
def P4188648128363621969.Spec : Prop :=
  ∀ n, P4188648128363621969.a n = A047781 n

end A047781

/-! ## A047781.P7501899707922376173

`A001850(n)-A247623(2*n)`
-/

namespace A047781.P7501899707922376173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A247623 (2 * n)

end

end A047781.P7501899707922376173

namespace A047781

/-- `A001850(n)-A247623(2*n)` -/
def P7501899707922376173.Spec : Prop :=
  ∀ n, P7501899707922376173.a n = A047781 n

end A047781

/-! ## A047781.P17212939061900119110

`(A123164(n)-A000007(n))/2`
-/

namespace A047781.P17212939061900119110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123164 n - A000007 n : ℚ) / 2

end

end A047781.P17212939061900119110

namespace A047781

/-- `(A123164(n)-A000007(n))/2` -/
def P17212939061900119110.Spec : Prop :=
  ∀ n, P17212939061900119110.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P3700179792658641029

`A123164(n)/2*char[A123185(n)]`
-/

namespace A047781.P3700179792658641029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123185 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123164 n : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A047781.P3700179792658641029

namespace A047781

/-- `A123164(n)/2*char[A123185(n)]` -/
def P3700179792658641029.Spec : Prop :=
  ∀ n, P3700179792658641029.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P966897582739225448

`(A050147(n+1)-A050146(n))/2`
-/

namespace A047781.P966897582739225448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050147 (n + 1) - A050146 n : ℚ) / 2

end

end A047781.P966897582739225448

namespace A047781

/-- `(A050147(n+1)-A050146(n))/2` -/
def P966897582739225448.Spec : Prop :=
  ∀ n, P966897582739225448.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P13404996319817046371

`A026003(2*n)-A247623(2*n)`
-/

namespace A047781.P13404996319817046371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n) - A247623 (2 * n)

end

end A047781.P13404996319817046371

namespace A047781

/-- `A026003(2*n)-A247623(2*n)` -/
def P13404996319817046371.Spec : Prop :=
  ∀ n, P13404996319817046371.a n = A047781 n

end A047781

/-! ## A047781.P11776474961994531048

`(A050146(n+1)-A247630(2*n))/2`
-/

namespace A047781.P11776474961994531048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050146 (n + 1) - A247630 (2 * n) : ℚ) / 2

end

end A047781.P11776474961994531048

namespace A047781

/-- `(A050146(n+1)-A247630(2*n))/2` -/
def P11776474961994531048.Spec : Prop :=
  ∀ n, P11776474961994531048.a n = (A047781 n : ℚ)

end A047781

/-! ## A047781.P14777886694413381456

`A001221(A001316(n))/2*A123164(n)`
-/

namespace A047781.P14777886694413381456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A001316 n).toNat : ℚ) / 2 * (A123164 n : ℚ)

end

end A047781.P14777886694413381456

namespace A047781

/-- `A001221(A001316(n))/2*A123164(n)` -/
def P14777886694413381456.Spec : Prop :=
  ∀ n, P14777886694413381456.a n = (A047781 n : ℚ)

end A047781

/-!
# A047783: a(n) = floor(Li(n)).

The programs for A047783, there is no canonical definition to state claims against.
-/

/-! ## A047783.P2773319220797760848

`A047785(n+2)-1`
-/

namespace A047783.P2773319220797760848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047785 (n + 2) - 1

end

end A047783.P2773319220797760848

/-! ## A047783.P11335493816782926133

`A023443(A047785(n+2))`
-/

namespace A047783.P11335493816782926133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047785 (n + 2)).toNat

end

end A047783.P11335493816782926133

/-! ## A047783.P546603658100430492

`A023444(A047785(n+2)+1)`
-/

namespace A047783.P546603658100430492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A047785 (n + 2) + 1).toNat

end

end A047783.P546603658100430492

/-! ## A047783.P7676565504815463641

`A282870(n+2)+A000720(n+2)`
-/

namespace A047783.P7676565504815463641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282870 (n + 2) + A000720 (n + 2)

end

end A047783.P7676565504815463641

/-! ## A047783.P13542033961635741971

`A106400(2^A007814(n+1))+A047785(n+2)`
-/

namespace A047783.P13542033961635741971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007814 (n + 1) : ℤ))).toNat + A047785 (n + 2)

end

end A047783.P13542033961635741971

/-! ## A047783.P11533444712407732108

`A227964(A007318(C(2, n))+1)+A047785(n+2)`
-/

namespace A047783.P11533444712407732108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227964 (A007318 (Nat.choose 2 n) + 1).toNat + A047785 (n + 2)

end

end A047783.P11533444712407732108

/-! ## A047783.P16561973854660999956

`A000027(A047785(n+2)+A004174(gcd(n, n+1)))`
-/

namespace A047783.P16561973854660999956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A047785 (n + 2) + A004174 (Nat.gcd n (n + 1))).toNat

end

end A047783.P16561973854660999956

/-! ## A047783.P9796358546078970216

`A057428(n+1)+A047785(n+2)`
-/

namespace A047783.P9796358546078970216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A047785 (n + 2)

end

end A047783.P9796358546078970216

/-! ## A047783.P3629376782683331786

`A033270(n+2)+A282870(n+2)+1`
-/

namespace A047783.P3629376782683331786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 2) + (A282870 (n + 2) + 1)

end

end A047783.P3629376782683331786

/-! ## A047783.P9936976707845910246

`A282870(n+2)+A230980(n+2)`
-/

namespace A047783.P9936976707845910246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282870 (n + 2) + A230980 (n + 2)

end

end A047783.P9936976707845910246

/-! ## A047783.P16999501615101988837

`A277458(A007814(2*n+1))+A047785(n+2)`
-/

namespace A047783.P16999501615101988837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277458 (A007814 (2 * n + 1)).toNat + A047785 (n + 2)

end

end A047783.P16999501615101988837

/-! ## A047783.P5209150093917682387

`A305807(p?[A305807(n+1)])+A047785(n+2)`
-/

namespace A047783.P5209150093917682387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A047785 (n + 2)

end

end A047783.P5209150093917682387

/-! ## A047783.P5006134401809631375

`A305807(A099389(n+1))+A047785(n+2)`
-/

namespace A047783.P5006134401809631375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A099389 (n + 1)).toNat + A047785 (n + 2)

end

end A047783.P5006134401809631375

/-! ## A047783.P16287286557642924478

`A007318(C(A047785(n+2), 2)+1)`
-/

namespace A047783.P16287286557642924478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A047785 (n + 2)).toNat 2 + 1)

end

end A047783.P16287286557642924478

/-! ## A047783.P11756958658037756539

`A088226(A047785(n+2)²)`
-/

namespace A047783.P11756958658037756539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A047785 (n + 2) ^ 2).toNat

end

end A047783.P11756958658037756539

/-! ## A047783.P3995827416878873971

`A002262(A047785(n+2)+A000096(n))`
-/

namespace A047783.P3995827416878873971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A047785 (n + 2) + A000096 n).toNat

end

end A047783.P3995827416878873971

/-!
# A047784: Nearest integer to Li(n).

The programs for A047784, there is no canonical definition to state claims against.
-/

/-! ## A047784.P13939947742483126982

`A052435(n+2)+A000720(n+2)`
-/

namespace A047784.P13939947742483126982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052435 (n + 2) + A000720 (n + 2)

end

end A047784.P13939947742483126982

/-! ## A047784.P3549738735880109473

`A052435(n+2)+∑[A010051(n+2)]`
-/

namespace A047784.P3549738735880109473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052435 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047784.P3549738735880109473

/-! ## A047784.P4672481985251960292

`A099802(A080513(n))+A052435(n+2)`
-/

namespace A047784.P4672481985251960292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A080513 n).toNat + A052435 (n + 2)

end

end A047784.P4672481985251960292

/-! ## A047784.P8308977647606923385

`A050499(n+2)+A052435(n+2)-A053622(n+2)`
-/

namespace A047784.P8308977647606923385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) + (A052435 (n + 2) - A053622 (n + 2))

end

end A047784.P8308977647606923385

/-! ## A047784.P16561189295706191937

`A047783(n+2)+A052435(n+2)-A282870(n+2)`
-/

namespace A047784.P16561189295706191937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) + (A052435 (n + 2) - A282870 (n + 2))

end

end A047784.P16561189295706191937

/-! ## A047784.P7255337844612114512

`A052435(n+2)+Δ[A046992(n+1)]`
-/

namespace A047784.P7255337844612114512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052435 (n + 2) + (f1 (n + 1) - f1 n)

end

end A047784.P7255337844612114512

/-! ## A047784.P3549614602549214212

`A230980(n+2)+A052435(n+2)`
-/

namespace A047784.P3549614602549214212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2) + A052435 (n + 2)

end

end A047784.P3549614602549214212

/-! ## A047784.P4317078493792136739

`A319951(lt[A319981(n+4), A319956(2*(n+2))])`
-/

namespace A047784.P4317078493792136739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319981 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319956 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A047784.P4317078493792136739

/-!
# A047785: a(n) = ceiling(Li(n)).

The programs for A047785, there is no canonical definition to state claims against.
-/

/-! ## A047785.P14399450097187465698

`A047783(n+2)+1`
-/

namespace A047785.P14399450097187465698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2) + 1

end

end A047785.P14399450097187465698

/-! ## A047785.P2048856972811229783

`A020725(A047783(n+2))`
-/

namespace A047785.P2048856972811229783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A047783 (n + 2)).toNat

end

end A047785.P2048856972811229783

/-! ## A047785.P5303767393289254683

`A282870(n+2)+A000720(n+2)+1`
-/

namespace A047785.P5303767393289254683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282870 (n + 2) + (A000720 (n + 2) + 1)

end

end A047785.P5303767393289254683

/-! ## A047785.P11190248147168450019

`A020725(A282870(n+2)+A000720(n+2))`
-/

namespace A047785.P11190248147168450019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A282870 (n + 2) + A000720 (n + 2)).toNat

end

end A047785.P11190248147168450019

/-! ## A047785.P6237154704425571734

`A282870(n+2)+A036234(n+2)`
-/

namespace A047785.P6237154704425571734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282870 (n + 2) + A036234 (n + 2)

end

end A047785.P6237154704425571734

/-! ## A047785.P2815723988238987277

`A020725(A282870(n+2)+A230980(n+2))`
-/

namespace A047785.P2815723988238987277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A282870 (n + 2) + A230980 (n + 2)).toNat

end

end A047785.P2815723988238987277

/-! ## A047785.P11032018380844890875

`A008619(A101776(A109895(n+1)))`
-/

namespace A047785.P11032018380844890875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A101776 (A109895 (n + 1)).toNat).toNat

end

end A047785.P11032018380844890875

/-! ## A047785.P14581884865913959403

`A319951(A098177(n+2))+1`
-/

namespace A047785.P14581884865913959403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A098177 (n + 2)).toNat + 1

end

end A047785.P14581884865913959403

/-!
# A047786: a(n) = (9*n^4 + 4*n^3 - n)/2.

The programs for A047786, the canonical program `A047786.P6967672226850323160` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047786 has offset 0).

The definition of A047786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047786.P6967672226850323160

`(9*n^4+4*n^3-n)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047786

/-- `(9*n^4+4*n^3-n)/2` -/
def P6967672226850323160.Spec : Prop :=
  ∀ n, P6967672226850323160.a n = (A047786 n : ℚ)

end A047786

/-! ## A047786.P5613806615149362018

`3*(A103220(n)+n²²)`
-/

namespace A047786.P5613806615149362018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A103220 n + ((n ^ 2) ^ 2 : ℤ))

end

end A047786.P5613806615149362018

namespace A047786

/-- `3*(A103220(n)+n²²)` -/
def P5613806615149362018.Spec : Prop :=
  ∀ n, P5613806615149362018.a n = A047786 n

end A047786

/-! ## A047786.P15622945642175996156

`A062392(n)+n²*A007742(n)`
-/

namespace A047786.P15622945642175996156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n + (n ^ 2 : ℤ) * A007742 n

end

end A047786.P15622945642175996156

namespace A047786

/-- `A062392(n)+n²*A007742(n)` -/
def P15622945642175996156.Spec : Prop :=
  ∀ n, P15622945642175996156.a n = A047786 n

end A047786

/-! ## A047786.P6280696787633664173

`A005476(n)+A002378(n)*A062708(n)`
-/

namespace A047786.P6280696787633664173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + A002378 n * A062708 n

end

end A047786.P6280696787633664173

namespace A047786

/-- `A005476(n)+A002378(n)*A062708(n)` -/
def P6280696787633664173.Spec : Prop :=
  ∀ n, P6280696787633664173.a n = A047786 n

end A047786

/-! ## A047786.P10512364373554880005

`A135503(n)+A005449(n)*A033428(n)`
-/

namespace A047786.P10512364373554880005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A005449 n * A033428 n

end

end A047786.P10512364373554880005

namespace A047786

/-- `A135503(n)+A005449(n)*A033428(n)` -/
def P10512364373554880005.Spec : Prop :=
  ∀ n, P10512364373554880005.a n = A047786 n

end A047786

/-! ## A047786.P17553939151522525771

`A062741(n²)+∑[A094159(n)]`
-/

namespace A047786.P17553939151522525771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047786.P17553939151522525771

namespace A047786

/-- `A062741(n²)+∑[A094159(n)]` -/
def P17553939151522525771.Spec : Prop :=
  ∀ n, P17553939151522525771.a n = A047786 n

end A047786

/-! ## A047786.P17311816900484456078

`A000217(A049451(n))-∑[A049451(n)]`
-/

namespace A047786.P17311816900484456078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049451 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047786.P17311816900484456078

namespace A047786

/-- `A000217(A049451(n))-∑[A049451(n)]` -/
def P17311816900484456078.Spec : Prop :=
  ∀ n, P17311816900484456078.a n = A047786 n

end A047786

/-! ## A047786.P5543107231917210365

`A000217(A049451(n))-A045991(n+1)`
-/

namespace A047786.P5543107231917210365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049451 n).toNat - A045991 (n + 1)

end

end A047786.P5543107231917210365

namespace A047786

/-- `A000217(A049451(n))-A045991(n+1)` -/
def P5543107231917210365.Spec : Prop :=
  ∀ n, P5543107231917210365.a n = A047786 n

end A047786

/-! ## A047786.P18170510464120830765

`A000217(A049451(n))-2*A006002(n)`
-/

namespace A047786.P18170510464120830765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A049451 n).toNat - 2 * A006002 n

end

end A047786.P18170510464120830765

namespace A047786

/-- `A000217(A049451(n))-2*A006002(n)` -/
def P18170510464120830765.Spec : Prop :=
  ∀ n, P18170510464120830765.a n = A047786 n

end A047786

/-!
# A047788: Numerators of Glaisher's I-numbers.

The programs for A047788, there is no canonical definition to state claims against.
-/

/-! ## A047788.P11774257132979707879

`∏{d}[A004869(n+1), A279120(#)]`
-/

namespace A047788.P11774257132979707879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A279120 d

end

end A047788.P11774257132979707879

/-! ## A047788.P8316764604688462641

`∏{d}[A004902(n+1), A279120(#)]`
-/

namespace A047788.P8316764604688462641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A279120 d

end

end A047788.P8316764604688462641

/-!
# A047789: Denominators of Glaisher's I-numbers.

The programs for A047789, the canonical program `A047789.P506192566993782917` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047789 has offset 0).

The definition of A047789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047789.P506192566993782917

`3^val(2*n+1, 3)^a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047789

/-- `3^val(2*n+1, 3)^a(n-1)` -/
def P506192566993782917.Spec : Prop :=
  ∀ n, (P506192566993782917.a n : ℤ) = A047789 n

theorem P506192566993782917.correct : P506192566993782917.Spec := by
  intro n
  simp only [A047789]

end A047789

/-! ## A047789.P15194301311499187043

`A004489(A030102(a(n-1)))*A038500(A004488(n)+1)` with `a(0)=2`
-/

namespace A047789.P15194301311499187043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004489 (A030102 (a (n - 1)).toNat).toNat * A038500 (A004488 n + 1).toNat

end

end A047789.P15194301311499187043

namespace A047789

/-- `A004489(A030102(a(n-1)))*A038500(A004488(n)+1)` -/
def P15194301311499187043.Spec : Prop :=
  ∀ n, P15194301311499187043.a n = A047789 n

end A047789

/-! ## A047789.P15325229118255997192

`A065331(floor(sqrt(n²+1)+n)+1)`
-/

namespace A047789.P15325229118255997192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (⌊Real.sqrt (n ^ 2 + 1 : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A047789.P15325229118255997192

namespace A047789

/-- `A065331(floor(sqrt(n²+1)+n)+1)` -/
def P15325229118255997192.Spec : Prop :=
  ∀ n, P15325229118255997192.a n = A047789 n

end A047789

/-! ## A047789.P13330315909058833449

`A038500(2*n+1)+A000007(n)`
-/

namespace A047789.P13330315909058833449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (2 * n + 1) + A000007 n

end

end A047789.P13330315909058833449

namespace A047789

/-- `A038500(2*n+1)+A000007(n)` -/
def P13330315909058833449.Spec : Prop :=
  ∀ n, P13330315909058833449.a n = A047789 n

end A047789

/-! ## A047789.P13204997768478563300

`A038500(2*n+1)*A054977(n)`
-/

namespace A047789.P13204997768478563300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (2 * n + 1) * A054977 n

end

end A047789.P13204997768478563300

namespace A047789

/-- `A038500(2*n+1)*A054977(n)` -/
def P13204997768478563300.Spec : Prop :=
  ∀ n, P13204997768478563300.a n = A047789 n

end A047789

/-! ## A047789.P10990613131533670864

`A038500(2*n+1)+A036987(2*n)`
-/

namespace A047789.P10990613131533670864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (2 * n + 1) + A036987 (2 * n)

end

end A047789.P10990613131533670864

namespace A047789

/-- `A038500(2*n+1)+A036987(2*n)` -/
def P10990613131533670864.Spec : Prop :=
  ∀ n, P10990613131533670864.a n = A047789 n

end A047789

/-! ## A047789.P2484535978364463352

`A163811(2*n)+A065331(2*n+1)`
-/

namespace A047789.P2484535978364463352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (2 * n) + A065331 (2 * n + 1)

end

end A047789.P2484535978364463352

namespace A047789

/-- `A163811(2*n)+A065331(2*n+1)` -/
def P2484535978364463352.Spec : Prop :=
  ∀ n, P2484535978364463352.a n = A047789 n

end A047789

/-! ## A047789.P3684990035114032194

`A038500(2*n+1)+A000038(n)/2`
-/

namespace A047789.P3684990035114032194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038500 (2 * n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A047789.P3684990035114032194

namespace A047789

/-- `A038500(2*n+1)+A000038(n)/2` -/
def P3684990035114032194.Spec : Prop :=
  ∀ n, P3684990035114032194.a n = (A047789 n : ℚ)

end A047789

/-! ## A047789.P15204033058789090457

`A048298(2*n+1)+A038500(2*n+1)`
-/

namespace A047789.P15204033058789090457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (2 * n + 1) + A038500 (2 * n + 1)

end

end A047789.P15204033058789090457

namespace A047789

/-- `A048298(2*n+1)+A038500(2*n+1)` -/
def P15204033058789090457.Spec : Prop :=
  ∀ n, P15204033058789090457.a n = A047789 n

end A047789

/-! ## A047789.P10406736711681461499

`A065331(2*n+1)+A049084(2*(n+1))`
-/

namespace A047789.P10406736711681461499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (2 * n + 1) + A049084 (2 * (n + 1))

end

end A047789.P10406736711681461499

namespace A047789

/-- `A065331(2*n+1)+A049084(2*(n+1))` -/
def P10406736711681461499.Spec : Prop :=
  ∀ n, P10406736711681461499.a n = A047789 n

end A047789

/-! ## A047789.P1232725350343058109

`A122257(2*(n+1))+A038500(2*n+1)`
-/

namespace A047789.P1232725350343058109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122257 (2 * (n + 1)) + A038500 (2 * n + 1)

end

end A047789.P1232725350343058109

namespace A047789

/-- `A122257(2*(n+1))+A038500(2*n+1)` -/
def P1232725350343058109.Spec : Prop :=
  ∀ n, P1232725350343058109.a n = A047789 n

end A047789

/-! ## A047789.P13506194535428356713

`A154282(2*n+1)+A065331(2*n+1)`
-/

namespace A047789.P13506194535428356713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (2 * n + 1) + A065331 (2 * n + 1)

end

end A047789.P13506194535428356713

namespace A047789

/-- `A154282(2*n+1)+A065331(2*n+1)` -/
def P13506194535428356713.Spec : Prop :=
  ∀ n, P13506194535428356713.a n = A047789 n

end A047789

/-! ## A047789.P1144053259174833948

`A322585(2*n+1)+A065331(2*n+1)`
-/

namespace A047789.P1144053259174833948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (2 * n + 1) + A065331 (2 * n + 1)

end

end A047789.P1144053259174833948

namespace A047789

/-- `A322585(2*n+1)+A065331(2*n+1)` -/
def P1144053259174833948.Spec : Prop :=
  ∀ n, P1144053259174833948.a n = A047789 n

end A047789

/-! ## A047789.P7713287115166095816

`A181440(2*n+1)/A038502(2*n+1)`
-/

namespace A047789.P7713287115166095816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181440 (2 * n + 1) : ℚ) / (A038502 (2 * n + 1) : ℚ)

end

end A047789.P7713287115166095816

namespace A047789

/-- `A181440(2*n+1)/A038502(2*n+1)` -/
def P7713287115166095816.Spec : Prop :=
  ∀ n, P7713287115166095816.a n = (A047789 n : ℚ)

end A047789

/-! ## A047789.P15964091831193678876

`gcd(A028310(2*n)+1, A002517(2*n+1))`
-/

namespace A047789.P15964091831193678876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (2 * n) + 1) (A002517 (2 * n + 1))

end

end A047789.P15964091831193678876

namespace A047789

/-- `gcd(A028310(2*n)+1, A002517(2*n+1))` -/
def P15964091831193678876.Spec : Prop :=
  ∀ n, (P15964091831193678876.a n : ℤ) = A047789 n

end A047789

/-! ## A047789.P7238830010950321523

`gcd(2, A014681(2*n))*A038500(2*n+1)`
-/

namespace A047789.P7238830010950321523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A014681 (2 * n)) : ℤ) * A038500 (2 * n + 1)

end

end A047789.P7238830010950321523

namespace A047789

/-- `gcd(2, A014681(2*n))*A038500(2*n+1)` -/
def P7238830010950321523.Spec : Prop :=
  ∀ n, P7238830010950321523.a n = A047789 n

end A047789

/-! ## A047789.P10752712997977382370

`A370180(A370180(2*n+1)+A033716(2*n))`
-/

namespace A047789.P10752712997977382370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370180 (A370180 (2 * n + 1) + A033716 (2 * n)).toNat

end

end A047789.P10752712997977382370

namespace A047789

/-- `A370180(A370180(2*n+1)+A033716(2*n))` -/
def P10752712997977382370.Spec : Prop :=
  ∀ n, P10752712997977382370.a n = A047789 n

end A047789

/-! ## A047789.P6963476928822541394

`A065331(A000040(2*n+1))*A065331(2*n+1)`
-/

namespace A047789.P6963476928822541394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000040 (2 * n + 1)).toNat * A065331 (2 * n + 1)

end

end A047789.P6963476928822541394

namespace A047789

/-- `A065331(A000040(2*n+1))*A065331(2*n+1)` -/
def P6963476928822541394.Spec : Prop :=
  ∀ n, P6963476928822541394.a n = A047789 n

end A047789

/-! ## A047789.P4467094876499486419

`A233583(2*(n+1))/A030102(A030102(2*n+1))`
-/

namespace A047789.P4467094876499486419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * (n + 1)) : ℚ) / (A030102 (A030102 (2 * n + 1)).toNat : ℚ)

end

end A047789.P4467094876499486419

namespace A047789

/-- `A233583(2*(n+1))/A030102(A030102(2*n+1))` -/
def P4467094876499486419.Spec : Prop :=
  ∀ n, P4467094876499486419.a n = (A047789 n : ℚ)

end A047789

/-! ## A047789.P17560284471707087508

`gcd(2*n+1, 3^n*a(n-1))` with `a(0)=2`
-/

namespace A047789.P17560284471707087508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (2 * n + 1) (3 ^ n * a (n - 1))

end

end A047789.P17560284471707087508

namespace A047789

/-- `gcd(2*n+1, 3^n*a(n-1))` -/
def P17560284471707087508.Spec : Prop :=
  ∀ n, (P17560284471707087508.a n : ℤ) = A047789 n

end A047789

/-!
# A047790: a(n) = Fibonacci(2*n)-2^n+1.

The programs for A047790, the canonical program `A047790.P7448849593988605551` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047790 has offset 0).

The definition of A047790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047790.P7448849593988605551

`6*a(n-1)-12*a(n-2)+9*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A047790

/-- `6*a(n-1)-12*a(n-2)+9*a(n-3)-2*a(n-4)` -/
def P7448849593988605551.Spec : Prop :=
  ∀ n, P7448849593988605551.a n = A047790 n

theorem P7448849593988605551.correct : P7448849593988605551.Spec := by
  intro n
  simp only [A047790]

end A047790

/-! ## A047790.P3659272102721671875

`A139209(n)+1`
-/

namespace A047790.P3659272102721671875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139209 n + 1

end

end A047790.P3659272102721671875

namespace A047790

/-- `A139209(n)+1` -/
def P3659272102721671875.Spec : Prop :=
  ∀ n, P3659272102721671875.a n = A047790 n

end A047790

/-! ## A047790.P1829388315308108613

`A174959(2*n)`
-/

namespace A047790.P1829388315308108613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 (2 * n)

end

end A047790.P1829388315308108613

namespace A047790

/-- `A174959(2*n)` -/
def P1829388315308108613.Spec : Prop :=
  ∀ n, P1829388315308108613.a n = A047790 n

end A047790

/-! ## A047790.P13556050737308595321

`A028892(2*n)+1`
-/

namespace A047790.P13556050737308595321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (2 * n) + 1

end

end A047790.P13556050737308595321

namespace A047790

/-- `A028892(2*n)+1` -/
def P13556050737308595321.Spec : Prop :=
  ∀ n, P13556050737308595321.a n = A047790 n

end A047790

/-! ## A047790.P11528214328716929510

`A055588(n)-2^n`
-/

namespace A047790.P11528214328716929510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - (2 ^ n : ℤ)

end

end A047790.P11528214328716929510

namespace A047790

/-- `A055588(n)-2^n` -/
def P11528214328716929510.Spec : Prop :=
  ∀ n, P11528214328716929510.a n = A047790 n

end A047790

/-! ## A047790.P6803290772065843838

`A001906(n)+1-2^n`
-/

namespace A047790.P6803290772065843838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + 1 - (2 ^ n : ℤ)

end

end A047790.P6803290772065843838

namespace A047790

/-- `A001906(n)+1-2^n` -/
def P6803290772065843838.Spec : Prop :=
  ∀ n, P6803290772065843838.a n = A047790 n

end A047790

/-! ## A047790.P201371908154215805

`A001611(2*n)-2^n`
-/

namespace A047790.P201371908154215805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) - (2 ^ n : ℤ)

end

end A047790.P201371908154215805

namespace A047790

/-- `A001611(2*n)-2^n` -/
def P201371908154215805.Spec : Prop :=
  ∀ n, P201371908154215805.a n = A047790 n

end A047790

/-! ## A047790.P1751672964441798374

`A000045(2*n)+1-2^n`
-/

namespace A047790.P1751672964441798374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + (1 - (2 ^ n : ℤ))

end

end A047790.P1751672964441798374

namespace A047790

/-- `A000045(2*n)+1-2^n` -/
def P1751672964441798374.Spec : Prop :=
  ∀ n, P1751672964441798374.a n = A047790 n

end A047790

/-! ## A047790.P8948386717681282026

`∑[A000045(abs(1-2*n))]-2^n`
-/

namespace A047790.P8948386717681282026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A047790.P8948386717681282026

namespace A047790

/-- `∑[A000045(abs(1-2*n))]-2^n` -/
def P8948386717681282026.Spec : Prop :=
  ∀ n, P8948386717681282026.a n = A047790 n

end A047790

/-! ## A047790.P8214728794456464290

`a(n-1)+A293064(n)+a(n-1)` with `a(0)=0`
-/

namespace A047790.P8214728794456464290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A293064 n + a (n - 1))

end

end A047790.P8214728794456464290

namespace A047790

/-- `a(n-1)+A293064(n)+a(n-1)` -/
def P8214728794456464290.Spec : Prop :=
  ∀ n, P8214728794456464290.a n = A047790 n

end A047790

/-! ## A047790.P5719400252268962297

`record[A000045(n%4+n)]+1-2^n`
-/

namespace A047790.P5719400252268962297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 - (2 ^ n : ℤ)

end

end A047790.P5719400252268962297

namespace A047790

/-- `record[A000045(n%4+n)]+1-2^n` -/
def P5719400252268962297.Spec : Prop :=
  ∀ n, P5719400252268962297.a n = A047790 n

end A047790

/-! ## A047790.P7409971197062683915

`record[A000045(and(n, n+1))]+1-2^n`
-/

namespace A047790.P7409971197062683915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 - (2 ^ n : ℤ)

end

end A047790.P7409971197062683915

namespace A047790

/-- `record[A000045(and(n, n+1))]+1-2^n` -/
def P7409971197062683915.Spec : Prop :=
  ∀ n, P7409971197062683915.a n = A047790 n

end A047790

/-! ## A047790.P2517555073298222769

`∑[A000045(comp[n+2+n])]+1-2^n`
-/

namespace A047790.P2517555073298222769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (2 ^ n : ℤ)

end

end A047790.P2517555073298222769

namespace A047790

/-- `∑[A000045(comp[n+2+n])]+1-2^n` -/
def P2517555073298222769.Spec : Prop :=
  ∀ n, P2517555073298222769.a n = A047790 n

end A047790

/-! ## A047790.P12901662443738538978

`A005673(A004275(n))`
-/

namespace A047790.P12901662443738538978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004275 n).toNat

end

end A047790.P12901662443738538978

namespace A047790

/-- `A005673(A004275(n))` -/
def P12901662443738538978.Spec : Prop :=
  ∀ n, P12901662443738538978.a n = A047790 n

end A047790

/-! ## A047790.P15427562817655130482

`A005673(A092535(n))`
-/

namespace A047790.P15427562817655130482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A092535 n).toNat

end

end A047790.P15427562817655130482

namespace A047790

/-- `A005673(A092535(n))` -/
def P15427562817655130482.Spec : Prop :=
  ∀ n, P15427562817655130482.a n = A047790 n

end A047790

/-! ## A047790.P12916311493948125989

`A192727(A004273(n))`
-/

namespace A047790.P12916311493948125989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A004273 n).toNat

end

end A047790.P12916311493948125989

namespace A047790

/-- `A192727(A004273(n))` -/
def P12916311493948125989.Spec : Prop :=
  ∀ n, P12916311493948125989.a n = A047790 n

end A047790

/-! ## A047790.P13160698360436749206

`A192727(A163985(n))`
-/

namespace A047790.P13160698360436749206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A163985 n).toNat

end

end A047790.P13160698360436749206

namespace A047790

/-- `A192727(A163985(n))` -/
def P13160698360436749206.Spec : Prop :=
  ∀ n, P13160698360436749206.a n = A047790 n

end A047790

/-! ## A047790.P10521960462098050981

`A005673(A004271(n+1))`
-/

namespace A047790.P10521960462098050981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004271 (n + 1)).toNat

end

end A047790.P10521960462098050981

namespace A047790

/-- `A005673(A004271(n+1))` -/
def P10521960462098050981.Spec : Prop :=
  ∀ n, P10521960462098050981.a n = A047790 n

end A047790

/-! ## A047790.P6979362100535353251

`A005673(A004278(n+1))`
-/

namespace A047790.P6979362100535353251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004278 (n + 1)).toNat

end

end A047790.P6979362100535353251

namespace A047790

/-- `A005673(A004278(n+1))` -/
def P6979362100535353251.Spec : Prop :=
  ∀ n, P6979362100535353251.a n = A047790 n

end A047790

/-! ## A047790.P2141248623246997473

`A005673(A058992(n+1))`
-/

namespace A047790.P2141248623246997473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A058992 (n + 1)).toNat

end

end A047790.P2141248623246997473

namespace A047790

/-- `A005673(A058992(n+1))` -/
def P2141248623246997473.Spec : Prop :=
  ∀ n, P2141248623246997473.a n = A047790 n

end A047790

/-!
# A047791: Numbers n such that n plus digit sum of n (A007953) equals a prime.

The programs for A047791, the canonical program `A047791.P9707445729224729229` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047791 has offset 1).

The definition of A047791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047791.P11936654232903134641

`eq[1, A001222(∑{digits}[n+1, #]+n+1)]+1`
-/

namespace A047791.P11936654232903134641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A047791.P11936654232903134641

namespace A047791

/-- `eq[1, A001222(∑{digits}[n+1, #]+n+1)]+1` -/
def P11936654232903134641.Spec : Prop :=
  ∀ n, (P11936654232903134641.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P1243186506636478665

`eq[1, A074206(A062028(n))]`
-/

namespace A047791.P1243186506636478665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P1243186506636478665

namespace A047791

/-- `eq[1, A074206(A062028(n))]` -/
def P1243186506636478665.Spec : Prop :=
  ∀ n, (P1243186506636478665.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P2252378011456119509

`eq[1, A074206(A007953(n)+n)]`
-/

namespace A047791.P2252378011456119509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P2252378011456119509

namespace A047791

/-- `eq[1, A074206(A007953(n)+n)]` -/
def P2252378011456119509.Spec : Prop :=
  ∀ n, (P2252378011456119509.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P1310995781777639776

`eq[1, A107463(A007953(n)+n)]`
-/

namespace A047791.P1310995781777639776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P1310995781777639776

namespace A047791

/-- `eq[1, A107463(A007953(n)+n)]` -/
def P1310995781777639776.Spec : Prop :=
  ∀ n, (P1310995781777639776.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P18125396136290777820

`eq[2, A077982(A007953(n)+n)]`
-/

namespace A047791.P18125396136290777820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P18125396136290777820

namespace A047791

/-- `eq[2, A077982(A007953(n)+n)]` -/
def P18125396136290777820.Spec : Prop :=
  ∀ n, (P18125396136290777820.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P9707445729224729229

`record[(n+1)*A010051(A062028(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047791

/-- `record[(n+1)*A010051(A062028(n+1))]` -/
def P9707445729224729229.Spec : Prop :=
  ∀ n, P9707445729224729229.a n = A047791 (n + 1)

theorem P9707445729224729229.correct : P9707445729224729229.Spec := by
  intro n
  simp only [A047791, Nat.add_sub_cancel]

end A047791

/-! ## A047791.P15050466267967082728

`lt[A001222(A007953(n+1)+n+1), 2]+1`
-/

namespace A047791.P15050466267967082728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007953 (n + 1) + (n : ℤ) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A047791.P15050466267967082728

namespace A047791

/-- `lt[A001222(A007953(n+1)+n+1), 2]+1` -/
def P15050466267967082728.Spec : Prop :=
  ∀ n, (P15050466267967082728.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P14917562362691810792

`lt[A000005(A007953(n+1)+n+1), 3]+1`
-/

namespace A047791.P14917562362691810792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007953 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A047791.P14917562362691810792

namespace A047791

/-- `lt[A000005(A007953(n+1)+n+1), 3]+1` -/
def P14917562362691810792.Spec : Prop :=
  ∀ n, (P14917562362691810792.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P9616289329095820549

`record[(n+1)*A010051(A007953(n+1)+n+1)]`
-/

namespace A047791.P9616289329095820549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A007953 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047791.P9616289329095820549

namespace A047791

/-- `record[(n+1)*A010051(A007953(n+1)+n+1)]` -/
def P9616289329095820549.Spec : Prop :=
  ∀ n, P9616289329095820549.a n = A047791 (n + 1)

end A047791

/-! ## A047791.P11233423641256186550

`record[(n+1)%A006530(A007953(n+1)+n+1)]`
-/

namespace A047791.P11233423641256186550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (A007953 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047791.P11233423641256186550

namespace A047791

/-- `record[(n+1)%A006530(A007953(n+1)+n+1)]` -/
def P11233423641256186550.Spec : Prop :=
  ∀ n, P11233423641256186550.a n = A047791 (n + 1)

end A047791

/-! ## A047791.P17024758453581367509

`eq[1, A003415(A007953(n)+n)]`
-/

namespace A047791.P17024758453581367509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P17024758453581367509

namespace A047791

/-- `eq[1, A003415(A007953(n)+n)]` -/
def P17024758453581367509.Spec : Prop :=
  ∀ n, (P17024758453581367509.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P5627064120682364979

`eq[1, A018783(A007953(n)+n)]`
-/

namespace A047791.P5627064120682364979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P5627064120682364979

namespace A047791

/-- `eq[1, A018783(A007953(n)+n)]` -/
def P5627064120682364979.Spec : Prop :=
  ∀ n, (P5627064120682364979.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P12655733754200690977

`eq[1, A032741(A007953(n)+n)]`
-/

namespace A047791.P12655733754200690977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P12655733754200690977

namespace A047791

/-- `eq[1, A032741(A007953(n)+n)]` -/
def P12655733754200690977.Spec : Prop :=
  ∀ n, (P12655733754200690977.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P6835530119393726173

`eq[1, A078898(A007953(n)+n)]`
-/

namespace A047791.P6835530119393726173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P6835530119393726173

namespace A047791

/-- `eq[1, A078898(A007953(n)+n)]` -/
def P6835530119393726173.Spec : Prop :=
  ∀ n, (P6835530119393726173.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P6254777768390107079

`eq[1, A105700(A007953(n)+n)]`
-/

namespace A047791.P6254777768390107079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P6254777768390107079

namespace A047791

/-- `eq[1, A105700(A007953(n)+n)]` -/
def P6254777768390107079.Spec : Prop :=
  ∀ n, (P6254777768390107079.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P1967257427093160966

`eq[2, A005127(A007953(n)+n)]`
-/

namespace A047791.P1967257427093160966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P1967257427093160966

namespace A047791

/-- `eq[2, A005127(A007953(n)+n)]` -/
def P1967257427093160966.Spec : Prop :=
  ∀ n, (P1967257427093160966.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P16185618425813226509

`lt[1, A055671(A007953(n)+n)]`
-/

namespace A047791.P16185618425813226509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047791.P16185618425813226509

namespace A047791

/-- `lt[1, A055671(A007953(n)+n)]` -/
def P16185618425813226509.Spec : Prop :=
  ∀ n, (P16185618425813226509.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P8326622608964786253

`eq[2, A225244(A007953(n)+n)]`
-/

namespace A047791.P8326622608964786253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P8326622608964786253

namespace A047791

/-- `eq[2, A225244(A007953(n)+n)]` -/
def P8326622608964786253.Spec : Prop :=
  ∀ n, (P8326622608964786253.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P11952074623861865731

`eq[2, A319410(A007953(n)+n)]`
-/

namespace A047791.P11952074623861865731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P11952074623861865731

namespace A047791

/-- `eq[2, A319410(A007953(n)+n)]` -/
def P11952074623861865731.Spec : Prop :=
  ∀ n, (P11952074623861865731.a n : ℤ) = A047791 (n + 1)

end A047791

/-! ## A047791.P17699652261590221030

`eq[2, A322366(A007953(n)+n)]`
-/

namespace A047791.P17699652261590221030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047791.P17699652261590221030

namespace A047791

/-- `eq[2, A322366(A007953(n)+n)]` -/
def P17699652261590221030.Spec : Prop :=
  ∀ n, (P17699652261590221030.a n : ℤ) = A047791 (n + 1)

end A047791

/-!
# A047793: a(n) = Sum_{k=0..n} |Stirling1(n,k)*Stirling2(n,k)|.

The programs for A047793, there is no canonical definition to state claims against.
-/

/-! ## A047793.P2658455357394315769

`A007094(A063902(n))`
-/

namespace A047793.P2658455357394315769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A063902 n).toNat

end

end A047793.P2658455357394315769

/-! ## A047793.P12569547766615332745

`ceil(A117899(ceil(A000108(2*n)/4))/4)`
-/

namespace A047793.P12569547766615332745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117899 ⌈(A000108 (2 * n) : ℚ) / 4⌉.toNat : ℚ) / 4⌉

end

end A047793.P12569547766615332745

/-!
# A047794: a(n) = Sum_{k=0..n} C(n,k)*|Stirling1(n,k)*Stirling2(n,k)|.

The programs for A047794, there is no canonical definition to state claims against.
-/

/-! ## A047794.P7244059751118369188

`A322527(∑[(n-1)*∑{d}[n, #]])`
-/

namespace A047794.P7244059751118369188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322527 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047794.P7244059751118369188

/-!
# A047796: a(n) = Sum_{k=0..n} Stirling1(n,k)^2.

The programs for A047796, there is no canonical definition to state claims against.
-/

/-! ## A047796.P2657310559358713071

`A115981(n)+A005097(A006059(n))`
-/

namespace A047796.P2657310559358713071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 n + A005097 (A006059 n).toNat

end

end A047796.P2657310559358713071

/-!
# A047797: a(n) = Sum_{k=0..n} Stirling2(n,k)^2.

The programs for A047797, there is no canonical definition to state claims against.
-/

/-! ## A047797.P2791258430130951465

`A363454(2*n)`
-/

namespace A047797.P2791258430130951465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363454 (2 * n)

end

end A047797.P2791258430130951465

/-! ## A047797.P11321377192071463712

`A363454(A005843(n))+char[(n+3)²²]`
-/

namespace A047797.P11321377192071463712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363454 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A047797.P11321377192071463712

/-! ## A047797.P17633641790634147793

`or(A000007(n), A363454(A005843(n)))`
-/

namespace A047797.P17633641790634147793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A363454 (A005843 n).toNat)

end

end A047797.P17633641790634147793

/-! ## A047797.P12180476199693617749

`A363454(A005843(n))^A001221(A059236(n+1))`
-/

namespace A047797.P12180476199693617749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363454 (A005843 n).toNat : ℚ) ^ (A001221 (A059236 (n + 1)).toNat : ℤ)

end

end A047797.P12180476199693617749

/-! ## A047797.P9219420262029981859

`A363454(A005843(n))^A102054(A084938(n))`
-/

namespace A047797.P9219420262029981859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363454 (A005843 n).toNat : ℚ) ^ (A102054 (A084938 n).toNat : ℤ)

end

end A047797.P9219420262029981859

/-!
# A047798: a(n) = Sum_{k=0..n} C(n,k)*Stirling2(n,k)^2.

The programs for A047798, there is no canonical definition to state claims against.
-/

/-! ## A047798.P9052739456282892936

`A115093(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A047798.P9052739456282892936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A115093 (a (n - 1)).toNat

end

end A047798.P9052739456282892936

/-!
# A047799: a(n) = Sum_{k=0..n} C(n,k)*Stirling1(n,k)^2.

The programs for A047799, there is no canonical definition to state claims against.
-/

/-! ## A047799.P12514354167672882614

`A025429(floor(10^n/3)+13)`
-/

namespace A047799.P12514354167672882614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (⌊(10 ^ n : ℚ) / 3⌋ + 13).toNat

end

end A047799.P12514354167672882614

