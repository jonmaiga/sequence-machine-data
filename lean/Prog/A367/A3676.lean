import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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

/-!
# A367600: Numbers that are not the comma-successor of any number.

The programs for A367600, there is no canonical definition to state claims against.
-/

/-! ## A367600.P10090408902600977236

`record[A367366(n+1)]`
-/

namespace A367600.P10090408902600977236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367600.P10090408902600977236

/-! ## A367600.P13249565287619228272

`record[n-A367614(n+1)]`
-/

namespace A367600.P13249565287619228272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A367614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367600.P13249565287619228272

/-! ## A367600.P5893100539785056352

`lt[A367614(n+1), A000007(n)]+1`
-/

namespace A367600.P5893100539785056352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367600.P5893100539785056352

/-! ## A367600.P6770519876639080062

`lt[A367614(n+1), A354920(n+1)]+1`
-/

namespace A367600.P6770519876639080062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354920 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367600.P6770519876639080062

/-! ## A367600.P8880473936361921712

`lt[A367614(n+1), A015142(n)]+1`
-/

namespace A367600.P8880473936361921712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367600.P8880473936361921712

/-! ## A367600.P6209374792205121574

`∪[A109597(n), A367611(n+1)]`
-/

namespace A367600.P6209374792205121574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367600.P6209374792205121574

/-! ## A367600.P9155549141601580991

`∪[A028440(n+1), A367611(n+1)]`
-/

namespace A367600.P9155549141601580991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367600.P9155549141601580991

/-! ## A367600.P11487833813861592115

`∪[A032571(n+1), A367611(n+1)]`
-/

namespace A367600.P11487833813861592115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367600.P11487833813861592115

/-! ## A367600.P7650234295543726123

`∪[A037124(n+1), A367611(n+1)]`
-/

namespace A367600.P7650234295543726123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367600.P7650234295543726123

/-! ## A367600.P10175896447821009912

`∪[A080459(n+1), A367611(n+1)]`
-/

namespace A367600.P10175896447821009912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367600.P10175896447821009912

/-!
# A367611: Numbers that are not the comma-child of any positive number.

The programs for A367611, there is no canonical definition to state claims against.
-/

/-! ## A367611.P17235179401545300310

`record[A367617(n+1)]`
-/

namespace A367611.P17235179401545300310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367611.P17235179401545300310

/-! ## A367611.P4348376507887926159

`lt[A367616(n+1), 0]+1`
-/

namespace A367611.P4348376507887926159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367611.P4348376507887926159

/-! ## A367611.P7287745793497949519

`∩[A023779(n+1), A367600(n+1)]`
-/

namespace A367611.P7287745793497949519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367611.P7287745793497949519

/-! ## A367611.P5242022022922133947

`record[and(A367366(n+1), A367616(n+1))]`
-/

namespace A367611.P5242022022922133947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A367366 (n + 1)) (A367616 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367611.P5242022022922133947

/-! ## A367611.P15316490724366111532

`eq[A000027(n+1), A367617(n+1)]+1`
-/

namespace A367611.P15316490724366111532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367611.P15316490724366111532

/-! ## A367611.P7920971507769645296

`lt[A064458(A023805(n+1)), A190599(n)]`
-/

namespace A367611.P7920971507769645296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A023805 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367611.P7920971507769645296

/-!
# A367612: Numbers that are the comma-child of exactly one positive number.

The programs for A367612, there is no canonical definition to state claims against.
-/

/-! ## A367612.P4700011590139397409

`lt[A004086(A098488(n)), A118759(n)]`
-/

namespace A367612.P4700011590139397409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A098488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367612.P4700011590139397409

/-!
# A367613: Numbers with exactly one comma-child.

The programs for A367613, there is no canonical definition to state claims against.
-/

/-! ## A367613.P13833283538534363586

`eq[1, A367622(n+1)]+1`
-/

namespace A367613.P13833283538534363586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367613.P13833283538534363586

/-! ## A367613.P6185523810684887970

`lt[A118793(n), A223000(2*n+1)]`
-/

namespace A367613.P6185523810684887970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367613.P6185523810684887970

/-! ## A367613.P16593081473682067399

`lt[A244122(n), A220070(2*n+1)]`
-/

namespace A367613.P16593081473682067399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220070 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367613.P16593081473682067399

/-! ## A367613.P15324022634352420626

`lt[A325166(n+1), A105084(2*(n+1))]+1`
-/

namespace A367613.P15324022634352420626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367613.P15324022634352420626

/-! ## A367613.P15923622993117581992

`lt[A227311(n+1), A216620(A001844(2*n))]`
-/

namespace A367613.P15923622993117581992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (A001844 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367613.P15923622993117581992

/-!
# A367614: a(n) is the unique k such that n is the comma-successor of k, or -1 if k does not exist.

The programs for A367614, there is no canonical definition to state claims against.
-/

/-! ## A367614.P4712873980555188597

`A367616(n+1)+A000007(A367584(n+1))`
-/

namespace A367614.P4712873980555188597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A000007 (A367584 (n + 1)).toNat

end

end A367614.P4712873980555188597

/-! ## A367614.P2801536056517116458

`A367616(n+1)+A000038(A007635(n+2))`
-/

namespace A367614.P2801536056517116458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A000038 (A007635 (n + 2)).toNat

end

end A367614.P2801536056517116458

/-! ## A367614.P11934335787166914281

`A367616(n+1)%A000037(A064987(n+1))`
-/

namespace A367614.P11934335787166914281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367616 (n + 1)) (A000037 (A064987 (n + 1)).toNat)

end

end A367614.P11934335787166914281

/-! ## A367614.P5467212340034881088

`or(A000122(A196157(n+1)), A367616(n+1))`
-/

namespace A367614.P5467212340034881088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A196157 (n + 1)).toNat) (A367616 (n + 1))

end

end A367614.P5467212340034881088

/-! ## A367614.P18330220382066307788

`A367616(n+1)+A010815(A137871(2*n+1))`
-/

namespace A367614.P18330220382066307788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A010815 (A137871 (2 * n + 1)).toNat

end

end A367614.P18330220382066307788

/-! ## A367614.P9994753390677384855

`A367616(n+1)+A049084(A331378(3*(n+1)))`
-/

namespace A367614.P9994753390677384855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A049084 (A331378 (3 * (n + 1))).toNat

end

end A367614.P9994753390677384855

/-! ## A367614.P9867394873648124403

`A367616(n+1)%A367642(n+1)`
-/

namespace A367614.P9867394873648124403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367616 (n + 1)) (A367642 (n + 1))

end

end A367614.P9867394873648124403

/-! ## A367614.P222266667948072543

`A367616(n+1)+A351234(A244146(n+1))`
-/

namespace A367614.P222266667948072543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A351234 (A244146 (n + 1)).toNat

end

end A367614.P222266667948072543

/-! ## A367614.P12457762780051564288

`A037227(A240565(n+1))*A367616(n+1)`
-/

namespace A367614.P12457762780051564288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (A240565 (n + 1)).toNat * A367616 (n + 1)

end

end A367614.P12457762780051564288

/-! ## A367614.P18133096084862686225

`A367616(n+1)+A000007(A358577(n+1))`
-/

namespace A367614.P18133096084862686225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367616 (n + 1) + A000007 (A358577 (n + 1)).toNat

end

end A367614.P18133096084862686225

/-!
# A367615: Numbers that have a comma-successor.

The programs for A367615, the canonical program `A367615.P5843079981816674160` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367615 has offset 1).

The definition of A367615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367615.P5843079981816674160

`comp[A367341(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367615

/-- `comp[A367341(n+1)-1]+1` -/
def P5843079981816674160.Spec : Prop :=
  ∀ n, (P5843079981816674160.a n : ℤ) = A367615 (n + 1)

theorem P5843079981816674160.correct : P5843079981816674160.Spec := by
  intro n
  simp only [A367615, Nat.add_sub_cancel]

end A367615

/-! ## A367615.P10289880426633537940

`lt[1, A367338(n+1)]+1`
-/

namespace A367615.P10289880426633537940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A367615.P10289880426633537940

namespace A367615

/-- `lt[1, A367338(n+1)]+1` -/
def P10289880426633537940.Spec : Prop :=
  ∀ n, (P10289880426633537940.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P5812716313877482179

`lt[A000007(n), A367339(n+1)]+1`
-/

namespace A367615.P5812716313877482179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367339 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A367615.P5812716313877482179

namespace A367615

/-- `lt[A000007(n), A367339(n+1)]+1` -/
def P5812716313877482179.Spec : Prop :=
  ∀ n, (P5812716313877482179.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P6429238434988299646

`lt[A343321(A256756(n)), A255594(n)]`
-/

namespace A367615.P6429238434988299646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343321 (A256756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367615.P6429238434988299646

namespace A367615

/-- `lt[A343321(A256756(n)), A255594(n)]` -/
def P6429238434988299646.Spec : Prop :=
  ∀ n, (P6429238434988299646.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P1061177170792547520

`lt[A113019(A113019(n)), A169707(n+1)]`
-/

namespace A367615.P1061177170792547520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113019 (A113019 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367615.P1061177170792547520

namespace A367615

/-- `lt[A113019(A113019(n)), A169707(n+1)]` -/
def P1061177170792547520.Spec : Prop :=
  ∀ n, (P1061177170792547520.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P14473238509642476683

`lt[A053735(A112344(2*n+1)), A030102(n)]`
-/

namespace A367615.P14473238509642476683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A112344 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367615.P14473238509642476683

namespace A367615

/-- `lt[A053735(A112344(2*n+1)), A030102(n)]` -/
def P14473238509642476683.Spec : Prop :=
  ∀ n, (P14473238509642476683.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P1765844572569547276

`comp[9*(n+1)%A289429(n)]`
-/

namespace A367615.P1765844572569547276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * Int.tmod (n + 1 : ℤ) (A289429 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367615.P1765844572569547276

namespace A367615

/-- `comp[9*(n+1)%A289429(n)]` -/
def P1765844572569547276.Spec : Prop :=
  ∀ n, (P1765844572569547276.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P5261255109779650397

`comp[9*A049084(A082985(n))]`
-/

namespace A367615.P5261255109779650397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A049084 (A082985 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367615.P5261255109779650397

namespace A367615

/-- `comp[9*A049084(A082985(n))]` -/
def P5261255109779650397.Spec : Prop :=
  ∀ n, (P5261255109779650397.a n : ℤ) = A367615 (n + 1)

end A367615

/-! ## A367615.P1855497183583592744

`A309589(A343951(n+2))`
-/

namespace A367615.P1855497183583592744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309589 (A343951 (n + 2)).toNat

end

end A367615.P1855497183583592744

namespace A367615

/-- `A309589(A343951(n+2))` -/
def P1855497183583592744.Spec : Prop :=
  ∀ n, P1855497183583592744.a n = A367615 (n + 1)

end A367615

/-!
# A367617: a(n) is the most remote positive ancestor of n in the comma-child graph.

The programs for A367617, there is no canonical definition to state claims against.
-/

/-! ## A367617.P11131363736564157358

`A367366(n+1)%A078213(n+2)`
-/

namespace A367617.P11131363736564157358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367366 (n + 1)) (A078213 (n + 2))

end

end A367617.P11131363736564157358

/-! ## A367617.P15117517530663469227

`A367366(n+1)+A000007(A063108(n+1))`
-/

namespace A367617.P15117517530663469227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1) + A000007 (A063108 (n + 1)).toNat

end

end A367617.P15117517530663469227

/-! ## A367617.P1775988935446664288

`A327401(A051377(n+1)+1)%2*A367366(n+1)`
-/

namespace A367617.P1775988935446664288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327401 (A051377 (n + 1) + 1).toNat) 2 * A367366 (n + 1)

end

end A367617.P1775988935446664288

/-! ## A367617.P11272353565859793109

`A367366(n+1)%A337381(A005897(n))`
-/

namespace A367617.P11272353565859793109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367366 (n + 1)) (A337381 (A005897 n).toNat)

end

end A367617.P11272353565859793109

/-! ## A367617.P16833819170560860669

`A367366(n+1)+A000007(A136259(n+1))`
-/

namespace A367617.P16833819170560860669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1) + A000007 (A136259 (n + 1)).toNat

end

end A367617.P16833819170560860669

/-! ## A367617.P12027019275425721497

`A367366(n+1)+A281302(A141558(n+1))`
-/

namespace A367617.P12027019275425721497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1) + A281302 (A141558 (n + 1)).toNat

end

end A367617.P12027019275425721497

/-! ## A367617.P2242222654563274762

`A367366(n+1)+A128407(A340045(n+1))`
-/

namespace A367617.P2242222654563274762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1) + A128407 (A340045 (n + 1)).toNat

end

end A367617.P2242222654563274762

/-! ## A367617.P4805334185496451131

`A378448(A109257(n+1))+A367366(n+1)`
-/

namespace A367617.P4805334185496451131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378448 (A109257 (n + 1)).toNat + A367366 (n + 1)

end

end A367617.P4805334185496451131

/-! ## A367617.P2695841507521378054

`A340074(A325238(n+1))*A367366(n+1)`
-/

namespace A367617.P2695841507521378054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340074 (A325238 (n + 1)).toNat * A367366 (n + 1)

end

end A367617.P2695841507521378054

/-!
# A367620: The lexicographically earliest infinite sequence of positive numbers in which each term is a comma-child of the previous term.

The programs for A367620, there is no canonical definition to state claims against.
-/

/-! ## A367620.P14940412986639829552

`A367338(a(n-1))` with `a(0)=20`
-/

namespace A367620.P14940412986639829552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A367620.P14940412986639829552

/-!
# A367622: Number of comma-children of n in base 10.

The programs for A367622, there is no canonical definition to state claims against.
-/

/-! ## A367622.P17440590442282581936

`A000161(A000161(n)*A264379(n+1))`
-/

namespace A367622.P17440590442282581936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A000161 n * A264379 (n + 1)).toNat

end

end A367622.P17440590442282581936

/-! ## A367622.P15769412204752535805

`A091602(gcd(A352541(n), A367225(2*(n+1))))`
-/

namespace A367622.P15769412204752535805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (Int.gcd (A352541 n) (A367225 (2 * (n + 1))))

end

end A367622.P15769412204752535805

/-! ## A367622.P13077179876552753761

`A325192(C(A007318(n), A336203(2*n+3)))`
-/

namespace A367622.P13077179876552753761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325192 (Nat.choose (A007318 n).toNat (A336203 (2 * n + 3)).toNat)

end

end A367622.P13077179876552753761

/-! ## A367622.P16386178029485694324

`A187080(A187080(2*(n+2))*A239927(n+1))`
-/

namespace A367622.P16386178029485694324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (A187080 (2 * (n + 2)) * A239927 (n + 1)).toNat

end

end A367622.P16386178029485694324

/-! ## A367622.P13973676206634900870

`A074079(A073201(A073346(A069768(2*n+1))))`
-/

namespace A367622.P13973676206634900870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074079 (A073201 (A073346 (A069768 (2 * n + 1)).toNat).toNat).toNat

end

end A367622.P13973676206634900870

/-!
# A367623: Number of comma-children of n in base 3.

The programs for A367623, the canonical program `A367623.P16011491054001822898` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367623 has offset 1).

The definition of A367623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367623.P3450470677992568639

`A000122(C(2, A277749(n+5)))`
-/

namespace A367623.P3450470677992568639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.choose 2 (A277749 (n + 5)).toNat)

end

end A367623.P3450470677992568639

namespace A367623

/-- `A000122(C(2, A277749(n+5)))` -/
def P3450470677992568639.Spec : Prop :=
  ∀ n, P3450470677992568639.a n = A367623 (n + 1)

end A367623

/-! ## A367623.P10597219210406896911

`2-A349465(C(2, A277749(n+5)))`
-/

namespace A367623.P10597219210406896911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A349465 (Nat.choose 2 (A277749 (n + 5)).toNat)

end

end A367623.P10597219210406896911

namespace A367623

/-- `2-A349465(C(2, A277749(n+5)))` -/
def P10597219210406896911.Spec : Prop :=
  ∀ n, P10597219210406896911.a n = A367623 (n + 1)

end A367623

/-! ## A367623.P16011491054001822898

`Δ[A122586(n+5)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367623

/-- `Δ[A122586(n+5)]+1` -/
def P16011491054001822898.Spec : Prop :=
  ∀ n, P16011491054001822898.a n = A367623 (n + 1)

theorem P16011491054001822898.correct : P16011491054001822898.Spec := by
  intro n
  simp only [A367623, Nat.add_sub_cancel]

end A367623

/-! ## A367623.P15160679696563441911

`Δ[A003137(A030335(n+5))]+1`
-/

namespace A367623.P15160679696563441911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A030335 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A367623.P15160679696563441911

namespace A367623

/-- `Δ[A003137(A030335(n+5))]+1` -/
def P15160679696563441911.Spec : Prop :=
  ∀ n, P15160679696563441911.a n = A367623 (n + 1)

end A367623

/-! ## A367623.P16656802039550904564

`A137993(A250230(n+1))`
-/

namespace A367623.P16656802039550904564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137993 (A250230 (n + 1)).toNat

end

end A367623.P16656802039550904564

namespace A367623

/-- `A137993(A250230(n+1))` -/
def P16656802039550904564.Spec : Prop :=
  ∀ n, P16656802039550904564.a n = A367623 (n + 1)

end A367623

/-!
# A367624: 2-adic valuation of A123581(2*n).

The programs for A367624, the canonical program `A367624.P1659785918442944422` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367624 has offset 1).

The definition of A367624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367624.P1659785918442944422

`val(A123581(2*(n+1)), 2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A367624

/-- `val(A123581(2*(n+1)), 2)` -/
def P1659785918442944422.Spec : Prop :=
  ∀ n, (P1659785918442944422.a n : ℤ) = A367624 (n + 1)

theorem P1659785918442944422.correct : P1659785918442944422.Spec := by
  intro n
  simp only [A367624, Nat.add_sub_cancel]

end A367624

/-! ## A367624.P2128556195574131533

`val(A076271(2*(n+2)), 2)`
-/

namespace A367624.P2128556195574131533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076271 (2 * (n + 2))).toNat 2

end

end A367624.P2128556195574131533

namespace A367624

/-- `val(A076271(2*(n+2)), 2)` -/
def P2128556195574131533.Spec : Prop :=
  ∀ n, (P2128556195574131533.a n : ℤ) = A367624 (n + 1)

end A367624

/-! ## A367624.P11702854803744383362

`val(A036441(2*n+3), 2)`
-/

namespace A367624.P11702854803744383362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036441 (2 * n + 3)).toNat 2

end

end A367624.P11702854803744383362

namespace A367624

/-- `val(A036441(2*n+3), 2)` -/
def P11702854803744383362.Spec : Prop :=
  ∀ n, (P11702854803744383362.a n : ℤ) = A367624 (n + 1)

end A367624

/-! ## A367624.P11593115865390245268

`val(A180107(A000265(2*n+5)), 2)`
-/

namespace A367624.P11593115865390245268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A180107 (A000265 (2 * n + 5)).toNat).toNat 2

end

end A367624.P11593115865390245268

namespace A367624

/-- `val(A180107(A000265(2*n+5)), 2)` -/
def P11593115865390245268.Spec : Prop :=
  ∀ n, (P11593115865390245268.a n : ℤ) = A367624 (n + 1)

end A367624

/-! ## A367624.P16324263738513079736

`val(A180107(Δ[A032742(2*(n+2))²]), 2)`
-/

namespace A367624.P16324263738513079736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A180107 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A367624.P16324263738513079736

namespace A367624

/-- `val(A180107(Δ[A032742(2*(n+2))²]), 2)` -/
def P16324263738513079736.Spec : Prop :=
  ∀ n, (P16324263738513079736.a n : ℤ) = A367624 (n + 1)

end A367624

/-! ## A367624.P14701347837982916921

`A005361(gcd(A011782(3*n+2), A036441(2*n+3)))`
-/

namespace A367624.P14701347837982916921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.gcd (A011782 (3 * n + 2)) (A036441 (2 * n + 3)))

end

end A367624.P14701347837982916921

namespace A367624

/-- `A005361(gcd(A011782(3*n+2), A036441(2*n+3)))` -/
def P14701347837982916921.Spec : Prop :=
  ∀ n, P14701347837982916921.a n = A367624 (n + 1)

end A367624

/-! ## A367624.P9150413012370834973

`A007814(A123581(2*(n+1)))`
-/

namespace A367624.P9150413012370834973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A123581 (2 * (n + 1))).toNat

end

end A367624.P9150413012370834973

namespace A367624

/-- `A007814(A123581(2*(n+1)))` -/
def P9150413012370834973.Spec : Prop :=
  ∀ n, P9150413012370834973.a n = A367624 (n + 1)

end A367624

/-! ## A367624.P11728842390673919298

`A007814(A076271(2*(n+2)))`
-/

namespace A367624.P11728842390673919298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A076271 (2 * (n + 2))).toNat

end

end A367624.P11728842390673919298

namespace A367624

/-- `A007814(A076271(2*(n+2)))` -/
def P11728842390673919298.Spec : Prop :=
  ∀ n, P11728842390673919298.a n = A367624 (n + 1)

end A367624

/-! ## A367624.P4978875992072295328

`A007814(A036441(2*n+3))`
-/

namespace A367624.P4978875992072295328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036441 (2 * n + 3)).toNat

end

end A367624.P4978875992072295328

namespace A367624

/-- `A007814(A036441(2*n+3))` -/
def P4978875992072295328.Spec : Prop :=
  ∀ n, P4978875992072295328.a n = A367624 (n + 1)

end A367624

/-! ## A367624.P12517451379128072390

`A005361(gcd(A036441(2*n+3), A357663(n)))`
-/

namespace A367624.P12517451379128072390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.gcd (A036441 (2 * n + 3)) (A357663 n))

end

end A367624.P12517451379128072390

namespace A367624

/-- `A005361(gcd(A036441(2*n+3), A357663(n)))` -/
def P12517451379128072390.Spec : Prop :=
  ∀ n, P12517451379128072390.a n = A367624 (n + 1)

end A367624

/-!
# A367625: (A036991(n)-1)/2.

The programs for A367625, there is no canonical definition to state claims against.
-/

/-! ## A367625.P7895906783302925385

`(A036991(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367625.P7895906783302925385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036991 (n + 2) - 1 : ℚ) / 2

end

end A367625.P7895906783302925385

/-! ## A367625.P9889670973664008539

`A014682(A036991(n+2)-1)`
-/

namespace A367625.P9889670973664008539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A036991 (n + 2) - 1).toNat

end

end A367625.P9889670973664008539

/-! ## A367625.P14301479683388484270

`∑[A051953(Δ[A036991(n+1)])]`
-/

namespace A367625.P14301479683388484270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367625.P14301479683388484270

/-! ## A367625.P10826612288763693561

`record[and(n, A343049(n))]`
-/

namespace A367625.P10826612288763693561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A343049 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367625.P10826612288763693561

/-! ## A367625.P5626984739747409644

`A004524(A036991(n+2))`
-/

namespace A367625.P5626984739747409644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036991 (n + 2)).toNat

end

end A367625.P5626984739747409644

/-! ## A367625.P769731307910622818

`A002265(A036994(n+2))`
-/

namespace A367625.P769731307910622818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036994 (n + 2)).toNat

end

end A367625.P769731307910622818

/-! ## A367625.P7451461667911647926

`lt[A000217(n), A016921(A342603(n))]`
-/

namespace A367625.P7451461667911647926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A342603 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367625.P7451461667911647926

/-!
# A367626: First differences of A036991.

The programs for A367626, there is no canonical definition to state claims against.
-/

/-! ## A367626.P13963242503987816818

`Δ[A036991(n+1)]`
-/

namespace A367626.P13963242503987816818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367626.P13963242503987816818

/-! ## A367626.P2647401164394309744

`2^A367627(n+1)`
-/

namespace A367626.P2647401164394309744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A367627 (n + 1) : ℤ)

end

end A367626.P2647401164394309744

/-! ## A367626.P6450237568534247934

`A036991(n+2)-A036991(n+1)`
-/

namespace A367626.P6450237568534247934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2) - A036991 (n + 1)

end

end A367626.P6450237568534247934

/-! ## A367626.P7983657303468134111

`Δ[A036994(n+1)/2]`
-/

namespace A367626.P7983657303468134111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036994 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367626.P7983657303468134111

/-! ## A367626.P7342187977086552616

`Δ[lt[n, 2^A114567(n)]]`
-/

namespace A367626.P7342187977086552616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A114567 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A367626.P7342187977086552616

/-!
# A367627: a(n) = log_2(A367626(n)).

The programs for A367627, there is no canonical definition to state claims against.
-/

/-! ## A367627.P5306845521194806203

`log2(A367626(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367627.P5306845521194806203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A367626 (n + 1) : ℝ)

end

end A367627.P5306845521194806203

/-! ## A367627.P4967352070987026919

`log2(Δ[A036991(n+1)])`
-/

namespace A367627.P4967352070987026919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A367627.P4967352070987026919

/-! ## A367627.P6723920748136047280

`A056239(Δ[A036991(n+1)])`
-/

namespace A367627.P6723920748136047280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (n + 1) - f1 n).toNat

end

end A367627.P6723920748136047280

/-! ## A367627.P12434118033045130727

`A000120(A367626(n+1)-1)`
-/

namespace A367627.P12434118033045130727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A367626 (n + 1) - 1).toNat

end

end A367627.P12434118033045130727

/-! ## A367627.P1405184787140554362

`A064918(A367626(n+1)+2)`
-/

namespace A367627.P1405184787140554362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064918 (A367626 (n + 1) + 2).toNat

end

end A367627.P1405184787140554362

/-! ## A367627.P10134908883758805863

`A001222(A367626(n+1))%A054519(n)`
-/

namespace A367627.P10134908883758805863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A367626 (n + 1)).toNat) (A054519 n)

end

end A367627.P10134908883758805863

/-! ## A367627.P9209385582025601531

`A001222(A367626(n+1)%A003389(n+1))`
-/

namespace A367627.P9209385582025601531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A367626 (n + 1)) (A003389 (n + 1))).toNat

end

end A367627.P9209385582025601531

/-! ## A367627.P14038224900525685154

`log2(Δ[lt[n, 2^A114567(n)]])`
-/

namespace A367627.P14038224900525685154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A114567 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A367627.P14038224900525685154

/-!
# A367628: Sum of the divisors of n <= tau(n).

The programs for A367628, there is no canonical definition to state claims against.
-/

/-! ## A367628.P13339548698966675436

`A126212(n+1)/A368025(A368025(n))`
-/

namespace A367628.P13339548698966675436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126212 (n + 1) : ℚ) / (A368025 (A368025 n).toNat : ℚ)

end

end A367628.P13339548698966675436

/-!
# A367630: Numbers k such that at least one 3-smooth number with k prime factors (counted with multiplicity) is the average of a twin prime pair.

The programs for A367630, there is no canonical definition to state claims against.
-/

/-! ## A367630.P17290072701302112536

`A327528(A219045(n+1))+A005153(n+1)`
-/

namespace A367630.P17290072701302112536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327528 (A219045 (n + 1)).toNat + A005153 (n + 1)

end

end A367630.P17290072701302112536

/-! ## A367630.P4781845092518237160

`A229489(n+1)-A000122(A011782(n)+1)+1`
-/

namespace A367630.P4781845092518237160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (n + 1) - A000122 (A011782 n + 1).toNat + 1

end

end A367630.P4781845092518237160

/-! ## A367630.P3043942936242588358

`lt[A018783(n), A253580(A084938(n+3)+n)]`
-/

namespace A367630.P3043942936242588358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A084938 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367630.P3043942936242588358

/-! ## A367630.P10559242871603840143

`A038179(n+1)-A089800(A157147(2*(n+2)))`
-/

namespace A367630.P10559242871603840143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1) - A089800 (A157147 (2 * (n + 2))).toNat

end

end A367630.P10559242871603840143

/-! ## A367630.P3590959064740087759

`A038179(n+1)-A000122(A279375(2*n+3))`
-/

namespace A367630.P3590959064740087759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1) - A000122 (A279375 (2 * n + 3)).toNat

end

end A367630.P3590959064740087759

/-!
# A367632: Numbers k with at least one pair of adjacent divisors i,j of k with i < j such that i' > j'. Here, n' denotes the arithmetic derivative of n.

The programs for A367632, there is no canonical definition to state claims against.
-/

/-! ## A367632.P10017095691365765012

`∪[A137428(n+1), A173547(n)]`
-/

namespace A367632.P10017095691365765012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173547 (n + 15)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P10017095691365765012

/-! ## A367632.P6419506833242867298

`∪[A137428(n+1), A169644(n+1)]`
-/

namespace A367632.P6419506833242867298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P6419506833242867298

/-! ## A367632.P5890184084254252396

`∪[A137428(n+1), A328149(n+1)]`
-/

namespace A367632.P5890184084254252396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P5890184084254252396

/-! ## A367632.P2686221541031683817

`∪[A137428(n+1), A330893(n+1)]`
-/

namespace A367632.P2686221541031683817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P2686221541031683817

/-! ## A367632.P14773061967526642314

`∪[A137428(n+1), A369333(n+1)]`
-/

namespace A367632.P14773061967526642314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P14773061967526642314

/-! ## A367632.P6863591771612807767

`∪[A137428(n+1), A369334(n+1)]`
-/

namespace A367632.P6863591771612807767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P6863591771612807767

/-! ## A367632.P18425093576745774734

`∪[A137428(n+1), A137883(n+3)]`
-/

namespace A367632.P18425093576745774734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137883 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P18425093576745774734

/-! ## A367632.P15568517873052696468

`∪[A137428(n+1), A173727(n+8)]`
-/

namespace A367632.P15568517873052696468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173727 (n + 8)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367632.P15568517873052696468

/-!
# A367633: Sum of the nontrivial divisors of n whose arithmetic derivative is coprime to n.

The programs for A367633, there is no canonical definition to state claims against.
-/

/-! ## A367633.P14847213517996239196

`A319057(∏{d}[∏{p}[n+1, #], #])`
-/

namespace A367633.P14847213517996239196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319057 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A367633.P14847213517996239196

/-! ## A367633.P10271264426752600727

`A072088(∏{p}[n+1, #+1])-1`
-/

namespace A367633.P10271264426752600727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) - 1

end

end A367633.P10271264426752600727

/-! ## A367633.P14027305839851800804

`A089867(∏{p}[n+1, #+1]-1)`
-/

namespace A367633.P14027305839851800804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1) - 1)

end

end A367633.P14027305839851800804

/-! ## A367633.P1010978164598552388

`A161980(∏{p}[n+1, #+1])-1`
-/

namespace A367633.P1010978164598552388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161980 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)) - 1

end

end A367633.P1010978164598552388

/-! ## A367633.P15953428683915001700

`∏{p}[n+1, #+1]-A325616(3*n+2)!`
-/

namespace A367633.P15953428683915001700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (Nat.factorial (A325616 (3 * n + 2)).toNat : ℤ)

end

end A367633.P15953428683915001700

/-!
# A367634: Array read by descending antidiagonals, where row n=0 lists the natural numbers and where each new row n=1,2,... is found by taking the number n in the previous row, and "leaping" it over the next n terms to its right, keeping the other numbers fixed (see example).

The programs for A367634, there is no canonical definition to state claims against.
-/

/-! ## A367634.P9629069886859359886

`A091222(A382429(n)+A165122(3*n+1))`
-/

namespace A367634.P9629069886859359886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A382429 n + A165122 (3 * n + 1)).toNat

end

end A367634.P9629069886859359886

/-! ## A367634.P10677798001432551933

`A374998(A230435(n))`
-/

namespace A367634.P10677798001432551933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374998 (A230435 n).toNat

end

end A367634.P10677798001432551933

/-! ## A367634.P1939961969436069249

`A195663(n)/A003557(A099901(n))`
-/

namespace A367634.P1939961969436069249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195663 n : ℚ) / (A003557 (A099901 n).toNat : ℚ)

end

end A367634.P1939961969436069249

/-! ## A367634.P2782514732584111037

`gcd(A195663(n), A234007(A245397(n)))`
-/

namespace A367634.P2782514732584111037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195663 n) (A234007 (A245397 n).toNat)

end

end A367634.P2782514732584111037

/-! ## A367634.P2831861506567614213

`and(A195663(n), A264097(A001006(n)))`
-/

namespace A367634.P2831861506567614213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195663 n) (A264097 (A001006 n).toNat)

end

end A367634.P2831861506567614213

/-!
# A367635: Variation of the "Comma sequence" A121805: allow one or more digits from both a(n-1) and a(n) to form the magnitude of the difference |a(n) - a(n-1)|, always choosing the minimum possible distinct value for a(n).

The programs for A367635, there is no canonical definition to state claims against.
-/

/-! ## A367635.P6890540852911047284

`A367645(A367342(n+2)-2)`
-/

namespace A367635.P6890540852911047284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367645 (A367342 (n + 2) - 2).toNat

end

end A367635.P6890540852911047284

/-! ## A367635.P8112805506158729308

`A367645(A229547(n+4)-2)`
-/

namespace A367635.P8112805506158729308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367645 (A229547 (n + 4) - 2).toNat

end

end A367635.P8112805506158729308

/-! ## A367635.P17035601016703859053

`A367645(A287383(n+2)+n)`
-/

namespace A367635.P17035601016703859053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367645 (A287383 (n + 2) + (n : ℤ)).toNat

end

end A367635.P17035601016703859053

/-!
# A367636: a(n) is the number of distinct combinations that can be created by painting the sections on a shape with n divisions that rotates around its center and consists of 4 identical arms at 90-degree intervals.

The programs for A367636, the canonical program `A367636.P11897931582823307290` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367636 has offset 1).

The definition of A367636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367636.P11897931582823307290

`2^(4*(n+1)-5)+2^(2*(n+1)-3)+2^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367636

/-- `2^(4*(n+1)-5)+2^(2*(n+1)-3)+2^n` -/
def P11897931582823307290.Spec : Prop :=
  ∀ n, P11897931582823307290.a n = (A367636 (n + 1) : ℚ)

end A367636

/-! ## A367636.P2042060363745614682

`A007582(n)*A170939(n)`
-/

namespace A367636.P2042060363745614682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n * A170939 n

end

end A367636.P2042060363745614682

namespace A367636

/-- `A007582(n)*A170939(n)` -/
def P2042060363745614682.Spec : Prop :=
  ∀ n, P2042060363745614682.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P12078954344496181009

`A134169(n)*A161168(n)`
-/

namespace A367636.P12078954344496181009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n * A161168 n

end

end A367636.P12078954344496181009

namespace A367636

/-- `A134169(n)*A161168(n)` -/
def P12078954344496181009.Spec : Prop :=
  ∀ n, P12078954344496181009.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P4241018225996942072

`lcm(A161168(n), A170939(n))`
-/

namespace A367636.P4241018225996942072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161168 n) (A170939 n)

end

end A367636.P4241018225996942072

namespace A367636

/-- `lcm(A161168(n), A170939(n))` -/
def P4241018225996942072.Spec : Prop :=
  ∀ n, (P4241018225996942072.a n : ℤ) = A367636 (n + 1)

end A367636

/-! ## A367636.P13527488958715299676

`(A020515(n)+1)*A007582(n)`
-/

namespace A367636.P13527488958715299676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020515 n + 1) * A007582 n

end

end A367636.P13527488958715299676

namespace A367636

/-- `(A020515(n)+1)*A007582(n)` -/
def P13527488958715299676.Spec : Prop :=
  ∀ n, P13527488958715299676.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P1639797062701243297

`(A081342(n)+1)*A000079(n)`
-/

namespace A367636.P1639797062701243297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081342 n + 1) * A000079 n

end

end A367636.P1639797062701243297

namespace A367636

/-- `(A081342(n)+1)*A000079(n)` -/
def P1639797062701243297.Spec : Prop :=
  ∀ n, P1639797062701243297.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P1303998368851607850

`(A006516(n)+1)*A161168(n)`
-/

namespace A367636.P1303998368851607850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + 1) * A161168 n

end

end A367636.P1303998368851607850

namespace A367636

/-- `(A006516(n)+1)*A161168(n)` -/
def P1303998368851607850.Spec : Prop :=
  ∀ n, P1303998368851607850.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P9357183092828823547

`(A020522(n)+2)*A007582(n)`
-/

namespace A367636.P9357183092828823547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020522 n + 2) * A007582 n

end

end A367636.P9357183092828823547

namespace A367636

/-- `(A020522(n)+2)*A007582(n)` -/
def P9357183092828823547.Spec : Prop :=
  ∀ n, P9357183092828823547.a n = A367636 (n + 1)

end A367636

/-! ## A367636.P1036060768323248360

`(A006516(n)+A000079(n))*A170939(n)`
-/

namespace A367636.P1036060768323248360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n + A000079 n) * A170939 n

end

end A367636.P1036060768323248360

namespace A367636

/-- `(A006516(n)+A000079(n))*A170939(n)` -/
def P1036060768323248360.Spec : Prop :=
  ∀ n, P1036060768323248360.a n = A367636 (n + 1)

end A367636

/-!
# A367637: G.f. A(x) satisfies A(x) = 1 / (1 - x * A(x^6)).

The programs for A367637, there is no canonical definition to state claims against.
-/

/-! ## A367637.P14300883175625567233

`A028310(Δ[A005708(n+4)])`
-/

namespace A367637.P14300883175625567233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A367637.P14300883175625567233

/-! ## A367637.P3775282251579998399

`A000720(A000040(a(n-1)+a(n-6)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A367637.P3775282251579998399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  A000720 (A000040 (a (n - 1) + a (n - 6)).toNat).toNat

end

end A367637.P3775282251579998399

/-! ## A367637.P5881252580011807853

`A026262(A026262(a(n-1)+a(n-6)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A367637.P5881252580011807853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  A026262 (A026262 (a (n - 1) + a (n - 6)).toNat).toNat

end

end A367637.P5881252580011807853

/-! ## A367637.P18106225302305337510

`A370655(A370655(a(n-1)+a(n-6)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A367637.P18106225302305337510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  A370655 (A370655 (a (n - 1) + a (n - 6)).toNat).toNat

end

end A367637.P18106225302305337510

/-! ## A367637.P6700233390580463697

`(a(n-1)+a(n-6))%A233117(n+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A367637.P6700233390580463697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  Int.tmod (a (n - 1) + a (n - 6)) (A233117 (n + 1))

end

end A367637.P6700233390580463697

/-!
# A367639: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^2 / (1 + x).

The programs for A367639, there is no canonical definition to state claims against.
-/

/-! ## A367639.P8418759591711487045

`A025227(n+1)+A025227(n)`
-/

namespace A367639.P8418759591711487045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 1) + A025227 n

end

end A367639.P8418759591711487045

/-! ## A367639.P3582339724936870457

`A337531(A337500(n))+A337526(n+1)`
-/

namespace A367639.P3582339724936870457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A337500 n).toNat + A337526 (n + 1)

end

end A367639.P3582339724936870457

/-!
# A367640: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^3 / (1 + x)^2.

The programs for A367640, there is no canonical definition to state claims against.
-/

/-! ## A367640.P1204017032546854237

`record[A329316(n)²-n]`
-/

namespace A367640.P1204017032546854237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329316 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367640.P1204017032546854237

/-!
# A367641: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^4 / (1 + x)^3.

The programs for A367641, there is no canonical definition to state claims against.
-/

/-! ## A367641.P8476788602416179083

`A381939(n)-a(n-1)` with `a(0)=1`
-/

namespace A367641.P8476788602416179083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A381939 n - a (n - 1)

end

end A367641.P8476788602416179083

/-!
# A367643: Number of equivalence classes of degree n integer polynomials whose discriminants are powers of 2 (in absolute value).

The programs for A367643, there is no canonical definition to state claims against.
-/

/-! ## A367643.P14214094974963434313

`∑{d}[n+1, A193621(#-1)*A317930((n+1)/#)]`
-/

namespace A367643.P14214094974963434313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193621 (d - 1) * A317930 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367643.P14214094974963434313

/-!
# A367644: Number of maximal independent vertex sets and minimal vertex covers in the n-trapezohedral graph.

The programs for A367644, the canonical program `A367644.P4056610644672707707` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367644 has offset 1).

The definition of A367644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367644.P8488610238331337963

`A001608(2*(n+1))+1`
-/

namespace A367644.P8488610238331337963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * (n + 1)) + 1

end

end A367644.P8488610238331337963

namespace A367644

/-- `A001608(2*(n+1))+1` -/
def P8488610238331337963.Spec : Prop :=
  ∀ n, P8488610238331337963.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P4056610644672707707

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=3, a(2)=6, a(3)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367644

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P4056610644672707707.Spec : Prop :=
  ∀ n, P4056610644672707707.a n = A367644 (n + 1)

theorem P4056610644672707707.correct : P4056610644672707707.Spec := by
  intro n
  simp only [A367644, Nat.add_sub_cancel]

end A367644

/-! ## A367644.P14921691491917504793

`A259967(n+1)+1`
-/

namespace A367644.P14921691491917504793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259967 (n + 1) + 1

end

end A367644.P14921691491917504793

namespace A367644

/-- `A259967(n+1)+1` -/
def P14921691491917504793.Spec : Prop :=
  ∀ n, P14921691491917504793.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P12101682662356072365

`A007391(2*(n+1))+3`
-/

namespace A367644.P12101682662356072365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007391 (2 * (n + 1)) + 3

end

end A367644.P12101682662356072365

namespace A367644

/-- `A007391(2*(n+1))+3` -/
def P12101682662356072365.Spec : Prop :=
  ∀ n, P12101682662356072365.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P17608174684609364775

`A001641(n+1)+A010673(n+1)`
-/

namespace A367644.P17608174684609364775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 1) + A010673 (n + 1)

end

end A367644.P17608174684609364775

namespace A367644

/-- `A001641(n+1)+A010673(n+1)` -/
def P17608174684609364775.Spec : Prop :=
  ∀ n, P17608174684609364775.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P9340959467360520703

`A001641(n+1)+A033999(n)+1`
-/

namespace A367644.P9340959467360520703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 1) + (A033999 n + 1)

end

end A367644.P9340959467360520703

namespace A367644

/-- `A001641(n+1)+A033999(n)+1` -/
def P9340959467360520703.Spec : Prop :=
  ∀ n, P9340959467360520703.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P14662041929617928007

`A276477(2*n)+A052954(2*n+1)`
-/

namespace A367644.P14662041929617928007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (2 * n) + A052954 (2 * n + 1)

end

end A367644.P14662041929617928007

namespace A367644

/-- `A276477(2*n)+A052954(2*n+1)` -/
def P14662041929617928007.Spec : Prop :=
  ∀ n, P14662041929617928007.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P10770356631875598144

`Δ[A290612(2*(n+2))]+1`
-/

namespace A367644.P10770356631875598144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A367644.P10770356631875598144

namespace A367644

/-- `Δ[A290612(2*(n+2))]+1` -/
def P10770356631875598144.Spec : Prop :=
  ∀ n, P10770356631875598144.a n = A367644 (n + 1)

end A367644

/-! ## A367644.P8772297123073292798

`ceil(sqrt(A303226(2*(n+1))))`
-/

namespace A367644.P8772297123073292798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A303226 (2 * (n + 1)) : ℝ)⌉

end

end A367644.P8772297123073292798

namespace A367644

/-- `ceil(sqrt(A303226(2*(n+1))))` -/
def P8772297123073292798.Spec : Prop :=
  ∀ n, P8772297123073292798.a n = A367644 (n + 1)

end A367644

/-!
# A367647: Irregular triangle read by rows in which row n lists the positive values k such that there are no primes between k*n and k*(n + 1), or -1 if no such k exists.

The programs for A367647, there is no canonical definition to state claims against.
-/

/-! ## A367647.P11022066382263589094

`A040832(A215326(n+1))`
-/

namespace A367647.P11022066382263589094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040832 (A215326 (n + 1)).toNat

end

end A367647.P11022066382263589094

/-! ## A367647.P3218998917539971029

`A114538(A060791(2*n+3))%5`
-/

namespace A367647.P3218998917539971029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114538 (A060791 (2 * n + 3)).toNat) 5

end

end A367647.P3218998917539971029

/-! ## A367647.P13212408425632418857

`A338898(or(A249716(n), A327185(n+1)))`
-/

namespace A367647.P13212408425632418857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338898 (Int.lor (A249716 n) (A327185 (n + 1))).toNat

end

end A367647.P13212408425632418857

/-! ## A367647.P10853827544673656120

`A027750(A281751(n))%A054055(3*(n+1))`
-/

namespace A367647.P10853827544673656120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (A281751 n).toNat) (A054055 (3 * (n + 1)))

end

end A367647.P10853827544673656120

/-! ## A367647.P17967926054026424160

`A057515(A000203(3*n+1)*A019538(n+1))`
-/

namespace A367647.P17967926054026424160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A000203 (3 * n + 1) * A019538 (n + 1)).toNat

end

end A367647.P17967926054026424160

/-!
# A367648: Primes p such that the multiplicative order of 3 modulo p is a power of 3.

The programs for A367648, there is no canonical definition to state claims against.
-/

/-! ## A367648.P14720720021018434028

`p?[A367265(n+1)]`
-/

namespace A367648.P14720720021018434028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A367648.P14720720021018434028

/-! ## A367648.P13201181887909646447

`filter[A367265(n+1), A010051(#)]`
-/

namespace A367648.P13201181887909646447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A367648.P13201181887909646447

/-! ## A367648.P7322522672705364624

`filter[A367265(n+1), A069513(#)]`
-/

namespace A367648.P7322522672705364624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A367648.P7322522672705364624

/-! ## A367648.P12312445652167237183

`filter[A367265(n+1), A354817(#)]`
-/

namespace A367648.P12312445652167237183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354817 (f1 j).toNat = 1) n)

end

end A367648.P12312445652167237183

/-! ## A367648.P596500134277469126

`filter[A367265(n+1), A358751(#)]`
-/

namespace A367648.P596500134277469126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A367648.P596500134277469126

/-!
# A367649: Primes p such that the multiplicative order of 3 modulo p is 2 times a power of 3.

The programs for A367649, there is no canonical definition to state claims against.
-/

/-! ## A367649.P6887758858903355594

`p?[A367266(n+3)]`
-/

namespace A367649.P6887758858903355594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A367649.P6887758858903355594

/-! ## A367649.P5478347955062556974

`filter[A367266(n+1), A257531(#)]`
-/

namespace A367649.P5478347955062556974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A367649.P5478347955062556974

/-! ## A367649.P15107865215036984262

`filter[A367266(n+3), A010051(#)]`
-/

namespace A367649.P15107865215036984262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A367649.P15107865215036984262

/-! ## A367649.P10593262215465601871

`filter[A367266(n+3), A174897(#)]`
-/

namespace A367649.P10593262215465601871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A367649.P10593262215465601871

/-! ## A367649.P9678653302518452504

`filter[A367266(n+3), A327861(#)]`
-/

namespace A367649.P9678653302518452504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A367649.P9678653302518452504

/-!
# A367652: G.f. A(x) satisfies A(x) = 1 / (1 - x * (1 + x + x^2) * A(x^3)).

The programs for A367652, there is no canonical definition to state claims against.
-/

/-! ## A367652.P16187997149357671556

`A100196(A179176(n))`
-/

namespace A367652.P16187997149357671556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A179176 n).toNat

end

end A367652.P16187997149357671556

/-! ## A367652.P6591159483968468365

`A249728(A289591(n+1))`
-/

namespace A367652.P6591159483968468365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A289591 (n + 1)).toNat

end

end A367652.P6591159483968468365

/-! ## A367652.P2926477026022554968

`A137579(A109662(n+1))+A011782(n)`
-/

namespace A367652.P2926477026022554968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A109662 (n + 1)).toNat + A011782 n

end

end A367652.P2926477026022554968

/-! ## A367652.P3095382669518494817

`A118070(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A367652.P3095382669518494817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A118070 (a (n - 1)).toNat + 2

end

end A367652.P3095382669518494817

/-! ## A367652.P12822362685343533531

`or(2*a(n-1), A038082(n+3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A367652.P12822362685343533531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n a =>
  Int.lor (2 * a (n - 1)) (A038082 (n + 3))

end

end A367652.P12822362685343533531

/-!
# A367653: G.f. A(x) satisfies A(x) = 1 / (1 - x * (1 + x + x^2 + x^3) * A(x^4)).

The programs for A367653, there is no canonical definition to state claims against.
-/

/-! ## A367653.P16764978209038706844

`A002266(A295146(n))+1`
-/

namespace A367653.P16764978209038706844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A295146 n).toNat + 1

end

end A367653.P16764978209038706844

/-! ## A367653.P11678240717793136663

`A105805(A322298(n))+ceil(2^(n-1))`
-/

namespace A367653.P11678240717793136663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105805 (A322298 n).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A367653.P11678240717793136663

/-! ## A367653.P13326602079704284013

`A307598(A137360(n))+ceil(2^(n-1))`
-/

namespace A367653.P13326602079704284013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A137360 n).toNat + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A367653.P13326602079704284013

/-! ## A367653.P4563140320115413381

`A025465(A049606(n))+A011782(n)`
-/

namespace A367653.P4563140320115413381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A049606 n).toNat + A011782 n

end

end A367653.P4563140320115413381

/-! ## A367653.P15357457541490204901

`A124764(A037957(n+1))+A011782(n)`
-/

namespace A367653.P15357457541490204901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A037957 (n + 1)).toNat + A011782 n

end

end A367653.P15357457541490204901

/-!
# A367654: G.f. A(x) satisfies A(x) = 1 / (1 - x * (1 + x + x^2 + x^3 + x^4) * A(x^5)).

The programs for A367654, there is no canonical definition to state claims against.
-/

/-! ## A367654.P17318967597830269335

`A302828(n)+A035327(A003945(n))`
-/

namespace A367654.P17318967597830269335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 n + A035327 (A003945 n).toNat

end

end A367654.P17318967597830269335

/-! ## A367654.P12338200835944267720

`A392370(A008382(n))+A011782(n)`
-/

namespace A367654.P12338200835944267720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A008382 n).toNat + A011782 n

end

end A367654.P12338200835944267720

/-! ## A367654.P1234543867017250132

`A035327(A003945(n)-A302828(n))`
-/

namespace A367654.P1234543867017250132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A003945 n - A302828 n).toNat

end

end A367654.P1234543867017250132

/-! ## A367654.P9358573421140235817

`A011782(n)+A000120(A185213(n+1))`
-/

namespace A367654.P9358573421140235817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A000120 (A185213 (n + 1)).toNat

end

end A367654.P9358573421140235817

/-! ## A367654.P14492759352543291092

`A011782(n)+A004198(A258018(n+1))`
-/

namespace A367654.P14492759352543291092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A004198 (A258018 (n + 1)).toNat

end

end A367654.P14492759352543291092

/-!
# A367655: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * (1 + x) * A(x^2)).

The programs for A367655, there is no canonical definition to state claims against.
-/

/-! ## A367655.P2639124534325396833

`A060384(A018042(n+1))`
-/

namespace A367655.P2639124534325396833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A018042 (n + 1)).toNat

end

end A367655.P2639124534325396833

/-! ## A367655.P12373233951773176824

`A060384(A018043(n+1))`
-/

namespace A367655.P12373233951773176824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A018043 (n + 1)).toNat

end

end A367655.P12373233951773176824

/-! ## A367655.P1581898645636191672

`A187188(A002426(n+3)-A212804(n+1))`
-/

namespace A367655.P1581898645636191672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A002426 (n + 3) - A212804 (n + 1)).toNat

end

end A367655.P1581898645636191672

/-! ## A367655.P12738740332065107103

`A187188(A002426(n+3)-(A001611(n)-1))`
-/

namespace A367655.P12738740332065107103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A002426 (n + 3) - (A001611 n - 1)).toNat

end

end A367655.P12738740332065107103

/-!
# A367656: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * (1 + x + x^2) * A(x^3)).

The programs for A367656, there is no canonical definition to state claims against.
-/

/-! ## A367656.P9638118791552951186

`A369715(A271898(n))`
-/

namespace A367656.P9638118791552951186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A271898 n).toNat

end

end A367656.P9638118791552951186

/-! ## A367656.P7685375793712664658

`A226762(A037128(n+1))`
-/

namespace A367656.P7685375793712664658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A037128 (n + 1)).toNat

end

end A367656.P7685375793712664658

/-! ## A367656.P6746430187223638131

`A243284(A149997(n+1))`
-/

namespace A367656.P6746430187223638131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243284 (A149997 (n + 1)).toNat

end

end A367656.P6746430187223638131

/-!
# A367657: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * (1 + x + x^2 + x^3) * A(x^4)).

The programs for A367657, there is no canonical definition to state claims against.
-/

/-! ## A367657.P5446141553158228370

`A357589(A367658(n+1))`
-/

namespace A367657.P5446141553158228370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357589 (A367658 (n + 1)).toNat

end

end A367657.P5446141553158228370

/-! ## A367657.P13298447111791145935

`Δ[A357589(∑[A367658(n)])]`
-/

namespace A367657.P13298447111791145935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357589 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367657.P13298447111791145935

/-! ## A367657.P13307950894410733019

`A248227(A017926(n))`
-/

namespace A367657.P13307950894410733019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A017926 n).toNat

end

end A367657.P13307950894410733019

/-! ## A367657.P12757932896224613141

`A248227(round(sqrt(A000420(n)+n+1)))`
-/

namespace A367657.P12757932896224613141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (SequenceMachineLib.roundAway (Real.sqrt (A000420 n + (n + 1 : ℤ) : ℝ))).toNat

end

end A367657.P12757932896224613141

/-!
# A367658: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * (1 + x + x^2 + x^3 + x^4) * A(x^5)).

The programs for A367658, there is no canonical definition to state claims against.
-/

/-! ## A367658.P12416824828966316840

`A274162(A033034(n+1))`
-/

namespace A367658.P12416824828966316840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (A033034 (n + 1)).toNat

end

end A367658.P12416824828966316840

/-! ## A367658.P2160072849939588306

`A256662(A141448(n+1))`
-/

namespace A367658.P2160072849939588306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256662 (A141448 (n + 1)).toNat

end

end A367658.P2160072849939588306

/-! ## A367658.P16249531334339261678

`A274162(A391853(n+1))`
-/

namespace A367658.P16249531334339261678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (A391853 (n + 1)).toNat

end

end A367658.P16249531334339261678

/-! ## A367658.P15946276593887949766

`A274162(A307882(n+2))`
-/

namespace A367658.P15946276593887949766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274162 (A307882 (n + 2)).toNat

end

end A367658.P15946276593887949766

/-!
# A367659: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * A(x^3)).

The programs for A367659, there is no canonical definition to state claims against.
-/

/-! ## A367659.P9863223206865068537

`A023190(A026597(n))`
-/

namespace A367659.P9863223206865068537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A026597 n).toNat

end

end A367659.P9863223206865068537

/-! ## A367659.P6760335929522164336

`A249728(A150153(n))`
-/

namespace A367659.P6760335929522164336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A150153 n).toNat

end

end A367659.P6760335929522164336

/-! ## A367659.P14527558736255067524

`A257839(A218982(n))`
-/

namespace A367659.P14527558736255067524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A218982 n).toNat

end

end A367659.P14527558736255067524

/-! ## A367659.P9495443134763420908

`A382048(A007141(n+1))`
-/

namespace A367659.P9495443134763420908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382048 (A007141 (n + 1)).toNat

end

end A367659.P9495443134763420908

/-!
# A367660: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * A(x^4)).

The programs for A367660, there is no canonical definition to state claims against.
-/

/-! ## A367660.P17538729676952670575

`∑[A055086(A137952(n))]`
-/

namespace A367660.P17538729676952670575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A137952 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367660.P17538729676952670575

/-! ## A367660.P15649818609232220876

`A115352(A367661(n+1))`
-/

namespace A367660.P15649818609232220876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A367661 (n + 1)).toNat

end

end A367660.P15649818609232220876

/-! ## A367660.P2268644399735551483

`A157271(A243084(n)+A111297(n))`
-/

namespace A367660.P2268644399735551483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A243084 n + A111297 n).toNat

end

end A367660.P2268644399735551483

/-! ## A367660.P3046682454476493860

`round(root(A011790(n), 3))`
-/

namespace A367660.P3046682454476493860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011790 n : ℝ) ^ (1 / (3 : ℝ)))

end

end A367660.P3046682454476493860

/-!
# A367661: G.f. A(x) satisfies A(x) = 1 / (1 - x - x * A(x^5)).

The programs for A367661, there is no canonical definition to state claims against.
-/

/-! ## A367661.P8513617393896871596

`∑[A055086(A033321(n))]`
-/

namespace A367661.P8513617393896871596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A033321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367661.P8513617393896871596

/-! ## A367661.P8274462543651864902

`A185283(A270913(n+1))`
-/

namespace A367661.P8274462543651864902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A270913 (n + 1)).toNat

end

end A367661.P8274462543651864902

/-! ## A367661.P10512621290999445787

`A001462(A186236(n)*A194974(n+1))`
-/

namespace A367661.P10512621290999445787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A186236 n * A194974 (n + 1)).toNat

end

end A367661.P10512621290999445787

/-! ## A367661.P5783230350272963431

`record[A006207(2*n+1)-A308995(A075199(n+1))]`
-/

namespace A367661.P5783230350272963431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006207 (2 * n + 1) - A308995 (A075199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367661.P5783230350272963431

/-!
# A367662: Number of regions formed in a hexagon by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the hexagon.

The programs for A367662, there is no canonical definition to state claims against.
-/

/-! ## A367662.P520213849428157794

`A367664(n+1)-A367663(n+1)+1`
-/

namespace A367662.P520213849428157794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367664 (n + 1) - A367663 (n + 1) + 1

end

end A367662.P520213849428157794

/-! ## A367662.P10452317478737233799

`A367664(n+1)-A010848(A367663(n+1))`
-/

namespace A367662.P10452317478737233799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367664 (n + 1) - A010848 (A367663 (n + 1)).toNat

end

end A367662.P10452317478737233799

/-! ## A367662.P15827067637630360853

`A015906(A367664(n+1)-A367663(n+1))`
-/

namespace A367662.P15827067637630360853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A367664 (n + 1) - A367663 (n + 1)).toNat

end

end A367662.P15827067637630360853

/-!
# A367663: Number of vertices formed in a hexagon by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the hexagon.

The programs for A367663, there is no canonical definition to state claims against.
-/

/-! ## A367663.P9304411996018911356

`A367664(n+1)-A367662(n+1)+1`
-/

namespace A367663.P9304411996018911356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367664 (n + 1) - A367662 (n + 1) + 1

end

end A367663.P9304411996018911356

/-! ## A367663.P6568479834399196098

`A367664(n+1)-A199969(A367662(n+1))`
-/

namespace A367663.P6568479834399196098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367664 (n + 1) - A199969 (A367662 (n + 1)).toNat

end

end A367663.P6568479834399196098

/-!
# A367664: Number of edges formed in a hexagon by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the hexagon.

The programs for A367664, there is no canonical definition to state claims against.
-/

/-! ## A367664.P1597094515440241761

`A367662(n+1)+A367663(n+1)-1`
-/

namespace A367664.P1597094515440241761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367662 (n + 1) + A367663 (n + 1) - 1

end

end A367664.P1597094515440241761

/-! ## A367664.P5167787045908852674

`A367662(n+1)+A010848(A367663(n+1))`
-/

namespace A367664.P5167787045908852674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367662 (n + 1) + A010848 (A367663 (n + 1)).toNat

end

end A367664.P5167787045908852674

/-! ## A367664.P14593014563584120944

`A185048(A367663(n+1)+A367662(n+1))`
-/

namespace A367664.P14593014563584120944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A367663 (n + 1) + A367662 (n + 1)).toNat

end

end A367664.P14593014563584120944

/-!
# A367666: G.f. A(x) satisfies A(x) = 1 / (1 - x - x^2 * A(x^3)).

The programs for A367666, there is no canonical definition to state claims against.
-/

/-! ## A367666.P14931595233849467145

`A071860(A292211(n+1))`
-/

namespace A367666.P14931595233849467145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A292211 (n + 1)).toNat

end

end A367666.P14931595233849467145

/-! ## A367666.P15620990699104337824

`A257639(A316779(n+1))`
-/

namespace A367666.P15620990699104337824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A316779 (n + 1)).toNat

end

end A367666.P15620990699104337824

/-! ## A367666.P4930541332634291441

`A003056(A370169(n)+A026323(n+1))`
-/

namespace A367666.P4930541332634291441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A370169 n + A026323 (n + 1)).toNat

end

end A367666.P4930541332634291441

/-! ## A367666.P3296891772464235850

`A003056(A098131(2*n+1)+A002528(n))`
-/

namespace A367666.P3296891772464235850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A098131 (2 * n + 1) + A002528 n).toNat

end

end A367666.P3296891772464235850

/-! ## A367666.P12059387200191139145

`A241464(A324537(2*(n+1)))+A129852(n)`
-/

namespace A367666.P12059387200191139145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241464 (A324537 (2 * (n + 1))).toNat + A129852 n

end

end A367666.P12059387200191139145

/-!
# A367667: G.f. A(x) satisfies A(x) = 1 / (1 - x - x^3 * A(x^3)).

The programs for A367667, there is no canonical definition to state claims against.
-/

/-! ## A367667.P5665988865816728933

`A240122(A219272(n))+A113435(n)`
-/

namespace A367667.P5665988865816728933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240122 (A219272 n).toNat + A113435 n

end

end A367667.P5665988865816728933

/-! ## A367667.P3099334482575336091

`A185284(A030059(n+1))+A113435(n)`
-/

namespace A367667.P3099334482575336091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A030059 (n + 1)).toNat + A113435 n

end

end A367667.P3099334482575336091

/-! ## A367667.P10753785477758744512

`A374051(A205541(n+2))+A113435(n)`
-/

namespace A367667.P10753785477758744512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (A205541 (n + 2)).toNat + A113435 n

end

end A367667.P10753785477758744512

/-! ## A367667.P9419363901667297905

`or(A010051(A078168(n+1)), A113435(n))`
-/

namespace A367667.P9419363901667297905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A078168 (n + 1)).toNat) (A113435 n)

end

end A367667.P9419363901667297905

/-!
# A367669: Number of degree 3 number fields unramified outside the first n prime numbers.

The programs for A367669, there is no canonical definition to state claims against.
-/

/-! ## A367669.P16081806733536901043

`Δ[A233583(A289780(n))]-1`
-/

namespace A367669.P16081806733536901043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A289780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A367669.P16081806733536901043

/-!
# A367672: a(n) is the denominator of the probability that the free polyomino with binary code A246521(n+1) appears in the version of the Eden growth model described in A367671 when n square cells have been added.

The programs for A367672, there is no canonical definition to state claims against.
-/

/-! ## A367672.P4547462843289490669

`A367671(n+1)/(A367675(n+1)/A367676(n+1)*A335573(n+2))`
-/

namespace A367672.P4547462843289490669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367671 (n + 1) : ℚ) / ((A367675 (n + 1) : ℚ) / (A367676 (n + 1) : ℚ) * (A335573 (n + 2) : ℚ))

end

end A367672.P4547462843289490669

/-!
# A367673: Numerator of the greatest probability that a particular free polyomino with n cells appears in the version of the Eden growth model described in A367671.

The programs for A367673, there is no canonical definition to state claims against.
-/

/-! ## A367673.P12936395149805760430

`A367671(A268701(n)+A124754(n))`
-/

namespace A367673.P12936395149805760430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367671 (A268701 n + A124754 n).toNat

end

end A367673.P12936395149805760430

/-! ## A367673.P8705561683592152152

`A367671(A219403(n+1)*A270831(n+1))`
-/

namespace A367673.P8705561683592152152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367671 (A219403 (n + 1) * A270831 (n + 1)).toNat

end

end A367673.P8705561683592152152

/-!
# A367674: Denominator of the greatest probability that a particular free polyomino with n cells appears in the version of the Eden growth model described in A367671.

The programs for A367674, there is no canonical definition to state claims against.
-/

/-! ## A367674.P9977842669681551465

`A367672(A261132(n)+A030266(n))`
-/

namespace A367674.P9977842669681551465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367672 (A261132 n + A030266 n).toNat

end

end A367674.P9977842669681551465

/-! ## A367674.P12517584936133819628

`A367672(A279551(n)+A155100(n))`
-/

namespace A367674.P12517584936133819628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367672 (A279551 n + A155100 n).toNat

end

end A367674.P12517584936133819628

/-!
# A367675: a(n) is the numerator of the probability that a particular one of the A335573(n+1) fixed polyominoes corresponding to the free polyomino with binary code A246521(n+1) appears in the version of the Eden growth model described in A367671 when n square cells have been added.

The programs for A367675, there is no canonical definition to state claims against.
-/

/-! ## A367675.P10319296509067318808

`A367671(∏{p}[n+1, lcm(n+1, #²)/(n+1)]^A304274(n+1))`
-/

namespace A367675.P10319296509067318808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367671 (SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)) ^ (A304274 (n + 1) : ℤ))).toNat

end

end A367675.P10319296509067318808

/-! ## A367675.P15950915287745322969

`A367671(n+1)^A331436(A331436(3*n+1))`
-/

namespace A367675.P15950915287745322969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367671 (n + 1) : ℚ) ^ (A331436 (A331436 (3 * n + 1)).toNat : ℤ)

end

end A367675.P15950915287745322969

/-!
# A367676: a(n) is the denominator of the probability that a particular one of the A335573(n+1) fixed polyominoes corresponding to the free polyomino with binary code A246521(n+1) appears in the version of the Eden growth model described in A367671 when n square cells have been added.

The programs for A367676, there is no canonical definition to state claims against.
-/

/-! ## A367676.P9097103302082202846

`A001349(a(n-1))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=6`
-/

namespace A367676.P9097103302082202846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 6] fun n a =>
  A001349 (a (n - 1)).toNat

end

end A367676.P9097103302082202846

/-!
# A367677: Numerator of the greatest probability that a particular fixed polyomino with n cells appears in the version of the Eden growth model described in A367671.

The programs for A367677, there is no canonical definition to state claims against.
-/

/-! ## A367677.P7095849560076400270

`A074229((2-(a(n-2)+1)²)²)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A367677.P7095849560076400270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A074229 ((2 - (a (n - 2) + 1) ^ 2) ^ 2).toNat

end

end A367677.P7095849560076400270

/-! ## A367677.P9733646436102358796

`A137285(A191349(n))`
-/

namespace A367677.P9733646436102358796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137285 (A191349 n).toNat

end

end A367677.P9733646436102358796

/-!
# A367678: Denominator of the greatest probability that a particular fixed polyomino with n cells appears in the version of the Eden growth model described in A367671.

The programs for A367678, there is no canonical definition to state claims against.
-/

/-! ## A367678.P16149607047781884540

`3*A286330(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A367678.P16149607047781884540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A286330 (a (n - 1)).toNat

end

end A367678.P16149607047781884540

/-!
# A367680: Number of integer compositions x1+x2+...+xk of n such that each xj has exactly j bits set.

The programs for A367680, there is no canonical definition to state claims against.
-/

/-! ## A367680.P4877729899902501963

`A373241(A139590(n+1)-A373241(2*(n+1)))`
-/

namespace A367680.P4877729899902501963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373241 (A139590 (n + 1) - A373241 (2 * (n + 1))).toNat

end

end A367680.P4877729899902501963

/-! ## A367680.P883340278951133971

`A001511(A352818(n+1))-A010815(n+4)`
-/

namespace A367680.P883340278951133971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A352818 (n + 1)).toNat - A010815 (n + 4)

end

end A367680.P883340278951133971

/-! ## A367680.P491090672359423883

`gcd(A355739(A004215(n+1)), A355739(n+1))`
-/

namespace A367680.P491090672359423883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A355739 (A004215 (n + 1)).toNat) (A355739 (n + 1))

end

end A367680.P491090672359423883

/-!
# A367683: Numbers whose sorted prime signature is the same as the multiset multiplicity kernel of their prime indices.

The programs for A367683, there is no canonical definition to state claims against.
-/

/-! ## A367683.P14866565457589942821

`eq[A001222(n+1), A367581(n+1)]+1`
-/

namespace A367683.P14866565457589942821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367683.P14866565457589942821

/-! ## A367683.P11007786441241799077

`A325706(lt[A005711(n), A064413(n+1)])`
-/

namespace A367683.P11007786441241799077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A367683.P11007786441241799077

/-! ## A367683.P1830871259918248466

`A325706(n+1)+A224447(A228166(n))`
-/

namespace A367683.P1830871259918248466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (n + 1) + A224447 (A228166 n).toNat

end

end A367683.P1830871259918248466

/-!
# A367684: Number of integer partitions of n whose multiset multiplicity kernel is a submultiset.

The programs for A367684, there is no canonical definition to state claims against.
-/

/-! ## A367684.P12787084267272010149

`A056556(A185251(n)+A000219(n))`
-/

namespace A367684.P12787084267272010149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A185251 n + A000219 n).toNat

end

end A367684.P12787084267272010149

/-! ## A367684.P8782803702199163201

`A351570(A000108(n))+A323092(n)`
-/

namespace A367684.P8782803702199163201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (A000108 n).toNat + A323092 n

end

end A367684.P8782803702199163201

/-! ## A367684.P5018066540597271518

`A323092(n)+A121262(A255794(n+1))`
-/

namespace A367684.P5018066540597271518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323092 n + A121262 (A255794 (n + 1)).toNat

end

end A367684.P5018066540597271518

/-! ## A367684.P12617101272363014120

`A385343(A091885(n+1))+A323092(n)`
-/

namespace A367684.P12617101272363014120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385343 (A091885 (n + 1)).toNat + A323092 n

end

end A367684.P12617101272363014120

/-! ## A367684.P669462412156223457

`A111660(A087750(n+2)-A111660(n+1))`
-/

namespace A367684.P669462412156223457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A087750 (n + 2) - A111660 (n + 1)).toNat

end

end A367684.P669462412156223457

/-!
# A367685: Numbers divisible by their multiset multiplicity kernel.

The programs for A367685, there is no canonical definition to state claims against.
-/

/-! ## A367685.P1668676101490787110

`lt[∑{e}[n², n/#], n]`
-/

namespace A367685.P1668676101490787110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (Nat.factorization (f2 n) p : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A367685.P1668676101490787110

/-! ## A367685.P137583648886774131

`lt[∏{e}[n, n/#], ∑[n+1]]`
-/

namespace A367685.P137583648886774131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (Nat.factorization (f2 n) p : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A367685.P137583648886774131

/-! ## A367685.P7589005743106661230

`lt[-(2*n), ∑{e}[n, #-(n+1)]]`
-/

namespace A367685.P7589005743106661230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367685.P7589005743106661230

/-! ## A367685.P3035513184674074452

`lt[A231122(n+1), 1]+1`
-/

namespace A367685.P3035513184674074452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367685.P3035513184674074452

/-! ## A367685.P13023275357228222532

`lt[A050326(n+1), 2]+1`
-/

namespace A367685.P13023275357228222532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367685.P13023275357228222532

/-! ## A367685.P9027287421306190184

`lt[A056169(n+1), 2]+1`
-/

namespace A367685.P9027287421306190184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367685.P9027287421306190184

/-! ## A367685.P9909656435232128819

`lt[A361205(n+1), 2]+1`
-/

namespace A367685.P9909656435232128819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361205 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367685.P9909656435232128819

/-! ## A367685.P187125043267250036

`filter[A344586(n+1), A340372(#)]`
-/

namespace A367685.P187125043267250036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A367685.P187125043267250036

/-! ## A367685.P13019377786223355558

`∪[A001411(n), A130091(n+1)]`
-/

namespace A367685.P13019377786223355558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367685.P13019377786223355558

/-! ## A367685.P5226467049071289145

`∪[A002906(n), A130091(n+1)]`
-/

namespace A367685.P5226467049071289145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367685.P5226467049071289145

/-!
# A367689: Smallest prime number p such that x^n + y^n mod p does not take all values on Z/pZ.

The programs for A367689, there is no canonical definition to state claims against.
-/

/-! ## A367689.P3257994321694545586

`A368055(lcm(2, n+3))`
-/

namespace A367689.P3257994321694545586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368055 (Nat.lcm 2 (n + 3))

end

end A367689.P3257994321694545586

/-! ## A367689.P1235490310623779018

`A368055(A288572(n+2))`
-/

namespace A367689.P1235490310623779018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368055 (A288572 (n + 2)).toNat

end

end A367689.P1235490310623779018

/-!
# A367690: Total number of steps of Euclid's GCD algorithm to calculate gcd(x,y) for all pairs x,y in the range 1 <= x,y <= n.

The programs for A367690, there is no canonical definition to state claims against.
-/

/-! ## A367690.P7845532477241081159

`a(n-1)+n+1+A049826(n+1)*2` with `a(0)=1`
-/

namespace A367690.P7845532477241081159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) + A049826 (n + 1) * 2

end

end A367690.P7845532477241081159

/-! ## A367690.P17405559007861141129

`A367954(n+1)+A367892(n+1)`
-/

namespace A367690.P17405559007861141129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367954 (n + 1) + A367892 (n + 1)

end

end A367690.P17405559007861141129

/-! ## A367690.P16670945237061399780

`A080956(n)+2*A367954(n+1)`
-/

namespace A367690.P16670945237061399780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + 2 * A367954 (n + 1)

end

end A367690.P16670945237061399780

/-! ## A367690.P16333259551275370809

`2*A367892(n+1)-A080956(n)`
-/

namespace A367690.P16333259551275370809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367892 (n + 1) - A080956 n

end

end A367690.P16333259551275370809

/-! ## A367690.P8767412604108288989

`∑[A049827(n+2)-1]+A367954(n+1)+∑[1-n]`
-/

namespace A367690.P8767412604108288989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A367954 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A367690.P8767412604108288989

/-!
# A367691: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x^3))).

The programs for A367691, there is no canonical definition to state claims against.
-/

/-! ## A367691.P13974398853056716145

`∑[A373654(n)%A015162(2*(n+2))]`
-/

namespace A367691.P13974398853056716145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373654 n) (A015162 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367691.P13974398853056716145

/-! ## A367691.P16857897360991553299

`∑[A367637(2*n)-A335462(A143685(n))]`
-/

namespace A367691.P16857897360991553299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367637 (2 * n) - A335462 (A143685 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367691.P16857897360991553299

/-! ## A367691.P15687464584706073848

`A000194(A083337(n)+1)`
-/

namespace A367691.P15687464584706073848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A083337 n + 1).toNat

end

end A367691.P15687464584706073848

/-! ## A367691.P14879326203796734526

`A369464(A293411(n)+1)`
-/

namespace A367691.P14879326203796734526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (A293411 n + 1).toNat

end

end A367691.P14879326203796734526

/-! ## A367691.P9765890809727971592

`A135664(A032294(n+2))`
-/

namespace A367691.P9765890809727971592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A032294 (n + 2)).toNat

end

end A367691.P9765890809727971592

/-!
# A367692: G.f. A(x) satisfies A(x) = 1 / ((1 - x) * (1 - x * A(x^4))).

The programs for A367692, there is no canonical definition to state claims against.
-/

/-! ## A367692.P4318941083746142226

`∑[A005710(A036288(ceil(2^(n-1))))]`
-/

namespace A367692.P4318941083746142226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (A036288 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367692.P4318941083746142226

/-! ## A367692.P17463116596099724459

`A158366(A211696(n+1))`
-/

namespace A367692.P17463116596099724459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A211696 (n + 1)).toNat

end

end A367692.P17463116596099724459

/-! ## A367692.P5489744258588389688

`A346132(A032020(n))+A107853(n)`
-/

namespace A367692.P5489744258588389688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A032020 n).toNat + A107853 n

end

end A367692.P5489744258588389688

/-! ## A367692.P16675752886475423115

`A307971(n+4)-A058348(A009766(2*n))`
-/

namespace A367692.P16675752886475423115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307971 (n + 4) - A058348 (A009766 (2 * n)).toNat

end

end A367692.P16675752886475423115

/-!
# A367693: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - x * A(x^3))).

The programs for A367693, there is no canonical definition to state claims against.
-/

/-! ## A367693.P16861747361556390522

`A000120(and(A147215(n+1), A346668(n)))`
-/

namespace A367693.P16861747361556390522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A147215 (n + 1)) (A346668 n)).toNat

end

end A367693.P16861747361556390522

/-! ## A367693.P11179300894525365916

`∑[(-((A178432(n)+2)%2))^n]`
-/

namespace A367693.P11179300894525365916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A178432 n + 2) 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367693.P11179300894525365916

/-! ## A367693.P18164573741753288974

`A390256(A350695(n))`
-/

namespace A367693.P18164573741753288974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A350695 n).toNat

end

end A367693.P18164573741753288974

/-! ## A367693.P16791472620011161299

`∑[A106510(A286740(n))]`
-/

namespace A367693.P16791472620011161299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (A286740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367693.P16791472620011161299

/-! ## A367693.P3474464364052487814

`A367694(A077168(n+1))`
-/

namespace A367693.P3474464364052487814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367694 (A077168 (n + 1)).toNat

end

end A367693.P3474464364052487814

/-!
# A367694: G.f. A(x) satisfies A(x) = 1 / ((1 + x) * (1 - x * A(x^4))).

The programs for A367694, there is no canonical definition to state claims against.
-/

/-! ## A367694.P2325912849625815130

`ceil(abs((1-n)/2))-A001069(A038085(n+1))`
-/

namespace A367694.P2325912849625815130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ - A001069 (A038085 (n + 1)).toNat

end

end A367694.P2325912849625815130

/-! ## A367694.P3073555772356136467

`∑[A000035(3*n+1)-A010051(A277867(n))]`
-/

namespace A367694.P3073555772356136467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (3 * n + 1) - A010051 (A277867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367694.P3073555772356136467

/-! ## A367694.P18001204441004560063

`A139351(A087079(n+1))`
-/

namespace A367694.P18001204441004560063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A087079 (n + 1)).toNat

end

end A367694.P18001204441004560063

/-! ## A367694.P554893204132578684

`A004216(A128936(n+1))-and(1, n)+1`
-/

namespace A367694.P554893204132578684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A128936 (n + 1)).toNat - (Nat.land 1 n : ℤ) + 1

end

end A367694.P554893204132578684

/-! ## A367694.P12114198543491625158

`∑[(-A341969(A113451(2*n+3)))^n]`
-/

namespace A367694.P12114198543491625158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A341969 (A113451 (2 * n + 3)).toNat) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367694.P12114198543491625158

/-!
# A367695: Numbers k such that k and k+1 are both exponentially odd numbers (A268335).

The programs for A367695, the canonical program `A367695.P14319411982053900779` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367695 has offset 1).

The definition of A367695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367695.P1327486843542975209

`eq[A351572(n+1), A351572(n+2)]+1`
-/

namespace A367695.P1327486843542975209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351572 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367695.P1327486843542975209

namespace A367695

/-- `eq[A351572(n+1), A351572(n+2)]+1` -/
def P1327486843542975209.Spec : Prop :=
  ∀ n, (P1327486843542975209.a n : ℤ) = A367695 (n + 1)

end A367695

/-! ## A367695.P14319411982053900779

`A268335(comp[comp[A268335(n+1)]-n])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A367695

/-- `A268335(comp[comp[A268335(n+1)]-n])` -/
def P14319411982053900779.Spec : Prop :=
  ∀ n, P14319411982053900779.a n = A367695 (n + 1)

theorem P14319411982053900779.correct : P14319411982053900779.Spec := by
  intro n
  simp only [A367695, Nat.add_sub_cancel]

end A367695

/-! ## A367695.P9572364978779397954

`eq[0, Δ[A071974(n+1)]]+1`
-/

namespace A367695.P9572364978779397954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367695.P9572364978779397954

namespace A367695

/-- `eq[0, Δ[A071974(n+1)]]+1` -/
def P9572364978779397954.Spec : Prop :=
  ∀ n, (P9572364978779397954.a n : ℤ) = A367695 (n + 1)

end A367695

/-! ## A367695.P7531868063812464639

`record[A350390(n+1)%A350390(n+2)]`
-/

namespace A367695.P7531868063812464639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350390 (n + 1)) (A350390 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367695.P7531868063812464639

namespace A367695

/-- `record[A350390(n+1)%A350390(n+2)]` -/
def P7531868063812464639.Spec : Prop :=
  ∀ n, P7531868063812464639.a n = A367695 (n + 1)

end A367695

/-!
# A367696: Numbers k such that k and k+1 are both exponentially odious numbers (A270428).

The programs for A367696, the canonical program `A367696.P4831548240618922370` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367696 has offset 1).

The definition of A367696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367696.P11043586979749247158

`eq[A270419(n+1), A270419(n+2)]+1`
-/

namespace A367696.P11043586979749247158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367696.P11043586979749247158

namespace A367696

/-- `eq[A270419(n+1), A270419(n+2)]+1` -/
def P11043586979749247158.Spec : Prop :=
  ∀ n, (P11043586979749247158.a n : ℤ) = A367696 (n + 1)

end A367696

/-! ## A367696.P4831548240618922370

`∩[A270428(n+1)-1, A270428(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A367696

/-- `∩[A270428(n+1)-1, A270428(n+1)]` -/
def P4831548240618922370.Spec : Prop :=
  ∀ n, (P4831548240618922370.a n : ℤ) = A367696 (n + 1)

theorem P4831548240618922370.correct : P4831548240618922370.Spec := by
  intro n
  simp only [A367696, Nat.add_sub_cancel]

end A367696

/-! ## A367696.P13736410585165446975

`record[A355825(n+2)*A367514(n+1)]`
-/

namespace A367696.P13736410585165446975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 2) * A367514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367696.P13736410585165446975

namespace A367696

/-- `record[A355825(n+2)*A367514(n+1)]` -/
def P13736410585165446975.Spec : Prop :=
  ∀ n, P13736410585165446975.a n = A367696 (n + 1)

end A367696

/-! ## A367696.P8136245467726458812

`eq[A367513(n+1), A367513(n+2)]+1`
-/

namespace A367696.P8136245467726458812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367696.P8136245467726458812

namespace A367696

/-- `eq[A367513(n+1), A367513(n+2)]+1` -/
def P8136245467726458812.Spec : Prop :=
  ∀ n, (P8136245467726458812.a n : ℤ) = A367696 (n + 1)

end A367696

/-! ## A367696.P5636848506994622590

`eq[A367698(n+1), A367698(n+2)]+1`
-/

namespace A367696.P5636848506994622590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367698 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A367696.P5636848506994622590

namespace A367696

/-- `eq[A367698(n+1), A367698(n+2)]+1` -/
def P5636848506994622590.Spec : Prop :=
  ∀ n, (P5636848506994622590.a n : ℤ) = A367696 (n + 1)

end A367696

/-!
# A367698: The smallest divisor d of n such that n/d is an exponentially odious number (A270428).

The programs for A367698, there is no canonical definition to state claims against.
-/

/-! ## A367698.P16098656417928115253

`(n+1)/A366905(n+1)`
-/

namespace A367698.P16098656417928115253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A366905 (n + 1) : ℚ)

end

end A367698.P16098656417928115253

/-! ## A367698.P3151999272006278323

`gcd(A007948(3*(n+1)), A066990(A270419(n+1)))`
-/

namespace A367698.P3151999272006278323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007948 (3 * (n + 1))) (A066990 (A270419 (n + 1)).toNat)

end

end A367698.P3151999272006278323

/-! ## A367698.P11687694519821842027

`A367931(A366905(n+1)*A367931(n+1))`
-/

namespace A367698.P11687694519821842027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367931 (A366905 (n + 1) * A367931 (n + 1)).toNat

end

end A367698.P11687694519821842027

/-! ## A367698.P12270959157165839050

`A308993(A270419(n+1)²)`
-/

namespace A367698.P12270959157165839050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (A270419 (n + 1) ^ 2).toNat

end

end A367698.P12270959157165839050

/-! ## A367698.P8264676173883015765

`A365685(A367931(n+1)*A372329(n+1))`
-/

namespace A367698.P8264676173883015765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365685 (A367931 (n + 1) * A372329 (n + 1)).toNat

end

end A367698.P8264676173883015765

/-! ## A367698.P4120902859632848860

`A365685(A367933(n+1)*A372328(n+1))`
-/

namespace A367698.P4120902859632848860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365685 (A367933 (n + 1) * A372328 (n + 1)).toNat

end

end A367698.P4120902859632848860

/-! ## A367698.P2192133033525352648

`gcd(A180799(n+1), A270419(n+1))`
-/

namespace A367698.P2192133033525352648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180799 (n + 1)) (A270419 (n + 1))

end

end A367698.P2192133033525352648

/-! ## A367698.P334215862927800095

`A076942(A076942(n+1)*A353897(n+1))`
-/

namespace A367698.P334215862927800095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (A076942 (n + 1) * A353897 (n + 1)).toNat

end

end A367698.P334215862927800095

/-! ## A367698.P8789501914780861342

`A000189(lcm(n+1, ∏{p}[n+1, #²]))/A019555(n+1)`
-/

namespace A367698.P8789501914780861342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000189 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)) : ℚ) / (A019555 (n + 1) : ℚ)

end

end A367698.P8789501914780861342

/-! ## A367698.P13152270086487204668

`A197863(n+1)/A353897(A197863(n+1))`
-/

namespace A367698.P13152270086487204668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A353897 (A197863 (n + 1)).toNat : ℚ)

end

end A367698.P13152270086487204668

/-! ## A367698.P13446560082630130977

`A270419(n+1)%A078571(A078544(2*n+1))`
-/

namespace A367698.P13446560082630130977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270419 (n + 1)) (A078571 (A078544 (2 * n + 1)).toNat)

end

end A367698.P13446560082630130977

/-! ## A367698.P16956101436228662509

`A365297((n+1)/A055229(n+1)^3*A350389(n+1))`
-/

namespace A367698.P16956101436228662509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) ^ 3 : ℚ) * (A350389 (n + 1) : ℚ))).toNat

end

end A367698.P16956101436228662509

/-!
# A367699: The smallest divisor d of n such that n/d is an exponentially evil number (A262675).

The programs for A367699, there is no canonical definition to state claims against.
-/

/-! ## A367699.P8052968763784294209

`(n+1)/A366906(n+1)`
-/

namespace A367699.P8052968763784294209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A366906 (n + 1) : ℚ)

end

end A367699.P8052968763784294209

/-! ## A367699.P5738498370738597416

`A048798(A331738(n+1))*A331738(A048798(n+1))`
-/

namespace A367699.P5738498370738597416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A331738 (n + 1)).toNat * A331738 (A048798 (n + 1)).toNat

end

end A367699.P5738498370738597416

/-! ## A367699.P13136658229372692504

`A367514((n+1)*A368167(n+1))/A008834(A372328(n+1))`
-/

namespace A367699.P13136658229372692504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367514 ((n + 1 : ℤ) * A368167 (n + 1)).toNat : ℚ) / (A008834 (A372328 (n + 1)).toNat : ℚ)

end

end A367699.P13136658229372692504

/-! ## A367699.P6026047997395246873

`A360541(A360541(n+1))*A365685(n+1)`
-/

namespace A367699.P6026047997395246873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 (A360541 (n + 1)).toNat * A365685 (n + 1)

end

end A367699.P6026047997395246873

/-! ## A367699.P11214378109081461628

`A365298(A365685(n+1)*A367932(n+1))`
-/

namespace A367699.P11214378109081461628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365298 (A365685 (n + 1) * A367932 (n + 1)).toNat

end

end A367699.P11214378109081461628

/-! ## A367699.P1756438470733930504

`A367932(A365685(n+1)*A367932(n+1))`
-/

namespace A367699.P1756438470733930504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367932 (A365685 (n + 1) * A367932 (n + 1)).toNat

end

end A367699.P1756438470733930504

/-! ## A367699.P11719780686911217685

`A360541(((n+1)/A000188(n+1)²)²*A000189(n+1))`
-/

namespace A367699.P11719780686911217685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ)) ^ 2 * (A000189 (n + 1) : ℚ))).toNat

end

end A367699.P11719780686911217685

/-! ## A367699.P7659981233924561611

`A360541((n+1)/A015053((n+1)²)*((n+1)/A000188(n+1)²)²)`
-/

namespace A367699.P7659981233924561611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A015053 ((n + 1) ^ 2) : ℚ) * ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ)) ^ 2)).toNat

end

end A367699.P7659981233924561611

/-! ## A367699.P12970960652163682091

`A056622(A056622(n+1))*A360541(A360541(n+1))`
-/

namespace A367699.P12970960652163682091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A056622 (n + 1)).toNat * A360541 (A360541 (n + 1)).toNat

end

end A367699.P12970960652163682091

/-! ## A367699.P315090314333830658

`A050985(A368167(n+1)²*A050985(n+1))`
-/

namespace A367699.P315090314333830658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A368167 (n + 1) ^ 2 * A050985 (n + 1)).toNat

end

end A367699.P315090314333830658

