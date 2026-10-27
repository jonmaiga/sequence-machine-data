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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A269600: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269600, there is no canonical definition to state claims against.
-/

/-! ## A269600.P12435834381311612977

`A269606((n+1)²+n²)`
-/

namespace A269600.P12435834381311612977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 ((n + 1) ^ 2 + n ^ 2)

end

end A269600.P12435834381311612977

/-! ## A269600.P17880732309005733648

`record[A003982(n)*A269606(n+1)]`
-/

namespace A269600.P17880732309005733648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269600.P17880732309005733648

/-! ## A269600.P2800340183103913573

`record[gcd(A114327(n), A269606(n+1))]`
-/

namespace A269600.P2800340183103913573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269600.P2800340183103913573

/-! ## A269600.P3141011177346118509

`record[root(A269606(n+1), A113881(n+1))]`
-/

namespace A269600.P3141011177346118509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269606 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269600.P3141011177346118509

/-! ## A269600.P2689180191509660810

`A269606(A001844(n))%A332147(n)`
-/

namespace A269600.P2689180191509660810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269606 (A001844 n).toNat) (A332147 n)

end

end A269600.P2689180191509660810

/-!
# A269601: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269601, the canonical program `A269601.P14206171943154091293` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269601 has offset 1).

The definition of A269601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269601.P14206171943154091293

`A175654(n+1)+A175654(n)+A001787(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A269601

/-- `A175654(n+1)+A175654(n)+A001787(n)` -/
def P14206171943154091293.Spec : Prop :=
  ∀ n, P14206171943154091293.a n = A269601 (n + 1)

theorem P14206171943154091293.correct : P14206171943154091293.Spec := by
  intro n
  simp only [A269601, Nat.add_sub_cancel]

end A269601

/-! ## A269601.P9860341380023834936

`5*a(n-1)-5*a(n-2)-8*a(n-3)+12*a(n-4)` with `a(0)=3, a(1)=9, a(2)=24, a(3)=62`
-/

namespace A269601.P9860341380023834936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 24, 62] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) - 8 * a (n - 3) + 12 * a (n - 4)

end

end A269601.P9860341380023834936

namespace A269601

/-- `5*a(n-1)-5*a(n-2)-8*a(n-3)+12*a(n-4)` -/
def P9860341380023834936.Spec : Prop :=
  ∀ n, P9860341380023834936.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P6454015146103159754

`A269606(∑[n+2])`
-/

namespace A269601.P6454015146103159754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269601.P6454015146103159754

namespace A269601

/-- `A269606(∑[n+2])` -/
def P6454015146103159754.Spec : Prop :=
  ∀ n, P6454015146103159754.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P9986669625011498221

`record[A269606(A000096(A028920(n)))]`
-/

namespace A269601.P9986669625011498221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P9986669625011498221

namespace A269601

/-- `record[A269606(A000096(A028920(n)))]` -/
def P9986669625011498221.Spec : Prop :=
  ∀ n, P9986669625011498221.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P17726337953537691410

`record[A269606(A000096(A126759(n)))]`
-/

namespace A269601.P17726337953537691410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P17726337953537691410

namespace A269601

/-- `record[A269606(A000096(A126759(n)))]` -/
def P17726337953537691410.Spec : Prop :=
  ∀ n, P17726337953537691410.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P2582301403469726031

`record[A269606(A000096(A328399(n)))]`
-/

namespace A269601.P2582301403469726031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P2582301403469726031

namespace A269601

/-- `record[A269606(A000096(A328399(n)))]` -/
def P2582301403469726031.Spec : Prop :=
  ∀ n, P2582301403469726031.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P7364408568530233794

`record[A269606(A000096(A002260(n+1)))]`
-/

namespace A269601.P7364408568530233794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P7364408568530233794

namespace A269601

/-- `record[A269606(A000096(A002260(n+1)))]` -/
def P7364408568530233794.Spec : Prop :=
  ∀ n, P7364408568530233794.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P4199284639794856657

`record[A269606(A000096(A054576(n+1)))]`
-/

namespace A269601.P4199284639794856657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A054576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P4199284639794856657

namespace A269601

/-- `record[A269606(A000096(A054576(n+1)))]` -/
def P4199284639794856657.Spec : Prop :=
  ∀ n, P4199284639794856657.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P8696843170522320927

`record[A269606(A000096(A254679(n+1)))]`
-/

namespace A269601.P8696843170522320927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A254679 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P8696843170522320927

namespace A269601

/-- `record[A269606(A000096(A254679(n+1)))]` -/
def P8696843170522320927.Spec : Prop :=
  ∀ n, P8696843170522320927.a n = A269601 (n + 1)

end A269601

/-! ## A269601.P10580913102219558920

`record[A269606(A000096(A305437(n+1)))]`
-/

namespace A269601.P10580913102219558920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (A305437 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269601.P10580913102219558920

namespace A269601

/-- `record[A269606(A000096(A305437(n+1)))]` -/
def P10580913102219558920.Spec : Prop :=
  ∀ n, P10580913102219558920.a n = A269601 (n + 1)

end A269601

/-!
# A269602: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269602, there is no canonical definition to state claims against.
-/

/-! ## A269602.P3725364855591778869

`A269606(A027379(n+2))`
-/

namespace A269602.P3725364855591778869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A027379 (n + 2)).toNat

end

end A269602.P3725364855591778869

/-! ## A269602.P5053180697391897735

`A269606(A055998(n+2))`
-/

namespace A269602.P5053180697391897735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A055998 (n + 2)).toNat

end

end A269602.P5053180697391897735

/-! ## A269602.P3693378582592607082

`A269606(A155212(n)+5)`
-/

namespace A269602.P3693378582592607082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A155212 n + 5).toNat

end

end A269602.P3693378582592607082

/-! ## A269602.P5635589139147490510

`A269606(A046691(n+2)+1)`
-/

namespace A269602.P5635589139147490510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A046691 (n + 2) + 1).toNat

end

end A269602.P5635589139147490510

/-! ## A269602.P13017589333221932113

`A269606(A052905(n+1)+2)`
-/

namespace A269602.P13017589333221932113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A052905 (n + 1) + 2).toNat

end

end A269602.P13017589333221932113

/-! ## A269602.P12827811981663507612

`A269606(A000096(n+2)+n+2)`
-/

namespace A269602.P12827811981663507612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A269602.P12827811981663507612

/-! ## A269602.P9415627387418884103

`A269606(A167614(n+1)+2*n+1)`
-/

namespace A269602.P9415627387418884103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A269602.P9415627387418884103

/-! ## A269602.P2126621643207551517

`A269606(A167499(n)+A016777(n))`
-/

namespace A269602.P2126621643207551517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167499 n + A016777 n).toNat

end

end A269602.P2126621643207551517

/-!
# A269603: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269603, there is no canonical definition to state claims against.
-/

/-! ## A269603.P5332778714732366745

`A269606(Δ[A264443(n)])`
-/

namespace A269603.P5332778714732366745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (f1 (n + 1) - f1 n).toNat

end

end A269603.P5332778714732366745

/-! ## A269603.P312334140234696423

`A269606(A046691(n+3))`
-/

namespace A269603.P312334140234696423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A046691 (n + 3)).toNat

end

end A269603.P312334140234696423

/-! ## A269603.P6600371382782024622

`A269606(A056115(n)+11)`
-/

namespace A269603.P6600371382782024622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A056115 n + 11).toNat

end

end A269603.P6600371382782024622

/-! ## A269603.P10612805099251042292

`A269606(A052905(n+2)+1)`
-/

namespace A269603.P10612805099251042292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A052905 (n + 2) + 1).toNat

end

end A269603.P10612805099251042292

/-! ## A269603.P12880386603598076013

`A269606(A027379(n+3)-1)`
-/

namespace A269603.P12880386603598076013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A027379 (n + 3) - 1).toNat

end

end A269603.P12880386603598076013

/-! ## A269603.P1948766010698766673

`A269606(A055998(n+3)-1)`
-/

namespace A269603.P1948766010698766673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A055998 (n + 3) - 1).toNat

end

end A269603.P1948766010698766673

/-! ## A269603.P9914232574311591221

`A269606(A056000(n+1)+6)`
-/

namespace A269603.P9914232574311591221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A056000 (n + 1) + 6).toNat

end

end A269603.P9914232574311591221

/-! ## A269603.P16313376443742297776

`A269606(A000217(n+5)-4)`
-/

namespace A269603.P16313376443742297776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000217 (n + 5) - 4).toNat

end

end A269603.P16313376443742297776

/-! ## A269603.P16955981810310844754

`A269606(A155212(n+2)-(n+2))`
-/

namespace A269603.P16955981810310844754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A155212 (n + 2) - (n + 2 : ℤ)).toNat

end

end A269603.P16955981810310844754

/-! ## A269603.P1858066855127041186

`A269606(A000124(n+6)-(n+11))`
-/

namespace A269603.P1858066855127041186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 6) - (n + 11 : ℤ)).toNat

end

end A269603.P1858066855127041186

/-!
# A269604: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269604, there is no canonical definition to state claims against.
-/

/-! ## A269604.P9171056449703849605

`A269606(A052905(n+3))`
-/

namespace A269604.P9171056449703849605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A052905 (n + 3)).toNat

end

end A269604.P9171056449703849605

/-! ## A269604.P3054862091655861702

`A269606(A056119(n)+16)`
-/

namespace A269604.P3054862091655861702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A056119 n + 16).toNat

end

end A269604.P3054862091655861702

/-! ## A269604.P2095443152330494688

`A269606(A000096(n+5)-4)`
-/

namespace A269604.P2095443152330494688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (n + 5) - 4).toNat

end

end A269604.P2095443152330494688

/-! ## A269604.P12225579454999299259

`A269606(A000124(n+6)-6)`
-/

namespace A269604.P12225579454999299259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 6) - 6).toNat

end

end A269604.P12225579454999299259

/-! ## A269604.P18009016216506234488

`A269606(Δ[A023551(n+1)]+1)`
-/

namespace A269604.P18009016216506234488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (f1 (n + 1) - f1 n + 1).toNat

end

end A269604.P18009016216506234488

/-! ## A269604.P14911352455259837418

`A269606(Δ[A264443(n+1)]-1)`
-/

namespace A269604.P14911352455259837418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (f1 (n + 1) - f1 n - 1).toNat

end

end A269604.P14911352455259837418

/-! ## A269604.P8540917004434802627

`A269606(A167614(n+1)+A016825(n+2))`
-/

namespace A269604.P8540917004434802627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167614 (n + 1) + A016825 (n + 2)).toNat

end

end A269604.P8540917004434802627

/-!
# A269605: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269605, there is no canonical definition to state claims against.
-/

/-! ## A269605.P421783596430081395

`A269606(A055999(n+4))`
-/

namespace A269605.P421783596430081395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A055999 (n + 4)).toNat

end

end A269605.P421783596430081395

/-! ## A269605.P13016059772513957617

`A269606(Δ[A023551(n+2)])`
-/

namespace A269605.P13016059772513957617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (f1 (n + 1) - f1 n).toNat

end

end A269605.P13016059772513957617

/-! ## A269605.P6810934483118941784

`A269606(A000217(n+7)-6)`
-/

namespace A269605.P6810934483118941784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000217 (n + 7) - 6).toNat

end

end A269605.P6810934483118941784

/-! ## A269605.P10537288422280683435

`A269606(A000124(n+7)-7)`
-/

namespace A269605.P10537288422280683435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 7) - 7).toNat

end

end A269605.P10537288422280683435

/-! ## A269605.P8799122804247681061

`A269606(A005843(n+4)+A000096(n+4))`
-/

namespace A269605.P8799122804247681061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A005843 (n + 4) + A000096 (n + 4)).toNat

end

end A269605.P8799122804247681061

/-!
# A269606: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269606, there is no canonical definition to state claims against.
-/

/-! ## A269606.P3694387062567630465

`A269640(n+1)-A044940(A000105(n))`
-/

namespace A269606.P3694387062567630465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (n + 1) - A044940 (A000105 n).toNat

end

end A269606.P3694387062567630465

/-! ## A269606.P13690614982607403833

`A268944(n+1)-A055641(A001255(n))`
-/

namespace A269606.P13690614982607403833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 1) - A055641 (A001255 n).toNat

end

end A269606.P13690614982607403833

/-! ## A269606.P5032694298243422969

`A269467(n+1)-A055641(A001255(n))`
-/

namespace A269606.P5032694298243422969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (n + 1) - A055641 (A001255 n).toNat

end

end A269606.P5032694298243422969

/-! ## A269606.P3203173468925886686

`A269537(n+1)-A055641(A001255(n))`
-/

namespace A269606.P3203173468925886686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A055641 (A001255 n).toNat

end

end A269606.P3203173468925886686

/-! ## A269606.P1442816868056894857

`A269678(n+1)-A055641(A001255(n))`
-/

namespace A269606.P1442816868056894857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (n + 1) - A055641 (A001255 n).toNat

end

end A269606.P1442816868056894857

/-!
# A269607: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269607, the canonical program `A269607.P16943673879829549148` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269607 has offset 1).

The definition of A269607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269607.P16943673879829549148

`∑[Δ[(n*(n+2))²]-1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269607

/-- `∑[Δ[(n*(n+2))²]-1]` -/
def P16943673879829549148.Spec : Prop :=
  ∀ n, P16943673879829549148.a n = A269607 (n + 1)

theorem P16943673879829549148.correct : P16943673879829549148.Spec := by
  intro n
  simp only [A269607, Nat.add_sub_cancel]

end A269607

/-! ## A269607.P16021928968237781820

`xor(1, ((n+1)*(n+3))²-n)`
-/

namespace A269607.P16021928968237781820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((((n + 1) * (n + 3)) ^ 2 : ℤ) - (n : ℤ))

end

end A269607.P16021928968237781820

namespace A269607

/-- `xor(1, ((n+1)*(n+3))²-n)` -/
def P16021928968237781820.Spec : Prop :=
  ∀ n, P16021928968237781820.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P132814828479776199

`record[(1-(2-n)²)²]-(n+1)`
-/

namespace A269607.P132814828479776199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A269607.P132814828479776199

namespace A269607

/-- `record[(1-(2-n)²)²]-(n+1)` -/
def P132814828479776199.Spec : Prop :=
  ∀ n, P132814828479776199.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P17692956001732574009

`lcm(2, (1-(n+2)²)²-(n+1))`
-/

namespace A269607.P17692956001732574009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((1 - ((n + 2) ^ 2 : ℤ)) ^ 2 - (n + 1 : ℤ))

end

end A269607.P17692956001732574009

namespace A269607

/-- `lcm(2, (1-(n+2)²)²-(n+1))` -/
def P17692956001732574009.Spec : Prop :=
  ∀ n, (P17692956001732574009.a n : ℤ) = A269607 (n + 1)

end A269607

/-! ## A269607.P2704031409985938557

`2*(C((n+2)², 2)-∑[n+2])`
-/

namespace A269607.P2704031409985938557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((n + 2) ^ 2) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A269607.P2704031409985938557

namespace A269607

/-- `2*(C((n+2)², 2)-∑[n+2])` -/
def P2704031409985938557.Spec : Prop :=
  ∀ n, P2704031409985938557.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P3966618747102696354

`∑[a(n-1)+2]²-(n+1)` with `a(0)=3`
-/

namespace A269607.P3966618747102696354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A269607.P3966618747102696354

namespace A269607

/-- `∑[a(n-1)+2]²-(n+1)` -/
def P3966618747102696354.Spec : Prop :=
  ∀ n, P3966618747102696354.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P14945818865727836899

`(1-(n+2)²)²-C(n+1, n)`
-/

namespace A269607.P14945818865727836899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n + 2) ^ 2 : ℤ)) ^ 2 - (Nat.choose (n + 1) n : ℤ)

end

end A269607.P14945818865727836899

namespace A269607

/-- `(1-(n+2)²)²-C(n+1, n)` -/
def P14945818865727836899.Spec : Prop :=
  ∀ n, P14945818865727836899.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P3415839572432068657

`or(2, ((n+1)*(n+3))²)-(n+3)`
-/

namespace A269607.P3415839572432068657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (((n + 1) * (n + 3)) ^ 2) : ℤ) - (n + 3 : ℤ)

end

end A269607.P3415839572432068657

namespace A269607

/-- `or(2, ((n+1)*(n+3))²)-(n+3)` -/
def P3415839572432068657.Spec : Prop :=
  ∀ n, P3415839572432068657.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P2017390608165481595

`((n+2)²-gcd(n, n+1))²-(n+1)`
-/

namespace A269607.P2017390608165481595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - (Nat.gcd n (n + 1) : ℤ)) ^ 2 - (n + 1 : ℤ)

end

end A269607.P2017390608165481595

namespace A269607

/-- `((n+2)²-gcd(n, n+1))²-(n+1)` -/
def P2017390608165481595.Spec : Prop :=
  ∀ n, P2017390608165481595.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P9950206247232267293

`((n+1)*(n+3))²-(n+1)%(n+3)`
-/

namespace A269607.P9950206247232267293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 3)) ^ 2 : ℤ) - (((n + 1) % (n + 3) : ℕ) : ℤ)

end

end A269607.P9950206247232267293

namespace A269607

/-- `((n+1)*(n+3))²-(n+1)%(n+3)` -/
def P9950206247232267293.Spec : Prop :=
  ∀ n, P9950206247232267293.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P18202069414138371976

`(and(1, 2*n+1)-(n+2)²)²-(n+1)`
-/

namespace A269607.P18202069414138371976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (2 * n + 1) : ℤ) - ((n + 2) ^ 2 : ℤ)) ^ 2 - (n + 1 : ℤ)

end

end A269607.P18202069414138371976

namespace A269607

/-- `(and(1, 2*n+1)-(n+2)²)²-(n+1)` -/
def P18202069414138371976.Spec : Prop :=
  ∀ n, P18202069414138371976.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P15363705428275427360

`2*∑[lcm(n+2, (2*n+1)*(n+2)²)]`
-/

namespace A269607.P15363705428275427360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((2 * n + 1) * (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269607.P15363705428275427360

namespace A269607

/-- `2*∑[lcm(n+2, (2*n+1)*(n+2)²)]` -/
def P15363705428275427360.Spec : Prop :=
  ∀ n, (P15363705428275427360.a n : ℤ) = A269607 (n + 1)

end A269607

/-! ## A269607.P13157013860820775145

`2*∑[(2*n+1)*C(n+2, n+1)²]`
-/

namespace A269607.P13157013860820775145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (n + 2) (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269607.P13157013860820775145

namespace A269607

/-- `2*∑[(2*n+1)*C(n+2, n+1)²]` -/
def P13157013860820775145.Spec : Prop :=
  ∀ n, (P13157013860820775145.a n : ℤ) = A269607 (n + 1)

end A269607

/-! ## A269607.P5159700804502875293

`(n+1)*(A027620(n)-1)`
-/

namespace A269607.P5159700804502875293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A027620 n - 1)

end

end A269607.P5159700804502875293

namespace A269607

/-- `(n+1)*(A027620(n)-1)` -/
def P5159700804502875293.Spec : Prop :=
  ∀ n, P5159700804502875293.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P15171911348659765540

`A268945(n+1)+n²-2`
-/

namespace A269607.P15171911348659765540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268945 (n + 1) + ((n ^ 2 : ℤ) - 2)

end

end A269607.P15171911348659765540

namespace A269607

/-- `A268945(n+1)+n²-2` -/
def P15171911348659765540.Spec : Prop :=
  ∀ n, P15171911348659765540.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P2468839032700383251

`A269410(n+1)+∑[n-1]`
-/

namespace A269607.P2468839032700383251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269607.P2468839032700383251

namespace A269607

/-- `A269410(n+1)+∑[n-1]` -/
def P2468839032700383251.Spec : Prop :=
  ∀ n, P2468839032700383251.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P3118493301191043328

`A269468(n+1)-2*(n+1)`
-/

namespace A269607.P3118493301191043328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269468 (n + 1) - (2 * (n + 1) : ℤ)

end

end A269607.P3118493301191043328

namespace A269607

/-- `A269468(n+1)-2*(n+1)` -/
def P3118493301191043328.Spec : Prop :=
  ∀ n, P3118493301191043328.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P9311231041480191269

`(n+1)*(A317637(n+1)+n)`
-/

namespace A269607.P9311231041480191269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A317637 (n + 1) + (n : ℤ))

end

end A269607.P9311231041480191269

namespace A269607

/-- `(n+1)*(A317637(n+1)+n)` -/
def P9311231041480191269.Spec : Prop :=
  ∀ n, P9311231041480191269.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P284792702905405639

`∑[A144396(n+1)]²-(n+1)`
-/

namespace A269607.P284792702905405639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)

end

end A269607.P284792702905405639

namespace A269607

/-- `∑[A144396(n+1)]²-(n+1)` -/
def P284792702905405639.Spec : Prop :=
  ∀ n, P284792702905405639.a n = A269607 (n + 1)

end A269607

/-! ## A269607.P15744210133883801410

`2*∑[(n+2)²/3*A016945(n)]`
-/

namespace A269607.P15744210133883801410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / 3 * (A016945 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269607.P15744210133883801410

namespace A269607

/-- `2*∑[(n+2)²/3*A016945(n)]` -/
def P15744210133883801410.Spec : Prop :=
  ∀ n, P15744210133883801410.a n = (A269607 (n + 1) : ℚ)

end A269607

/-!
# A269608: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269608, the canonical program `A269608.P7049146772125459153` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269608 has offset 1).

The definition of A269608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269608.P7049146772125459153

`(n+1)^5+5*(n+1)^4+7*(n+1)^3-4*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269608

/-- `(n+1)^5+5*(n+1)^4+7*(n+1)^3-4*(n+1)²+n+1` -/
def P7049146772125459153.Spec : Prop :=
  ∀ n, P7049146772125459153.a n = A269608 (n + 1)

theorem P7049146772125459153.correct : P7049146772125459153.Spec := by
  intro n
  simp only [A269608, Nat.add_sub_cancel]

end A269608

/-! ## A269608.P14803384944403842512

`A269606(A167499(n+3))`
-/

namespace A269608.P14803384944403842512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167499 (n + 3)).toNat

end

end A269608.P14803384944403842512

namespace A269608

/-- `A269606(A167499(n+3))` -/
def P14803384944403842512.Spec : Prop :=
  ∀ n, P14803384944403842512.a n = A269608 (n + 1)

end A269608

/-! ## A269608.P4687303308984606715

`A269606(A000124(n+4)+4)`
-/

namespace A269608.P4687303308984606715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 4) + 4).toNat

end

end A269608.P4687303308984606715

namespace A269608

/-- `A269606(A000124(n+4)+4)` -/
def P4687303308984606715.Spec : Prop :=
  ∀ n, P4687303308984606715.a n = A269608 (n + 1)

end A269608

/-!
# A269609: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269609, the canonical program `A269609.P4900998567519712109` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269609 has offset 1).

The definition of A269609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269609.P4900998567519712109

`(n+1)^6+6*(n+1)^5+11*(n+1)^4-8*(n+1)^3+(n+1)²+3*(n+1)-2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269609

/-- `(n+1)^6+6*(n+1)^5+11*(n+1)^4-8*(n+1)^3+(n+1)²+3*(n+1)-2` -/
def P4900998567519712109.Spec : Prop :=
  ∀ n, P4900998567519712109.a n = A269609 (n + 1)

theorem P4900998567519712109.correct : P4900998567519712109.Spec := by
  intro n
  simp only [A269609, Nat.add_sub_cancel]

end A269609

/-! ## A269609.P12307226157097259165

`A269606(A167499(n+4)+1)`
-/

namespace A269609.P12307226157097259165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167499 (n + 4) + 1).toNat

end

end A269609.P12307226157097259165

namespace A269609

/-- `A269606(A167499(n+4)+1)` -/
def P12307226157097259165.Spec : Prop :=
  ∀ n, P12307226157097259165.a n = A269609 (n + 1)

end A269609

/-! ## A269609.P4242739227247757627

`A269606(A000124(n+5)+5)`
-/

namespace A269609.P4242739227247757627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 5) + 5).toNat

end

end A269609.P4242739227247757627

namespace A269609

/-- `A269606(A000124(n+5)+5)` -/
def P4242739227247757627.Spec : Prop :=
  ∀ n, P4242739227247757627.a n = A269609 (n + 1)

end A269609

/-! ## A269609.P1051706338980139579

`A269606(A000096(n+6)-A005843(n+3))`
-/

namespace A269609.P1051706338980139579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000096 (n + 6) - A005843 (n + 3)).toNat

end

end A269609.P1051706338980139579

namespace A269609

/-- `A269606(A000096(n+6)-A005843(n+3))` -/
def P1051706338980139579.Spec : Prop :=
  ∀ n, P1051706338980139579.a n = A269609 (n + 1)

end A269609

/-! ## A269609.P11873942166435091338

`A269606(A005843(n+8)+A000096(n+2))`
-/

namespace A269609.P11873942166435091338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A005843 (n + 8) + A000096 (n + 2)).toNat

end

end A269609.P11873942166435091338

namespace A269609

/-- `A269606(A005843(n+8)+A000096(n+2))` -/
def P11873942166435091338.Spec : Prop :=
  ∀ n, P11873942166435091338.a n = A269609 (n + 1)

end A269609

/-! ## A269609.P13779539311277648458

`A269606(A002620(n+2)+A002620(n+9))`
-/

namespace A269609.P13779539311277648458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A269609.P13779539311277648458

namespace A269609

/-- `A269606(A002620(n+2)+A002620(n+9))` -/
def P13779539311277648458.Spec : Prop :=
  ∀ n, P13779539311277648458.a n = A269609 (n + 1)

end A269609

/-!
# A269610: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by one or less.

The programs for A269610, there is no canonical definition to state claims against.
-/

/-! ## A269610.P15816586029040014910

`A269606(A167499(n+5)+2)`
-/

namespace A269610.P15816586029040014910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167499 (n + 5) + 2).toNat

end

end A269610.P15816586029040014910

/-! ## A269610.P6379176656995064498

`A269606(A000124(n+6)+6)`
-/

namespace A269610.P6379176656995064498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000124 (n + 6) + 6).toNat

end

end A269610.P6379176656995064498

/-! ## A269610.P16813126518195719775

`A269606(A000217(n+6)+7)`
-/

namespace A269610.P16813126518195719775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A000217 (n + 6) + 7).toNat

end

end A269610.P16813126518195719775

/-! ## A269610.P3455948247918925852

`A269606(A055998(n+4)+10)`
-/

namespace A269610.P3455948247918925852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A055998 (n + 4) + 10).toNat

end

end A269610.P3455948247918925852

/-! ## A269610.P12724543925681113327

`A269606(A167614(n+1)+A016825(n+5))`
-/

namespace A269610.P12724543925681113327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A167614 (n + 1) + A016825 (n + 5)).toNat

end

end A269610.P12724543925681113327

/-! ## A269610.P14024044038938297614

`A269606(A155212(n+8)-A008588(n+7))`
-/

namespace A269610.P14024044038938297614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269606 (A155212 (n + 8) - A008588 (n + 7)).toNat

end

end A269610.P14024044038938297614

/-!
# A269612: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269612, there is no canonical definition to state claims against.
-/

/-! ## A269612.P16738930832519015872

`A269619((n+1)²+n²)`
-/

namespace A269612.P16738930832519015872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 ((n + 1) ^ 2 + n ^ 2)

end

end A269612.P16738930832519015872

/-! ## A269612.P2358190086502340807

`record[A269619(Δ[A235355(n)])]`
-/

namespace A269612.P2358190086502340807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269612.P2358190086502340807

/-! ## A269612.P7266161145123013149

`record[A214505(n)*A269619(n+1)]`
-/

namespace A269612.P7266161145123013149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A269619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269612.P7266161145123013149

/-! ## A269612.P5359449859164348875

`record[gcd(A114327(n), A269619(n+1))]`
-/

namespace A269612.P5359449859164348875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269619 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269612.P5359449859164348875

/-! ## A269612.P17051956238418229674

`A007318(∑[n])*A269619(A001844(n))`
-/

namespace A269612.P17051956238418229674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A269619 (A001844 n).toNat

end

end A269612.P17051956238418229674

/-!
# A269613: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269613, the canonical program `A269613.P1399676592344136150` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269613 has offset 1).

The definition of A269613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269613.P520752404560518389

`ogf((3-3x-3x^2)/(1-4x+2x^2+4x^3))`
-/

namespace A269613.P520752404560518389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, -3] [1, -4, 2, 4] n

end

end A269613.P520752404560518389

namespace A269613

/-- `ogf((3-3x-3x^2)/(1-4x+2x^2+4x^3))` -/
def P520752404560518389.Spec : Prop :=
  ∀ n, P520752404560518389.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P1399676592344136150

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=9, a(2)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269613

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P1399676592344136150.Spec : Prop :=
  ∀ n, P1399676592344136150.a n = A269613 (n + 1)

theorem P1399676592344136150.correct : P1399676592344136150.Spec := by
  intro n
  simp only [A269613, Nat.add_sub_cancel]

end A269613

/-! ## A269613.P1178190285512782850

`3*A268093(n+1)`
-/

namespace A269613.P1178190285512782850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268093 (n + 1)

end

end A269613.P1178190285512782850

namespace A269613

/-- `3*A268093(n+1)` -/
def P1178190285512782850.Spec : Prop :=
  ∀ n, P1178190285512782850.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P12620463407562088083

`a(n-1)+A121907(n)+a(n-1)` with `a(0)=3`
-/

namespace A269613.P12620463407562088083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A121907 n + a (n - 1))

end

end A269613.P12620463407562088083

namespace A269613

/-- `a(n-1)+A121907(n)+a(n-1)` -/
def P12620463407562088083.Spec : Prop :=
  ∀ n, P12620463407562088083.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P159676382624525173

`A094306(n+2)+Δ[A268093(n+1)]`
-/

namespace A269613.P159676382624525173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094306 (n + 2) + (f1 (n + 1) - f1 n)

end

end A269613.P159676382624525173

namespace A269613

/-- `A094306(n+2)+Δ[A268093(n+1)]` -/
def P159676382624525173.Spec : Prop :=
  ∀ n, P159676382624525173.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P3846090416221408723

`A052945(n)+A026150(n)+2*a(n-1)` with `a(0)=3`
-/

namespace A269613.P3846090416221408723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A052945 n + (A026150 n + 2 * a (n - 1))

end

end A269613.P3846090416221408723

namespace A269613

/-- `A052945(n)+A026150(n)+2*a(n-1)` -/
def P3846090416221408723.Spec : Prop :=
  ∀ n, P3846090416221408723.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P18072587401288448903

`sqrt(3*A268094(n+1))`
-/

namespace A269613.P18072587401288448903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * A268094 (n + 1) : ℝ)

end

end A269613.P18072587401288448903

namespace A269613

/-- `sqrt(3*A268094(n+1))` -/
def P18072587401288448903.Spec : Prop :=
  ∀ n, P18072587401288448903.a n = (A269613 (n + 1) : ℝ)

end A269613

/-! ## A269613.P7695403530745485470

`A268094(n+1)/A268093(n+1)`
-/

namespace A269613.P7695403530745485470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268094 (n + 1) : ℚ) / (A268093 (n + 1) : ℚ)

end

end A269613.P7695403530745485470

namespace A269613

/-- `A268094(n+1)/A268093(n+1)` -/
def P7695403530745485470.Spec : Prop :=
  ∀ n, P7695403530745485470.a n = (A269613 (n + 1) : ℚ)

end A269613

/-! ## A269613.P4523037329566018637

`A269619(∑[n+2])`
-/

namespace A269613.P4523037329566018637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269613.P4523037329566018637

namespace A269613

/-- `A269619(∑[n+2])` -/
def P4523037329566018637.Spec : Prop :=
  ∀ n, P4523037329566018637.a n = A269613 (n + 1)

end A269613

/-! ## A269613.P1164845090938795157

`A269776(∑[n+2])`
-/

namespace A269613.P1164845090938795157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269613.P1164845090938795157

namespace A269613

/-- `A269776(∑[n+2])` -/
def P1164845090938795157.Spec : Prop :=
  ∀ n, P1164845090938795157.a n = A269613 (n + 1)

end A269613

/-!
# A269614: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269614, there is no canonical definition to state claims against.
-/

/-! ## A269614.P10458958189717856838

`A269619(∑[n+3]+1)`
-/

namespace A269614.P10458958189717856838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269614.P10458958189717856838

/-! ## A269614.P4181889106806840654

`A269619(Δ[A008778(n)])%A208790(n+1)`
-/

namespace A269614.P4181889106806840654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269619 (f1 (n + 1) - f1 n).toNat) (A208790 (n + 1))

end

end A269614.P4181889106806840654

/-! ## A269614.P3144764328452960245

`A057427(n+1)*A269619(A034856(n+2))`
-/

namespace A269614.P3144764328452960245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A269619 (A034856 (n + 2)).toNat

end

end A269614.P3144764328452960245

/-! ## A269614.P5902658753423697026

`A269619(A034856(n+2))%A269602(n+1)`
-/

namespace A269614.P5902658753423697026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269619 (A034856 (n + 2)).toNat) (A269602 (n + 1))

end

end A269614.P5902658753423697026

/-! ## A269614.P12017520827097773419

`A269619(eq[2, A293808(n)])%A257707(n+1)`
-/

namespace A269614.P12017520827097773419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A257707 (n + 1))

end

end A269614.P12017520827097773419

/-! ## A269614.P14228645255978175243

`A008836(n+1)²*A269619(A034856(n+2))`
-/

namespace A269614.P14228645255978175243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A269619 (A034856 (n + 2)).toNat

end

end A269614.P14228645255978175243

/-! ## A269614.P5293857455090722224

`A070950((n+1)²)*A269619(A034856(n+2))`
-/

namespace A269614.P5293857455090722224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 ((n + 1) ^ 2) * A269619 (A034856 (n + 2)).toNat

end

end A269614.P5293857455090722224

/-! ## A269614.P4976713512514862783

`A269619(A167614(n+2)-5)%A269636(n+1)`
-/

namespace A269614.P4976713512514862783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269619 (A167614 (n + 2) - 5).toNat) (A269636 (n + 1))

end

end A269614.P4976713512514862783

/-! ## A269614.P1974263727617867118

`A065033(A338770(2*(n+1)))*A269619(A034856(n+2))`
-/

namespace A269614.P1974263727617867118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338770 (2 * (n + 1))).toNat * A269619 (A034856 (n + 2)).toNat

end

end A269614.P1974263727617867118

/-!
# A269615: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269615, there is no canonical definition to state claims against.
-/

/-! ## A269615.P8170239824293538398

`A269619(A027379(n+2))`
-/

namespace A269615.P8170239824293538398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A027379 (n + 2)).toNat

end

end A269615.P8170239824293538398

/-! ## A269615.P9653973725691412529

`A269619(A055998(n+2))`
-/

namespace A269615.P9653973725691412529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A055998 (n + 2)).toNat

end

end A269615.P9653973725691412529

/-! ## A269615.P6476145456005146246

`A269619(A155212(n)+5)`
-/

namespace A269615.P6476145456005146246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A155212 n + 5).toNat

end

end A269615.P6476145456005146246

/-! ## A269615.P8790526507115938888

`A269619(Δ[A034857(n+1)])`
-/

namespace A269615.P8790526507115938888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f1 (n + 1) - f1 n).toNat

end

end A269615.P8790526507115938888

/-! ## A269615.P1484151223859434392

`A269619(Δ[A006416(n+2)])`
-/

namespace A269615.P1484151223859434392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f1 (n + 1) - f1 n).toNat

end

end A269615.P1484151223859434392

/-! ## A269615.P10624675749122595803

`A269619(A052905(n+1)+2)`
-/

namespace A269615.P10624675749122595803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A052905 (n + 1) + 2).toNat

end

end A269615.P10624675749122595803

/-! ## A269615.P3261769896229584932

`A269619(Δ[A008778(n+1)]-1)`
-/

namespace A269615.P3261769896229584932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f1 (n + 1) - f1 n - 1).toNat

end

end A269615.P3261769896229584932

/-! ## A269615.P12974743988331954954

`A269619(A167614(n+1)+A005408(n))`
-/

namespace A269615.P12974743988331954954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167614 (n + 1) + A005408 n).toNat

end

end A269615.P12974743988331954954

/-!
# A269616: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269616, there is no canonical definition to state claims against.
-/

/-! ## A269616.P14724801113039374474

`A269619(A046691(n+3))`
-/

namespace A269616.P14724801113039374474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A046691 (n + 3)).toNat

end

end A269616.P14724801113039374474

/-! ## A269616.P10337712560321027102

`A269619(A056115(n)+11)`
-/

namespace A269616.P10337712560321027102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A056115 n + 11).toNat

end

end A269616.P10337712560321027102

/-! ## A269616.P50949809785944373

`A269619(A055998(n+3)-1)`
-/

namespace A269616.P50949809785944373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A055998 (n + 3) - 1).toNat

end

end A269616.P50949809785944373

/-! ## A269616.P7222007830934614424

`A269619(A155212(n+1)+4)`
-/

namespace A269616.P7222007830934614424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A155212 (n + 1) + 4).toNat

end

end A269616.P7222007830934614424

/-! ## A269616.P3051788759320463347

`A269619(Δ[A034857(n+2)]-1)`
-/

namespace A269616.P3051788759320463347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f1 (n + 1) - f1 n - 1).toNat

end

end A269616.P3051788759320463347

/-! ## A269616.P1595859345469694211

`A269619(Δ[A006416(n+3)]-1)`
-/

namespace A269616.P1595859345469694211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (f1 (n + 1) - f1 n - 1).toNat

end

end A269616.P1595859345469694211

/-! ## A269616.P1547756173175491405

`A269619(A000217(n+7)-A005408(n+8))`
-/

namespace A269616.P1547756173175491405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000217 (n + 7) - A005408 (n + 8)).toNat

end

end A269616.P1547756173175491405

/-! ## A269616.P12117326223233017361

`A269619(A002378(n+7)-A000217(n+9))`
-/

namespace A269616.P12117326223233017361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A002378 (n + 7) - A000217 (n + 9)).toNat

end

end A269616.P12117326223233017361

/-!
# A269617: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269617, there is no canonical definition to state claims against.
-/

/-! ## A269617.P9994333688739333396

`A269619(A052905(n+3))`
-/

namespace A269617.P9994333688739333396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A052905 (n + 3)).toNat

end

end A269617.P9994333688739333396

/-! ## A269617.P14077094316426546780

`A269619(A155212(n+2)+3)`
-/

namespace A269617.P14077094316426546780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A155212 (n + 2) + 3).toNat

end

end A269617.P14077094316426546780

/-! ## A269617.P8846067228325902060

`A269619(A000124(n+6)-6)`
-/

namespace A269617.P8846067228325902060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000124 (n + 6) - 6).toNat

end

end A269617.P8846067228325902060

/-! ## A269617.P4278097628925979390

`A269619(A027379(n+5)-(n+9))`
-/

namespace A269617.P4278097628925979390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A027379 (n + 5) - (n + 9 : ℤ)).toNat

end

end A269617.P4278097628925979390

/-!
# A269618: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269618, there is no canonical definition to state claims against.
-/

/-! ## A269618.P7921263965658407788

`A269619(A055999(n+4))`
-/

namespace A269618.P7921263965658407788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A055999 (n + 4)).toNat

end

end A269618.P7921263965658407788

/-! ## A269618.P12449439503657990071

`A269619(A134227(n+5))`
-/

namespace A269618.P12449439503657990071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A134227 (n + 5)).toNat

end

end A269618.P12449439503657990071

/-! ## A269618.P5398135766491156228

`A269619(A000096(n+6)-5)`
-/

namespace A269618.P5398135766491156228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000096 (n + 6) - 5).toNat

end

end A269618.P5398135766491156228

/-! ## A269618.P11092427124003371128

`A269619(A000217(n+7)-6)`
-/

namespace A269618.P11092427124003371128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000217 (n + 7) - 6).toNat

end

end A269618.P11092427124003371128

/-! ## A269618.P1556116117617600968

`A269619(A000124(n+7)-7)`
-/

namespace A269618.P1556116117617600968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000124 (n + 7) - 7).toNat

end

end A269618.P1556116117617600968

/-! ## A269618.P13423283623855334936

`A269619(A027379(n+6)-(n+11))`
-/

namespace A269618.P13423283623855334936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A027379 (n + 6) - (n + 11 : ℤ)).toNat

end

end A269618.P13423283623855334936

/-! ## A269618.P12416167261804469578

`A269619(A167499(n+4)+2*(n+1))`
-/

namespace A269618.P12416167261804469578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A269618.P12416167261804469578

/-! ## A269618.P8130725991088215892

`A269619(Δ[n²]+A000124(n+5)+5)`
-/

namespace A269618.P8130725991088215892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A269618.P8130725991088215892

/-! ## A269618.P12930466425895609690

`A269619(A019425(2*(n+1))+Δ[A101853(n+2)]+2)`
-/

namespace A269618.P12930466425895609690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A019425 (2 * (n + 1)) + (f1 (n + 1) - f1 n + 2)).toNat

end

end A269618.P12930466425895609690

/-!
# A269619: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269619, there is no canonical definition to state claims against.
-/

/-! ## A269619.P16805588503218033042

`A269435(n+1)-A185238(A098446(n))`
-/

namespace A269619.P16805588503218033042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (n + 1) - A185238 (A098446 n).toNat

end

end A269619.P16805588503218033042

/-! ## A269619.P13625714473676510516

`A269435(n+1)-A337380(A000032(n))`
-/

namespace A269619.P13625714473676510516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (n + 1) - A337380 (A000032 n).toNat

end

end A269619.P13625714473676510516

/-! ## A269619.P17038946554955881155

`A269435(n+1)-A335460(A005709(n))`
-/

namespace A269619.P17038946554955881155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (n + 1) - A335460 (A005709 n).toNat

end

end A269619.P17038946554955881155

/-! ## A269619.P16694515552411532432

`A269435(n+1)-A277007(A288972(n))`
-/

namespace A269619.P16694515552411532432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (n + 1) - A277007 (A288972 n).toNat

end

end A269619.P16694515552411532432

/-! ## A269619.P391311192566930834

`A269435(n+1)-A011719(A320606(n+1))`
-/

namespace A269619.P391311192566930834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (n + 1) - A011719 (A320606 (n + 1)).toNat

end

end A269619.P391311192566930834

/-!
# A269620: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269620, the canonical program `A269620.P10240803259760190542` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269620 has offset 1).

The definition of A269620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269620.P10240803259760190542

`∑[∑[12*(n+1)²]+3]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269620

/-- `∑[∑[12*(n+1)²]+3]` -/
def P10240803259760190542.Spec : Prop :=
  ∀ n, (P10240803259760190542.a n : ℤ) = A269620 (n + 1)

theorem P10240803259760190542.correct : P10240803259760190542.Spec := by
  intro n
  simp only [A269620, Nat.add_sub_cancel]

end A269620

/-! ## A269620.P2332457357990959142

`cot(Δ[acot(n)])+(n+2)^4`
-/

namespace A269620.P2332457357990959142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (f1 (n + 1) - f1 n) + ((n + 2) ^ 4 : ℝ)

end

end A269620.P2332457357990959142

namespace A269620

/-- `cot(Δ[acot(n)])+(n+2)^4` -/
def P2332457357990959142.Spec : Prop :=
  ∀ n, P2332457357990959142.a n = (A269620 (n + 1) : ℝ)

end A269620

/-! ## A269620.P3581184334056008066

`(n+2)²²-cot(Δ[atan(n)])`
-/

namespace A269620.P3581184334056008066
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℝ) - Real.cot (f1 (n + 1) - f1 n)

end

end A269620.P3581184334056008066

namespace A269620

/-- `(n+2)²²-cot(Δ[atan(n)])` -/
def P3581184334056008066.Spec : Prop :=
  ∀ n, P3581184334056008066.a n = (A269620 (n + 1) : ℝ)

end A269620

/-! ## A269620.P9479727684081097894

`(n+2)^4-or(1, ∑[2*n])`
-/

namespace A269620.P9479727684081097894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A269620.P9479727684081097894

namespace A269620

/-- `(n+2)^4-or(1, ∑[2*n])` -/
def P9479727684081097894.Spec : Prop :=
  ∀ n, P9479727684081097894.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P1209960854018617512

`(n+2)^4-xor(1, ∑[2*n])`
-/

namespace A269620.P1209960854018617512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A269620.P1209960854018617512

namespace A269620

/-- `(n+2)^4-xor(1, ∑[2*n])` -/
def P1209960854018617512.Spec : Prop :=
  ∀ n, P1209960854018617512.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P3752133753818031207

`(n+2)²²-(lcm(n, n+1)+1)`
-/

namespace A269620.P3752133753818031207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - (Nat.lcm n (n + 1) + 1 : ℤ)

end

end A269620.P3752133753818031207

namespace A269620

/-- `(n+2)²²-(lcm(n, n+1)+1)` -/
def P3752133753818031207.Spec : Prop :=
  ∀ n, P3752133753818031207.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P740151458796134498

`(n+1)*(lcm(n+3, (n+2)²)+3)`
-/

namespace A269620.P740151458796134498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.lcm (n + 3) ((n + 2) ^ 2) + 3)

end

end A269620.P740151458796134498

namespace A269620

/-- `(n+1)*(lcm(n+3, (n+2)²)+3)` -/
def P740151458796134498.Spec : Prop :=
  ∀ n, (P740151458796134498.a n : ℤ) = A269620 (n + 1)

end A269620

/-! ## A269620.P10324693534518423140

`A269584(n+1)-1`
-/

namespace A269620.P10324693534518423140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269584 (n + 1) - 1

end

end A269620.P10324693534518423140

namespace A269620

/-- `A269584(n+1)-1` -/
def P10324693534518423140.Spec : Prop :=
  ∀ n, P10324693534518423140.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P3073013530251485782

`3*∑[∑[A184635(n+1)]]`
-/

namespace A269620.P3073013530251485782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269620.P3073013530251485782

namespace A269620

/-- `3*∑[∑[A184635(n+1)]]` -/
def P3073013530251485782.Spec : Prop :=
  ∀ n, P3073013530251485782.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P15077672551716075139

`(n+2)²²-∑[A004277(n)]`
-/

namespace A269620.P15077672551716075139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269620.P15077672551716075139

namespace A269620

/-- `(n+2)²²-∑[A004277(n)]` -/
def P15077672551716075139.Spec : Prop :=
  ∀ n, P15077672551716075139.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P1092971189492363375

`(n+2)²²-A002061(n+1)`
-/

namespace A269620.P1092971189492363375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - A002061 (n + 1)

end

end A269620.P1092971189492363375

namespace A269620

/-- `(n+2)²²-A002061(n+1)` -/
def P1092971189492363375.Spec : Prop :=
  ∀ n, P1092971189492363375.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P4004892083647488937

`(n+2)*A250352(n+1)+n-1`
-/

namespace A269620.P4004892083647488937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A250352 (n + 1) + ((n : ℤ) - 1)

end

end A269620.P4004892083647488937

namespace A269620

/-- `(n+2)*A250352(n+1)+n-1` -/
def P4004892083647488937.Spec : Prop :=
  ∀ n, P4004892083647488937.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P14486207376994423902

`A268945(n+1)+A268581(n)`
-/

namespace A269620.P14486207376994423902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268945 (n + 1) + A268581 n

end

end A269620.P14486207376994423902

namespace A269620

/-- `A268945(n+1)+A268581(n)` -/
def P14486207376994423902.Spec : Prop :=
  ∀ n, P14486207376994423902.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P10652283839596673891

`A250362(n+1)-A010000(n)`
-/

namespace A269620.P10652283839596673891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A010000 n

end

end A269620.P10652283839596673891

namespace A269620

/-- `A250362(n+1)-A010000(n)` -/
def P10652283839596673891.Spec : Prop :=
  ∀ n, P10652283839596673891.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P2166588709171182256

`A269436(n+1)-A161680(n)`
-/

namespace A269620.P2166588709171182256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269436 (n + 1) - A161680 n

end

end A269620.P2166588709171182256

namespace A269620

/-- `A269436(n+1)-A161680(n)` -/
def P2166588709171182256.Spec : Prop :=
  ∀ n, P2166588709171182256.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P1969479054118075416

`A269495(n+1)-A165900(n)`
-/

namespace A269620.P1969479054118075416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269495 (n + 1) - A165900 n

end

end A269620.P1969479054118075416

namespace A269620

/-- `A269495(n+1)-A165900(n)` -/
def P1969479054118075416.Spec : Prop :=
  ∀ n, P1969479054118075416.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P4471660074708116381

`A269436(n+1)+A080956(n)-1`
-/

namespace A269620.P4471660074708116381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269436 (n + 1) + (A080956 n - 1)

end

end A269620.P4471660074708116381

namespace A269620

/-- `A269436(n+1)+A080956(n)-1` -/
def P4471660074708116381.Spec : Prop :=
  ∀ n, P4471660074708116381.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P4959421733054593944

`A258837(n)+2*A027482(n+2)`
-/

namespace A269620.P4959421733054593944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + 2 * A027482 (n + 2)

end

end A269620.P4959421733054593944

namespace A269620

/-- `A258837(n)+2*A027482(n+2)` -/
def P4959421733054593944.Spec : Prop :=
  ∀ n, P4959421733054593944.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P1287099293783390023

`A160827(n)-(A008514(n)+A002061(n+1))`
-/

namespace A269620.P1287099293783390023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160827 n - (A008514 n + A002061 (n + 1))

end

end A269620.P1287099293783390023

namespace A269620

/-- `A160827(n)-(A008514(n)+A002061(n+1))` -/
def P1287099293783390023.Spec : Prop :=
  ∀ n, P1287099293783390023.a n = A269620 (n + 1)

end A269620

/-! ## A269620.P17921230245315625983

`A257925(n+2)+n`
-/

namespace A269620.P17921230245315625983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257925 (n + 2) + (n : ℤ)

end

end A269620.P17921230245315625983

namespace A269620

/-- `A257925(n+2)+n` -/
def P17921230245315625983.Spec : Prop :=
  ∀ n, P17921230245315625983.a n = A269620 (n + 1)

end A269620

/-!
# A269621: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269621, the canonical program `A269621.P7458014904403275455` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269621 has offset 1).

The definition of A269621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269621.P7458014904403275455

`(n+1)^5+5*(n+1)^4+7*(n+1)^3+12*(n+1)²+3*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269621

/-- `(n+1)^5+5*(n+1)^4+7*(n+1)^3+12*(n+1)²+3*(n+1)` -/
def P7458014904403275455.Spec : Prop :=
  ∀ n, (P7458014904403275455.a n : ℤ) = A269621 (n + 1)

theorem P7458014904403275455.correct : P7458014904403275455.Spec := by
  intro n
  simp only [A269621, Nat.add_sub_cancel]

end A269621

/-! ## A269621.P14172248433807037620

`A269619(A167499(n+3))`
-/

namespace A269621.P14172248433807037620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167499 (n + 3)).toNat

end

end A269621.P14172248433807037620

namespace A269621

/-- `A269619(A167499(n+3))` -/
def P14172248433807037620.Spec : Prop :=
  ∀ n, P14172248433807037620.a n = A269621 (n + 1)

end A269621

/-!
# A269622: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269622, there is no canonical definition to state claims against.
-/

/-! ## A269622.P18400363782384715353

`A269619(A167499(n+4)+1)`
-/

namespace A269622.P18400363782384715353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167499 (n + 4) + 1).toNat

end

end A269622.P18400363782384715353

/-! ## A269622.P10877367665866115022

`A269619(A167614(n+4)+3)`
-/

namespace A269622.P10877367665866115022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167614 (n + 4) + 3).toNat

end

end A269622.P10877367665866115022

/-! ## A269622.P4700544481206236583

`A269619(A000124(n+5)+5)`
-/

namespace A269622.P4700544481206236583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000124 (n + 5) + 5).toNat

end

end A269622.P4700544481206236583

/-! ## A269622.P13979570996485572191

`A269619(A000217(n+5)+6)`
-/

namespace A269622.P13979570996485572191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000217 (n + 5) + 6).toNat

end

end A269622.P13979570996485572191

/-! ## A269622.P10239650809708857609

`A269619(n+14+A027379(n+2))`
-/

namespace A269622.P10239650809708857609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 ((n + 14 : ℤ) + A027379 (n + 2)).toNat

end

end A269622.P10239650809708857609

/-!
# A269623: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by other than plus two, zero or minus 1.

The programs for A269623, there is no canonical definition to state claims against.
-/

/-! ## A269623.P11121082418013918879

`A269619(A167499(n+5)+2)`
-/

namespace A269623.P11121082418013918879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A167499 (n + 5) + 2).toNat

end

end A269623.P11121082418013918879

/-! ## A269623.P4181287744435530769

`A269619(A000124(n+6)+6)`
-/

namespace A269623.P4181287744435530769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000124 (n + 6) + 6).toNat

end

end A269623.P4181287744435530769

/-! ## A269623.P742049837315440527

`A269619(A000217(n+6)+7)`
-/

namespace A269623.P742049837315440527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A000217 (n + 6) + 7).toNat

end

end A269623.P742049837315440527

/-! ## A269623.P9628258776240790597

`A269619(A155212(n+2)+15)`
-/

namespace A269623.P9628258776240790597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A155212 (n + 2) + 15).toNat

end

end A269623.P9628258776240790597

/-! ## A269623.P18297693669587079605

`A269619(A166136(n+4)+n+7)`
-/

namespace A269623.P18297693669587079605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269619 (A166136 (n + 4) + (n + 7 : ℤ)).toNat

end

end A269623.P18297693669587079605

/-!
# A269624: Length of the shortest generalized Roman numeral representation of n.

The programs for A269624, there is no canonical definition to state claims against.
-/

/-! ## A269624.P12642985790770443296

`A118121(n+1)-A122841(A113340(n))`
-/

namespace A269624.P12642985790770443296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118121 (n + 1) - A122841 (A113340 n).toNat

end

end A269624.P12642985790770443296

/-! ## A269624.P6326737361212230684

`A006968(n+1)-A010054(A196270(2*n+5))`
-/

namespace A269624.P6326737361212230684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1) - A010054 (A196270 (2 * n + 5)).toNat

end

end A269624.P6326737361212230684

/-!
# A269625: 

The programs for A269625, there is no canonical definition to state claims against.
-/

/-! ## A269625.P5884189192859977332

`A118605((n+1)%lcm(20, n+1))`
-/

namespace A269625.P5884189192859977332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 ((n + 1) % Nat.lcm 20 (n + 1))

end

end A269625.P5884189192859977332

/-! ## A269625.P12589884151266719950

`A118605(n+1-A235145(n))`
-/

namespace A269625.P12589884151266719950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 ((n + 1 : ℤ) - A235145 n).toNat

end

end A269625.P12589884151266719950

/-! ## A269625.P16698668503795085063

`and(A053864(n+2), A118605(n+1))`
-/

namespace A269625.P16698668503795085063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053864 (n + 2)) (A118605 (n + 1))

end

end A269625.P16698668503795085063

/-! ## A269625.P9035899779255869054

`and(A118605(n+1), A295920(n+2))`
-/

namespace A269625.P9035899779255869054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118605 (n + 1)) (A295920 (n + 2))

end

end A269625.P9035899779255869054

/-! ## A269625.P1867321919404510970

`and(A118605(n+1), A295924(n+2))`
-/

namespace A269625.P1867321919404510970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118605 (n + 1)) (A295924 (n + 2))

end

end A269625.P1867321919404510970

/-! ## A269625.P6979405480637650943

`and(A118605(n+1), A304327(n+2))`
-/

namespace A269625.P6979405480637650943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118605 (n + 1)) (A304327 (n + 2))

end

end A269625.P6979405480637650943

/-! ## A269625.P11497727159631992180

`A118605((n+1)*A053864(n+2)²)`
-/

namespace A269625.P11497727159631992180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118605 ((n + 1 : ℤ) * A053864 (n + 2) ^ 2).toNat

end

end A269625.P11497727159631992180

/-! ## A269625.P4244909370944779761

`A127326(A304042(n)+A118605(n+1))`
-/

namespace A269625.P4244909370944779761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 (A304042 n + A118605 (n + 1)).toNat

end

end A269625.P4244909370944779761

/-! ## A269625.P17870737599683994900

`and(A007318(A052409(n+2)), A118605(n+1))`
-/

namespace A269625.P17870737599683994900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (A052409 (n + 2)).toNat) (A118605 (n + 1))

end

end A269625.P17870737599683994900

/-! ## A269625.P17403732374173662933

`and(A000010(A025463(n+1)+1), A118605(n+1))`
-/

namespace A269625.P17403732374173662933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A025463 (n + 1) + 1).toNat) (A118605 (n + 1))

end

end A269625.P17403732374173662933

/-!
# A269626: a(n) = A003418(n) / A058312(n) with a(0) = 1.

The programs for A269626, there is no canonical definition to state claims against.
-/

/-! ## A269626.P2796064462332436545

`gcd(A003418(n), A025530(A028310(n)))`
-/

namespace A269626.P2796064462332436545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A025530 (A028310 n).toNat)

end

end A269626.P2796064462332436545

/-! ## A269626.P17852216031577015444

`(A075059(n)-1)/A058312(A028310(n))`
-/

namespace A269626.P17852216031577015444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1 : ℚ) / (A058312 (A028310 n).toNat : ℚ)

end

end A269626.P17852216031577015444

/-! ## A269626.P959747830737409396

`gcd(A025530(A233583(n+1)), A025552(n))`
-/

namespace A269626.P959747830737409396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025530 (A233583 (n + 1)).toNat) (A025552 n)

end

end A269626.P959747830737409396

/-! ## A269626.P4311415234109974329

`(A195507(n+1)-(n+1))/A058312(A028310(n))`
-/

namespace A269626.P4311415234109974329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195507 (n + 1) - (n + 1 : ℤ) : ℚ) / (A058312 (A028310 n).toNat : ℚ)

end

end A269626.P4311415234109974329

/-! ## A269626.P6599606408220105417

`∏[A014963(n+1-(n+2)%(n+1))]/A058312(A028310(n))`
-/

namespace A269626.P6599606408220105417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1 - (n + 2) % (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A058312 (A028310 n).toNat : ℚ)

end

end A269626.P6599606408220105417

/-! ## A269626.P17285498555147611096

`A025530(A233583(n+1))/A058313(A028310(n))`
-/

namespace A269626.P17285498555147611096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025530 (A233583 (n + 1)).toNat : ℚ) / (A058313 (A028310 n).toNat : ℚ)

end

end A269626.P17285498555147611096

/-! ## A269626.P14371371550841791108

`gcd(A232982(n), A364870(n))`
-/

namespace A269626.P14371371550841791108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232982 n) (A364870 n)

end

end A269626.P14371371550841791108

/-! ## A269626.P1075162123519697549

`gcd(A364870(n)², A355588(n))`
-/

namespace A269626.P1075162123519697549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A364870 n ^ 2) (A355588 n)

end

end A269626.P1075162123519697549

/-! ## A269626.P11012914016617843349

`gcd(A215130(n+1), A398485(n))`
-/

namespace A269626.P11012914016617843349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215130 (n + 1)) (A398485 n)

end

end A269626.P11012914016617843349

/-!
# A269628: Dimension of BSym_n.

The programs for A269628, there is no canonical definition to state claims against.
-/

/-! ## A269628.P16631776727761917484

`A275416(A004275(n²)+2)`
-/

namespace A269628.P16631776727761917484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (A004275 (n ^ 2) + 2).toNat

end

end A269628.P16631776727761917484

/-! ## A269628.P5249793853884650560

`A275416(2*A065033(2*n)²)`
-/

namespace A269628.P5249793853884650560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (2 * A065033 (2 * n) ^ 2).toNat

end

end A269628.P5249793853884650560

/-! ## A269628.P2538595592846078422

`A275416(A058331(n)+A057428(n))`
-/

namespace A269628.P2538595592846078422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (A058331 n + A057428 n).toNat

end

end A269628.P2538595592846078422

/-! ## A269628.P17307485358776713483

`A275416(A058331(n)-A057428(n)²)`
-/

namespace A269628.P17307485358776713483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (A058331 n - A057428 n ^ 2).toNat

end

end A269628.P17307485358776713483

/-! ## A269628.P1273366603655264196

`A275416(A065033(2*n)*A065033(4*n))`
-/

namespace A269628.P1273366603655264196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (A065033 (2 * n) * A065033 (4 * n)).toNat

end

end A269628.P1273366603655264196

/-! ## A269628.P6614349679542070288

`A275416(∑[4*n]+1)`
-/

namespace A269628.P6614349679542070288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269628.P6614349679542070288

/-! ## A269628.P17279474879929558059

`A275416(A058331(n+1))%A000079(n+1)`
-/

namespace A269628.P17279474879929558059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275416 (A058331 (n + 1)).toNat) (A000079 (n + 1))

end

end A269628.P17279474879929558059

/-!
# A269629: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A269629, there is no canonical definition to state claims against.
-/

/-! ## A269629.P687282502770841766

`Δ[A269523(n)]`
-/

namespace A269629.P687282502770841766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269629.P687282502770841766

/-! ## A269629.P15085896310260009096

`A269523(n+1)-A269523(n)`
-/

namespace A269629.P15085896310260009096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269523 (n + 1) - A269523 n

end

end A269629.P15085896310260009096

/-!
# A269633: Numbers whose arithmetic derivative is equal to their BCR, where BCR = A036044, binary-complement-and-reverse = take one's complement then reverse bit order.

The programs for A269633, there is no canonical definition to state claims against.
-/

/-! ## A269633.P7040087955254817770

`eq[A003415(n), A036044(n)]`
-/

namespace A269633.P7040087955254817770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269633.P7040087955254817770

/-!
# A269634: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269634, there is no canonical definition to state claims against.
-/

/-! ## A269634.P3081202196336143847

`A269640((n+1)²+n²)`
-/

namespace A269634.P3081202196336143847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 ((n + 1) ^ 2 + n ^ 2)

end

end A269634.P3081202196336143847

/-! ## A269634.P855841901453995987

`record[gcd(A003987(n), A269640(n+1))]`
-/

namespace A269634.P855841901453995987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A269640 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269634.P855841901453995987

/-! ## A269634.P6732995445323674704

`gcd(A000038(n), A269640(A001844(n)))`
-/

namespace A269634.P6732995445323674704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269640 (A001844 n).toNat)

end

end A269634.P6732995445323674704

/-! ## A269634.P3645170759802036344

`A269640(A001844(n))+A000007(n+1)`
-/

namespace A269634.P3645170759802036344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A001844 n).toNat + A000007 (n + 1)

end

end A269634.P3645170759802036344

/-! ## A269634.P12373962011408153639

`A269640(A001844(n))+A112604(3*n+4)`
-/

namespace A269634.P12373962011408153639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A001844 n).toNat + A112604 (3 * n + 4)

end

end A269634.P12373962011408153639

/-!
# A269635: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269635, there is no canonical definition to state claims against.
-/

/-! ## A269635.P12341450578363116680

`A269640(∑[n+3]+1)`
-/

namespace A269635.P12341450578363116680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269635.P12341450578363116680

/-! ## A269635.P1836656390832557592

`A269640(A055999(n)+4)%A041118(n)`
-/

namespace A269635.P1836656390832557592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269640 (A055999 n + 4).toNat) (A041118 n)

end

end A269635.P1836656390832557592

/-! ## A269635.P6523657557247025440

`A152271(2*n)*A269640(A055999(n)+4)`
-/

namespace A269635.P6523657557247025440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A269640 (A055999 n + 4).toNat

end

end A269635.P6523657557247025440

/-! ## A269635.P11038851082162700263

`A001511(or(1, n²))*A269640(A055999(n)+4)`
-/

namespace A269635.P11038851082162700263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Nat.lor 1 (n ^ 2)) * A269640 (A055999 n + 4).toNat

end

end A269635.P11038851082162700263

/-! ## A269635.P9519354639548885617

`A269640(A055999(n)+4)+A008683(8*(n+1))`
-/

namespace A269635.P9519354639548885617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A055999 n + 4).toNat + A008683 (8 * (n + 1))

end

end A269635.P9519354639548885617

/-! ## A269635.P3761976753350136162

`A269640(A055999(n)+4)+A089310(A089312(n))`
-/

namespace A269635.P3761976753350136162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A055999 n + 4).toNat + A089310 (A089312 n).toNat

end

end A269635.P3761976753350136162

/-! ## A269635.P4056650972617317056

`A007318(A000217(n))*A269640(A055999(n)+4)`
-/

namespace A269635.P4056650972617317056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A269640 (A055999 n + 4).toNat

end

end A269635.P4056650972617317056

/-! ## A269635.P13452532010681955391

`A001511(A000040(n+2))*A269640(A055999(n)+4)`
-/

namespace A269635.P13452532010681955391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 2)).toNat * A269640 (A055999 n + 4).toNat

end

end A269635.P13452532010681955391

/-! ## A269635.P6001117240340692481

`A001222(A282700(n+1))*A269640(A055999(n)+4)`
-/

namespace A269635.P6001117240340692481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282700 (n + 1)).toNat * A269640 (A055999 n + 4).toNat

end

end A269635.P6001117240340692481

/-!
# A269636: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269636, there is no canonical definition to state claims against.
-/

/-! ## A269636.P3253401420605311624

`A269640(A027379(n+2))`
-/

namespace A269636.P3253401420605311624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 2)).toNat

end

end A269636.P3253401420605311624

/-! ## A269636.P17312308401334524222

`A269640(A055998(n+2))`
-/

namespace A269636.P17312308401334524222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A055998 (n + 2)).toNat

end

end A269636.P17312308401334524222

/-! ## A269636.P9956007012803051549

`A269640(A056000(n)+7)`
-/

namespace A269636.P9956007012803051549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A056000 n + 7).toNat

end

end A269636.P9956007012803051549

/-! ## A269636.P10604817375277883444

`A269640(A052905(n+1)+2)`
-/

namespace A269636.P10604817375277883444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A052905 (n + 1) + 2).toNat

end

end A269636.P10604817375277883444

/-! ## A269636.P10159447785198262318

`A269640(A167499(n)+A016777(n))`
-/

namespace A269636.P10159447785198262318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A167499 n + A016777 n).toNat

end

end A269636.P10159447785198262318

/-! ## A269636.P9132736753814132633

`A269640(A167614(n+1)+A005408(n))`
-/

namespace A269636.P9132736753814132633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A167614 (n + 1) + A005408 n).toNat

end

end A269636.P9132736753814132633

/-!
# A269637: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269637, there is no canonical definition to state claims against.
-/

/-! ## A269637.P8482445419863554084

`A269640(A046691(n+3))`
-/

namespace A269637.P8482445419863554084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A046691 (n + 3)).toNat

end

end A269637.P8482445419863554084

/-! ## A269637.P17659099330613092269

`A269640(Δ[A023545(n+1)])`
-/

namespace A269637.P17659099330613092269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (f1 (n + 1) - f1 n).toNat

end

end A269637.P17659099330613092269

/-! ## A269637.P13467387498790801620

`A269640(A027379(n+3)-1)`
-/

namespace A269637.P13467387498790801620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 3) - 1).toNat

end

end A269637.P13467387498790801620

/-! ## A269637.P8365907725247210039

`A269640(A000124(n+5)-5)`
-/

namespace A269637.P8365907725247210039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000124 (n + 5) - 5).toNat

end

end A269637.P8365907725247210039

/-! ## A269637.P215185580838708792

`A269640(A000217(n+4)+n+1)`
-/

namespace A269637.P215185580838708792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A269637.P215185580838708792

/-!
# A269638: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269638, there is no canonical definition to state claims against.
-/

/-! ## A269638.P18049682798169497013

`A269640(A052905(n+3))`
-/

namespace A269638.P18049682798169497013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A052905 (n + 3)).toNat

end

end A269638.P18049682798169497013

/-! ## A269638.P4301865675251527140

`A269640(A027379(n+4)-2)`
-/

namespace A269638.P4301865675251527140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 4) - 2).toNat

end

end A269638.P4301865675251527140

/-! ## A269638.P15241292440047962249

`A269640(A000124(n+6)-6)`
-/

namespace A269638.P15241292440047962249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000124 (n + 6) - 6).toNat

end

end A269638.P15241292440047962249

/-! ## A269638.P6652721551621971049

`A269640(Δ[Δ[A006504(n+1)]])`
-/

namespace A269638.P6652721551621971049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (f1 (n + 1) - f1 n).toNat

end

end A269638.P6652721551621971049

/-! ## A269638.P13438261870081069243

`A269640(Δ[A023545(n+2)]-1)`
-/

namespace A269638.P13438261870081069243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (f1 (n + 1) - f1 n - 1).toNat

end

end A269638.P13438261870081069243

/-! ## A269638.P1621018197791691992

`A269640(A000217(n+5)+n+1)`
-/

namespace A269638.P1621018197791691992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A269638.P1621018197791691992

/-!
# A269639: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269639, there is no canonical definition to state claims against.
-/

/-! ## A269639.P219253169792126623

`A269640(A055999(n+4))`
-/

namespace A269639.P219253169792126623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A055999 (n + 4)).toNat

end

end A269639.P219253169792126623

/-! ## A269639.P7263412982866267232

`A269640(A000124(n+7)-7)`
-/

namespace A269639.P7263412982866267232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000124 (n + 7) - 7).toNat

end

end A269639.P7263412982866267232

/-! ## A269639.P1105601697500772629

`A269640(A000217(n+6)+n+1)`
-/

namespace A269639.P1105601697500772629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A269639.P1105601697500772629

/-! ## A269639.P14786121723449912800

`A269640(A046691(n+4)+n+5)`
-/

namespace A269639.P14786121723449912800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A046691 (n + 4) + (n + 5 : ℤ)).toNat

end

end A269639.P14786121723449912800

/-! ## A269639.P4272309157818637900

`A269640(A027379(n+3)+A004277(n+5))`
-/

namespace A269639.P4272309157818637900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 3) + A004277 (n + 5)).toNat

end

end A269639.P4272309157818637900

/-!
# A269640: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269640, there is no canonical definition to state claims against.
-/

/-! ## A269640.P16920113623611088215

`A269409(n+1)-A033483(A208673(n))`
-/

namespace A269640.P16920113623611088215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1) - A033483 (A208673 n).toNat

end

end A269640.P16920113623611088215

/-! ## A269640.P15232045708684478362

`A269409(n+1)-A033483(A238010(n))`
-/

namespace A269640.P15232045708684478362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1) - A033483 (A238010 n).toNat

end

end A269640.P15232045708684478362

/-! ## A269640.P6110153973484215375

`A269409(n+1)-A185238(A098446(n))`
-/

namespace A269640.P6110153973484215375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1) - A185238 (A098446 n).toNat

end

end A269640.P6110153973484215375

/-! ## A269640.P9604544185630552055

`A269409(n+1)-A025465(A355007(n))`
-/

namespace A269640.P9604544185630552055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1) - A025465 (A355007 n).toNat

end

end A269640.P9604544185630552055

/-! ## A269640.P12278995000452315217

`A269409(n+1)-A184993(A341981(n))`
-/

namespace A269640.P12278995000452315217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1) - A184993 (A341981 (n + 101)).toNat

end

end A269640.P12278995000452315217

/-!
# A269641: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269641, the canonical program `A269641.P2298919776863745446` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269641 has offset 1).

The definition of A269641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269641.P2298919776863745446

`(1-(n+2)²)²-n²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269641

/-- `(1-(n+2)²)²-n²` -/
def P2298919776863745446.Spec : Prop :=
  ∀ n, P2298919776863745446.a n = A269641 (n + 1)

theorem P2298919776863745446.correct : P2298919776863745446.Spec := by
  intro n
  simp only [A269641, Nat.add_sub_cancel]

end A269641

/-! ## A269641.P14615342433763383178

`abs(1-A269538(n+1))`
-/

namespace A269641.P14615342433763383178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A269538 (n + 1)|

end

end A269641.P14615342433763383178

namespace A269641

/-- `abs(1-A269538(n+1))` -/
def P14615342433763383178.Spec : Prop :=
  ∀ n, P14615342433763383178.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P16115970939186254809

`((n+1)²+n+2)*A014209(n+1)`
-/

namespace A269641.P16115970939186254809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n + 2 : ℤ) * A014209 (n + 1)

end

end A269641.P16115970939186254809

namespace A269641

/-- `((n+1)²+n+2)*A014209(n+1)` -/
def P16115970939186254809.Spec : Prop :=
  ∀ n, P16115970939186254809.a n = A269641 (n + 1)

theorem P16115970939186254809.correct : P16115970939186254809.Spec := by
  intro n
  simp only [A269641, Nat.add_sub_cancel, A269641.P16115970939186254809.a, A269641.P2298919776863745446.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269641

/-! ## A269641.P3614839128950776866

`∑[Δ[A005563(n)²]-A004273(n)]`
-/

namespace A269641.P3614839128950776866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269641.P3614839128950776866

namespace A269641

/-- `∑[Δ[A005563(n)²]-A004273(n)]` -/
def P3614839128950776866.Spec : Prop :=
  ∀ n, P3614839128950776866.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P9565757225805190008

`A014209(n+1)/A003215(n+1)*A243201(n+1)`
-/

namespace A269641.P9565757225805190008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014209 (n + 1) : ℚ) / (A003215 (n + 1) : ℚ) * (A243201 (n + 1) : ℚ)

end

end A269641.P9565757225805190008

namespace A269641

/-- `A014209(n+1)/A003215(n+1)*A243201(n+1)` -/
def P9565757225805190008.Spec : Prop :=
  ∀ n, P9565757225805190008.a n = (A269641 (n + 1) : ℚ)

theorem P9565757225805190008.correct : P9565757225805190008.Spec := by
  intro n
  simp only [A269641, Nat.add_sub_cancel, A269641.P9565757225805190008.a, A269641.P2298919776863745446.a, A003215, A003215.P5851317289441473820.a, A014209, A014209.P8391054817103649375.a, A243201, A243201.P1770549597896343998.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269641

/-! ## A269641.P15998091953284995584

`abs(n²-∑[record[A165754(n)]]²)`
-/

namespace A269641.P15998091953284995584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2|

end

end A269641.P15998091953284995584

namespace A269641

/-- `abs(n²-∑[record[A165754(n)]]²)` -/
def P15998091953284995584.Spec : Prop :=
  ∀ n, P15998091953284995584.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P6595631161879148012

`A002061(n+2)*A004116(2*(n+1))`
-/

namespace A269641.P6595631161879148012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2) * A004116 (2 * (n + 1))

end

end A269641.P6595631161879148012

namespace A269641

/-- `A002061(n+2)*A004116(2*(n+1))` -/
def P6595631161879148012.Spec : Prop :=
  ∀ n, P6595631161879148012.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P6621267533969270224

`(A028387(n+1)-2)*A264754(2*n+1)`
-/

namespace A269641.P6621267533969270224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028387 (n + 1) - 2) * A264754 (2 * n + 1)

end

end A269641.P6621267533969270224

namespace A269641

/-- `(A028387(n+1)-2)*A264754(2*n+1)` -/
def P6621267533969270224.Spec : Prop :=
  ∀ n, P6621267533969270224.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P16909323815577200313

`(A264754(2*n)+2*(n+1))*A264754(2*n+1)`
-/

namespace A269641.P16909323815577200313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A264754 (2 * n) + (2 * (n + 1) : ℤ)) * A264754 (2 * n + 1)

end

end A269641.P16909323815577200313

namespace A269641

/-- `(A264754(2*n)+2*(n+1))*A264754(2*n+1)` -/
def P16909323815577200313.Spec : Prop :=
  ∀ n, P16909323815577200313.a n = A269641 (n + 1)

end A269641

/-! ## A269641.P2595188564706986436

`A269640(A167614(n+2)+1)`
-/

namespace A269641.P2595188564706986436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A167614 (n + 2) + 1).toNat

end

end A269641.P2595188564706986436

namespace A269641

/-- `A269640(A167614(n+2)+1)` -/
def P2595188564706986436.Spec : Prop :=
  ∀ n, P2595188564706986436.a n = A269641 (n + 1)

end A269641

/-!
# A269642: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269642, the canonical program `A269642.P14712120908198174048` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269642 has offset 1).

The definition of A269642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269642.P14712120908198174048

`(n+1)^5+5*(n+1)^4+4*(n+1)^3+6*(n+1)²-5*(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269642

/-- `(n+1)^5+5*(n+1)^4+4*(n+1)^3+6*(n+1)²-5*(n+1)+1` -/
def P14712120908198174048.Spec : Prop :=
  ∀ n, P14712120908198174048.a n = A269642 (n + 1)

theorem P14712120908198174048.correct : P14712120908198174048.Spec := by
  intro n
  simp only [A269642, Nat.add_sub_cancel]

end A269642

/-! ## A269642.P369932953299179262

`A269640(∑[n+4]+11)`
-/

namespace A269642.P369932953299179262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A269642.P369932953299179262

namespace A269642

/-- `A269640(∑[n+4]+11)` -/
def P369932953299179262.Spec : Prop :=
  ∀ n, P369932953299179262.a n = A269642 (n + 1)

end A269642

/-!
# A269643: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269643, there is no canonical definition to state claims against.
-/

/-! ## A269643.P14716824815527953836

`A269640(A166136(n+4))`
-/

namespace A269643.P14716824815527953836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A166136 (n + 4)).toNat

end

end A269643.P14716824815527953836

/-! ## A269643.P5585692544529482314

`A269640(A000124(n+5)+5)`
-/

namespace A269643.P5585692544529482314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000124 (n + 5) + 5).toNat

end

end A269643.P5585692544529482314

/-! ## A269643.P15754116684326937921

`A269640(A000217(n+5)+6)`
-/

namespace A269643.P15754116684326937921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000217 (n + 5) + 6).toNat

end

end A269643.P15754116684326937921

/-! ## A269643.P3626261821395577525

`A269640(A167614(n+3)+n+8)`
-/

namespace A269643.P3626261821395577525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A167614 (n + 3) + (n + 8 : ℤ)).toNat

end

end A269643.P3626261821395577525

/-! ## A269643.P3484107482344977355

`A269640(A027379(n+5)-A004277(n+2))`
-/

namespace A269643.P3484107482344977355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 5) - A004277 (n + 2)).toNat

end

end A269643.P3484107482344977355

/-! ## A269643.P2631464517309455168

`A269640(A002620(n+2)+A002620(n+9))`
-/

namespace A269643.P2631464517309455168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A269643.P2631464517309455168

/-!
# A269644: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by other than plus two or minus 1.

The programs for A269644, there is no canonical definition to state claims against.
-/

/-! ## A269644.P14595436574180320562

`A269640(A167614(n+5)+4)`
-/

namespace A269644.P14595436574180320562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A167614 (n + 5) + 4).toNat

end

end A269644.P14595436574180320562

/-! ## A269644.P7209143566455616685

`A269640(A000217(n+6)+7)`
-/

namespace A269644.P7209143566455616685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000217 (n + 6) + 7).toNat

end

end A269644.P7209143566455616685

/-! ## A269644.P17671734540468828420

`A269640(A046691(n+4)+11)`
-/

namespace A269644.P17671734540468828420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A046691 (n + 4) + 11).toNat

end

end A269644.P17671734540468828420

/-! ## A269644.P3348662924065898257

`A269640(A000124(n+7)-(n+1))`
-/

namespace A269644.P3348662924065898257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A269644.P3348662924065898257

/-! ## A269644.P3384398975670949954

`A269640(A027379(n+7)-A016789(n+4))`
-/

namespace A269644.P3384398975670949954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269640 (A027379 (n + 7) - A016789 (n + 4)).toNat

end

end A269644.P3384398975670949954

/-!
# A269645: Number of nX3 arrays containing 3 copies of 0..n-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269645, there is no canonical definition to state claims against.
-/

/-! ## A269645.P1534307306535837251

`A269646(∑[n+3]+1)`
-/

namespace A269645.P1534307306535837251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269645.P1534307306535837251

/-! ## A269645.P2791493527821143273

`record[A269646(A198464(n+1))]`
-/

namespace A269645.P2791493527821143273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269645.P2791493527821143273

/-! ## A269645.P2870905893112991809

`record[A269646(A128373(n+2))]`
-/

namespace A269645.P2870905893112991809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269645.P2870905893112991809

/-!
# A269647: Number of 3Xn arrays containing n copies of 0..3-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269647, there is no canonical definition to state claims against.
-/

/-! ## A269647.P16809769616033450808

`A269646(∑[n+2]+4)`
-/

namespace A269647.P16809769616033450808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269647.P16809769616033450808

/-! ## A269647.P18039654212721540687

`lcm(2, A269646(A167614(n+1)))`
-/

namespace A269647.P18039654212721540687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269646 (A167614 (n + 1)).toNat)

end

end A269647.P18039654212721540687

/-! ## A269647.P17620637410616913497

`record[A269646(A128373(n+2)+2)]`
-/

namespace A269647.P17620637410616913497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A128373 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269647.P17620637410616913497

/-! ## A269647.P2188721337767018344

`A269646(A167614(n+1))+A011738(n)`
-/

namespace A269647.P2188721337767018344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (A167614 (n + 1)).toNat + A011738 n

end

end A269647.P2188721337767018344

/-!
# A269648: Number of 4Xn arrays containing n copies of 0..4-1 avoiding the pattern down-up in every row and equal-up in every column.

The programs for A269648, there is no canonical definition to state claims against.
-/

/-! ## A269648.P14405750983965807253

`A269646(∑[n+3]+7)`
-/

namespace A269648.P14405750983965807253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269646 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A269648.P14405750983965807253

/-! ## A269648.P8490677337993780914

`lcm(A016727(n), A269646(A055999(n)+10))`
-/

namespace A269648.P8490677337993780914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016727 n) (A269646 (A055999 n + 10).toNat)

end

end A269648.P8490677337993780914

/-!
# A269649: Number of length-n 0..n arrays with no adjacent pair x,x+1 repeated.

The programs for A269649, there is no canonical definition to state claims against.
-/

/-! ## A269649.P4008074680482163170

`A269656((n+1)²+n²)`
-/

namespace A269649.P4008074680482163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 ((n + 1) ^ 2 + n ^ 2)

end

end A269649.P4008074680482163170

/-! ## A269649.P948859254454353926

`record[gcd(A114327(n), A269656(n+1))]`
-/

namespace A269649.P948859254454353926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269656 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269649.P948859254454353926

/-! ## A269649.P10680858877642904270

`A269656(A001844(n))+A185238(n)`
-/

namespace A269649.P10680858877642904270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A001844 n).toNat + A185238 n

end

end A269649.P10680858877642904270

/-! ## A269649.P5079376138919681233

`A007318(C(n, 2))*A269656(A001844(n))`
-/

namespace A269649.P5079376138919681233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A269656 (A001844 n).toNat

end

end A269649.P5079376138919681233

/-! ## A269649.P17480254644861695456

`A000045(gcd(n, n+1))*A269656(A001844(n))`
-/

namespace A269649.P17480254644861695456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A269656 (A001844 n).toNat

end

end A269649.P17480254644861695456

/-!
# A269650: Number of length-n 0..2 arrays with no adjacent pair x,x+1 repeated.

The programs for A269650, there is no canonical definition to state claims against.
-/

/-! ## A269650.P3185396560220083228

`A269656(∑[n+2])`
-/

namespace A269650.P3185396560220083228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269650.P3185396560220083228

/-! ## A269650.P759422893720338089

`record[A269656(A000096(A026261(n+1)))]`
-/

namespace A269650.P759422893720338089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000096 (A026261 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269650.P759422893720338089

/-! ## A269650.P17322047508291003533

`record[A269656(A000096(A071797(n+1)))]`
-/

namespace A269650.P17322047508291003533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000096 (A071797 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269650.P17322047508291003533

/-! ## A269650.P14195472079308881549

`record[A269656(A000096(A293223(n+1)))]`
-/

namespace A269650.P14195472079308881549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000096 (A293223 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269650.P14195472079308881549

/-! ## A269650.P10667862947338532436

`record[A269656(A061579(A257506(n+1)))]`
-/

namespace A269650.P10667862947338532436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A061579 (A257506 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269650.P10667862947338532436

/-!
# A269651: Number of length-n 0..3 arrays with no adjacent pair x,x+1 repeated.

The programs for A269651, there is no canonical definition to state claims against.
-/

/-! ## A269651.P14682487197969033296

`A269656(∑[n+3]+1)`
-/

namespace A269651.P14682487197969033296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269651.P14682487197969033296

/-! ## A269651.P4815755594158589978

`gcd(A000038(n)², A269656(A034856(n+2)))`
-/

namespace A269651.P4815755594158589978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A269656 (A034856 (n + 2)).toNat)

end

end A269651.P4815755594158589978

/-! ## A269651.P9620555111191698453

`A269656(A034856(n+2))+A000007(n+1)`
-/

namespace A269651.P9620555111191698453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A269651.P9620555111191698453

/-! ## A269651.P6697601172394886798

`A269656(A034856(n+2))+A000038(n+1)`
-/

namespace A269651.P6697601172394886798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A269651.P6697601172394886798

/-! ## A269651.P12464552614724189455

`A269656(A034856(n+2))%A005023(n+1)`
-/

namespace A269651.P12464552614724189455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269656 (A034856 (n + 2)).toNat) (A005023 (n + 1))

end

end A269651.P12464552614724189455

/-!
# A269652: Number of length-n 0..4 arrays with no adjacent pair x,x+1 repeated.

The programs for A269652, there is no canonical definition to state claims against.
-/

/-! ## A269652.P18271833474111909557

`A269656(A055998(n+2))`
-/

namespace A269652.P18271833474111909557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A055998 (n + 2)).toNat

end

end A269652.P18271833474111909557

/-! ## A269652.P4234599677993524276

`A269656(A056000(n)+7)`
-/

namespace A269652.P4234599677993524276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A056000 n + 7).toNat

end

end A269652.P4234599677993524276

/-! ## A269652.P13752651851980001075

`A269656(Δ[A006503(n+1)])`
-/

namespace A269652.P13752651851980001075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (f1 (n + 1) - f1 n).toNat

end

end A269652.P13752651851980001075

/-! ## A269652.P1678052288778733916

`A269656(A052905(n+1)+2)`
-/

namespace A269652.P1678052288778733916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A052905 (n + 1) + 2).toNat

end

end A269652.P1678052288778733916

/-! ## A269652.P3263445946560804159

`A269656(A055999(n+1)+3)`
-/

namespace A269652.P3263445946560804159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A055999 (n + 1) + 3).toNat

end

end A269652.P3263445946560804159

/-!
# A269653: Number of length-n 0..5 arrays with no adjacent pair x,x+1 repeated.

The programs for A269653, there is no canonical definition to state claims against.
-/

/-! ## A269653.P11021532322047379949

`A269656(∑[n+5]+6)`
-/

namespace A269653.P11021532322047379949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A269653.P11021532322047379949

/-!
# A269654: Number of length-n 0..6 arrays with no adjacent pair x,x+1 repeated.

The programs for A269654, there is no canonical definition to state claims against.
-/

/-! ## A269654.P16265525220159726207

`A269656(A052905(n+3))`
-/

namespace A269654.P16265525220159726207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A052905 (n + 3)).toNat

end

end A269654.P16265525220159726207

/-! ## A269654.P8461796036232666118

`A269656(A155212(n+2)+3)`
-/

namespace A269654.P8461796036232666118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A155212 (n + 2) + 3).toNat

end

end A269654.P8461796036232666118

/-! ## A269654.P17587587290537241587

`A269656(A167499(n)+A016885(n)+7)`
-/

namespace A269654.P17587587290537241587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A167499 n + A016885 n + 7).toNat

end

end A269654.P17587587290537241587

/-! ## A269654.P3624955495002782803

`A269656(A000096(n+7)-A005408(n+9))`
-/

namespace A269654.P3624955495002782803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000096 (n + 7) - A005408 (n + 9)).toNat

end

end A269654.P3624955495002782803

/-! ## A269654.P14235265409837660289

`A269656(A000217(n+7)-A055643(n+12))`
-/

namespace A269654.P14235265409837660289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000217 (n + 7) - A055643 (n + 12)).toNat

end

end A269654.P14235265409837660289

/-!
# A269655: Number of length-n 0..7 arrays with no adjacent pair x,x+1 repeated.

The programs for A269655, there is no canonical definition to state claims against.
-/

/-! ## A269655.P5855300460982112549

`A269656(A055999(n+4))`
-/

namespace A269655.P5855300460982112549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A055999 (n + 4)).toNat

end

end A269655.P5855300460982112549

/-! ## A269655.P3525303600256162892

`A269656(A000096(n+6)-5)`
-/

namespace A269655.P3525303600256162892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000096 (n + 6) - 5).toNat

end

end A269655.P3525303600256162892

/-! ## A269655.P8179093217636075357

`A269656(A000124(n+7)-7)`
-/

namespace A269655.P8179093217636075357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000124 (n + 7) - 7).toNat

end

end A269655.P8179093217636075357

/-! ## A269655.P3599147529040618726

`A269656(A000217(n+6)+n+1)`
-/

namespace A269655.P3599147529040618726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A269655.P3599147529040618726

/-! ## A269655.P14981751859882410211

`A269656(A152948(n+8)-(1-n))`
-/

namespace A269655.P14981751859882410211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A152948 (n + 8) - (1 - (n : ℤ))).toNat

end

end A269655.P14981751859882410211

/-!
# A269656: T(n,k) = number of length-n 0..k arrays with no adjacent pair x,x+1 repeated: infinite square array read by falling antidiagonals.

The programs for A269656, there is no canonical definition to state claims against.
-/

/-! ## A269656.P15064058346540271819

`A269776(n+1)+A184159(A091977(n))`
-/

namespace A269656.P15064058346540271819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (n + 1) + A184159 (A091977 n).toNat

end

end A269656.P15064058346540271819

/-! ## A269656.P5113010702102804497

`A184159(A091977(n))+A269494(n+1)+A082859(A102480(n))`
-/

namespace A269656.P5113010702102804497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A091977 n).toNat + (A269494 (n + 1) + A082859 (A102480 n).toNat)

end

end A269656.P5113010702102804497

/-! ## A269656.P11592902078613101961

`A184159(A091977(n))+A269494(n+1)+A082859(A143632(n))`
-/

namespace A269656.P11592902078613101961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A091977 n).toNat + (A269494 (n + 1) + A082859 (A143632 n).toNat)

end

end A269656.P11592902078613101961

/-! ## A269656.P7205273873311303603

`A184159(A091977(n))+A269690(n+1)+A067898(A217304(n))`
-/

namespace A269656.P7205273873311303603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A091977 n).toNat + (A269690 (n + 1) + A067898 (A217304 n).toNat)

end

end A269656.P7205273873311303603

/-! ## A269656.P14206312285055039227

`A184159(A091977(n))+A269494(n+1)+A186745(A269129(n))`
-/

namespace A269656.P14206312285055039227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (A091977 n).toNat + (A269494 (n + 1) + A186745 (A269129 n).toNat)

end

end A269656.P14206312285055039227

/-!
# A269657: Number of length-4 0..n arrays with no adjacent pair x,x+1 repeated.

The programs for A269657, the canonical program `A269657.P9434583702918928993` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269657 has offset 0).

The definition of A269657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269657.P9434583702918928993

`(n+1)^4-n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269657

/-- `(n+1)^4-n` -/
def P9434583702918928993.Spec : Prop :=
  ∀ n, P9434583702918928993.a n = A269657 n

theorem P9434583702918928993.correct : P9434583702918928993.Spec := by
  intro n
  simp only [A269657]

end A269657

/-! ## A269657.P4258052812734534415

`or(1, ∑[Δ[n^4]-1])`
-/

namespace A269657.P4258052812734534415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269657.P4258052812734534415

namespace A269657

/-- `or(1, ∑[Δ[n^4]-1])` -/
def P4258052812734534415.Spec : Prop :=
  ∀ n, P4258052812734534415.a n = A269657 n

end A269657

/-! ## A269657.P15263557945378344503

`xor(1, ∑[Δ[n^4]-1])`
-/

namespace A269657.P15263557945378344503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269657.P15263557945378344503

namespace A269657

/-- `xor(1, ∑[Δ[n^4]-1])` -/
def P15263557945378344503.Spec : Prop :=
  ∀ n, P15263557945378344503.a n = A269657 n

end A269657

/-! ## A269657.P5097624773057151716

`abs(record[(1-n)^4]-n)`
-/

namespace A269657.P5097624773057151716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)|

end

end A269657.P5097624773057151716

namespace A269657

/-- `abs(record[(1-n)^4]-n)` -/
def P5097624773057151716.Spec : Prop :=
  ∀ n, P5097624773057151716.a n = A269657 n

end A269657

/-! ## A269657.P7444833398044615824

`abs(record[(n-1)²]²-n)`
-/

namespace A269657.P7444833398044615824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - (n : ℤ)|

end

end A269657.P7444833398044615824

namespace A269657

/-- `abs(record[(n-1)²]²-n)` -/
def P7444833398044615824.Spec : Prop :=
  ∀ n, P7444833398044615824.a n = A269657 n

end A269657

/-! ## A269657.P12579443671379563694

`abs(or(1, n-(n+1)²²))`
-/

namespace A269657.P12579443671379563694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n : ℤ) - (((n + 1) ^ 2) ^ 2 : ℤ))|

end

end A269657.P12579443671379563694

namespace A269657

/-- `abs(or(1, n-(n+1)²²))` -/
def P12579443671379563694.Spec : Prop :=
  ∀ n, P12579443671379563694.a n = A269657 n

end A269657

/-! ## A269657.P10973402557458516134

`abs(C(n+1, n)²²-n)`
-/

namespace A269657.P10973402557458516134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose (n + 1) n ^ 2) ^ 2 : ℤ) - (n : ℤ)|

end

end A269657.P10973402557458516134

namespace A269657

/-- `abs(C(n+1, n)²²-n)` -/
def P10973402557458516134.Spec : Prop :=
  ∀ n, P10973402557458516134.a n = A269657 n

end A269657

/-! ## A269657.P12908735487114513954

`lcm(2, (n+1)²²-n)/2`
-/

namespace A269657.P12908735487114513954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((((n + 1) ^ 2) ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 2

end

end A269657.P12908735487114513954

namespace A269657

/-- `lcm(2, (n+1)²²-n)/2` -/
def P12908735487114513954.Spec : Prop :=
  ∀ n, P12908735487114513954.a n = (A269657 n : ℚ)

end A269657

/-! ## A269657.P3995658494393859529

`abs(n+2-xor(2, (n+1)²²))`
-/

namespace A269657.P3995658494393859529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) - (Nat.xor 2 (((n + 1) ^ 2) ^ 2) : ℤ)|

end

end A269657.P3995658494393859529

namespace A269657

/-- `abs(n+2-xor(2, (n+1)²²))` -/
def P3995658494393859529.Spec : Prop :=
  ∀ n, P3995658494393859529.a n = A269657 n

end A269657

/-! ## A269657.P6503539670468938011

`floor(∑[a(n-1)+2]²-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A269657.P6503539670468938011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)

end

end A269657.P6503539670468938011

namespace A269657

/-- `floor(∑[a(n-1)+2]²-n)` -/
def P6503539670468938011.Spec : Prop :=
  ∀ n, P6503539670468938011.a n = A269657 n

end A269657

/-! ## A269657.P7376888507597120359

`abs(lcm(n+1, (n+1)²²)-n)`
-/

namespace A269657.P7376888507597120359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 1) (((n + 1) ^ 2) ^ 2) : ℤ) - (n : ℤ)|

end

end A269657.P7376888507597120359

namespace A269657

/-- `abs(lcm(n+1, (n+1)²²)-n)` -/
def P7376888507597120359.Spec : Prop :=
  ∀ n, P7376888507597120359.a n = A269657 n

end A269657

/-! ## A269657.P7207445167431070769

`abs((n+1)²²-gcd(n, 2*n))`
-/

namespace A269657.P7207445167431070769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) ^ 2) ^ 2 : ℤ) - (Nat.gcd n (2 * n) : ℤ)|

end

end A269657.P7207445167431070769

namespace A269657

/-- `abs((n+1)²²-gcd(n, 2*n))` -/
def P7207445167431070769.Spec : Prop :=
  ∀ n, P7207445167431070769.a n = A269657 n

end A269657

/-! ## A269657.P13902549224006507295

`((n+1)^5)%((n+1)^4+1)`
-/

namespace A269657.P13902549224006507295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 % ((n + 1) ^ 4 + 1)

end

end A269657.P13902549224006507295

namespace A269657

/-- `((n+1)^5)%((n+1)^4+1)` -/
def P13902549224006507295.Spec : Prop :=
  ∀ n, (P13902549224006507295.a n : ℤ) = A269657 n

end A269657

/-! ## A269657.P9762749891880573241

`gcd((n+1)²²-n, C(2, n+2))`
-/

namespace A269657.P9762749891880573241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((n + 1) ^ 2) ^ 2 : ℤ) - (n : ℤ)) (Nat.choose 2 (n + 2) : ℤ)

end

end A269657.P9762749891880573241

namespace A269657

/-- `gcd((n+1)²²-n, C(2, n+2))` -/
def P9762749891880573241.Spec : Prop :=
  ∀ n, (P9762749891880573241.a n : ℤ) = A269657 n

end A269657

/-! ## A269657.P18276371385971146538

`gcd(n-(n+1)²², and(1, 2*n))`
-/

namespace A269657.P18276371385971146538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (((n + 1) ^ 2) ^ 2 : ℤ)) (Nat.land 1 (2 * n) : ℤ)

end

end A269657.P18276371385971146538

namespace A269657

/-- `gcd(n-(n+1)²², and(1, 2*n))` -/
def P18276371385971146538.Spec : Prop :=
  ∀ n, (P18276371385971146538.a n : ℤ) = A269657 n

end A269657

/-! ## A269657.P6054348768382618939

`abs(∑[a(n-1)+4]²/4-n)` with `a(0)=2`
-/

namespace A269657.P6054348768382618939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4 - (n : ℚ)|

end

end A269657.P6054348768382618939

namespace A269657

/-- `abs(∑[a(n-1)+4]²/4-n)` -/
def P6054348768382618939.Spec : Prop :=
  ∀ n, P6054348768382618939.a n = (A269657 n : ℚ)

end A269657

/-! ## A269657.P10901788494564679965

`Δ[a(n-1)+n²²-(n-1)]` with `a(0)=0`
-/

namespace A269657.P10901788494564679965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (((n ^ 2) ^ 2 : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269657.P10901788494564679965

namespace A269657

/-- `Δ[a(n-1)+n²²-(n-1)]` -/
def P10901788494564679965.Spec : Prop :=
  ∀ n, P10901788494564679965.a n = A269657 n

end A269657

/-! ## A269657.P6624167526754051677

`Δ[n²²-(n-1-a(n-1))]` with `a(0)=1`
-/

namespace A269657.P6624167526754051677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n ^ 2) ^ 2 : ℤ) - ((n : ℤ) - 1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269657.P6624167526754051677

namespace A269657

/-- `Δ[n²²-(n-1-a(n-1))]` -/
def P6624167526754051677.Spec : Prop :=
  ∀ n, P6624167526754051677.a n = A269657 n

end A269657

/-! ## A269657.P16988625862460723547

`((n+1)²²-n)*gcd(2, 2*n+1)`
-/

namespace A269657.P16988625862460723547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n : ℤ)) * (Nat.gcd 2 (2 * n + 1) : ℤ)

end

end A269657.P16988625862460723547

namespace A269657

/-- `((n+1)²²-n)*gcd(2, 2*n+1)` -/
def P16988625862460723547.Spec : Prop :=
  ∀ n, P16988625862460723547.a n = A269657 n

theorem P16988625862460723547.correct : P16988625862460723547.Spec := by
  intro n
  simp only [A269657, Nat.add_sub_cancel, A269657.P16988625862460723547.a, A269657.P9434583702918928993.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A269657

/-! ## A269657.P11962496024255371071

`((n+1)²²-n)*and(1, 2*n+1)`
-/

namespace A269657.P11962496024255371071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (n : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A269657.P11962496024255371071

namespace A269657

/-- `((n+1)²²-n)*and(1, 2*n+1)` -/
def P11962496024255371071.Spec : Prop :=
  ∀ n, P11962496024255371071.a n = A269657 n

theorem P11962496024255371071.correct : P11962496024255371071.Spec := by
  intro n
  simp only [A269657, Nat.add_sub_cancel, A269657.P11962496024255371071.a, A269657.P9434583702918928993.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A269657

/-!
# A269658: Number of length-5 0..n arrays with no adjacent pair x,x+1 repeated.

The programs for A269658, the canonical program `A269658.P3840257408572801458` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269658 has offset 0).

The definition of A269658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269658.P3840257408572801458

`(n+1)^5-3*n*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269658

/-- `(n+1)^5-3*n*(n+1)` -/
def P3840257408572801458.Spec : Prop :=
  ∀ n, P3840257408572801458.a n = A269658 n

theorem P3840257408572801458.correct : P3840257408572801458.Spec := by
  intro n
  simp only [A269658]

end A269658

/-! ## A269658.P8868155656823179109

`∑[A022521(n)-6*n]`
-/

namespace A269658.P8868155656823179109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269658.P8868155656823179109

namespace A269658

/-- `∑[A022521(n)-6*n]` -/
def P8868155656823179109.Spec : Prop :=
  ∀ n, P8868155656823179109.a n = A269658 n

end A269658

/-! ## A269658.P1076293936832968471

`(n+1)*(A258402(n)+1+n)`
-/

namespace A269658.P1076293936832968471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A258402 n + 1 + (n : ℤ))

end

end A269658.P1076293936832968471

namespace A269658

/-- `(n+1)*(A258402(n)+1+n)` -/
def P1076293936832968471.Spec : Prop :=
  ∀ n, P1076293936832968471.a n = A269658 n

theorem P1076293936832968471.correct : P1076293936832968471.Spec := by
  intro n
  simp only [A269658, Nat.add_sub_cancel, A269658.P1076293936832968471.a, A269658.P3840257408572801458.a, A258402, A258402.P4882434139232473822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269658

/-! ## A269658.P13659113487026349145

`(n+1)*((n+1)²²-A008585(n))`
-/

namespace A269658.P13659113487026349145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((((n + 1) ^ 2) ^ 2 : ℤ) - A008585 n)

end

end A269658.P13659113487026349145

namespace A269658

/-- `(n+1)*((n+1)²²-A008585(n))` -/
def P13659113487026349145.Spec : Prop :=
  ∀ n, P13659113487026349145.a n = A269658 n

theorem P13659113487026349145.correct : P13659113487026349145.Spec := by
  intro n
  simp only [A269658, Nat.add_sub_cancel, A269658.P13659113487026349145.a, A269658.P3840257408572801458.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269658

/-! ## A269658.P11633195638109359044

`((n+1)²²-A016777(n)+1)*(n+1)`
-/

namespace A269658.P11633195638109359044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - A016777 n + 1) * (n + 1 : ℤ)

end

end A269658.P11633195638109359044

namespace A269658

/-- `((n+1)²²-A016777(n)+1)*(n+1)` -/
def P11633195638109359044.Spec : Prop :=
  ∀ n, P11633195638109359044.a n = A269658 n

theorem P11633195638109359044.correct : P11633195638109359044.Spec := by
  intro n
  simp only [A269658, Nat.add_sub_cancel, A269658.P11633195638109359044.a, A269658.P3840257408572801458.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269658

/-! ## A269658.P9609594618906749642

`(n+1)*(A246767(n+2)-(n-2))`
-/

namespace A269658.P9609594618906749642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A246767 (n + 2) - ((n : ℤ) - 2))

end

end A269658.P9609594618906749642

namespace A269658

/-- `(n+1)*(A246767(n+2)-(n-2))` -/
def P9609594618906749642.Spec : Prop :=
  ∀ n, P9609594618906749642.a n = A269658 n

theorem P9609594618906749642.correct : P9609594618906749642.Spec := by
  intro n
  simp only [A269658, Nat.add_sub_cancel, A269658.P9609594618906749642.a, A269658.P3840257408572801458.a, A246767, A246767.P4788069445635632835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269658

/-! ## A269658.P9961614524641423781

`∑[Δ[A000584(n)]-A008588(n)]`
-/

namespace A269658.P9961614524641423781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269658.P9961614524641423781

namespace A269658

/-- `∑[Δ[A000584(n)]-A008588(n)]` -/
def P9961614524641423781.Spec : Prop :=
  ∀ n, P9961614524641423781.a n = A269658 n

end A269658

/-!
# A269659: Number of length-6 0..n arrays with no adjacent pair x,x+1 repeated.

The programs for A269659, the canonical program `A269659.P8784947065599865962` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269659 has offset 1).

The definition of A269659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269659.P8784947065599865962

`(n+1)^6+6*(n+1)^5+15*(n+1)^4+14*(n+1)^3+3*(n+1)²+3*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269659

/-- `(n+1)^6+6*(n+1)^5+15*(n+1)^4+14*(n+1)^3+3*(n+1)²+3*(n+1)` -/
def P8784947065599865962.Spec : Prop :=
  ∀ n, (P8784947065599865962.a n : ℤ) = A269659 (n + 1)

theorem P8784947065599865962.correct : P8784947065599865962.Spec := by
  intro n
  simp only [A269659, Nat.add_sub_cancel]

end A269659

/-! ## A269659.P16816056592474353914

`A269656(A000124(n+5)+5)`
-/

namespace A269659.P16816056592474353914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000124 (n + 5) + 5).toNat

end

end A269659.P16816056592474353914

namespace A269659

/-- `A269656(A000124(n+5)+5)` -/
def P16816056592474353914.Spec : Prop :=
  ∀ n, P16816056592474353914.a n = A269659 (n + 1)

end A269659

/-! ## A269659.P14709051298762761154

`A269656(A034856(n+4)+8)`
-/

namespace A269659.P14709051298762761154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A034856 (n + 4) + 8).toNat

end

end A269659.P14709051298762761154

namespace A269659

/-- `A269656(A034856(n+4)+8)` -/
def P14709051298762761154.Spec : Prop :=
  ∀ n, P14709051298762761154.a n = A269659 (n + 1)

end A269659

/-!
# A269660: Number of length-7 0..n arrays with no adjacent pair x,x+1 repeated.

The programs for A269660, there is no canonical definition to state claims against.
-/

/-! ## A269660.P1978359461018516321

`record[A269656(A052905(n)+12)]`
-/

namespace A269660.P1978359461018516321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A052905 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269660.P1978359461018516321

/-! ## A269660.P15464219407849145993

`record[A269656(A055999(n)+13)]`
-/

namespace A269660.P15464219407849145993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A055999 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269660.P15464219407849145993

/-! ## A269660.P16978465814414905612

`A269656(A000124(n+6)+6)`
-/

namespace A269660.P16978465814414905612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000124 (n + 6) + 6).toNat

end

end A269660.P16978465814414905612

/-! ## A269660.P97020627684216666

`A269656(A000217(n+6)+7)`
-/

namespace A269660.P97020627684216666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A000217 (n + 6) + 7).toNat

end

end A269660.P97020627684216666

/-! ## A269660.P6431214555263570339

`A269656(A155212(n+2)+15)`
-/

namespace A269660.P6431214555263570339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269656 (A155212 (n + 2) + 15).toNat

end

end A269660.P6431214555263570339

/-!
# A269661: a(n) = Product_{i=1..n} (5^i - 4^i).

The programs for A269661, there is no canonical definition to state claims against.
-/

/-! ## A269661.P991961702397501107

`∏[5^(n+1)-4^(n+1)]`
-/

namespace A269661.P991961702397501107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A269661.P991961702397501107

/-! ## A269661.P14265990389376360485

`(5^(n+1)-4^(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A269661.P14265990389376360485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)) * a (n - 1)

end

end A269661.P14265990389376360485

/-! ## A269661.P15271202317229155011

`a(n-1)*A005060(n+1)` with `a(0)=1`
-/

namespace A269661.P15271202317229155011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A005060 (n + 1)

end

end A269661.P15271202317229155011

/-!
# A269662: Semiprimes which are the sum of a twin prime pair plus one.

The programs for A269662, the canonical program `A269662.P3030284964706936984` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269662 has offset 1).

The definition of A269662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 532 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269662.P9036097847656615968

`∩[A070552(n+1), A092949(n+1)]`
-/

namespace A269662.P9036097847656615968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P9036097847656615968

namespace A269662

/-- `∩[A070552(n+1), A092949(n+1)]` -/
def P9036097847656615968.Spec : Prop :=
  ∀ n, (P9036097847656615968.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P973380820814680903

`∩[A070552(n+1), A129069(n+1)]`
-/

namespace A269662.P973380820814680903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P973380820814680903

namespace A269662

/-- `∩[A070552(n+1), A129069(n+1)]` -/
def P973380820814680903.Spec : Prop :=
  ∀ n, (P973380820814680903.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P3030284964706936984

`∩[A033945(n+1), A241764(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A269662

/-- `∩[A033945(n+1), A241764(n+1)]` -/
def P3030284964706936984.Spec : Prop :=
  ∀ n, (P3030284964706936984.a n : ℤ) = A269662 (n + 1)

theorem P3030284964706936984.correct : P3030284964706936984.Spec := by
  intro n
  simp only [A269662, Nat.add_sub_cancel]

end A269662

/-! ## A269662.P5434561181295313242

`∩[A076274(n+1), A241764(n+1)]`
-/

namespace A269662.P5434561181295313242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P5434561181295313242

namespace A269662

/-- `∩[A076274(n+1), A241764(n+1)]` -/
def P5434561181295313242.Spec : Prop :=
  ∀ n, (P5434561181295313242.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P10652636058940543654

`∩[A092949(n+1), A241764(n+1)]`
-/

namespace A269662.P10652636058940543654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P10652636058940543654

namespace A269662

/-- `∩[A092949(n+1), A241764(n+1)]` -/
def P10652636058940543654.Spec : Prop :=
  ∀ n, (P10652636058940543654.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P11016899543389799009

`∩[A192868(n+1), A241764(n+1)]`
-/

namespace A269662.P11016899543389799009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P11016899543389799009

namespace A269662

/-- `∩[A192868(n+1), A241764(n+1)]` -/
def P11016899543389799009.Spec : Prop :=
  ∀ n, (P11016899543389799009.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P2780329700255697525

`∩[A046315(n+1), A105571(n+1)+1]`
-/

namespace A269662.P2780329700255697525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P2780329700255697525

namespace A269662

/-- `∩[A046315(n+1), A105571(n+1)+1]` -/
def P2780329700255697525.Spec : Prop :=
  ∀ n, (P2780329700255697525.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P7333978966822042396

`∩[A241764(n+1), A013634(n)]`
-/

namespace A269662.P7333978966822042396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269662.P7333978966822042396

namespace A269662

/-- `∩[A241764(n+1), A013634(n)]` -/
def P7333978966822042396.Spec : Prop :=
  ∀ n, (P7333978966822042396.a n : ℤ) = A269662 (n + 1)

end A269662

/-! ## A269662.P3743638554144435172

`2*p?[A001414(A123017(n+1))]-1`
-/

namespace A269662.P3743638554144435172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A123017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A269662.P3743638554144435172

namespace A269662

/-- `2*p?[A001414(A123017(n+1))]-1` -/
def P3743638554144435172.Spec : Prop :=
  ∀ n, P3743638554144435172.a n = A269662 (n + 1)

end A269662

/-!
# A269663: Semiprimes which are the product of a twin prime pair minus one.

The programs for A269663, there is no canonical definition to state claims against.
-/

/-! ## A269663.P2010378437539102622

`2*A086870(n+1)`
-/

namespace A269663.P2010378437539102622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086870 (n + 1)

end

end A269663.P2010378437539102622

/-! ## A269663.P11764880195944226882

`A107423(n+1)-1`
-/

namespace A269663.P11764880195944226882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107423 (n + 1) - 1

end

end A269663.P11764880195944226882

/-! ## A269663.P5804713428437473545

`(A109945(n+1)+1)²-2`
-/

namespace A269663.P5804713428437473545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109945 (n + 1) + 1) ^ 2 - 2

end

end A269663.P5804713428437473545

/-! ## A269663.P8334917278890246608

`lcm(A075369(n+1)-A120875(n+1), A086870(n+1))`
-/

namespace A269663.P8334917278890246608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075369 (n + 1) - A120875 (n + 1)) (A086870 (n + 1))

end

end A269663.P8334917278890246608

/-! ## A269663.P14866302546979257449

`A086870(n+1)+A086870(n+1)%A086870(n+2)`
-/

namespace A269663.P14866302546979257449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086870 (n + 1) + Int.tmod (A086870 (n + 1)) (A086870 (n + 2))

end

end A269663.P14866302546979257449

/-! ## A269663.P13781823234818804769

`∩[A103533(n+1), A120875(n+1)]`
-/

namespace A269663.P13781823234818804769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269663.P13781823234818804769

/-! ## A269663.P9964831867441362072

`2*∩[A066436(n+1), A120876(n+1)]`
-/

namespace A269663.P9964831867441362072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269663.P9964831867441362072

/-! ## A269663.P3038842564949600132

`2*∩[A066436(n+1), A102770(n+1)]`
-/

namespace A269663.P3038842564949600132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269663.P3038842564949600132

/-! ## A269663.P1111909457158941186

`A000203(A109945(n+1))²-2`
-/

namespace A269663.P1111909457158941186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109945 (n + 1)).toNat ^ 2 - 2

end

end A269663.P1111909457158941186

/-! ## A269663.P757638274604724095

`2*∩[A102770(n+1), A256917(n+1)]`
-/

namespace A269663.P757638274604724095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269663.P757638274604724095

/-! ## A269663.P1504438775253505224

`2*∩[A120876(n+1), A256917(n+1)]`
-/

namespace A269663.P1504438775253505224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269663.P1504438775253505224

/-!
# A269664: Number of tilings of a 12 X n rectangle with 4n trominoes of any shape.

The programs for A269664, there is no canonical definition to state claims against.
-/

/-! ## A269664.P4128865916606135606

`A233320(eq[12, A002262(n)])`
-/

namespace A269664.P4128865916606135606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269664.P4128865916606135606

/-! ## A269664.P9277968166018478570

`A233320(eq[12, A025581(n)])`
-/

namespace A269664.P9277968166018478570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269664.P9277968166018478570

/-! ## A269664.P6324524417477448483

`A233320(eq[13, A193739(n)])`
-/

namespace A269664.P6324524417477448483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269664.P6324524417477448483

/-! ## A269664.P15202213050176864782

`A233320(eq[13, A002260(n+1)])`
-/

namespace A269664.P15202213050176864782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269664.P15202213050176864782

/-! ## A269664.P13271415434741645136

`A233320(eq[13, A004736(n+1)])`
-/

namespace A269664.P13271415434741645136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269664.P13271415434741645136

/-!
# A269665: For n>=0, let A_n be the set of natural numbers k such that (k^n + 1) | k!. If A is nonempty, then a(n) is the least element of A_n; otherwise a(n) = 0.

The programs for A269665, there is no canonical definition to state claims against.
-/

/-! ## A269665.P6733728004662401526

`A017665(A255882(n))+A000079(n)`
-/

namespace A269665.P6733728004662401526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A255882 n).toNat + A000079 n

end

end A269665.P6733728004662401526

/-!
# A269666: Prime sums of five Mersenne primes.

The programs for A269666, there is no canonical definition to state claims against.
-/

/-! ## A269666.P335584776557582910

`p?[A042964(A298303(n+7))]`
-/

namespace A269666.P335584776557582910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A298303 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269666.P335584776557582910

/-! ## A269666.P1786743934224077211

`p?[A014601(A114886(n+1)+8)]`
-/

namespace A269666.P1786743934224077211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A114886 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269666.P1786743934224077211

/-! ## A269666.P868869732464285064

`p?[or(3, A355571(2*(n+2)))]`
-/

namespace A269666.P868869732464285064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A355571 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269666.P868869732464285064

/-! ## A269666.P8626797401717603665

`p?[A123167(A272978(n+5))]`
-/

namespace A269666.P8626797401717603665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123167 (A272978 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269666.P8626797401717603665

/-! ## A269666.P8867194618585940483

`p?[A029597(A092875(n+5)-1)]`
-/

namespace A269666.P8867194618585940483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029597 (A092875 (n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269666.P8867194618585940483

/-!
# A269667: a(n) = A270172(10*n).

The programs for A269667, there is no canonical definition to state claims against.
-/

/-! ## A269667.P11803319810546613824

`A270172(10*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269667.P11803319810546613824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (10 * n)

end

end A269667.P11803319810546613824

/-! ## A269667.P256247017392285160

`or(char[1], A270172(A008592(n)))`
-/

namespace A269667.P256247017392285160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A270172 (A008592 n).toNat)

end

end A269667.P256247017392285160

/-! ## A269667.P4907174476463158380

`A270172(A008592(n))%A017128(n)`
-/

namespace A269667.P4907174476463158380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270172 (A008592 n).toNat) (A017128 n)

end

end A269667.P4907174476463158380

/-! ## A269667.P118576553461528712

`A270172(A008592(n))+A000007(n+1)`
-/

namespace A269667.P118576553461528712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (A008592 n).toNat + A000007 (n + 1)

end

end A269667.P118576553461528712

/-! ## A269667.P11846069116522610899

`or(A270172(A008592(n)), A353478(n+1))`
-/

namespace A269667.P11846069116522610899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270172 (A008592 n).toNat) (A353478 (n + 1))

end

end A269667.P11846069116522610899

/-! ## A269667.P6033296370227969488

`A270172(A008592(n))/A008836(n+1)²`
-/

namespace A269667.P6033296370227969488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270172 (A008592 n).toNat : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A269667.P6033296370227969488

/-! ## A269667.P16978711980668291267

`A270172(A008592(n))/A000120(A001316(n))`
-/

namespace A269667.P16978711980668291267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270172 (A008592 n).toNat : ℚ) / (A000120 (A001316 n).toNat : ℚ)

end

end A269667.P16978711980668291267

/-! ## A269667.P928990819506660945

`A270172(A008592(n))/A001222(A053184(n+1))`
-/

namespace A269667.P928990819506660945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270172 (A008592 n).toNat : ℚ) / (A001222 (A053184 (n + 1)).toNat : ℚ)

end

end A269667.P928990819506660945

/-! ## A269667.P14578706906160918622

`A270172(A008592(n))/A008836(A133819(n+1))`
-/

namespace A269667.P14578706906160918622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270172 (A008592 n).toNat : ℚ) / (A008836 (A133819 (n + 1)).toNat : ℚ)

end

end A269667.P14578706906160918622

/-! ## A269667.P9943414364781154323

`A270172(A017341(n))%29`
-/

namespace A269667.P9943414364781154323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270172 (A017341 n).toNat) 29

end

end A269667.P9943414364781154323

/-! ## A269667.P3670842259743276783

`and(A057428(n), A270172(A017341(n)))`
-/

namespace A269667.P3670842259743276783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A270172 (A017341 n).toNat)

end

end A269667.P3670842259743276783

/-! ## A269667.P10733129828795232921

`A270172(A008592(n))+A015325(Δ[n²])`
-/

namespace A269667.P10733129828795232921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (A008592 n).toNat + A015325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A269667.P10733129828795232921

/-! ## A269667.P7312131760998310903

`A270172(A008592(n))+A016117(A000040(n+2))`
-/

namespace A269667.P7312131760998310903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (A008592 n).toNat + A016117 (A000040 (n + 2)).toNat

end

end A269667.P7312131760998310903

/-! ## A269667.P8882301777748290956

`A270172(A008592(n))+A162296(A118571(n+1))`
-/

namespace A269667.P8882301777748290956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270172 (A008592 n).toNat + A162296 (A118571 (n + 1)).toNat

end

end A269667.P8882301777748290956

/-!
# A269668: Smallest k >= 0 such that neither (k + 1)*n - k nor (k + 1)*n + k is prime.

The programs for A269668, there is no canonical definition to state claims against.
-/

/-! ## A269668.P17555592923119115960

`A129338(n+1)%(∑{p}[n+1, C(#, n)]+1)`
-/

namespace A269668.P17555592923119115960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129338 (n + 1)) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1 : ℕ) : ℤ)

end

end A269668.P17555592923119115960

/-! ## A269668.P1123645555909525971

`A129338(n+1)%(A061397(n+1)+1)`
-/

namespace A269668.P1123645555909525971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129338 (n + 1)) (A061397 (n + 1) + 1)

end

end A269668.P1123645555909525971

/-! ## A269668.P7492929272344309890

`(A010051(n+1)*A129338(n+1))%(n+2)`
-/

namespace A269668.P7492929272344309890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010051 (n + 1) * A129338 (n + 1)) (n + 2 : ℤ)

end

end A269668.P7492929272344309890

/-! ## A269668.P16981387787246989459

`dr(A061397(n+1)^A018896(n))`
-/

namespace A269668.P16981387787246989459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A061397 (n + 1) : ℚ) ^ (A018896 n : ℤ)))

end

end A269668.P16981387787246989459

/-! ## A269668.P15163356407887111154

`A010888(lcm(A061397(n+1), A064704(n+1)))`
-/

namespace A269668.P15163356407887111154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Int.lcm (A061397 (n + 1)) (A064704 (n + 1)))

end

end A269668.P15163356407887111154

/-!
# A269669: Numbers whose Euler totient function is equal to the sum of some fixed power of their digits.

The programs for A269669, there is no canonical definition to state claims against.
-/

/-! ## A269669.P15522676143587852123

`A353636(2*A270494(n+2))`
-/

namespace A269669.P15522676143587852123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (2 * A270494 (n + 2)).toNat

end

end A269669.P15522676143587852123

/-! ## A269669.P1025381448177542629

`A032153(2*(n+1))*A260195(A226565(n+1))`
-/

namespace A269669.P1025381448177542629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032153 (2 * (n + 1)) * A260195 (A226565 (n + 1)).toNat

end

end A269669.P1025381448177542629

/-!
# A269670: Numbers whose sum of aliquot parts is equal to the sum of some fixed power of their digits.

The programs for A269670, there is no canonical definition to state claims against.
-/

/-! ## A269670.P14937488497402609281

`A037126(A276752(n))+n`
-/

namespace A269670.P14937488497402609281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A276752 n).toNat + (n : ℤ)

end

end A269670.P14937488497402609281

/-! ## A269670.P6601154660854182717

`record[A323242(A153140(n))+1]`
-/

namespace A269670.P6601154660854182717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323242 (A153140 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269670.P6601154660854182717

/-!
# A269671: Integers n such that the concatenation of prime(n) and prime(n+1) and also concatenation of prime(n+1) and prime(n) are prime.

The programs for A269671, there is no canonical definition to state claims against.
-/

/-! ## A269671.P6636836234609482537

`A000720(A225575(n+1))`
-/

namespace A269671.P6636836234609482537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A225575 (n + 1)).toNat

end

end A269671.P6636836234609482537

/-! ## A269671.P2982527307802855708

`A000720(p?[A034595(n+1)])`
-/

namespace A269671.P2982527307802855708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269671.P2982527307802855708

/-! ## A269671.P2621529374942971948

`A061395(p?[A034595(n+1)])`
-/

namespace A269671.P2621529374942971948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269671.P2621529374942971948

/-! ## A269671.P7299520436194184018

`A061395(or(1, A225575(n+1)))`
-/

namespace A269671.P7299520436194184018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A225575 (n + 1))).toNat

end

end A269671.P7299520436194184018

/-! ## A269671.P2711604688559223848

`∑{d}[A225575(n+1), A061395(#)]`
-/

namespace A269671.P2711604688559223848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A269671.P2711604688559223848

/-!
# A269672: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

The programs for A269672, there is no canonical definition to state claims against.
-/

/-! ## A269672.P10972913699533747630

`A269678(∑[4*n]+1)`
-/

namespace A269672.P10972913699533747630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269672.P10972913699533747630

/-! ## A269672.P18244163246966576118

`record[A269678(A178218(n+1))]`
-/

namespace A269672.P18244163246966576118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269672.P18244163246966576118

/-! ## A269672.P10895049520899174661

`record[gcd(A114327(n), A269678(n+1))]`
-/

namespace A269672.P10895049520899174661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269678 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269672.P10895049520899174661

/-! ## A269672.P7509948753308531304

`gcd(A000038(n), A269678(A001844(n)))`
-/

namespace A269672.P7509948753308531304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269678 (A001844 n).toNat)

end

end A269672.P7509948753308531304

/-! ## A269672.P6179014101799941482

`A001489(n)+A269678(A001844(n))+n`
-/

namespace A269672.P6179014101799941482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A269678 (A001844 n).toNat + (n : ℤ))

end

end A269672.P6179014101799941482

/-!
# A269673: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo 3+1.

The programs for A269673, the canonical program `A269673.P13105678414180610087` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269673 has offset 1).

The definition of A269673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269673.P13105678414180610087

`5*a(n-1)-a(n-2)-15*a(n-3)` with `a(0)=4, a(1)=16, a(2)=60`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269673

/-- `5*a(n-1)-a(n-2)-15*a(n-3)` -/
def P13105678414180610087.Spec : Prop :=
  ∀ n, P13105678414180610087.a n = A269673 (n + 1)

theorem P13105678414180610087.correct : P13105678414180610087.Spec := by
  intro n
  simp only [A269673, Nat.add_sub_cancel]

end A269673

/-! ## A269673.P13549564152544619586

`A269678(∑[n+3]+1)`
-/

namespace A269673.P13549564152544619586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269673.P13549564152544619586

namespace A269673

/-- `A269678(∑[n+3]+1)` -/
def P13549564152544619586.Spec : Prop :=
  ∀ n, P13549564152544619586.a n = A269673 (n + 1)

end A269673

/-! ## A269673.P16963167913024343289

`A269678(A034856(n+2))%A269686(n+1)`
-/

namespace A269673.P16963167913024343289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269678 (A034856 (n + 2)).toNat) (A269686 (n + 1))

end

end A269673.P16963167913024343289

namespace A269673

/-- `A269678(A034856(n+2))%A269686(n+1)` -/
def P16963167913024343289.Spec : Prop :=
  ∀ n, P16963167913024343289.a n = A269673 (n + 1)

end A269673

/-!
# A269674: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo 4+1.

The programs for A269674, the canonical program `A269674.P11858373309272128650` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269674 has offset 1).

The definition of A269674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269674.P11858373309272128650

`7*a(n-1)-6*a(n-2)-24*a(n-3)` with `a(0)=5, a(1)=25, a(2)=120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269674

/-- `7*a(n-1)-6*a(n-2)-24*a(n-3)` -/
def P11858373309272128650.Spec : Prop :=
  ∀ n, P11858373309272128650.a n = A269674 (n + 1)

theorem P11858373309272128650.correct : P11858373309272128650.Spec := by
  intro n
  simp only [A269674, Nat.add_sub_cancel]

end A269674

/-! ## A269674.P1863234087664877487

`A269678(A027379(n+2))`
-/

namespace A269674.P1863234087664877487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A027379 (n + 2)).toNat

end

end A269674.P1863234087664877487

namespace A269674

/-- `A269678(A027379(n+2))` -/
def P1863234087664877487.Spec : Prop :=
  ∀ n, P1863234087664877487.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P6821499292360996401

`A269678(A055998(n+2))`
-/

namespace A269674.P6821499292360996401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A055998 (n + 2)).toNat

end

end A269674.P6821499292360996401

namespace A269674

/-- `A269678(A055998(n+2))` -/
def P6821499292360996401.Spec : Prop :=
  ∀ n, P6821499292360996401.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P5089129644963250821

`A269678(A155212(n)+5)`
-/

namespace A269674.P5089129644963250821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A155212 n + 5).toNat

end

end A269674.P5089129644963250821

namespace A269674

/-- `A269678(A155212(n)+5)` -/
def P5089129644963250821.Spec : Prop :=
  ∀ n, P5089129644963250821.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P11349075869479602900

`A269678(A056000(n)+7)`
-/

namespace A269674.P11349075869479602900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A056000 n + 7).toNat

end

end A269674.P11349075869479602900

namespace A269674

/-- `A269678(A056000(n)+7)` -/
def P11349075869479602900.Spec : Prop :=
  ∀ n, P11349075869479602900.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P9469380953752439291

`A269678(Δ[A006503(n+1)])`
-/

namespace A269674.P9469380953752439291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269674.P9469380953752439291

namespace A269674

/-- `A269678(Δ[A006503(n+1)])` -/
def P9469380953752439291.Spec : Prop :=
  ∀ n, P9469380953752439291.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P2845145287821994273

`A269678(Δ[A034857(n+1)])`
-/

namespace A269674.P2845145287821994273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269674.P2845145287821994273

namespace A269674

/-- `A269678(Δ[A034857(n+1)])` -/
def P2845145287821994273.Spec : Prop :=
  ∀ n, P2845145287821994273.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P10858239223649070738

`A269678(A052905(n+1)+2)`
-/

namespace A269674.P10858239223649070738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A052905 (n + 1) + 2).toNat

end

end A269674.P10858239223649070738

namespace A269674

/-- `A269678(A052905(n+1)+2)` -/
def P10858239223649070738.Spec : Prop :=
  ∀ n, P10858239223649070738.a n = A269674 (n + 1)

end A269674

/-! ## A269674.P7521982119934135804

`A269678(A000096(n+3)-2)`
-/

namespace A269674.P7521982119934135804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (n + 3) - 2).toNat

end

end A269674.P7521982119934135804

namespace A269674

/-- `A269678(A000096(n+3)-2)` -/
def P7521982119934135804.Spec : Prop :=
  ∀ n, P7521982119934135804.a n = A269674 (n + 1)

end A269674

/-!
# A269675: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo 5+1.

The programs for A269675, the canonical program `A269675.P16972765679098655454` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269675 has offset 1).

The definition of A269675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269675.P16972765679098655454

`9*a(n-1)-13*a(n-2)-35*a(n-3)` with `a(0)=6, a(1)=36, a(2)=210`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269675

/-- `9*a(n-1)-13*a(n-2)-35*a(n-3)` -/
def P16972765679098655454.Spec : Prop :=
  ∀ n, P16972765679098655454.a n = A269675 (n + 1)

theorem P16972765679098655454.correct : P16972765679098655454.Spec := by
  intro n
  simp only [A269675, Nat.add_sub_cancel]

end A269675

/-! ## A269675.P2548995311005972664

`A269678(Δ[A264443(n)])`
-/

namespace A269675.P2548995311005972664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269675.P2548995311005972664

namespace A269675

/-- `A269678(Δ[A264443(n)])` -/
def P2548995311005972664.Spec : Prop :=
  ∀ n, P2548995311005972664.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P5484258662225190679

`A269678(A046691(n+3))`
-/

namespace A269675.P5484258662225190679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A046691 (n + 3)).toNat

end

end A269675.P5484258662225190679

namespace A269675

/-- `A269678(A046691(n+3))` -/
def P5484258662225190679.Spec : Prop :=
  ∀ n, P5484258662225190679.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P11115165789192999576

`A269678(Δ[A023545(n+1)])`
-/

namespace A269675.P11115165789192999576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269675.P11115165789192999576

namespace A269675

/-- `A269678(Δ[A023545(n+1)])` -/
def P11115165789192999576.Spec : Prop :=
  ∀ n, P11115165789192999576.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P3879118164269503896

`A269678(A052905(n+2)+1)`
-/

namespace A269675.P3879118164269503896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A052905 (n + 2) + 1).toNat

end

end A269675.P3879118164269503896

namespace A269675

/-- `A269678(A052905(n+2)+1)` -/
def P3879118164269503896.Spec : Prop :=
  ∀ n, P3879118164269503896.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P10240819018103905578

`A269678(A000124(n+5)-5)`
-/

namespace A269675.P10240819018103905578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 5) - 5).toNat

end

end A269675.P10240819018103905578

namespace A269675

/-- `A269678(A000124(n+5)-5)` -/
def P10240819018103905578.Spec : Prop :=
  ∀ n, P10240819018103905578.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P7514597713369097483

`A269678(Δ[A034857(n+2)]-1)`
-/

namespace A269675.P7514597713369097483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n - 1).toNat

end

end A269675.P7514597713369097483

namespace A269675

/-- `A269678(Δ[A034857(n+2)]-1)` -/
def P7514597713369097483.Spec : Prop :=
  ∀ n, P7514597713369097483.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P12226078028487488668

`A269678(A167499(n)+4*n+5)`
-/

namespace A269675.P12226078028487488668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A269675.P12226078028487488668

namespace A269675

/-- `A269678(A167499(n)+4*n+5)` -/
def P12226078028487488668.Spec : Prop :=
  ∀ n, P12226078028487488668.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P7488966790680623265

`A269678(2*n+A055999(n)+11)`
-/

namespace A269675.P7488966790680623265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 ((2 * n : ℤ) + (A055999 n + 11)).toNat

end

end A269675.P7488966790680623265

namespace A269675

/-- `A269678(2*n+A055999(n)+11)` -/
def P7488966790680623265.Spec : Prop :=
  ∀ n, P7488966790680623265.a n = A269675 (n + 1)

end A269675

/-! ## A269675.P14138032513718351329

`A269678(A166136(n+1)+A016789(n))`
-/

namespace A269675.P14138032513718351329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A166136 (n + 1) + A016789 n).toNat

end

end A269675.P14138032513718351329

namespace A269675

/-- `A269678(A166136(n+1)+A016789(n))` -/
def P14138032513718351329.Spec : Prop :=
  ∀ n, P14138032513718351329.a n = A269675 (n + 1)

end A269675

/-!
# A269676: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo 6+1.

The programs for A269676, the canonical program `A269676.P1367415514169690023` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269676 has offset 1).

The definition of A269676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269676.P1367415514169690023

`11*a(n-1)-22*a(n-2)-48*a(n-3)` with `a(0)=7, a(1)=49, a(2)=336`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269676

/-- `11*a(n-1)-22*a(n-2)-48*a(n-3)` -/
def P1367415514169690023.Spec : Prop :=
  ∀ n, P1367415514169690023.a n = A269676 (n + 1)

theorem P1367415514169690023.correct : P1367415514169690023.Spec := by
  intro n
  simp only [A269676, Nat.add_sub_cancel]

end A269676

/-! ## A269676.P18395058945023398117

`A269678(A052905(n+3))`
-/

namespace A269676.P18395058945023398117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A052905 (n + 3)).toNat

end

end A269676.P18395058945023398117

namespace A269676

/-- `A269678(A052905(n+3))` -/
def P18395058945023398117.Spec : Prop :=
  ∀ n, P18395058945023398117.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P8977906517640048430

`A269678(A000124(n+6)-6)`
-/

namespace A269676.P8977906517640048430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 6) - 6).toNat

end

end A269676.P8977906517640048430

namespace A269676

/-- `A269678(A000124(n+6)-6)` -/
def P8977906517640048430.Spec : Prop :=
  ∀ n, P8977906517640048430.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P4724932538069165607

`A269678(Δ[Δ[A006504(n+1)]])`
-/

namespace A269676.P4724932538069165607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269676.P4724932538069165607

namespace A269676

/-- `A269678(Δ[Δ[A006504(n+1)]])` -/
def P4724932538069165607.Spec : Prop :=
  ∀ n, P4724932538069165607.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P2367497278905939663

`A269678(Δ[A023551(n+1)]+1)`
-/

namespace A269676.P2367497278905939663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n + 1).toNat

end

end A269676.P2367497278905939663

namespace A269676

/-- `A269678(Δ[A023551(n+1)]+1)` -/
def P2367497278905939663.Spec : Prop :=
  ∀ n, P2367497278905939663.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P14970089526055644408

`A269678(Δ[A264443(n+1)]-1)`
-/

namespace A269676.P14970089526055644408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n - 1).toNat

end

end A269676.P14970089526055644408

namespace A269676

/-- `A269678(Δ[A264443(n+1)]-1)` -/
def P14970089526055644408.Spec : Prop :=
  ∀ n, P14970089526055644408.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P2235428524441786367

`A269678(Δ[A023545(n+2)]-1)`
-/

namespace A269676.P2235428524441786367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n - 1).toNat

end

end A269676.P2235428524441786367

namespace A269676

/-- `A269678(Δ[A023545(n+2)]-1)` -/
def P2235428524441786367.Spec : Prop :=
  ∀ n, P2235428524441786367.a n = A269676 (n + 1)

end A269676

/-! ## A269676.P2304597470284281635

`A269678(A167614(n+1)+4*n+10)`
-/

namespace A269676.P2304597470284281635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A269676.P2304597470284281635

namespace A269676

/-- `A269678(A167614(n+1)+4*n+10)` -/
def P2304597470284281635.Spec : Prop :=
  ∀ n, P2304597470284281635.a n = A269676 (n + 1)

end A269676

/-!
# A269677: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo 7+1.

The programs for A269677, the canonical program `A269677.P11280054897003141330` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269677 has offset 1).

The definition of A269677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269677.P11280054897003141330

`13*a(n-1)-33*a(n-2)-63*a(n-3)` with `a(0)=8, a(1)=64, a(2)=504`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269677

/-- `13*a(n-1)-33*a(n-2)-63*a(n-3)` -/
def P11280054897003141330.Spec : Prop :=
  ∀ n, P11280054897003141330.a n = A269677 (n + 1)

theorem P11280054897003141330.correct : P11280054897003141330.Spec := by
  intro n
  simp only [A269677, Nat.add_sub_cancel]

end A269677

/-! ## A269677.P13507300054432220491

`A269678(A055999(n+4))`
-/

namespace A269677.P13507300054432220491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A055999 (n + 4)).toNat

end

end A269677.P13507300054432220491

namespace A269677

/-- `A269678(A055999(n+4))` -/
def P13507300054432220491.Spec : Prop :=
  ∀ n, P13507300054432220491.a n = A269677 (n + 1)

end A269677

/-! ## A269677.P1595182015264104517

`A269678(Δ[A023551(n+2)])`
-/

namespace A269677.P1595182015264104517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n).toNat

end

end A269677.P1595182015264104517

namespace A269677

/-- `A269678(Δ[A023551(n+2)])` -/
def P1595182015264104517.Spec : Prop :=
  ∀ n, P1595182015264104517.a n = A269677 (n + 1)

end A269677

/-! ## A269677.P18349576870016426389

`A269678(A027379(n+5)-3)`
-/

namespace A269677.P18349576870016426389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A027379 (n + 5) - 3).toNat

end

end A269677.P18349576870016426389

namespace A269677

/-- `A269678(A027379(n+5)-3)` -/
def P18349576870016426389.Spec : Prop :=
  ∀ n, P18349576870016426389.a n = A269677 (n + 1)

end A269677

/-! ## A269677.P3132660087611301748

`A269678(A000096(n+6)-5)`
-/

namespace A269677.P3132660087611301748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (n + 6) - 5).toNat

end

end A269677.P3132660087611301748

namespace A269677

/-- `A269678(A000096(n+6)-5)` -/
def P3132660087611301748.Spec : Prop :=
  ∀ n, P3132660087611301748.a n = A269677 (n + 1)

end A269677

/-! ## A269677.P17464568615124371441

`A269678(A000124(n+7)-7)`
-/

namespace A269677.P17464568615124371441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 7) - 7).toNat

end

end A269677.P17464568615124371441

namespace A269677

/-- `A269678(A000124(n+7)-7)` -/
def P17464568615124371441.Spec : Prop :=
  ∀ n, P17464568615124371441.a n = A269677 (n + 1)

end A269677

/-! ## A269677.P1289876885099006084

`A269678(A008587(n+4)+A000096(n+1))`
-/

namespace A269677.P1289876885099006084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A008587 (n + 4) + A000096 (n + 1)).toNat

end

end A269677.P1289876885099006084

namespace A269677

/-- `A269678(A008587(n+4)+A000096(n+1))` -/
def P1289876885099006084.Spec : Prop :=
  ∀ n, P1289876885099006084.a n = A269677 (n + 1)

end A269677

/-!
# A269678: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo k+1.

The programs for A269678, there is no canonical definition to state claims against.
-/

/-! ## A269678.P4647647925124659834

`A269467(n+1)-A285007(A326322(n))`
-/

namespace A269678.P4647647925124659834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269467 (n + 1) - A285007 (A326322 n).toNat

end

end A269678.P4647647925124659834

/-!
# A269679: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

The programs for A269679, the canonical program `A269679.P12521275085894758293` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269679 has offset 1).

The definition of A269679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269679.P12521275085894758293

`A269538(n+1)+2%(n+2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269679

/-- `A269538(n+1)+2%(n+2)` -/
def P12521275085894758293.Spec : Prop :=
  ∀ n, P12521275085894758293.a n = A269679 (n + 1)

theorem P12521275085894758293.correct : P12521275085894758293.Spec := by
  intro n
  simp only [A269679, Nat.add_sub_cancel]

end A269679

/-! ## A269679.P11289372395278136289

`A269641(n+1)+A122553(n)`
-/

namespace A269679.P11289372395278136289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A122553 n

end

end A269679.P11289372395278136289

namespace A269679

/-- `A269641(n+1)+A122553(n)` -/
def P11289372395278136289.Spec : Prop :=
  ∀ n, P11289372395278136289.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P6394621224308497173

`A268458(n+1)-abs(A110331(n))`
-/

namespace A269679.P6394621224308497173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268458 (n + 1) - |A110331 n|

end

end A269679.P6394621224308497173

namespace A269679

/-- `A268458(n+1)-abs(A110331(n))` -/
def P6394621224308497173.Spec : Prop :=
  ∀ n, P6394621224308497173.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P11068502600089342256

`A268945(n+1)+A114637(n+1)`
-/

namespace A269679.P11068502600089342256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268945 (n + 1) + A114637 (n + 1)

end

end A269679.P11068502600089342256

namespace A269679

/-- `A268945(n+1)+A114637(n+1)` -/
def P11068502600089342256.Spec : Prop :=
  ∀ n, P11068502600089342256.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P12893047028264952535

`A269641(n+1)+3-A000038(n)`
-/

namespace A269679.P12893047028264952535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + (3 - A000038 n)

end

end A269679.P12893047028264952535

namespace A269679

/-- `A269641(n+1)+3-A000038(n)` -/
def P12893047028264952535.Spec : Prop :=
  ∀ n, P12893047028264952535.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P14792998196337959173

`A269538(n+1)+A081729(A001316(n))`
-/

namespace A269679.P14792998196337959173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + A081729 (A001316 n).toNat

end

end A269679.P14792998196337959173

namespace A269679

/-- `A269538(n+1)+A081729(A001316(n))` -/
def P14792998196337959173.Spec : Prop :=
  ∀ n, P14792998196337959173.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P9251618932070951684

`A316828(A038573(n))+A269538(n+1)`
-/

namespace A269679.P9251618932070951684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A038573 n).toNat + A269538 (n + 1)

end

end A269679.P9251618932070951684

namespace A269679

/-- `A316828(A038573(n))+A269538(n+1)` -/
def P9251618932070951684.Spec : Prop :=
  ∀ n, P9251618932070951684.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P12186340820379520818

`A269538(n+1)+A091818(A020639(n+1))`
-/

namespace A269679.P12186340820379520818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + A091818 (A020639 (n + 1)).toNat

end

end A269679.P12186340820379520818

namespace A269679

/-- `A269538(n+1)+A091818(A020639(n+1))` -/
def P12186340820379520818.Spec : Prop :=
  ∀ n, P12186340820379520818.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P2352339882730102698

`A269641(n+1)+A014963(A132171(n))`
-/

namespace A269679.P2352339882730102698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A014963 (A132171 n).toNat

end

end A269679.P2352339882730102698

namespace A269679

/-- `A269641(n+1)+A014963(A132171(n))` -/
def P2352339882730102698.Spec : Prop :=
  ∀ n, P2352339882730102698.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P8366986285361794195

`A268945(n+1)+A028242(A103517(n))`
-/

namespace A269679.P8366986285361794195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268945 (n + 1) + A028242 (A103517 n).toNat

end

end A269679.P8366986285361794195

namespace A269679

/-- `A268945(n+1)+A028242(A103517(n))` -/
def P8366986285361794195.Spec : Prop :=
  ∀ n, P8366986285361794195.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P7033315361059917232

`A268945(n+1)+A140472(A062545(n))`
-/

namespace A269679.P7033315361059917232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268945 (n + 1) + A140472 (A062545 n).toNat

end

end A269679.P7033315361059917232

namespace A269679

/-- `A268945(n+1)+A140472(A062545(n))` -/
def P7033315361059917232.Spec : Prop :=
  ∀ n, P7033315361059917232.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P11911000469666222114

`A269538(n+1)+A107279(A007843(n))`
-/

namespace A269679.P11911000469666222114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + A107279 (A007843 n).toNat

end

end A269679.P11911000469666222114

namespace A269679

/-- `A269538(n+1)+A107279(A007843(n))` -/
def P11911000469666222114.Spec : Prop :=
  ∀ n, P11911000469666222114.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P13494392022311065982

`A269538(n+1)+and(2, A055099(A121857(n)))`
-/

namespace A269679.P13494392022311065982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + Int.land 2 (A055099 (A121857 n).toNat)

end

end A269679.P13494392022311065982

namespace A269679

/-- `A269538(n+1)+and(2, A055099(A121857(n)))` -/
def P13494392022311065982.Spec : Prop :=
  ∀ n, P13494392022311065982.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P17598880676244403963

`A269538(n+1)+A107279(2*n)`
-/

namespace A269679.P17598880676244403963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + A107279 (2 * n)

end

end A269679.P17598880676244403963

namespace A269679

/-- `A269538(n+1)+A107279(2*n)` -/
def P17598880676244403963.Spec : Prop :=
  ∀ n, P17598880676244403963.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P14268354410092699140

`A269538(n+1)+A048272(A000040(n+1))`
-/

namespace A269679.P14268354410092699140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + A048272 (A000040 (n + 1)).toNat

end

end A269679.P14268354410092699140

namespace A269679

/-- `A269538(n+1)+A048272(A000040(n+1))` -/
def P14268354410092699140.Spec : Prop :=
  ∀ n, P14268354410092699140.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P14589031949027472811

`A269641(n+1)+A014963(A048883(n))`
-/

namespace A269679.P14589031949027472811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A014963 (A048883 n).toNat

end

end A269679.P14589031949027472811

namespace A269679

/-- `A269641(n+1)+A014963(A048883(n))` -/
def P14589031949027472811.Spec : Prop :=
  ∀ n, P14589031949027472811.a n = A269679 (n + 1)

end A269679

/-! ## A269679.P8349977820835862562

`A269641(n+1)+A020639(A178337(n+1))`
-/

namespace A269679.P8349977820835862562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A020639 (A178337 (n + 1)).toNat

end

end A269679.P8349977820835862562

namespace A269679

/-- `A269641(n+1)+A020639(A178337(n+1))` -/
def P8349977820835862562.Spec : Prop :=
  ∀ n, P8349977820835862562.a n = A269679 (n + 1)

end A269679

/-!
# A269680: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

The programs for A269680, there is no canonical definition to state claims against.
-/

/-! ## A269680.P14461890635208466072

`A269678(A167499(n+3))`
-/

namespace A269680.P14461890635208466072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167499 (n + 3)).toNat

end

end A269680.P14461890635208466072

/-! ## A269680.P14536359615463621777

`A269678(A056000(n)+15)`
-/

namespace A269680.P14536359615463621777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A056000 n + 15).toNat

end

end A269680.P14536359615463621777

/-! ## A269680.P4202077251096324498

`A269678(A000124(n+4)+4)`
-/

namespace A269680.P4202077251096324498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 4) + 4).toNat

end

end A269680.P4202077251096324498

/-! ## A269680.P6716085135241096746

`A269678(A027379(n+2)+8)`
-/

namespace A269680.P6716085135241096746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A027379 (n + 2) + 8).toNat

end

end A269680.P6716085135241096746

/-! ## A269680.P11490821688115454252

`A269678(A055998(n+2)+8)`
-/

namespace A269680.P11490821688115454252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A055998 (n + 2) + 8).toNat

end

end A269680.P11490821688115454252

/-! ## A269680.P8800185044957132433

`A269678(A155212(n)+12-cos(-π))`
-/

namespace A269680.P8800185044957132433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (SequenceMachineLib.roundAway ((A155212 n + 12 : ℝ) - Real.cos (-Real.pi))).toNat

end

end A269680.P8800185044957132433

/-! ## A269680.P13041076266746501365

`A269678(A038722(Δ[A023545(n+1)]))`
-/

namespace A269680.P13041076266746501365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A269680.P13041076266746501365

/-! ## A269680.P15071065575445543064

`A269678(Δ[A023551(n+1)]-A005843(n))`
-/

namespace A269680.P15071065575445543064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n - A005843 n).toNat

end

end A269680.P15071065575445543064

/-! ## A269680.P3696685359028396483

`A269678(A034856(n+1)+A005843(n+7))`
-/

namespace A269680.P3696685359028396483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A034856 (n + 1) + A005843 (n + 7)).toNat

end

end A269680.P3696685359028396483

/-!
# A269681: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

The programs for A269681, there is no canonical definition to state claims against.
-/

/-! ## A269681.P15995896550556125199

`A269678(A167499(n+4)+1)`
-/

namespace A269681.P15995896550556125199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167499 (n + 4) + 1).toNat

end

end A269681.P15995896550556125199

/-! ## A269681.P13684037904373493389

`A269678(A000124(n+5)+5)`
-/

namespace A269681.P13684037904373493389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 5) + 5).toNat

end

end A269681.P13684037904373493389

/-! ## A269681.P10428541550910357654

`A269678(A000217(n+5)+6)`
-/

namespace A269681.P10428541550910357654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000217 (n + 5) + 6).toNat

end

end A269681.P10428541550910357654

/-! ## A269681.P15568396886298498540

`A269678(Δ[A023545(n+1)]+10)`
-/

namespace A269681.P15568396886298498540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (f1 (n + 1) - f1 n + 10).toNat

end

end A269681.P15568396886298498540

/-! ## A269681.P14603913971953544893

`A269678(A000096(n+9)-A016885(n+6))`
-/

namespace A269681.P14603913971953544893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (n + 9) - A016885 (n + 6)).toNat

end

end A269681.P14603913971953544893

/-!
# A269682: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

The programs for A269682, there is no canonical definition to state claims against.
-/

/-! ## A269682.P10303088106886254623

`A269678(A167487(n+5))`
-/

namespace A269682.P10303088106886254623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167487 (n + 5)).toNat

end

end A269682.P10303088106886254623

/-! ## A269682.P4749263113955044738

`A269678(A167614(n+5)+4)`
-/

namespace A269682.P4749263113955044738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167614 (n + 5) + 4).toNat

end

end A269682.P4749263113955044738

/-! ## A269682.P18352379687066022087

`A269678(A000124(n+6)+6)`
-/

namespace A269682.P18352379687066022087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000124 (n + 6) + 6).toNat

end

end A269682.P18352379687066022087

/-! ## A269682.P16070910411587999861

`A269678(A000096(n+5)+8)`
-/

namespace A269682.P16070910411587999861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000096 (n + 5) + 8).toNat

end

end A269682.P16070910411587999861

/-! ## A269682.P4378286379686449829

`A269678(A000217(n+6)+7)`
-/

namespace A269682.P4378286379686449829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A000217 (n + 6) + 7).toNat

end

end A269682.P4378286379686449829

/-! ## A269682.P11618222402713209049

`A269678(A167499(n+4)+n+8)`
-/

namespace A269682.P11618222402713209049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269678 (A167499 (n + 4) + (n + 8 : ℤ)).toNat

end

end A269682.P11618222402713209049

/-!
# A269683: Number of length-n 0..n arrays with no repeated value differing from the previous repeated value by plus or minus one modulo n+1.

The programs for A269683, there is no canonical definition to state claims against.
-/

/-! ## A269683.P3766232606301159733

`A269690(∑[4*n]+1)`
-/

namespace A269683.P3766232606301159733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269683.P3766232606301159733

/-! ## A269683.P4596436809486277441

`record[A003982(n)*A269690(n+1)]`
-/

namespace A269683.P4596436809486277441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A269690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269683.P4596436809486277441

/-! ## A269683.P10729777131841188666

`record[gcd(A114327(n), A269690(n+1))]`
-/

namespace A269683.P10729777131841188666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269683.P10729777131841188666

/-! ## A269683.P4183044327200413662

`gcd(A000038(n), A269690(A001844(n)))`
-/

namespace A269683.P4183044327200413662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269690 (A001844 n).toNat)

end

end A269683.P4183044327200413662

/-! ## A269683.P14773966357328582043

`lcm(A028310(n), A269690(A001844(n)))`
-/

namespace A269683.P14773966357328582043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A269690 (A001844 n).toNat)

end

end A269683.P14773966357328582043

/-!
# A269684: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 2+1.

The programs for A269684, the canonical program `A269684.P16578745510395572229` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269684 has offset 1).

The definition of A269684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269684.P12289446132275918557

`ogf((3-3x)/(1-4x+3x^2+2x^3))`
-/

namespace A269684.P12289446132275918557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3] [1, -4, 3, 2] n

end

end A269684.P12289446132275918557

namespace A269684

/-- `ogf((3-3x)/(1-4x+3x^2+2x^3))` -/
def P12289446132275918557.Spec : Prop :=
  ∀ n, P12289446132275918557.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P16578745510395572229

`4*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=9, a(2)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269684

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P16578745510395572229.Spec : Prop :=
  ∀ n, P16578745510395572229.a n = A269684 (n + 1)

theorem P16578745510395572229.correct : P16578745510395572229.Spec := by
  intro n
  simp only [A269684, Nat.add_sub_cancel]

end A269684

/-! ## A269684.P10901052724118229742

`3*A106514(n)`
-/

namespace A269684.P10901052724118229742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106514 n

end

end A269684.P10901052724118229742

namespace A269684

/-- `3*A106514(n)` -/
def P10901052724118229742.Spec : Prop :=
  ∀ n, P10901052724118229742.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P9002346998056413391

`∑[3*A156664(n)]`
-/

namespace A269684.P9002346998056413391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A156664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269684.P9002346998056413391

namespace A269684

/-- `∑[3*A156664(n)]` -/
def P9002346998056413391.Spec : Prop :=
  ∀ n, P9002346998056413391.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P15448729631037615388

`Δ[3*A094706(n)]`
-/

namespace A269684.P15448729631037615388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269684.P15448729631037615388

namespace A269684

/-- `Δ[3*A094706(n)]` -/
def P15448729631037615388.Spec : Prop :=
  ∀ n, P15448729631037615388.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P11984366407343595552

`3*Δ[A094723(n)-2^n]`
-/

namespace A269684.P11984366407343595552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A269684.P11984366407343595552

namespace A269684

/-- `3*Δ[A094723(n)-2^n]` -/
def P11984366407343595552.Spec : Prop :=
  ∀ n, P11984366407343595552.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P6134455183682066373

`3*∑[A052542(n+1)-2^n]`
-/

namespace A269684.P6134455183682066373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269684.P6134455183682066373

namespace A269684

/-- `3*∑[A052542(n+1)-2^n]` -/
def P6134455183682066373.Spec : Prop :=
  ∀ n, P6134455183682066373.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P6040241792027983433

`3*∑[A094723(n)-A000129(n)]`
-/

namespace A269684.P6040241792027983433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269684.P6040241792027983433

namespace A269684

/-- `3*∑[A094723(n)-A000129(n)]` -/
def P6040241792027983433.Spec : Prop :=
  ∀ n, P6040241792027983433.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P9362014028072779521

`3*Δ[A000129(n+2)-A000079(n+1)]`
-/

namespace A269684.P9362014028072779521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A269684.P9362014028072779521

namespace A269684

/-- `3*Δ[A000129(n+2)-A000079(n+1)]` -/
def P9362014028072779521.Spec : Prop :=
  ∀ n, P9362014028072779521.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P2136895651548559862

`A106514(n+1)+A094706(n)-A000129(n)`
-/

namespace A269684.P2136895651548559862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 (n + 1) + (A094706 n - A000129 n)

end

end A269684.P2136895651548559862

namespace A269684

/-- `A106514(n+1)+A094706(n)-A000129(n)` -/
def P2136895651548559862.Spec : Prop :=
  ∀ n, P2136895651548559862.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P9472225152425662541

`A000129(n+1)+A106514(n)+A094706(n+1)`
-/

namespace A269684.P9472225152425662541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A106514 n + A094706 (n + 1))

end

end A269684.P9472225152425662541

namespace A269684

/-- `A000129(n+1)+A106514(n)+A094706(n+1)` -/
def P9472225152425662541.Spec : Prop :=
  ∀ n, P9472225152425662541.a n = A269684 (n + 1)

end A269684

/-! ## A269684.P17707410072879257354

`A106514(n+1)+A106514(n)-A001333(n+1)`
-/

namespace A269684.P17707410072879257354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106514 (n + 1) + (A106514 n - A001333 (n + 1))

end

end A269684.P17707410072879257354

namespace A269684

/-- `A106514(n+1)+A106514(n)-A001333(n+1)` -/
def P17707410072879257354.Spec : Prop :=
  ∀ n, P17707410072879257354.a n = A269684 (n + 1)

end A269684

/-!
# A269685: Number of length-n 0..3 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 3+1.

The programs for A269685, the canonical program `A269685.P8607323479375273820` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269685 has offset 1).

The definition of A269685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269685.P6213367678711771061

`ogf((4-8x-4x^2)/(1-6x+7x^2+6x^3))`
-/

namespace A269685.P6213367678711771061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8, -4] [1, -6, 7, 6] n

end

end A269685.P6213367678711771061

namespace A269685

/-- `ogf((4-8x-4x^2)/(1-6x+7x^2+6x^3))` -/
def P6213367678711771061.Spec : Prop :=
  ∀ n, P6213367678711771061.a n = A269685 (n + 1)

end A269685

/-! ## A269685.P8607323479375273820

`6*a(n-1)-7*a(n-2)-6*a(n-3)` with `a(0)=4, a(1)=16, a(2)=64`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269685

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)` -/
def P8607323479375273820.Spec : Prop :=
  ∀ n, P8607323479375273820.a n = A269685 (n + 1)

theorem P8607323479375273820.correct : P8607323479375273820.Spec := by
  intro n
  simp only [A269685, Nat.add_sub_cancel]

end A269685

/-! ## A269685.P5524646727549146415

`Δ[A007482(n+1)-A008776(n)]`
-/

namespace A269685.P5524646727549146415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 (n + 1) - A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269685.P5524646727549146415

namespace A269685

/-- `Δ[A007482(n+1)-A008776(n)]` -/
def P5524646727549146415.Spec : Prop :=
  ∀ n, P5524646727549146415.a n = A269685 (n + 1)

end A269685

/-! ## A269685.P14877212249843713516

`2*(A055099(n+1)-A008776(n))`
-/

namespace A269685.P14877212249843713516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055099 (n + 1) - A008776 n)

end

end A269685.P14877212249843713516

namespace A269685

/-- `2*(A055099(n+1)-A008776(n))` -/
def P14877212249843713516.Spec : Prop :=
  ∀ n, P14877212249843713516.a n = A269685 (n + 1)

end A269685

/-! ## A269685.P10476232465443299113

`2*A055099(n+1)-A003946(n+1)`
-/

namespace A269685.P10476232465443299113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 (n + 1) - A003946 (n + 1)

end

end A269685.P10476232465443299113

namespace A269685

/-- `2*A055099(n+1)-A003946(n+1)` -/
def P10476232465443299113.Spec : Prop :=
  ∀ n, P10476232465443299113.a n = A269685 (n + 1)

end A269685

/-! ## A269685.P15758052149482060310

`A269690(∑[n+3]+1)`
-/

namespace A269685.P15758052149482060310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269685.P15758052149482060310

namespace A269685

/-- `A269690(∑[n+3]+1)` -/
def P15758052149482060310.Spec : Prop :=
  ∀ n, P15758052149482060310.a n = A269685 (n + 1)

end A269685

/-!
# A269686: Number of length-n 0..4 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 4+1.

The programs for A269686, the canonical program `A269686.P15524047986623488467` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269686 has offset 1).

The definition of A269686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269686.P15524047986623488467

`8*a(n-1)-13*a(n-2)-12*a(n-3)` with `a(0)=5, a(1)=25, a(2)=125`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269686

/-- `8*a(n-1)-13*a(n-2)-12*a(n-3)` -/
def P15524047986623488467.Spec : Prop :=
  ∀ n, P15524047986623488467.a n = A269686 (n + 1)

theorem P15524047986623488467.correct : P15524047986623488467.Spec := by
  intro n
  simp only [A269686, Nat.add_sub_cancel]

end A269686

/-! ## A269686.P3334200385362492643

`A269690(A027379(n+2))`
-/

namespace A269686.P3334200385362492643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A027379 (n + 2)).toNat

end

end A269686.P3334200385362492643

namespace A269686

/-- `A269690(A027379(n+2))` -/
def P3334200385362492643.Spec : Prop :=
  ∀ n, P3334200385362492643.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P3452135984846842000

`A269690(A055998(n+2))`
-/

namespace A269686.P3452135984846842000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055998 (n + 2)).toNat

end

end A269686.P3452135984846842000

namespace A269686

/-- `A269690(A055998(n+2))` -/
def P3452135984846842000.Spec : Prop :=
  ∀ n, P3452135984846842000.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P10664154399708689568

`A269690(A155212(n)+5)`
-/

namespace A269686.P10664154399708689568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A155212 n + 5).toNat

end

end A269686.P10664154399708689568

namespace A269686

/-- `A269690(A155212(n)+5)` -/
def P10664154399708689568.Spec : Prop :=
  ∀ n, P10664154399708689568.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P666434092960539188

`A269690(A056000(n)+7)`
-/

namespace A269686.P666434092960539188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A056000 n + 7).toNat

end

end A269686.P666434092960539188

namespace A269686

/-- `A269690(A056000(n)+7)` -/
def P666434092960539188.Spec : Prop :=
  ∀ n, P666434092960539188.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P10819833212070152490

`A269690(Δ[A034857(n+1)])`
-/

namespace A269686.P10819833212070152490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (f1 (n + 1) - f1 n).toNat

end

end A269686.P10819833212070152490

namespace A269686

/-- `A269690(Δ[A034857(n+1)])` -/
def P10819833212070152490.Spec : Prop :=
  ∀ n, P10819833212070152490.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P13912024026820246700

`A269690(A052905(n+1)+2)`
-/

namespace A269686.P13912024026820246700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A052905 (n + 1) + 2).toNat

end

end A269686.P13912024026820246700

namespace A269686

/-- `A269690(A052905(n+1)+2)` -/
def P13912024026820246700.Spec : Prop :=
  ∀ n, P13912024026820246700.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P7946422966262518713

`A269690(A104675(n+1)/2)`
-/

namespace A269686.P7946422966262518713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (SequenceMachineLib.roundAway ((A104675 (n + 1) : ℚ) / 2)).toNat

end

end A269686.P7946422966262518713

namespace A269686

/-- `A269690(A104675(n+1)/2)` -/
def P7946422966262518713.Spec : Prop :=
  ∀ n, P7946422966262518713.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P9771547412463748844

`A269690(A167499(n)+A016777(n))`
-/

namespace A269686.P9771547412463748844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A167499 n + A016777 n).toNat

end

end A269686.P9771547412463748844

namespace A269686

/-- `A269690(A167499(n)+A016777(n))` -/
def P9771547412463748844.Spec : Prop :=
  ∀ n, P9771547412463748844.a n = A269686 (n + 1)

end A269686

/-! ## A269686.P7518523459364844069

`A269690(A104675(n)-A046691(n))`
-/

namespace A269686.P7518523459364844069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A104675 n - A046691 n).toNat

end

end A269686.P7518523459364844069

namespace A269686

/-- `A269690(A104675(n)-A046691(n))` -/
def P7518523459364844069.Spec : Prop :=
  ∀ n, P7518523459364844069.a n = A269686 (n + 1)

end A269686

/-!
# A269687: Number of length-n 0..5 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 5+1.

The programs for A269687, the canonical program `A269687.P15072260034128072859` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269687 has offset 1).

The definition of A269687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269687.P15072260034128072859

`10*a(n-1)-21*a(n-2)-20*a(n-3)` with `a(0)=6, a(1)=36, a(2)=216`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269687

/-- `10*a(n-1)-21*a(n-2)-20*a(n-3)` -/
def P15072260034128072859.Spec : Prop :=
  ∀ n, P15072260034128072859.a n = A269687 (n + 1)

theorem P15072260034128072859.correct : P15072260034128072859.Spec := by
  intro n
  simp only [A269687, Nat.add_sub_cancel]

end A269687

/-! ## A269687.P17229382883172786295

`A269690(n+7+∑[n+4])`
-/

namespace A269687.P17229382883172786295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 7 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269687.P17229382883172786295

namespace A269687

/-- `A269690(n+7+∑[n+4])` -/
def P17229382883172786295.Spec : Prop :=
  ∀ n, P17229382883172786295.a n = A269687 (n + 1)

end A269687

/-! ## A269687.P17652973749400644871

`lcm(2, A269690(A046691(n+3)))`
-/

namespace A269687.P17652973749400644871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269690 (A046691 (n + 3)).toNat)

end

end A269687.P17652973749400644871

namespace A269687

/-- `lcm(2, A269690(A046691(n+3)))` -/
def P17652973749400644871.Spec : Prop :=
  ∀ n, (P17652973749400644871.a n : ℤ) = A269687 (n + 1)

end A269687

/-! ## A269687.P5630885281287412529

`A269690(A046691(n+3))%Δ[A034513(n)]`
-/

namespace A269687.P5630885281287412529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269690 (A046691 (n + 3)).toNat) (f1 (n + 1) - f1 n)

end

end A269687.P5630885281287412529

namespace A269687

/-- `A269690(A046691(n+3))%Δ[A034513(n)]` -/
def P5630885281287412529.Spec : Prop :=
  ∀ n, P5630885281287412529.a n = A269687 (n + 1)

end A269687

/-! ## A269687.P9838328456074727453

`lcm(3, A269690(A005408(n)+A055999(n)+10))`
-/

namespace A269687.P9838328456074727453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269690 (A005408 n + (A055999 n + 10)).toNat)

end

end A269687.P9838328456074727453

namespace A269687

/-- `lcm(3, A269690(A005408(n)+A055999(n)+10))` -/
def P9838328456074727453.Spec : Prop :=
  ∀ n, (P9838328456074727453.a n : ℤ) = A269687 (n + 1)

end A269687

/-! ## A269687.P1005358791118188086

`or(A000038(n), A269690(A000124(n+5)-5))`
-/

namespace A269687.P1005358791118188086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A269690 (A000124 (n + 5) - 5).toNat)

end

end A269687.P1005358791118188086

namespace A269687

/-- `or(A000038(n), A269690(A000124(n+5)-5))` -/
def P1005358791118188086.Spec : Prop :=
  ∀ n, P1005358791118188086.a n = A269687 (n + 1)

end A269687

/-! ## A269687.P16515753601383325666

`A000045(A020639(2*(n+1)))*A269690(A046691(n+3))`
-/

namespace A269687.P16515753601383325666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A269690 (A046691 (n + 3)).toNat

end

end A269687.P16515753601383325666

namespace A269687

/-- `A000045(A020639(2*(n+1)))*A269690(A046691(n+3))` -/
def P16515753601383325666.Spec : Prop :=
  ∀ n, P16515753601383325666.a n = A269687 (n + 1)

end A269687

/-!
# A269688: Number of length-n 0..6 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 6+1.

The programs for A269688, the canonical program `A269688.P4660659063412084423` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269688 has offset 1).

The definition of A269688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269688.P4660659063412084423

`12*a(n-1)-31*a(n-2)-30*a(n-3)` with `a(0)=7, a(1)=49, a(2)=343`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269688

/-- `12*a(n-1)-31*a(n-2)-30*a(n-3)` -/
def P4660659063412084423.Spec : Prop :=
  ∀ n, P4660659063412084423.a n = A269688 (n + 1)

theorem P4660659063412084423.correct : P4660659063412084423.Spec := by
  intro n
  simp only [A269688, Nat.add_sub_cancel]

end A269688

/-! ## A269688.P10644839786606858754

`A269690(A052905(n+3))`
-/

namespace A269688.P10644839786606858754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A052905 (n + 3)).toNat

end

end A269688.P10644839786606858754

namespace A269688

/-- `A269690(A052905(n+3))` -/
def P10644839786606858754.Spec : Prop :=
  ∀ n, P10644839786606858754.a n = A269688 (n + 1)

end A269688

/-! ## A269688.P3196542353289899218

`A269690(A000096(n+5)-4)`
-/

namespace A269688.P3196542353289899218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000096 (n + 5) - 4).toNat

end

end A269688.P3196542353289899218

namespace A269688

/-- `A269690(A000096(n+5)-4)` -/
def P3196542353289899218.Spec : Prop :=
  ∀ n, P3196542353289899218.a n = A269688 (n + 1)

end A269688

/-! ## A269688.P2780222507985713226

`A269690(A000217(n+6)-5)`
-/

namespace A269688.P2780222507985713226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000217 (n + 6) - 5).toNat

end

end A269688.P2780222507985713226

namespace A269688

/-- `A269690(A000217(n+6)-5)` -/
def P2780222507985713226.Spec : Prop :=
  ∀ n, P2780222507985713226.a n = A269688 (n + 1)

end A269688

/-! ## A269688.P13508707742198193319

`A269690(A000124(n+6)-6)`
-/

namespace A269688.P13508707742198193319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000124 (n + 6) - 6).toNat

end

end A269688.P13508707742198193319

namespace A269688

/-- `A269690(A000124(n+6)-6)` -/
def P13508707742198193319.Spec : Prop :=
  ∀ n, P13508707742198193319.a n = A269688 (n + 1)

end A269688

/-! ## A269688.P3664337781670509771

`A269690(A167614(n+5)-8)`
-/

namespace A269688.P3664337781670509771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A167614 (n + 5) - 8).toNat

end

end A269688.P3664337781670509771

namespace A269688

/-- `A269690(A167614(n+5)-8)` -/
def P3664337781670509771.Spec : Prop :=
  ∀ n, P3664337781670509771.a n = A269688 (n + 1)

end A269688

/-!
# A269689: Number of length-n 0..7 arrays with no repeated value differing from the previous repeated value by plus or minus one modulo 7+1.

The programs for A269689, the canonical program `A269689.P13303537573144435380` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269689 has offset 1).

The definition of A269689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269689.P13303537573144435380

`14*a(n-1)-43*a(n-2)-42*a(n-3)` with `a(0)=8, a(1)=64, a(2)=512`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269689

/-- `14*a(n-1)-43*a(n-2)-42*a(n-3)` -/
def P13303537573144435380.Spec : Prop :=
  ∀ n, P13303537573144435380.a n = A269689 (n + 1)

theorem P13303537573144435380.correct : P13303537573144435380.Spec := by
  intro n
  simp only [A269689, Nat.add_sub_cancel]

end A269689

/-! ## A269689.P13253565675585520871

`A269690(A055999(n+4))`
-/

namespace A269689.P13253565675585520871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055999 (n + 4)).toNat

end

end A269689.P13253565675585520871

namespace A269689

/-- `A269690(A055999(n+4))` -/
def P13253565675585520871.Spec : Prop :=
  ∀ n, P13253565675585520871.a n = A269689 (n + 1)

end A269689

/-! ## A269689.P8985937700875387907

`A269690(A055998(n+5)-3)`
-/

namespace A269689.P8985937700875387907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055998 (n + 5) - 3).toNat

end

end A269689.P8985937700875387907

namespace A269689

/-- `A269690(A055998(n+5)-3)` -/
def P8985937700875387907.Spec : Prop :=
  ∀ n, P8985937700875387907.a n = A269689 (n + 1)

end A269689

/-! ## A269689.P9979897432850689007

`A269690(A000124(n+7)-7)`
-/

namespace A269689.P9979897432850689007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000124 (n + 7) - 7).toNat

end

end A269689.P9979897432850689007

namespace A269689

/-- `A269690(A000124(n+7)-7)` -/
def P9979897432850689007.Spec : Prop :=
  ∀ n, P9979897432850689007.a n = A269689 (n + 1)

end A269689

/-! ## A269689.P1594547890137185825

`A269690(eq[8, A004736(n+1)]-(n+6))`
-/

namespace A269689.P1594547890137185825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 6))

end

end A269689.P1594547890137185825

namespace A269689

/-- `A269690(eq[8, A004736(n+1)]-(n+6))` -/
def P1594547890137185825.Spec : Prop :=
  ∀ n, P1594547890137185825.a n = A269689 (n + 1)

end A269689

/-! ## A269689.P14205510897021383975

`A269690(A005408(n+3)+A000217(n+5))`
-/

namespace A269689.P14205510897021383975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A269689.P14205510897021383975

namespace A269689

/-- `A269690(A005408(n+3)+A000217(n+5))` -/
def P14205510897021383975.Spec : Prop :=
  ∀ n, P14205510897021383975.a n = A269689 (n + 1)

end A269689

/-!
# A269690: T(n,k)=Number of length-n 0..k arrays with no repeated value differing from the previous repeated value by plus or minus one modulo k+1.

The programs for A269690, there is no canonical definition to state claims against.
-/

/-! ## A269690.P10351920664627387777

`A269494(n+1)-A198316(A143632(n))`
-/

namespace A269690.P10351920664627387777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) - A198316 (A143632 n).toNat

end

end A269690.P10351920664627387777

/-! ## A269690.P3067657772725168827

`A269494(n+1)-A010893(A024462(n))`
-/

namespace A269690.P3067657772725168827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) - A010893 ((A024462 n).toNat + 13)

end

end A269690.P3067657772725168827

/-! ## A269690.P5326786442593184412

`A269776(n+1)-A067898(A217304(n))`
-/

namespace A269690.P5326786442593184412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (n + 1) - A067898 (A217304 n).toNat

end

end A269690.P5326786442593184412

/-! ## A269690.P10607811528402121265

`A269494(n+1)-A186745(A105868(n))`
-/

namespace A269690.P10607811528402121265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) - A186745 (A105868 n).toNat

end

end A269690.P10607811528402121265

/-! ## A269690.P3737341257426239840

`A269494(n+1)-A002266(A185213(n))`
-/

namespace A269690.P3737341257426239840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) - A002266 (A185213 n).toNat

end

end A269690.P3737341257426239840

/-!
# A269691: Number of length-5 0..n arrays with no repeated value differing from the previous repeated value by plus or minus one modulo n+1.

The programs for A269691, there is no canonical definition to state claims against.
-/

/-! ## A269691.P1599356932600087987

`A269690(A167499(n+3))`
-/

namespace A269691.P1599356932600087987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A167499 (n + 3)).toNat

end

end A269691.P1599356932600087987

/-! ## A269691.P9138011291811954434

`A269690(A000124(n+4)+4)`
-/

namespace A269691.P9138011291811954434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000124 (n + 4) + 4).toNat

end

end A269691.P9138011291811954434

/-! ## A269691.P11589130973795344570

`A269690(A000217(n+4)+5)`
-/

namespace A269691.P11589130973795344570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000217 (n + 4) + 5).toNat

end

end A269691.P11589130973795344570

/-! ## A269691.P8622200321517348357

`A269690(A055998(n+2)+8)`
-/

namespace A269691.P8622200321517348357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055998 (n + 2) + 8).toNat

end

end A269691.P8622200321517348357

/-! ## A269691.P14652498478697260639

`A269690(A046691(n+2)+9)`
-/

namespace A269691.P14652498478697260639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A046691 (n + 2) + 9).toNat

end

end A269691.P14652498478697260639

/-!
# A269692: Number of length-6 0..n arrays with no repeated value differing from the previous repeated value by plus or minus one modulo n+1.

The programs for A269692, there is no canonical definition to state claims against.
-/

/-! ## A269692.P8809983016804585722

`A269690(A166136(n+4))`
-/

namespace A269692.P8809983016804585722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A166136 (n + 4)).toNat

end

end A269692.P8809983016804585722

/-! ## A269692.P17689873331735706956

`A269690(A056115(n)+21)`
-/

namespace A269692.P17689873331735706956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A056115 n + 21).toNat

end

end A269692.P17689873331735706956

/-! ## A269692.P1150914833705726831

`A269690(A167499(n+4)+1)`
-/

namespace A269692.P1150914833705726831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A167499 (n + 4) + 1).toNat

end

end A269692.P1150914833705726831

/-! ## A269692.P1699178965036345396

`A269690(A000124(n+5)+5)`
-/

namespace A269692.P1699178965036345396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000124 (n + 5) + 5).toNat

end

end A269692.P1699178965036345396

/-! ## A269692.P5943389833524559697

`A269690(A000217(n+5)+6)`
-/

namespace A269692.P5943389833524559697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000217 (n + 5) + 6).toNat

end

end A269692.P5943389833524559697

/-! ## A269692.P1769444796153280519

`A269690(A161680(n+6)+6)`
-/

namespace A269692.P1769444796153280519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A161680 (n + 6) + 6).toNat

end

end A269692.P1769444796153280519

/-! ## A269692.P17425916186000900589

`A269690(A055999(n+4)-(2*n+1))`
-/

namespace A269692.P17425916186000900589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A269692.P17425916186000900589

/-!
# A269693: Number of length-7 0..n arrays with no repeated value differing from the previous repeated value by plus or minus one modulo n+1.

The programs for A269693, there is no canonical definition to state claims against.
-/

/-! ## A269693.P16499918077734846728

`A269690(A056119(n)+28)`
-/

namespace A269693.P16499918077734846728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A056119 n + 28).toNat

end

end A269693.P16499918077734846728

/-! ## A269693.P3484249180717818817

`A269690(A000124(n+6)+6)`
-/

namespace A269693.P3484249180717818817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000124 (n + 6) + 6).toNat

end

end A269693.P3484249180717818817

/-! ## A269693.P6906745175427102024

`A269690(A000096(n+5)+8)`
-/

namespace A269693.P6906745175427102024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000096 (n + 5) + 8).toNat

end

end A269693.P6906745175427102024

/-! ## A269693.P12362113473271863149

`A269690(A000217(n+6)+7)`
-/

namespace A269693.P12362113473271863149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A000217 (n + 6) + 7).toNat

end

end A269693.P12362113473271863149

/-! ## A269693.P3060326752180720764

`A269690(A055998(n+4)+10)`
-/

namespace A269693.P3060326752180720764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (A055998 (n + 4) + 10).toNat

end

end A269693.P3060326752180720764

/-!
# A269694: Product of first n nonzero Jacobsthal numbers (A001045).

The programs for A269694, there is no canonical definition to state claims against.
-/

/-! ## A269694.P4099776178531866315

`abs(A015013(n+1))`
-/

namespace A269694.P4099776178531866315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015013 (n + 1)|

end

end A269694.P4099776178531866315

/-! ## A269694.P543166802626178387

`∏[abs(∑[(-2)^n])]`
-/

namespace A269694.P543166802626178387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A269694.P543166802626178387

/-! ## A269694.P9246590519997498116

`lcm((-1)^n, ∏[∑[(-2)^n]])`
-/

namespace A269694.P9246590519997498116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A269694.P9246590519997498116

/-! ## A269694.P151766139408447015

`abs(∏[1-2*a(n-1)])` with `a(0)=1`
-/

namespace A269694.P151766139408447015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A269694.P151766139408447015

/-! ## A269694.P978292756321329936

`abs(∑[(-2)^n])*a(n-1)` with `a(0)=1`
-/

namespace A269694.P978292756321329936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |∑ j ∈ Finset.range (n + 1), f1 j| * a (n - 1)

end

end A269694.P978292756321329936

/-!
# A269695: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A269695, the canonical program `A269695.P2294604688630354156` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269695 has offset 0).

The definition of A269695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269695.P2294604688630354156

`4*a(and(n, n-2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269695

/-- `4*a(and(n, n-2))` -/
def P2294604688630354156.Spec : Prop :=
  ∀ n, (P2294604688630354156.a n : ℤ) = A269695 n

theorem P2294604688630354156.correct : P2294604688630354156.Spec := by
  intro n
  simp only [A269695]

end A269695

/-! ## A269695.P8674730665679718898

`A269698(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269695.P8674730665679718898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269698 (n - 1) + a (n - 1)

end

end A269695.P8674730665679718898

namespace A269695

/-- `A269698(n-1)+a(n-1)` -/
def P8674730665679718898.Spec : Prop :=
  ∀ n, P8674730665679718898.a n = A269695 n

end A269695

/-! ## A269695.P17785565200779934926

`A000695(A071044(n))`
-/

namespace A269695.P17785565200779934926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A071044 n).toNat

end

end A269695.P17785565200779934926

namespace A269695

/-- `A000695(A071044(n))` -/
def P17785565200779934926.Spec : Prop :=
  ∀ n, P17785565200779934926.a n = A269695 n

end A269695

/-! ## A269695.P2645275034057927056

`or(A001316(n)², A060632(n)²)`
-/

namespace A269695.P2645275034057927056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001316 n ^ 2) (A060632 n ^ 2)

end

end A269695.P2645275034057927056

namespace A269695

/-- `or(A001316(n)², A060632(n)²)` -/
def P2645275034057927056.Spec : Prop :=
  ∀ n, P2645275034057927056.a n = A269695 n

end A269695

/-! ## A269695.P7504230890076076303

`∑[A269698(n)]+1-A269698(n)`
-/

namespace A269695.P7504230890076076303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A269698 n)

end

end A269695.P7504230890076076303

namespace A269695

/-- `∑[A269698(n)]+1-A269698(n)` -/
def P7504230890076076303.Spec : Prop :=
  ∀ n, P7504230890076076303.a n = A269695 n

end A269695

/-! ## A269695.P8626235731114923032

`or(A102376(floor(n/2)), A102376(n))`
-/

namespace A269695.P8626235731114923032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102376 ⌊(n : ℚ) / 2⌋.toNat) (A102376 n)

end

end A269695.P8626235731114923032

namespace A269695

/-- `or(A102376(floor(n/2)), A102376(n))` -/
def P8626235731114923032.Spec : Prop :=
  ∀ n, P8626235731114923032.a n = A269695 n

end A269695

/-! ## A269695.P9187208986271125664

`A000695(3^(n%2)*A060632(n))`
-/

namespace A269695.P9187208986271125664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 ((3 ^ (n % 2) : ℤ) * A060632 n).toNat

end

end A269695.P9187208986271125664

namespace A269695

/-- `A000695(3^(n%2)*A060632(n))` -/
def P9187208986271125664.Spec : Prop :=
  ∀ n, P9187208986271125664.a n = A269695 n

end A269695

/-! ## A269695.P1431666854939664494

`∑{d}[n+1, A019590(#)*A102376((n+1)/#-1)]`
-/

namespace A269695.P1431666854939664494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A102376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A269695.P1431666854939664494

namespace A269695

/-- `∑{d}[n+1, A019590(#)*A102376((n+1)/#-1)]` -/
def P1431666854939664494.Spec : Prop :=
  ∀ n, P1431666854939664494.a n = A269695 n

end A269695

/-! ## A269695.P13595621341320852714

`A000695(2*A001316(n)-A060632(n))`
-/

namespace A269695.P13595621341320852714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (2 * A001316 n - A060632 n).toNat

end

end A269695.P13595621341320852714

namespace A269695

/-- `A000695(2*A001316(n)-A060632(n))` -/
def P13595621341320852714.Spec : Prop :=
  ∀ n, P13595621341320852714.a n = A269695 n

end A269695

/-! ## A269695.P9271299432113700446

`A000695(A001316(n)+A001316(n)-A060632(n))`
-/

namespace A269695.P9271299432113700446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A001316 n + (A001316 n - A060632 n)).toNat

end

end A269695.P9271299432113700446

namespace A269695

/-- `A000695(A001316(n)+A001316(n)-A060632(n))` -/
def P9271299432113700446.Spec : Prop :=
  ∀ n, P9271299432113700446.a n = A269695 n

end A269695

/-! ## A269695.P9224988080023925572

`A000695(A001316(n)-(A060632(n)-A001316(n)))`
-/

namespace A269695.P9224988080023925572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A001316 n - (A060632 n - A001316 n)).toNat

end

end A269695.P9224988080023925572

namespace A269695

/-- `A000695(A001316(n)-(A060632(n)-A001316(n)))` -/
def P9224988080023925572.Spec : Prop :=
  ∀ n, P9224988080023925572.a n = A269695 n

end A269695

/-! ## A269695.P11741497912790941558

`A269697(n+1)-(A269698(n)+A269697(n))`
-/

namespace A269695.P11741497912790941558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (n + 1) - (A269698 n + A269697 n)

end

end A269695.P11741497912790941558

namespace A269695

/-- `A269697(n+1)-(A269698(n)+A269697(n))` -/
def P11741497912790941558.Spec : Prop :=
  ∀ n, P11741497912790941558.a n = A269695 n

end A269695

/-! ## A269695.P1576894296254199181

`A270286(2*n)`
-/

namespace A269695.P1576894296254199181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 (2 * n)

end

end A269695.P1576894296254199181

namespace A269695

/-- `A270286(2*n)` -/
def P1576894296254199181.Spec : Prop :=
  ∀ n, P1576894296254199181.a n = A269695 n

end A269695

/-! ## A269695.P8884581401322789555

`A270288(2*n+1)-(A270289(2*n)+A270288(2*n))`
-/

namespace A269695.P8884581401322789555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270288 (2 * n + 1) - (A270289 (2 * n) + A270288 (2 * n))

end

end A269695.P8884581401322789555

namespace A269695

/-- `A270288(2*n+1)-(A270289(2*n)+A270288(2*n))` -/
def P8884581401322789555.Spec : Prop :=
  ∀ n, P8884581401322789555.a n = A269695 n

end A269695

/-! ## A269695.P1494628786355886243

`A235201(A160797(n+1))`
-/

namespace A269695.P1494628786355886243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A160797 (n + 1)).toNat

end

end A269695.P1494628786355886243

namespace A269695

/-- `A235201(A160797(n+1))` -/
def P1494628786355886243.Spec : Prop :=
  ∀ n, P1494628786355886243.a n = A269695 n

end A269695

/-! ## A269695.P3149804335610464414

`A087808(A071044(n)²)`
-/

namespace A269695.P3149804335610464414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A071044 n ^ 2).toNat

end

end A269695.P3149804335610464414

namespace A269695

/-- `A087808(A071044(n)²)` -/
def P3149804335610464414.Spec : Prop :=
  ∀ n, P3149804335610464414.a n = A269695 n

end A269695

/-! ## A269695.P11941518791611149809

`A140472(A071044(n)²)`
-/

namespace A269695.P11941518791611149809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A071044 n ^ 2).toNat

end

end A269695.P11941518791611149809

namespace A269695

/-- `A140472(A071044(n)²)` -/
def P11941518791611149809.Spec : Prop :=
  ∀ n, P11941518791611149809.a n = A269695 n

end A269695

/-! ## A269695.P16142414033510889415

`A264977(A071044(n)²)`
-/

namespace A269695.P16142414033510889415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (A071044 n ^ 2).toNat

end

end A269695.P16142414033510889415

namespace A269695

/-- `A264977(A071044(n)²)` -/
def P16142414033510889415.Spec : Prop :=
  ∀ n, P16142414033510889415.a n = A269695 n

end A269695

/-! ## A269695.P1641445495873172062

`A305211(A071044(n)²)`
-/

namespace A269695.P1641445495873172062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A071044 n ^ 2).toNat

end

end A269695.P1641445495873172062

namespace A269695

/-- `A305211(A071044(n)²)` -/
def P1641445495873172062.Spec : Prop :=
  ∀ n, P1641445495873172062.a n = A269695 n

end A269695

/-! ## A269695.P15695058078463421931

`A072650(A164032(n+1))`
-/

namespace A269695.P15695058078463421931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A164032 (n + 1)).toNat

end

end A269695.P15695058078463421931

namespace A269695

/-- `A072650(A164032(n+1))` -/
def P15695058078463421931.Spec : Prop :=
  ∀ n, P15695058078463421931.a n = A269695 n

end A269695

/-!
# A269697: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A269697, the canonical program `A269697.P10663960452558888368` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269697 has offset 0).

The definition of A269697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269697.P10663960452558888368

`∑[4*a(and(n, n-2))]` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269697

/-- `∑[4*a(and(n, n-2))]` -/
def P10663960452558888368.Spec : Prop :=
  ∀ n, (P10663960452558888368.a n : ℤ) = A269697 n

theorem P10663960452558888368.correct : P10663960452558888368.Spec := by
  intro n
  simp only [A269697]

end A269697

/-! ## A269697.P2555491077483914966

`∑[A269695(n)]`
-/

namespace A269697.P2555491077483914966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P2555491077483914966

namespace A269697

/-- `∑[A269695(n)]` -/
def P2555491077483914966.Spec : Prop :=
  ∀ n, P2555491077483914966.a n = A269697 n

theorem P2555491077483914966.correct : P2555491077483914966.Spec := by
  intro n
  simp only [A269697, Nat.add_sub_cancel, A269697.P2555491077483914966.f1, A269697.P2555491077483914966.a, A269697.P10663960452558888368.f1, A269697.P10663960452558888368.a, A269695, A269695.P2294604688630354156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269697

/-! ## A269697.P2397868405669354565

`∑[A269698(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A269697.P2397868405669354565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269698 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P2397868405669354565

namespace A269697

/-- `∑[A269698(n-1)+a(n-1)]` -/
def P2397868405669354565.Spec : Prop :=
  ∀ n, P2397868405669354565.a n = A269697 n

end A269697

/-! ## A269697.P6505897633987874547

`A269695(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A269697.P6505897633987874547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269695 (n % (n + 1)) + a (n - 1)

end

end A269697.P6505897633987874547

namespace A269697

/-- `A269695(n%(n+1))+a(n-1)` -/
def P6505897633987874547.Spec : Prop :=
  ∀ n, P6505897633987874547.a n = A269697 n

end A269697

/-! ## A269697.P17660727035005125183

`∑[A000695(A071044(n))]`
-/

namespace A269697.P17660727035005125183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A071044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P17660727035005125183

namespace A269697

/-- `∑[A000695(A071044(n))]` -/
def P17660727035005125183.Spec : Prop :=
  ∀ n, P17660727035005125183.a n = A269697 n

end A269697

/-! ## A269697.P2735598376557098469

`A116520(floor((n+1)/2))+A116520(n+1)`
-/

namespace A269697.P2735598376557098469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 ⌊(n + 1 : ℚ) / 2⌋.toNat + A116520 (n + 1)

end

end A269697.P2735598376557098469

namespace A269697

/-- `A116520(floor((n+1)/2))+A116520(n+1)` -/
def P2735598376557098469.Spec : Prop :=
  ∀ n, P2735598376557098469.a n = A269697 n

end A269697

/-! ## A269697.P17322333180949150317

`∑[A270286(2*n)]`
-/

namespace A269697.P17322333180949150317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P17322333180949150317

namespace A269697

/-- `∑[A270286(2*n)]` -/
def P17322333180949150317.Spec : Prop :=
  ∀ n, P17322333180949150317.a n = A269697 n

end A269697

/-! ## A269697.P5769181864163424043

`A270286(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A269697.P5769181864163424043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270286 (n + n) + a (n - 1)

end

end A269697.P5769181864163424043

namespace A269697

/-- `A270286(n+n)+a(n-1)` -/
def P5769181864163424043.Spec : Prop :=
  ∀ n, P5769181864163424043.a n = A269697 n

end A269697

/-! ## A269697.P4398237160351525345

`∑[A235201(A160797(n+1))]`
-/

namespace A269697.P4398237160351525345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A160797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P4398237160351525345

namespace A269697

/-- `∑[A235201(A160797(n+1))]` -/
def P4398237160351525345.Spec : Prop :=
  ∀ n, P4398237160351525345.a n = A269697 n

end A269697

/-! ## A269697.P2134477795999325663

`∑[A087808(A164032(n+1))]`
-/

namespace A269697.P2134477795999325663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A164032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269697.P2134477795999325663

namespace A269697

/-- `∑[A087808(A164032(n+1))]` -/
def P2134477795999325663.Spec : Prop :=
  ∀ n, P2134477795999325663.a n = A269697 n

end A269697

/-!
# A269698: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A269698, the canonical program `A269698.P6646130338595180368` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269698 has offset 0).

The definition of A269698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269698.P6646130338595180368

`Δ[4*a(and(n, n-2))]` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269698

/-- `Δ[4*a(and(n, n-2))]` -/
def P6646130338595180368.Spec : Prop :=
  ∀ n, P6646130338595180368.a n = A269698 n

theorem P6646130338595180368.correct : P6646130338595180368.Spec := by
  intro n
  simp only [A269698]

end A269698

/-! ## A269698.P3644846584230089297

`Δ[A000695(A071044(n))]`
-/

namespace A269698.P3644846584230089297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A071044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P3644846584230089297

namespace A269698

/-- `Δ[A000695(A071044(n))]` -/
def P3644846584230089297.Spec : Prop :=
  ∀ n, P3644846584230089297.a n = A269698 n

end A269698

/-! ## A269698.P3656105706639780969

`Δ[A269695(n)]`
-/

namespace A269698.P3656105706639780969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P3656105706639780969

namespace A269698

/-- `Δ[A269695(n)]` -/
def P3656105706639780969.Spec : Prop :=
  ∀ n, P3656105706639780969.a n = A269698 n

end A269698

/-! ## A269698.P7339832069705284392

`A269695(n+1)-A269695(n)`
-/

namespace A269698.P7339832069705284392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (n + 1) - A269695 n

end

end A269698.P7339832069705284392

namespace A269698

/-- `A269695(n+1)-A269695(n)` -/
def P7339832069705284392.Spec : Prop :=
  ∀ n, P7339832069705284392.a n = A269698 n

end A269698

/-! ## A269698.P3061304943073945320

`Δ[A270286(2*n)]`
-/

namespace A269698.P3061304943073945320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P3061304943073945320

namespace A269698

/-- `Δ[A270286(2*n)]` -/
def P3061304943073945320.Spec : Prop :=
  ∀ n, P3061304943073945320.a n = A269698 n

end A269698

/-! ## A269698.P6308709561558229566

`A270286(2*(n+1))-A270286(2*n)`
-/

namespace A269698.P6308709561558229566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270286 (2 * (n + 1)) - A270286 (2 * n)

end

end A269698.P6308709561558229566

namespace A269698

/-- `A270286(2*(n+1))-A270286(2*n)` -/
def P6308709561558229566.Spec : Prop :=
  ∀ n, P6308709561558229566.a n = A269698 n

end A269698

/-! ## A269698.P10317243399889664213

`A270289(2*n+1)+A270289(2*n)`
-/

namespace A269698.P10317243399889664213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270289 (2 * n + 1) + A270289 (2 * n)

end

end A269698.P10317243399889664213

namespace A269698

/-- `A270289(2*n+1)+A270289(2*n)` -/
def P10317243399889664213.Spec : Prop :=
  ∀ n, P10317243399889664213.a n = A269698 n

end A269698

/-! ## A269698.P1065782550871724314

`Δ[A087808(A071044(n)²)]`
-/

namespace A269698.P1065782550871724314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A071044 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P1065782550871724314

namespace A269698

/-- `Δ[A087808(A071044(n)²)]` -/
def P1065782550871724314.Spec : Prop :=
  ∀ n, P1065782550871724314.a n = A269698 n

end A269698

/-! ## A269698.P18364605108584159820

`Δ[A140472(A071044(n)²)]`
-/

namespace A269698.P18364605108584159820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A071044 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P18364605108584159820

namespace A269698

/-- `Δ[A140472(A071044(n)²)]` -/
def P18364605108584159820.Spec : Prop :=
  ∀ n, P18364605108584159820.a n = A269698 n

end A269698

/-! ## A269698.P2802149465052316346

`Δ[A264977(A071044(n)²)]`
-/

namespace A269698.P2802149465052316346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 (A071044 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P2802149465052316346

namespace A269698

/-- `Δ[A264977(A071044(n)²)]` -/
def P2802149465052316346.Spec : Prop :=
  ∀ n, P2802149465052316346.a n = A269698 n

end A269698

/-! ## A269698.P15216806547702535441

`Δ[A305211(A071044(n)²)]`
-/

namespace A269698.P15216806547702535441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A071044 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269698.P15216806547702535441

namespace A269698

/-- `Δ[A305211(A071044(n)²)]` -/
def P15216806547702535441.Spec : Prop :=
  ∀ n, P15216806547702535441.a n = A269698 n

end A269698

