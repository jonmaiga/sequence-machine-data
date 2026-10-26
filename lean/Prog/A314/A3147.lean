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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A314700: Coordination sequence Gal.6.384.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314700, there is no canonical definition to state claims against.
-/

/-! ## A314700.P10087364809410063685

`A008706(n)-A098418(A000032(n))`
-/

namespace A314700.P10087364809410063685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A098418 (A000032 n).toNat

end

end A314700.P10087364809410063685

/-! ## A314700.P5844438591896394934

`A004744(A291171(2*n+1))`
-/

namespace A314700.P5844438591896394934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (A291171 (2 * n + 1)).toNat

end

end A314700.P5844438591896394934

/-! ## A314700.P668540988454495430

`record[xor(A355905(n), A355911(3*n+2))]`
-/

namespace A314700.P668540988454495430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A355905 n) (A355911 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314700.P668540988454495430

/-! ## A314700.P6284943445067032497

`A250120(n)+A117163(A358825(n))`
-/

namespace A314700.P6284943445067032497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A117163 (A358825 n).toNat

end

end A314700.P6284943445067032497

/-! ## A314700.P7562002187506130288

`A313794(n)-A001222(A256201(n))`
-/

namespace A314700.P7562002187506130288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - A001222 (A256201 n).toNat

end

end A314700.P7562002187506130288

/-!
# A314701: Coordination sequence Gal.6.371.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314701, there is no canonical definition to state claims against.
-/

/-! ## A314701.P2061703961389788642

`A123580(A123580(n)+∑[n+3]-2)`
-/

namespace A314701.P2061703961389788642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A123580 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)).toNat

end

end A314701.P2061703961389788642

/-! ## A314701.P23722948025195121

`A314708(n)-A107846(∑{d}[(n+1)², #²])`
-/

namespace A314701.P23722948025195121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n - A107846 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A314701.P23722948025195121

/-! ## A314701.P12512668892247912852

`A310700(n)+A001221(A001655(n))`
-/

namespace A314701.P12512668892247912852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310700 n + A001221 (A001655 n).toNat

end

end A314701.P12512668892247912852

/-! ## A314701.P5495363090730658404

`A312006(n)+A267513(A030186(n))`
-/

namespace A314701.P5495363090730658404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312006 n + A267513 (A030186 n).toNat

end

end A314701.P5495363090730658404

/-! ## A314701.P4741302066079942159

`A335877(A364622(n))+A016813(n)`
-/

namespace A314701.P4741302066079942159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A364622 n).toNat + A016813 n

end

end A314701.P4741302066079942159

/-!
# A314702: Coordination sequence Gal.6.468.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314702, there is no canonical definition to state claims against.
-/

/-! ## A314702.P9610652658899882767

`or(A311561(n), A336923(A336913(n+1)))`
-/

namespace A314702.P9610652658899882767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311561 n) (A336923 (A336913 (n + 1)).toNat)

end

end A314702.P9610652658899882767

/-! ## A314702.P15843563976074139422

`3*n+A001222(A245373(n))+1`
-/

namespace A314702.P15843563976074139422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A001222 (A245373 n).toNat + 1)

end

end A314702.P15843563976074139422

/-! ## A314702.P1432091697017783106

`A155212(n)-A317177(2*n+1)`
-/

namespace A314702.P1432091697017783106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - A317177 (2 * n + 1)

end

end A314702.P1432091697017783106

/-! ## A314702.P4173574764223435484

`A016777(n)+A001222(A245373(n))`
-/

namespace A314702.P4173574764223435484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A001222 (A245373 n).toNat

end

end A314702.P4173574764223435484

/-! ## A314702.P12395604107324096933

`or(A008586(n), A095141(A061129(n)))`
-/

namespace A314702.P12395604107324096933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008586 n) (A095141 (A061129 n).toNat)

end

end A314702.P12395604107324096933

/-!
# A314703: Coordination sequence Gal.6.27.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314703, there is no canonical definition to state claims against.
-/

/-! ## A314703.P6638491903148574765

`A223135(A326423(n))+A008586(n)`
-/

namespace A314703.P6638491903148574765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A326423 n).toNat + A008586 n

end

end A314703.P6638491903148574765

/-! ## A314703.P6675626432529917750

`A314669(n)+A262202(A148191(n))`
-/

namespace A314703.P6675626432529917750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n + A262202 (A148191 n).toNat

end

end A314703.P6675626432529917750

/-! ## A314703.P14922156929124596791

`A189084(n+1)+A311829(n)+A210717(A110135(n))`
-/

namespace A314703.P14922156929124596791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (n + 1) + (A311829 n + A210717 (A110135 n).toNat)

end

end A314703.P14922156929124596791

/-! ## A314703.P14387750110745003612

`A189084(n+1)+A311829(n)+A178798(A342835(n+1))`
-/

namespace A314703.P14387750110745003612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (n + 1) + (A311829 n + A178798 (A342835 (n + 1)).toNat)

end

end A314703.P14387750110745003612

/-! ## A314703.P13069276633674617479

`A375580(A169928(2*(n+1)))+4*n`
-/

namespace A314703.P13069276633674617479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A169928 (2 * (n + 1))).toNat + (4 * n : ℤ)

end

end A314703.P13069276633674617479

/-!
# A314704: Coordination sequence Gal.6.476.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314704, there is no canonical definition to state claims against.
-/

/-! ## A314704.P16120151246723933583

`A311230(n)+A005136(A000982(n))`
-/

namespace A314704.P16120151246723933583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n + A005136 (A000982 n).toNat

end

end A314704.P16120151246723933583

/-! ## A314704.P16091131345567194687

`A314714(n)-A082784(A000139(n))`
-/

namespace A314704.P16091131345567194687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314714 n - A082784 (A000139 n).toNat

end

end A314704.P16091131345567194687

/-! ## A314704.P8225979392540896991

`A315415(n)-A001222(A150952(n))`
-/

namespace A314704.P8225979392540896991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n - A001222 (A150952 n).toNat

end

end A314704.P8225979392540896991

/-! ## A314704.P12489755171672653394

`A314714(n)-A101031(A101031(n))`
-/

namespace A314704.P12489755171672653394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314714 n - A101031 (A101031 n).toNat

end

end A314704.P12489755171672653394

/-! ## A314704.P16065442248774848582

`A314881(n)%A242811(n+1)-A004525(A057354(n))`
-/

namespace A314704.P16065442248774848582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314881 n) (A242811 (n + 1)) - A004525 (A057354 n).toNat

end

end A314704.P16065442248774848582

/-!
# A314705: Coordination sequence Gal.5.197.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314705, there is no canonical definition to state claims against.
-/

/-! ## A314705.P15712663090209936596

`A179209(n+1)+A000120(A071688(n+1))`
-/

namespace A314705.P15712663090209936596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179209 (n + 1) + A000120 (A071688 (n + 1)).toNat

end

end A314705.P15712663090209936596

/-! ## A314705.P14497987876053330360

`xor(A001222(A269228(n+1)), A312295(n))`
-/

namespace A314705.P14497987876053330360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A269228 (n + 1)).toNat) (A312295 n)

end

end A314705.P14497987876053330360

/-! ## A314705.P2981822259569158395

`eq[A007814(n+1), A051731(A117401(n))]`
-/

namespace A314705.P2981822259569158395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A117401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314705.P2981822259569158395

/-! ## A314705.P16556318643227018465

`A005117(3*n+1)-A086076(A291000(n))`
-/

namespace A314705.P16556318643227018465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A086076 (A291000 n).toNat

end

end A314705.P16556318643227018465

/-! ## A314705.P17655152478619720583

`A314682(n)+A101605(A000569(2*n+3))`
-/

namespace A314705.P17655152478619720583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314682 n + A101605 (A000569 (2 * n + 3)).toNat

end

end A314705.P17655152478619720583

/-!
# A314706: Coordination sequence Gal.6.130.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314706, the canonical program `A314706.P17212367775506694373` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314706 has offset 0).

The definition of A314706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314706.P17212367775506694373

`A008458(n)+A008576(n)-A311861(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314706

/-- `A008458(n)+A008576(n)-A311861(n)` -/
def P17212367775506694373.Spec : Prop :=
  ∀ n, P17212367775506694373.a n = A314706 n

theorem P17212367775506694373.correct : P17212367775506694373.Spec := by
  intro n
  simp only [A314706]

end A314706

/-! ## A314706.P14718998545985898339

`A008458(n)+A008486(n)-A313057(n)`
-/

namespace A314706.P14718998545985898339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313057 n)

end

end A314706.P14718998545985898339

namespace A314706

/-- `A008458(n)+A008486(n)-A313057(n)` -/
def P14718998545985898339.Spec : Prop :=
  ∀ n, P14718998545985898339.a n = A314706 n

end A314706

/-! ## A314706.P9817717979779926318

`A313556(n)-A002264(n+1)`
-/

namespace A314706.P9817717979779926318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n - A002264 (n + 1)

end

end A314706.P9817717979779926318

namespace A314706

/-- `A313556(n)-A002264(n+1)` -/
def P9817717979779926318.Spec : Prop :=
  ∀ n, P9817717979779926318.a n = A314706 n

end A314706

/-! ## A314706.P17200760354085469813

`A004396(n)+A313556(n)-n`
-/

namespace A314706.P17200760354085469813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313556 n - (n : ℤ))

end

end A314706.P17200760354085469813

namespace A314706

/-- `A004396(n)+A313556(n)-n` -/
def P17200760354085469813.Spec : Prop :=
  ∀ n, P17200760354085469813.a n = A314706 n

end A314706

/-! ## A314706.P8687263919700828288

`A008576(n)+A313556(n)-A008486(n)`
-/

namespace A314706.P8687263919700828288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313556 n - A008486 n)

end

end A314706.P8687263919700828288

namespace A314706

/-- `A008576(n)+A313556(n)-A008486(n)` -/
def P8687263919700828288.Spec : Prop :=
  ∀ n, P8687263919700828288.a n = A314706 n

end A314706

/-! ## A314706.P14510884791191578642

`A004525(n)+A313720(n)-n`
-/

namespace A314706.P14510884791191578642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313720 n - (n : ℤ))

end

end A314706.P14510884791191578642

namespace A314706

/-- `A004525(n)+A313720(n)-n` -/
def P14510884791191578642.Spec : Prop :=
  ∀ n, P14510884791191578642.a n = A314706 n

end A314706

/-! ## A314706.P3997663500215042309

`A004525(A004396(n))+A313778(n)-n`
-/

namespace A314706.P3997663500215042309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313778 n - (n : ℤ))

end

end A314706.P3997663500215042309

namespace A314706

/-- `A004525(A004396(n))+A313778(n)-n` -/
def P3997663500215042309.Spec : Prop :=
  ∀ n, P3997663500215042309.a n = A314706 n

end A314706

/-! ## A314706.P1306255321268903325

`A315271(n)-A004396(n)`
-/

namespace A314706.P1306255321268903325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n - A004396 n

end

end A314706.P1306255321268903325

namespace A314706

/-- `A315271(n)-A004396(n)` -/
def P1306255321268903325.Spec : Prop :=
  ∀ n, P1306255321268903325.a n = A314706 n

end A314706

/-! ## A314706.P14732530207693238342

`A315271(n)-A002264(2*n+1)`
-/

namespace A314706.P14732530207693238342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n - A002264 (2 * n + 1)

end

end A314706.P14732530207693238342

namespace A314706

/-- `A315271(n)-A002264(2*n+1)` -/
def P14732530207693238342.Spec : Prop :=
  ∀ n, P14732530207693238342.a n = A314706 n

end A314706

/-! ## A314706.P9368344709102883039

`A315488(n)-n`
-/

namespace A314706.P9368344709102883039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n - (n : ℤ)

end

end A314706.P9368344709102883039

namespace A314706

/-- `A315488(n)-n` -/
def P9368344709102883039.Spec : Prop :=
  ∀ n, P9368344709102883039.a n = A314706 n

end A314706

/-! ## A314706.P11814017978383363186

`A315703(n)-A042965(n+1)`
-/

namespace A314706.P11814017978383363186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A042965 (n + 1)

end

end A314706.P11814017978383363186

namespace A314706

/-- `A315703(n)-A042965(n+1)` -/
def P11814017978383363186.Spec : Prop :=
  ∀ n, P11814017978383363186.a n = A314706 n

end A314706

/-! ## A314706.P16877815876163581263

`A315703(n)-A004396(2*n)`
-/

namespace A314706.P16877815876163581263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A004396 (2 * n)

end

end A314706.P16877815876163581263

namespace A314706

/-- `A315703(n)-A004396(2*n)` -/
def P16877815876163581263.Spec : Prop :=
  ∀ n, P16877815876163581263.a n = A314706 n

end A314706

/-! ## A314706.P18428275889371567692

`A315763(n)-A047273(n+1)`
-/

namespace A314706.P18428275889371567692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047273 (n + 1)

end

end A314706.P18428275889371567692

namespace A314706

/-- `A315763(n)-A047273(n+1)` -/
def P18428275889371567692.Spec : Prop :=
  ∀ n, P18428275889371567692.a n = A314706 n

end A314706

/-! ## A314706.P1557368086368216734

`A004525(A313717(n))+2*n`
-/

namespace A314706.P1557368086368216734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313717 n).toNat + (2 * n : ℤ)

end

end A314706.P1557368086368216734

namespace A314706

/-- `A004525(A313717(n))+2*n` -/
def P1557368086368216734.Spec : Prop :=
  ∀ n, P1557368086368216734.a n = A314706 n

end A314706

/-! ## A314706.P12727886808410552690

`A004396(n)+A004396(A315697(n))`
-/

namespace A314706.P12727886808410552690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A315697 n).toNat

end

end A314706.P12727886808410552690

namespace A314706

/-- `A004396(n)+A004396(A315697(n))` -/
def P12727886808410552690.Spec : Prop :=
  ∀ n, P12727886808410552690.a n = A314706 n

end A314706

/-! ## A314706.P13205322108801617667

`A004396(n)+A004396(A313533(n)+n)`
-/

namespace A314706.P13205322108801617667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313533 n + (n : ℤ)).toNat

end

end A314706.P13205322108801617667

namespace A314706

/-- `A004396(n)+A004396(A313533(n)+n)` -/
def P13205322108801617667.Spec : Prop :=
  ∀ n, P13205322108801617667.a n = A314706 n

end A314706

/-! ## A314706.P14629154358483223741

`A004396(A315697(n)+n)`
-/

namespace A314706.P14629154358483223741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315697 n + (n : ℤ)).toNat

end

end A314706.P14629154358483223741

namespace A314706

/-- `A004396(A315697(n)+n)` -/
def P14629154358483223741.Spec : Prop :=
  ∀ n, P14629154358483223741.a n = A314706 n

end A314706

/-! ## A314706.P15837197211398118263

`A004396(A313533(n)+2*n)`
-/

namespace A314706.P15837197211398118263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313533 n + (2 * n : ℤ)).toNat

end

end A314706.P15837197211398118263

namespace A314706

/-- `A004396(A313533(n)+2*n)` -/
def P15837197211398118263.Spec : Prop :=
  ∀ n, P15837197211398118263.a n = A314706 n

end A314706

/-! ## A314706.P2537324604418493859

`A004396(A314884(n)+2*n)`
-/

namespace A314706.P2537324604418493859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314884 n + (2 * n : ℤ)).toNat

end

end A314706.P2537324604418493859

namespace A314706

/-- `A004396(A314884(n)+2*n)` -/
def P2537324604418493859.Spec : Prop :=
  ∀ n, P2537324604418493859.a n = A314706 n

end A314706

/-!
# A314707: Coordination sequence Gal.6.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314707, the canonical program `A314707.P15635996145671668947` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314707 has offset 0).

The definition of A314707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314707.P15635996145671668947

`A314837(n)-Δ[A011864(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314707

/-- `A314837(n)-Δ[A011864(n)]` -/
def P15635996145671668947.Spec : Prop :=
  ∀ n, P15635996145671668947.a n = A314707 n

theorem P15635996145671668947.correct : P15635996145671668947.Spec := by
  intro n
  simp only [A314707]

end A314707

/-! ## A314707.P6655774536998254388

`(A315202(n)+A008574(n))/2`
-/

namespace A314707.P6655774536998254388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315202 n + A008574 n : ℚ) / 2

end

end A314707.P6655774536998254388

namespace A314707

/-- `(A315202(n)+A008574(n))/2` -/
def P6655774536998254388.Spec : Prop :=
  ∀ n, P6655774536998254388.a n = (A314707 n : ℚ)

theorem P6655774536998254388.correct : P6655774536998254388.Spec := by
  intro n
  simp only [A314707, Nat.add_sub_cancel, A314707.P6655774536998254388.a, A314707.P15635996145671668947.f1, A314707.P15635996145671668947.a, A008574, A008574.P1300280032690682112.a, A011864, A011864.P3547417513882699266.a, A314837, A314837.P13056047557632493089.a, A315202, A315202.P8684854495543598751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314707

/-! ## A314707.P18237149318339768101

`A004525(A313718(n))+2*n`
-/

namespace A314707.P18237149318339768101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313718 n).toNat + (2 * n : ℤ)

end

end A314707.P18237149318339768101

namespace A314707

/-- `A004525(A313718(n))+2*n` -/
def P18237149318339768101.Spec : Prop :=
  ∀ n, P18237149318339768101.a n = A314707 n

end A314707

/-! ## A314707.P9286097886490885699

`A004525(A314019(n))+2*n`
-/

namespace A314707.P9286097886490885699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314019 n).toNat + (2 * n : ℤ)

end

end A314707.P9286097886490885699

namespace A314707

/-- `A004525(A314019(n))+2*n` -/
def P9286097886490885699.Spec : Prop :=
  ∀ n, P9286097886490885699.a n = A314707 n

end A314707

/-! ## A314707.P16367811230307366516

`abs(A008592(n)-A314221(n))`
-/

namespace A314707.P16367811230307366516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314221 n|

end

end A314707.P16367811230307366516

namespace A314707

/-- `abs(A008592(n)-A314221(n))` -/
def P16367811230307366516.Spec : Prop :=
  ∀ n, P16367811230307366516.a n = A314707 n

end A314707

/-! ## A314707.P13386552155767566243

`A008458(n)+A008574(n)-A314221(n)`
-/

namespace A314707.P13386552155767566243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314221 n)

end

end A314707.P13386552155767566243

namespace A314707

/-- `A008458(n)+A008574(n)-A314221(n)` -/
def P13386552155767566243.Spec : Prop :=
  ∀ n, P13386552155767566243.a n = A314707 n

end A314707

/-! ## A314707.P15890597010551515722

`A005843(A008458(n)-n)-A314221(n)`
-/

namespace A314707.P15890597010551515722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314221 n

end

end A314707.P15890597010551515722

namespace A314707

/-- `A005843(A008458(n)-n)-A314221(n)` -/
def P15890597010551515722.Spec : Prop :=
  ∀ n, P15890597010551515722.a n = A314707 n

end A314707

/-! ## A314707.P8435408736289873566

`A008458(n)+n-A004526(A310505(n))`
-/

namespace A314707.P8435408736289873566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310505 n).toNat)

end

end A314707.P8435408736289873566

namespace A314707

/-- `A008458(n)+n-A004526(A310505(n))` -/
def P8435408736289873566.Spec : Prop :=
  ∀ n, P8435408736289873566.a n = A314707 n

end A314707

/-! ## A314707.P4342845843485089896

`A004396(A313534(n)+2*n)`
-/

namespace A314707.P4342845843485089896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313534 n + (2 * n : ℤ)).toNat

end

end A314707.P4342845843485089896

namespace A314707

/-- `A004396(A313534(n)+2*n)` -/
def P4342845843485089896.Spec : Prop :=
  ∀ n, P4342845843485089896.a n = A314707 n

end A314707

/-! ## A314707.P14834062915755045512

`A004396(A314885(n)+2*n)`
-/

namespace A314707.P14834062915755045512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314885 n + (2 * n : ℤ)).toNat

end

end A314707.P14834062915755045512

namespace A314707

/-- `A004396(A314885(n)+2*n)` -/
def P14834062915755045512.Spec : Prop :=
  ∀ n, P14834062915755045512.a n = A314707 n

end A314707

/-! ## A314707.P14708905818512415515

`A004396(A313534(n)+n+n)`
-/

namespace A314707.P14708905818512415515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313534 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314707.P14708905818512415515

namespace A314707

/-- `A004396(A313534(n)+n+n)` -/
def P14708905818512415515.Spec : Prop :=
  ∀ n, P14708905818512415515.a n = A314707 n

end A314707

/-! ## A314707.P6022278207811464006

`A004396(A314885(n)+n+n)`
-/

namespace A314707.P6022278207811464006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314885 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314707.P6022278207811464006

namespace A314707

/-- `A004396(A314885(n)+n+n)` -/
def P6022278207811464006.Spec : Prop :=
  ∀ n, P6022278207811464006.a n = A314707 n

end A314707

/-! ## A314707.P12936847646672780686

`round(A072154(A315491(n))/3)`
-/

namespace A314707.P12936847646672780686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072154 (A315491 n).toNat : ℚ) / 3)

end

end A314707.P12936847646672780686

namespace A314707

/-- `round(A072154(A315491(n))/3)` -/
def P12936847646672780686.Spec : Prop :=
  ∀ n, P12936847646672780686.a n = A314707 n

end A314707

/-! ## A314707.P17211634024078232251

`A313543(A008458(n))-A008574(A008458(n))`
-/

namespace A314707.P17211634024078232251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 (A008458 n).toNat - A008574 (A008458 n).toNat

end

end A314707.P17211634024078232251

namespace A314707

/-- `A313543(A008458(n))-A008574(A008458(n))` -/
def P17211634024078232251.Spec : Prop :=
  ∀ n, P17211634024078232251.a n = A314707 n

end A314707

/-! ## A314707.P989015199200516018

`A008458(A008458(2*n))-A314221(A008458(2*n))`
-/

namespace A314707.P989015199200516018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 (2 * n)).toNat - A314221 (A008458 (2 * n)).toNat

end

end A314707.P989015199200516018

namespace A314707

/-- `A008458(A008458(2*n))-A314221(A008458(2*n))` -/
def P989015199200516018.Spec : Prop :=
  ∀ n, P989015199200516018.a n = A314707 n

end A314707

/-!
# A314708: Coordination sequence Gal.5.65.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314708, the canonical program `A314708.P15864941767784630642` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314708 has offset 0).

The definition of A314708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314708.P4992429396720892794

`A330025(n)+A311535(n)`
-/

namespace A314708.P4992429396720892794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A311535 n

end

end A314708.P4992429396720892794

namespace A314708

/-- `A330025(n)+A311535(n)` -/
def P4992429396720892794.Spec : Prop :=
  ∀ n, P4992429396720892794.a n = A314708 n

end A314708

/-! ## A314708.P15864941767784630642

`A315171(n)-A330025(A330025(n)+n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314708

/-- `A315171(n)-A330025(A330025(n)+n)` -/
def P15864941767784630642.Spec : Prop :=
  ∀ n, P15864941767784630642.a n = A314708 n

theorem P15864941767784630642.correct : P15864941767784630642.Spec := by
  intro n
  simp only [A314708]

end A314708

/-! ## A314708.P7963981833550772366

`A004525(A047263(n+1))+A008706(n)-A047263(n+1)`
-/

namespace A314708.P7963981833550772366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008706 n - A047263 (n + 1))

end

end A314708.P7963981833550772366

namespace A314708

/-- `A004525(A047263(n+1))+A008706(n)-A047263(n+1)` -/
def P7963981833550772366.Spec : Prop :=
  ∀ n, P7963981833550772366.a n = A314708 n

end A314708

/-! ## A314708.P1389759631011754532

`A005843(A008574(n))+n-A313053(n)`
-/

namespace A314708.P1389759631011754532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313053 n)

end

end A314708.P1389759631011754532

namespace A314708

/-- `A005843(A008574(n))+n-A313053(n)` -/
def P1389759631011754532.Spec : Prop :=
  ∀ n, P1389759631011754532.a n = A314708 n

end A314708

/-! ## A314708.P3737007595277684538

`A008458(n)+A008486(n)-A313053(n)`
-/

namespace A314708.P3737007595277684538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313053 n)

end

end A314708.P3737007595277684538

namespace A314708

/-- `A008458(n)+A008486(n)-A313053(n)` -/
def P3737007595277684538.Spec : Prop :=
  ∀ n, P3737007595277684538.a n = A314708 n

end A314708

/-! ## A314708.P1599752808752379627

`A313610(n)-Δ[A011858(n)]`
-/

namespace A314708.P1599752808752379627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n - (f1 (n + 1) - f1 n)

end

end A314708.P1599752808752379627

namespace A314708

/-- `A313610(n)-Δ[A011858(n)]` -/
def P1599752808752379627.Spec : Prop :=
  ∀ n, P1599752808752379627.a n = A314708 n

theorem P1599752808752379627.correct : P1599752808752379627.Spec := by
  intro n
  simp only [A314708, Nat.add_sub_cancel, A314708.P1599752808752379627.f1, A314708.P1599752808752379627.a, A314708.P15864941767784630642.a, A011858, A011858.P16234308487928340219.a, A313610, A313610.P10900153276771282228.f1, A313610.P10900153276771282228.a, A315171, A315171.P4366655332392387557.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314708

/-! ## A314708.P16946170394902115729

`A313610(n)-A057354(n+1)`
-/

namespace A314708.P16946170394902115729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n - A057354 (n + 1)

end

end A314708.P16946170394902115729

namespace A314708

/-- `A313610(n)-A057354(n+1)` -/
def P16946170394902115729.Spec : Prop :=
  ∀ n, P16946170394902115729.a n = A314708 n

end A314708

/-! ## A314708.P11431075551256147054

`(A315203(n)+A008574(n))/2`
-/

namespace A314708.P11431075551256147054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315203 n + A008574 n : ℚ) / 2

end

end A314708.P11431075551256147054

namespace A314708

/-- `(A315203(n)+A008574(n))/2` -/
def P11431075551256147054.Spec : Prop :=
  ∀ n, P11431075551256147054.a n = (A314708 n : ℚ)

end A314708

/-! ## A314708.P7767595607265154325

`A008574(n)+A315319(n)-A250120(n)`
-/

namespace A314708.P7767595607265154325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315319 n - A250120 n)

end

end A314708.P7767595607265154325

namespace A314708

/-- `A008574(n)+A315319(n)-A250120(n)` -/
def P7767595607265154325.Spec : Prop :=
  ∀ n, P7767595607265154325.a n = A314708 n

end A314708

/-! ## A314708.P1212989490298016387

`A313801(n)+A330025(n)-n`
-/

namespace A314708.P1212989490298016387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n + (A330025 n - (n : ℤ))

end

end A314708.P1212989490298016387

namespace A314708

/-- `A313801(n)+A330025(n)-n` -/
def P1212989490298016387.Spec : Prop :=
  ∀ n, P1212989490298016387.a n = A314708 n

end A314708

/-! ## A314708.P8260494619624920935

`A315489(n)-n`
-/

namespace A314708.P8260494619624920935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315489 n - (n : ℤ)

end

end A314708.P8260494619624920935

namespace A314708

/-- `A315489(n)-n` -/
def P8260494619624920935.Spec : Prop :=
  ∀ n, P8260494619624920935.a n = A314708 n

end A314708

/-! ## A314708.P7414270033560568226

`A315496(n)-A151988(n)`
-/

namespace A314708.P7414270033560568226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 n - A151988 n

end

end A314708.P7414270033560568226

namespace A314708

/-- `A315496(n)-A151988(n)` -/
def P7414270033560568226.Spec : Prop :=
  ∀ n, P7414270033560568226.a n = A314708 n

end A314708

/-! ## A314708.P4402493332947719310

`A315536(n)-A047263(n+1)`
-/

namespace A314708.P4402493332947719310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A047263 (n + 1)

end

end A314708.P4402493332947719310

namespace A314708

/-- `A315536(n)-A047263(n+1)` -/
def P4402493332947719310.Spec : Prop :=
  ∀ n, P4402493332947719310.a n = A314708 n

end A314708

/-! ## A314708.P17790454733791873973

`abs(10*n-A314220(n))`
-/

namespace A314708.P17790454733791873973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314220 n|

end

end A314708.P17790454733791873973

namespace A314708

/-- `abs(10*n-A314220(n))` -/
def P17790454733791873973.Spec : Prop :=
  ∀ n, P17790454733791873973.a n = A314708 n

end A314708

/-! ## A314708.P2218727183423236156

`A008458(n)+A008574(n)-A314220(n)`
-/

namespace A314708.P2218727183423236156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314220 n)

end

end A314708.P2218727183423236156

namespace A314708

/-- `A008458(n)+A008574(n)-A314220(n)` -/
def P2218727183423236156.Spec : Prop :=
  ∀ n, P2218727183423236156.a n = A314708 n

end A314708

/-! ## A314708.P10922665229057893476

`A004525(A313719(n))+2*n`
-/

namespace A314708.P10922665229057893476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313719 n).toNat + (2 * n : ℤ)

end

end A314708.P10922665229057893476

namespace A314708

/-- `A004525(A313719(n))+2*n` -/
def P10922665229057893476.Spec : Prop :=
  ∀ n, P10922665229057893476.a n = A314708 n

end A314708

/-! ## A314708.P4089328770282156445

`A004525(A314020(n))+2*n`
-/

namespace A314708.P4089328770282156445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314020 n).toNat + (2 * n : ℤ)

end

end A314708.P4089328770282156445

namespace A314708

/-- `A004525(A314020(n))+2*n` -/
def P4089328770282156445.Spec : Prop :=
  ∀ n, P4089328770282156445.a n = A314708 n

end A314708

/-! ## A314708.P10142643642120572068

`A005843(A008458(n)-n)-A314220(n)`
-/

namespace A314708.P10142643642120572068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314220 n

end

end A314708.P10142643642120572068

namespace A314708

/-- `A005843(A008458(n)-n)-A314220(n)` -/
def P10142643642120572068.Spec : Prop :=
  ∀ n, P10142643642120572068.a n = A314708 n

end A314708

/-! ## A314708.P6550871751126774444

`A004396(A315536(n)+n)`
-/

namespace A314708.P6550871751126774444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315536 n + (n : ℤ)).toNat

end

end A314708.P6550871751126774444

namespace A314708

/-- `A004396(A315536(n)+n)` -/
def P6550871751126774444.Spec : Prop :=
  ∀ n, P6550871751126774444.a n = A314708 n

end A314708

/-! ## A314708.P11448090240359430362

`A004396(A315698(n)+n)`
-/

namespace A314708.P11448090240359430362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315698 n + (n : ℤ)).toNat

end

end A314708.P11448090240359430362

namespace A314708

/-- `A004396(A315698(n)+n)` -/
def P11448090240359430362.Spec : Prop :=
  ∀ n, P11448090240359430362.a n = A314708 n

end A314708

/-!
# A314709: Coordination sequence Gal.6.465.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314709, there is no canonical definition to state claims against.
-/

/-! ## A314709.P6929588754485897773

`A289508(A037927(n))+4*n`
-/

namespace A314709.P6929588754485897773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A037927 n).toNat + (4 * n : ℤ)

end

end A314709.P6929588754485897773

/-! ## A314709.P8906490427887809108

`∑[A117728(∑[A187025(n+2)])]`
-/

namespace A314709.P8906490427887809108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187025 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117728 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314709.P8906490427887809108

/-! ## A314709.P13677229379869943043

`A049084(A037927(n))+A008574(n)`
-/

namespace A314709.P13677229379869943043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A037927 n).toNat + A008574 n

end

end A314709.P13677229379869943043

/-! ## A314709.P10766367023122211378

`A008586(n)+A001227(A174074(n))`
-/

namespace A314709.P10766367023122211378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A001227 (A174074 n).toNat

end

end A314709.P10766367023122211378

/-! ## A314709.P9397725548453117202

`A314708(n)+A137579(A090906(n+1))`
-/

namespace A314709.P9397725548453117202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + A137579 (A090906 (n + 1)).toNat

end

end A314709.P9397725548453117202

/-!
# A314710: Coordination sequence Gal.5.64.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314710, the canonical program `A314710.P10185339567335354607` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314710 has offset 0).

The definition of A314710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314710.P10185339567335354607

`A301298(n)-Δ[A011862(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314710

/-- `A301298(n)-Δ[A011862(n)]` -/
def P10185339567335354607.Spec : Prop :=
  ∀ n, P10185339567335354607.a n = A314710 n

theorem P10185339567335354607.correct : P10185339567335354607.Spec := by
  intro n
  simp only [A314710]

end A314710

/-! ## A314710.P4186656623682892180

`A008574(n)+A004396(A004396(n))`
-/

namespace A314710.P4186656623682892180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004396 n).toNat

end

end A314710.P4186656623682892180

namespace A314710

/-- `A008574(n)+A004396(A004396(n))` -/
def P4186656623682892180.Spec : Prop :=
  ∀ n, P4186656623682892180.a n = A314710 n

end A314710

/-! ## A314710.P7188555747659428601

`A004396(A004396(n))+A004277(2*n)`
-/

namespace A314710.P7188555747659428601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + A004277 (2 * n)

end

end A314710.P7188555747659428601

namespace A314710

/-- `A004396(A004396(n))+A004277(2*n)` -/
def P7188555747659428601.Spec : Prop :=
  ∀ n, P7188555747659428601.a n = A314710 n

end A314710

/-! ## A314710.P18190640254948709151

`A301694(n)-A004396(2*A004396(n))`
-/

namespace A314710.P18190640254948709151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A004396 (2 * A004396 n).toNat

end

end A314710.P18190640254948709151

namespace A314710

/-- `A301694(n)-A004396(2*A004396(n))` -/
def P18190640254948709151.Spec : Prop :=
  ∀ n, P18190640254948709151.a n = A314710 n

end A314710

/-! ## A314710.P1803989101420259449

`A004396(A004396(n))+A008486(n)+n`
-/

namespace A314710.P1803989101420259449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A008486 n + (n : ℤ))

end

end A314710.P1803989101420259449

namespace A314710

/-- `A004396(A004396(n))+A008486(n)+n` -/
def P1803989101420259449.Spec : Prop :=
  ∀ n, P1803989101420259449.a n = A314710 n

end A314710

/-! ## A314710.P9042045882291676409

`A008458(n)+A008576(n)-A311816(n)`
-/

namespace A314710.P9042045882291676409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A311816 n)

end

end A314710.P9042045882291676409

namespace A314710

/-- `A008458(n)+A008576(n)-A311816(n)` -/
def P9042045882291676409.Spec : Prop :=
  ∀ n, P9042045882291676409.a n = A314710 n

end A314710

/-! ## A314710.P12625989260200651158

`A004396(n)+A008706(n)-A265187(n+1)`
-/

namespace A314710.P12625989260200651158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008706 n - A265187 (n + 1))

end

end A314710.P12625989260200651158

namespace A314710

/-- `A004396(n)+A008706(n)-A265187(n+1)` -/
def P12625989260200651158.Spec : Prop :=
  ∀ n, P12625989260200651158.a n = A314710 n

end A314710

/-! ## A314710.P3045489051288515876

`A004396(A004396(n))-(A004396(n)-A301298(n))`
-/

namespace A314710.P3045489051288515876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat - (A004396 n - A301298 n)

end

end A314710.P3045489051288515876

namespace A314710

/-- `A004396(A004396(n))-(A004396(n)-A301298(n))` -/
def P3045489051288515876.Spec : Prop :=
  ∀ n, P3045489051288515876.a n = A314710 n

end A314710

/-! ## A314710.P18223807909389340640

`(A315207(n)+A008574(n))/2`
-/

namespace A314710.P18223807909389340640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315207 n + A008574 n : ℚ) / 2

end

end A314710.P18223807909389340640

namespace A314710

/-- `(A315207(n)+A008574(n))/2` -/
def P18223807909389340640.Spec : Prop :=
  ∀ n, P18223807909389340640.a n = (A314710 n : ℚ)

theorem P18223807909389340640.correct : P18223807909389340640.Spec := by
  intro n
  simp only [A314710, Nat.add_sub_cancel, A314710.P18223807909389340640.a, A314710.P10185339567335354607.f1, A314710.P10185339567335354607.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A301298, A301298.P17841740048100400826.a, A315207, A315207.P1795837304625364716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314710

/-! ## A314710.P10011774180741091332

`A315475(n)-A004396(A004396(2*n))`
-/

namespace A314710.P10011774180741091332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A004396 (A004396 (2 * n)).toNat

end

end A314710.P10011774180741091332

namespace A314710

/-- `A315475(n)-A004396(A004396(2*n))` -/
def P10011774180741091332.Spec : Prop :=
  ∀ n, P10011774180741091332.a n = A314710 n

end A314710

/-! ## A314710.P17090441416694233298

`abs(10*n-A314218(n))`
-/

namespace A314710.P17090441416694233298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314218 n|

end

end A314710.P17090441416694233298

namespace A314710

/-- `abs(10*n-A314218(n))` -/
def P17090441416694233298.Spec : Prop :=
  ∀ n, P17090441416694233298.a n = A314710 n

end A314710

/-! ## A314710.P6354409960743285946

`A008458(n)+A008574(n)-A314218(n)`
-/

namespace A314710.P6354409960743285946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314218 n)

end

end A314710.P6354409960743285946

namespace A314710

/-- `A008458(n)+A008574(n)-A314218(n)` -/
def P6354409960743285946.Spec : Prop :=
  ∀ n, P6354409960743285946.a n = A314710 n

end A314710

/-! ## A314710.P17648736378447027160

`A315538(n)-A265187(n+1)`
-/

namespace A314710.P17648736378447027160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - A265187 (n + 1)

end

end A314710.P17648736378447027160

namespace A314710

/-- `A315538(n)-A265187(n+1)` -/
def P17648736378447027160.Spec : Prop :=
  ∀ n, P17648736378447027160.a n = A314710 n

end A314710

/-! ## A314710.P18115926646331537532

`A315706(n)-A042965(n+1)`
-/

namespace A314710.P18115926646331537532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A042965 (n + 1)

end

end A314710.P18115926646331537532

namespace A314710

/-- `A315706(n)-A042965(n+1)` -/
def P18115926646331537532.Spec : Prop :=
  ∀ n, P18115926646331537532.a n = A314710 n

end A314710

/-! ## A314710.P738661279983381084

`A315706(n)-A004396(2*n)`
-/

namespace A314710.P738661279983381084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A004396 (2 * n)

end

end A314710.P738661279983381084

namespace A314710

/-- `A315706(n)-A004396(2*n)` -/
def P738661279983381084.Spec : Prop :=
  ∀ n, P738661279983381084.a n = A314710 n

end A314710

/-! ## A314710.P5983820496188542945

`A315706(n)-A002264(A005408(2*n))`
-/

namespace A314710.P5983820496188542945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A002264 (A005408 (2 * n)).toNat

end

end A314710.P5983820496188542945

namespace A314710

/-- `A315706(n)-A002264(A005408(2*n))` -/
def P5983820496188542945.Spec : Prop :=
  ∀ n, P5983820496188542945.a n = A314710 n

end A314710

/-! ## A314710.P7447410180819228469

`A004396(A298024(n))+2*A004396(n)`
-/

namespace A314710.P7447410180819228469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298024 n).toNat + 2 * A004396 n

end

end A314710.P7447410180819228469

namespace A314710

/-- `A004396(A298024(n))+2*A004396(n)` -/
def P7447410180819228469.Spec : Prop :=
  ∀ n, P7447410180819228469.a n = A314710 n

end A314710

/-! ## A314710.P13405644915472641814

`A004525(A314021(n))+2*n`
-/

namespace A314710.P13405644915472641814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314021 n).toNat + (2 * n : ℤ)

end

end A314710.P13405644915472641814

namespace A314710

/-- `A004525(A314021(n))+2*n` -/
def P13405644915472641814.Spec : Prop :=
  ∀ n, P13405644915472641814.a n = A314710 n

end A314710

/-! ## A314710.P17462097513192791616

`A219529(A219529(n))-A301293(A219529(n))`
-/

namespace A314710.P17462097513192791616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 (A219529 n).toNat - A301293 (A219529 n).toNat

end

end A314710.P17462097513192791616

namespace A314710

/-- `A219529(A219529(n))-A301293(A219529(n))` -/
def P17462097513192791616.Spec : Prop :=
  ∀ n, P17462097513192791616.a n = A314710 n

end A314710

/-! ## A314710.P13329717313174423480

`A004396(A298786(2*n))`
-/

namespace A314710.P13329717313174423480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298786 (2 * n)).toNat

end

end A314710.P13329717313174423480

namespace A314710

/-- `A004396(A298786(2*n))` -/
def P13329717313174423480.Spec : Prop :=
  ∀ n, P13329717313174423480.a n = A314710 n

end A314710

/-!
# A314711: Coordination sequence Gal.6.377.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314711, there is no canonical definition to state claims against.
-/

/-! ## A314711.P18413337044787505957

`A314939(n)-A265859(A138265(n))`
-/

namespace A314711.P18413337044787505957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314939 n - A265859 (A138265 n).toNat

end

end A314711.P18413337044787505957

/-! ## A314711.P13415651300819513403

`round(log2(∑{digits}[n, 10^#]*A334601(2*(n+1))))`
-/

namespace A314711.P13415651300819513403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) * A334601 (2 * (n + 1)) : ℝ))

end

end A314711.P13415651300819513403

/-! ## A314711.P3511075879942424005

`A311950(n)+A293439(3^n)`
-/

namespace A314711.P3511075879942424005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311950 n + A293439 (3 ^ n)

end

end A314711.P3511075879942424005

/-! ## A314711.P16272720349670517755

`A261466(A003159(n+1)+2*n)`
-/

namespace A314711.P16272720349670517755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A003159 (n + 1) + (2 * n : ℤ)).toNat

end

end A314711.P16272720349670517755

/-! ## A314711.P14248150493264976975

`A333219(n+1)+A055570(3*n)`
-/

namespace A314711.P14248150493264976975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (n + 1) + A055570 (3 * n)

end

end A314711.P14248150493264976975

/-!
# A314712: Coordination sequence Gal.6.150.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314712, the canonical program `A314712.P889691669738090391` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314712 has offset 0).

The definition of A314712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314712.P889691669738090391

`A008458(n)+A008576(n)-A311801(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314712

/-- `A008458(n)+A008576(n)-A311801(n)` -/
def P889691669738090391.Spec : Prop :=
  ∀ n, P889691669738090391.a n = A314712 n

theorem P889691669738090391.correct : P889691669738090391.Spec := by
  intro n
  simp only [A314712]

end A314712

/-! ## A314712.P10598730172774835343

`A314841(n)-Δ[A011865(n)]`
-/

namespace A314712.P10598730172774835343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - (f1 (n + 1) - f1 n)

end

end A314712.P10598730172774835343

namespace A314712

/-- `A314841(n)-Δ[A011865(n)]` -/
def P10598730172774835343.Spec : Prop :=
  ∀ n, P10598730172774835343.a n = A314712 n

end A314712

/-! ## A314712.P5320635797817524447

`A313569(n)-∑[A022003(n)]`
-/

namespace A314712.P5320635797817524447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314712.P5320635797817524447

namespace A314712

/-- `A313569(n)-∑[A022003(n)]` -/
def P5320635797817524447.Spec : Prop :=
  ∀ n, P5320635797817524447.a n = A314712 n

end A314712

/-! ## A314712.P17542781788999578772

`A313569(n)-A002264(n+1)`
-/

namespace A314712.P17542781788999578772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n - A002264 (n + 1)

end

end A314712.P17542781788999578772

namespace A314712

/-- `A313569(n)-A002264(n+1)` -/
def P17542781788999578772.Spec : Prop :=
  ∀ n, P17542781788999578772.a n = A314712 n

end A314712

/-! ## A314712.P14147589592378747936

`A004396(n)+A313569(n)-n`
-/

namespace A314712.P14147589592378747936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313569 n - (n : ℤ))

end

end A314712.P14147589592378747936

namespace A314712

/-- `A004396(n)+A313569(n)-n` -/
def P14147589592378747936.Spec : Prop :=
  ∀ n, P14147589592378747936.a n = A314712 n

end A314712

/-! ## A314712.P179662175517453396

`A008576(n)+A313569(n)-A008486(n)`
-/

namespace A314712.P179662175517453396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313569 n - A008486 n)

end

end A314712.P179662175517453396

namespace A314712

/-- `A008576(n)+A313569(n)-A008486(n)` -/
def P179662175517453396.Spec : Prop :=
  ∀ n, P179662175517453396.a n = A314712 n

end A314712

/-! ## A314712.P9417444522275226461

`A313726(n)-∑[A021913(n)]`
-/

namespace A314712.P9417444522275226461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314712.P9417444522275226461

namespace A314712

/-- `A313726(n)-∑[A021913(n)]` -/
def P9417444522275226461.Spec : Prop :=
  ∀ n, P9417444522275226461.a n = A314712 n

end A314712

/-! ## A314712.P4114567174127140183

`A313726(n)-Δ[A011848(n)]`
-/

namespace A314712.P4114567174127140183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - (f1 (n + 1) - f1 n)

end

end A314712.P4114567174127140183

namespace A314712

/-- `A313726(n)-Δ[A011848(n)]` -/
def P4114567174127140183.Spec : Prop :=
  ∀ n, P4114567174127140183.a n = A314712 n

end A314712

/-! ## A314712.P15745590737978302402

`A004525(n)+A313726(n)-n`
-/

namespace A314712.P15745590737978302402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313726 n - (n : ℤ))

end

end A314712.P15745590737978302402

namespace A314712

/-- `A004525(n)+A313726(n)-n` -/
def P15745590737978302402.Spec : Prop :=
  ∀ n, P15745590737978302402.a n = A314712 n

end A314712

/-! ## A314712.P16631737153661312598

`A004525(A004396(n))+A313781(n)-n`
-/

namespace A314712.P16631737153661312598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313781 n - (n : ℤ))

end

end A314712.P16631737153661312598

namespace A314712

/-- `A004525(A004396(n))+A313781(n)-n` -/
def P16631737153661312598.Spec : Prop :=
  ∀ n, P16631737153661312598.a n = A314712 n

end A314712

/-! ## A314712.P12285452630519180308

`abs(10*n-A314216(n))`
-/

namespace A314712.P12285452630519180308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314216 n|

end

end A314712.P12285452630519180308

namespace A314712

/-- `abs(10*n-A314216(n))` -/
def P12285452630519180308.Spec : Prop :=
  ∀ n, P12285452630519180308.a n = A314712 n

end A314712

/-! ## A314712.P3837112195297982267

`A008458(n)+A008574(n)-A314216(n)`
-/

namespace A314712.P3837112195297982267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314216 n)

end

end A314712.P3837112195297982267

namespace A314712

/-- `A008458(n)+A008574(n)-A314216(n)` -/
def P3837112195297982267.Spec : Prop :=
  ∀ n, P3837112195297982267.a n = A314712 n

end A314712

/-! ## A314712.P5039255957733210934

`A315538(n)-comp[A113803(n+1)]`
-/

namespace A314712.P5039255957733210934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314712.P5039255957733210934

namespace A314712

/-- `A315538(n)-comp[A113803(n+1)]` -/
def P5039255957733210934.Spec : Prop :=
  ∀ n, P5039255957733210934.a n = A314712 n

end A314712

/-! ## A314712.P1586292762524135589

`A315710(n)-A042965(n+1)`
-/

namespace A314712.P1586292762524135589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A042965 (n + 1)

end

end A314712.P1586292762524135589

namespace A314712

/-- `A315710(n)-A042965(n+1)` -/
def P1586292762524135589.Spec : Prop :=
  ∀ n, P1586292762524135589.a n = A314712 n

end A314712

/-! ## A314712.P14024750427107431236

`A315710(n)-A004396(2*n)`
-/

namespace A314712.P14024750427107431236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A004396 (2 * n)

end

end A314712.P14024750427107431236

namespace A314712

/-- `A315710(n)-A004396(2*n)` -/
def P14024750427107431236.Spec : Prop :=
  ∀ n, P14024750427107431236.a n = A314712 n

end A314712

/-! ## A314712.P17073556620410846644

`A008576(n)+A315710(n)-A008574(n)`
-/

namespace A314712.P17073556620410846644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315710 n - A008574 n)

end

end A314712.P17073556620410846644

namespace A314712

/-- `A008576(n)+A315710(n)-A008574(n)` -/
def P17073556620410846644.Spec : Prop :=
  ∀ n, P17073556620410846644.a n = A314712 n

end A314712

/-! ## A314712.P15160010775008117372

`A004525(A314022(n))+2*n`
-/

namespace A314712.P15160010775008117372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314022 n).toNat + (2 * n : ℤ)

end

end A314712.P15160010775008117372

namespace A314712

/-- `A004525(A314022(n))+2*n` -/
def P15160010775008117372.Spec : Prop :=
  ∀ n, P15160010775008117372.a n = A314712 n

end A314712

/-! ## A314712.P12042408989473530893

`A004525(A314947(n))+2*n`
-/

namespace A314712.P12042408989473530893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314947 n).toNat + (2 * n : ℤ)

end

end A314712.P12042408989473530893

namespace A314712

/-- `A004525(A314947(n))+2*n` -/
def P12042408989473530893.Spec : Prop :=
  ∀ n, P12042408989473530893.a n = A314712 n

end A314712

/-! ## A314712.P6907005314432106780

`A004525(A315053(n))+2*n`
-/

namespace A314712.P6907005314432106780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315053 n).toNat + (2 * n : ℤ)

end

end A314712.P6907005314432106780

namespace A314712

/-- `A004525(A315053(n))+2*n` -/
def P6907005314432106780.Spec : Prop :=
  ∀ n, P6907005314432106780.a n = A314712 n

end A314712

/-! ## A314712.P13634606512761926889

`A004525(A315257(n))+2*n`
-/

namespace A314712.P13634606512761926889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315257 n).toNat + (2 * n : ℤ)

end

end A314712.P13634606512761926889

namespace A314712

/-- `A004525(A315257(n))+2*n` -/
def P13634606512761926889.Spec : Prop :=
  ∀ n, P13634606512761926889.a n = A314712 n

end A314712

/-!
# A314713: Coordination sequence Gal.6.498.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314713, there is no canonical definition to state claims against.
-/

/-! ## A314713.P11582837530334551904

`A311904(n)+A048881(A067526(n+1))`
-/

namespace A314713.P11582837530334551904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311904 n + A048881 (A067526 (n + 1)).toNat

end

end A314713.P11582837530334551904

/-! ## A314713.P5314856030297136

`∑[A256479(A316559(n+3))]-1`
-/

namespace A314713.P5314856030297136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A316559 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A314713.P5314856030297136

/-! ## A314713.P3106644078454204777

`A008706(n)-A001221(A052399(n))`
-/

namespace A314713.P3106644078454204777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001221 (A052399 n).toNat

end

end A314713.P3106644078454204777

/-! ## A314713.P11147750136983726487

`A008706(n)-A001221(A177535(n))`
-/

namespace A314713.P11147750136983726487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001221 (A177535 n).toNat

end

end A314713.P11147750136983726487

/-! ## A314713.P8898934952487827330

`A008706(n)-A001221(A177549(n))`
-/

namespace A314713.P8898934952487827330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001221 (A177549 n).toNat

end

end A314713.P8898934952487827330

/-!
# A314714: Coordination sequence Gal.6.583.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314714, there is no canonical definition to state claims against.
-/

/-! ## A314714.P8774262529010990191

`A314764(n)+A314775(n)-A314789(n)`
-/

namespace A314714.P8774262529010990191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314764 n + (A314775 n - A314789 n)

end

end A314714.P8774262529010990191

/-! ## A314714.P880910915420530129

`A000005(A145953(n+1))+4*n`
-/

namespace A314714.P880910915420530129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A145953 (n + 1)).toNat + (4 * n : ℤ)

end

end A314714.P880910915420530129

/-! ## A314714.P14168711765111772830

`A333749(A279197(n+3))+4*n`
-/

namespace A314714.P14168711765111772830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (A279197 (n + 3)).toNat + (4 * n : ℤ)

end

end A314714.P14168711765111772830

/-! ## A314714.P14047784110079380567

`A312932(n)+A081603(A068875(n))`
-/

namespace A314714.P14047784110079380567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + A081603 (A068875 n).toNat

end

end A314714.P14047784110079380567

/-! ## A314714.P9262744275840213840

`A008586(n)+A000005(A145953(n+1))`
-/

namespace A314714.P9262744275840213840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000005 (A145953 (n + 1)).toNat

end

end A314714.P9262744275840213840

/-!
# A314715: Coordination sequence Gal.6.454.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314715, there is no canonical definition to state claims against.
-/

/-! ## A314715.P13263817146642251210

`A250120(n)-A127324(∑[ceil(3^(n-1))])`
-/

namespace A314715.P13263817146642251210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A127324 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A314715.P13263817146642251210

/-! ## A314715.P6652463086223845448

`A072154(2*n)-A127324(A007051(n))`
-/

namespace A314715.P6652463086223845448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A127324 (A007051 n).toNat

end

end A314715.P6652463086223845448

/-! ## A314715.P17476533669746040859

`A047486(A008486(n)+1)-A127324(A007051(n))`
-/

namespace A314715.P17476533669746040859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A127324 (A007051 n).toNat

end

end A314715.P17476533669746040859

/-! ## A314715.P1353892139916459951

`A047486(A033627(n+2))-A127324(A007051(n))`
-/

namespace A314715.P1353892139916459951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A127324 (A007051 n).toNat

end

end A314715.P1353892139916459951

/-! ## A314715.P57840048942243444

`A004525(A301730(2*n))-A127324(A007051(n))`
-/

namespace A314715.P57840048942243444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301730 (2 * n)).toNat - A127324 (A007051 n).toNat

end

end A314715.P57840048942243444

/-!
# A314716: Coordination sequence Gal.6.357.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314716, there is no canonical definition to state claims against.
-/

/-! ## A314716.P10108339138982337689

`or(A090629(A001045(n)), A311613(n))`
-/

namespace A314716.P10108339138982337689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090629 (A001045 n).toNat) (A311613 n)

end

end A314716.P10108339138982337689

/-! ## A314716.P14936802247795232358

`xor(A011655(A118675(n+1)), A312143(n))`
-/

namespace A314716.P14936802247795232358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 (A118675 (n + 1)).toNat) (A312143 n)

end

end A314716.P14936802247795232358

/-! ## A314716.P4780645698809550245

`∑[dr(A348038(A085645(n+1)))]`
-/

namespace A314716.P4780645698809550245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348038 (A085645 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314716.P4780645698809550245

/-! ## A314716.P15131443746837220668

`xor(A322720(n+1)%2, A312144(n))`
-/

namespace A314716.P15131443746837220668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A322720 (n + 1)) 2) (A312144 n)

end

end A314716.P15131443746837220668

/-!
# A314717: Coordination sequence Gal.5.268.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314717, there is no canonical definition to state claims against.
-/

/-! ## A314717.P149014570895235492

`A314891(n)-A174898(A326006(n))`
-/

namespace A314717.P149014570895235492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314891 n - A174898 (A326006 n).toNat

end

end A314717.P149014570895235492

/-! ## A314717.P5194797671242307696

`A314891(n)-A333818(A314059(2*n+1))`
-/

namespace A314717.P5194797671242307696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314891 n - A333818 (A314059 (2 * n + 1)).toNat

end

end A314717.P5194797671242307696

/-! ## A314717.P8685206089958497881

`A004396(A298786(2*n))+A002993(A112442(n+1))`
-/

namespace A314717.P8685206089958497881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298786 (2 * n)).toNat + A002993 (A112442 (n + 1)).toNat

end

end A314717.P8685206089958497881

/-!
# A314718: Coordination sequence Gal.5.176.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314718, there is no canonical definition to state claims against.
-/

/-! ## A314718.P11858524689200211533

`A001222(2^A136555(n))+4*n`
-/

namespace A314718.P11858524689200211533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A136555 n : ℤ))).toNat + (4 * n : ℤ)

end

end A314718.P11858524689200211533

/-! ## A314718.P9762486201670436815

`A059481(n)+A001414(A000302(n))`
-/

namespace A314718.P9762486201670436815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n + A001414 (A000302 n).toNat

end

end A314718.P9762486201670436815

/-! ## A314718.P14268710209762769695

`A136555(n)+A001414(A000302(n))`
-/

namespace A314718.P14268710209762769695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136555 n + A001414 (A000302 n).toNat

end

end A314718.P14268710209762769695

/-!
# A314719: Coordination sequence Gal.6.266.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314719, there is no canonical definition to state claims against.
-/

/-! ## A314719.P15340705102772893680

`or(A014194(A154230(n)), A312100(n))`
-/

namespace A314719.P15340705102772893680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014194 (A154230 n).toNat) (A312100 n)

end

end A314719.P15340705102772893680

/-! ## A314719.P7617306617384815377

`or(A267208(A112356(n)), A311601(n))`
-/

namespace A314719.P7617306617384815377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267208 (A112356 n).toNat) (A311601 n)

end

end A314719.P7617306617384815377

/-! ## A314719.P5522735507362293107

`or(A267208(A112360(n)), A311601(n))`
-/

namespace A314719.P5522735507362293107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267208 (A112360 n).toNat) (A311601 n)

end

end A314719.P5522735507362293107

/-! ## A314719.P7528780411567239715

`or(A267208(A112356(n)), A312100(n))`
-/

namespace A314719.P7528780411567239715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267208 (A112356 n).toNat) (A312100 n)

end

end A314719.P7528780411567239715

/-! ## A314719.P17568991671865223973

`or(A267208(A112360(n)), A312100(n))`
-/

namespace A314719.P17568991671865223973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267208 (A112360 n).toNat) (A312100 n)

end

end A314719.P17568991671865223973

/-!
# A314720: Coordination sequence Gal.6.245.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314720, the canonical program `A314720.P2366857365604543786` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314720 has offset 0).

The definition of A314720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314720.P11015391347129917229

`A008574(n)+A313639(n)-A312944(n)`
-/

namespace A314720.P11015391347129917229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313639 n - A312944 n)

end

end A314720.P11015391347129917229

namespace A314720

/-- `A008574(n)+A313639(n)-A312944(n)` -/
def P11015391347129917229.Spec : Prop :=
  ∀ n, P11015391347129917229.a n = A314720 n

end A314720

/-! ## A314720.P6765635916919536072

`(A315212(n)+A008574(n))/2`
-/

namespace A314720.P6765635916919536072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315212 n + A008574 n : ℚ) / 2

end

end A314720.P6765635916919536072

namespace A314720

/-- `(A315212(n)+A008574(n))/2` -/
def P6765635916919536072.Spec : Prop :=
  ∀ n, P6765635916919536072.a n = (A314720 n : ℚ)

end A314720

/-! ## A314720.P2366857365604543786

`abs(A008592(n)-A314210(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314720

/-- `abs(A008592(n)-A314210(n))` -/
def P2366857365604543786.Spec : Prop :=
  ∀ n, P2366857365604543786.a n = A314720 n

theorem P2366857365604543786.correct : P2366857365604543786.Spec := by
  intro n
  simp only [A314720]

end A314720

/-! ## A314720.P15896233261844071776

`A008458(n)+A008574(n)-A314210(n)`
-/

namespace A314720.P15896233261844071776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314210 n)

end

end A314720.P15896233261844071776

namespace A314720

/-- `A008458(n)+A008574(n)-A314210(n)` -/
def P15896233261844071776.Spec : Prop :=
  ∀ n, P15896233261844071776.a n = A314720 n

end A314720

/-! ## A314720.P17572976247782113612

`2*A314894(n)-A180004(A314894(n))`
-/

namespace A314720.P17572976247782113612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314894 n - A180004 (A314894 n).toNat

end

end A314720.P17572976247782113612

namespace A314720

/-- `2*A314894(n)-A180004(A314894(n))` -/
def P17572976247782113612.Spec : Prop :=
  ∀ n, P17572976247782113612.a n = A314720 n

end A314720

/-! ## A314720.P4207981744192693367

`A004525(A313639(n))+2*n`
-/

namespace A314720.P4207981744192693367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313639 n).toNat + (2 * n : ℤ)

end

end A314720.P4207981744192693367

namespace A314720

/-- `A004525(A313639(n))+2*n` -/
def P4207981744192693367.Spec : Prop :=
  ∀ n, P4207981744192693367.a n = A314720 n

end A314720

/-! ## A314720.P3034457775676171589

`A004525(A313738(n))+2*n`
-/

namespace A314720.P3034457775676171589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313738 n).toNat + (2 * n : ℤ)

end

end A314720.P3034457775676171589

namespace A314720

/-- `A004525(A313738(n))+2*n` -/
def P3034457775676171589.Spec : Prop :=
  ∀ n, P3034457775676171589.a n = A314720 n

end A314720

/-! ## A314720.P8449953745197538239

`A004525(A313745(n))+2*n`
-/

namespace A314720.P8449953745197538239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313745 n).toNat + (2 * n : ℤ)

end

end A314720.P8449953745197538239

namespace A314720

/-- `A004525(A313745(n))+2*n` -/
def P8449953745197538239.Spec : Prop :=
  ∀ n, P8449953745197538239.a n = A314720 n

end A314720

/-! ## A314720.P9617049740040683187

`A004525(A314029(n))+2*n`
-/

namespace A314720.P9617049740040683187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314029 n).toNat + (2 * n : ℤ)

end

end A314720.P9617049740040683187

namespace A314720

/-- `A004525(A314029(n))+2*n` -/
def P9617049740040683187.Spec : Prop :=
  ∀ n, P9617049740040683187.a n = A314720 n

end A314720

/-! ## A314720.P16067344824507437198

`A004525(A314032(n))+2*n`
-/

namespace A314720.P16067344824507437198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314032 n).toNat + (2 * n : ℤ)

end

end A314720.P16067344824507437198

namespace A314720

/-- `A004525(A314032(n))+2*n` -/
def P16067344824507437198.Spec : Prop :=
  ∀ n, P16067344824507437198.a n = A314720 n

end A314720

/-! ## A314720.P8822605109049109526

`A004525(A314963(n))+2*n`
-/

namespace A314720.P8822605109049109526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314963 n).toNat + (2 * n : ℤ)

end

end A314720.P8822605109049109526

namespace A314720

/-- `A004525(A314963(n))+2*n` -/
def P8822605109049109526.Spec : Prop :=
  ∀ n, P8822605109049109526.a n = A314720 n

end A314720

/-! ## A314720.P5134478367343042761

`A004525(A315062(n))+2*n`
-/

namespace A314720.P5134478367343042761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315062 n).toNat + (2 * n : ℤ)

end

end A314720.P5134478367343042761

namespace A314720

/-- `A004525(A315062(n))+2*n` -/
def P5134478367343042761.Spec : Prop :=
  ∀ n, P5134478367343042761.a n = A314720 n

end A314720

/-! ## A314720.P5972036806652648634

`A004525(A315261(n))+2*n`
-/

namespace A314720.P5972036806652648634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315261 n).toNat + (2 * n : ℤ)

end

end A314720.P5972036806652648634

namespace A314720

/-- `A004525(A315261(n))+2*n` -/
def P5972036806652648634.Spec : Prop :=
  ∀ n, P5972036806652648634.a n = A314720 n

end A314720

/-! ## A314720.P4036621203663078976

`A004525(A315264(n))+2*n`
-/

namespace A314720.P4036621203663078976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315264 n).toNat + (2 * n : ℤ)

end

end A314720.P4036621203663078976

namespace A314720

/-- `A004525(A315264(n))+2*n` -/
def P4036621203663078976.Spec : Prop :=
  ∀ n, P4036621203663078976.a n = A314720 n

end A314720

/-! ## A314720.P2679308537282436064

`A092038(A314032(n))+A130824(n)/2`
-/

namespace A314720.P2679308537282436064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092038 (A314032 n).toNat : ℚ) + (A130824 n : ℚ) / 2

end

end A314720.P2679308537282436064

namespace A314720

/-- `A092038(A314032(n))+A130824(n)/2` -/
def P2679308537282436064.Spec : Prop :=
  ∀ n, P2679308537282436064.a n = (A314720 n : ℚ)

end A314720

/-! ## A314720.P7692582847421645560

`A065502(A315492(n))/2`
-/

namespace A314720.P7692582847421645560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A315492 n).toNat : ℚ) / 2

end

end A314720.P7692582847421645560

namespace A314720

/-- `A065502(A315492(n))/2` -/
def P7692582847421645560.Spec : Prop :=
  ∀ n, P7692582847421645560.a n = (A314720 n : ℚ)

end A314720

/-! ## A314720.P5053263121900408007

`A004396(A315548(n)+n)`
-/

namespace A314720.P5053263121900408007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315548 n + (n : ℤ)).toNat

end

end A314720.P5053263121900408007

namespace A314720

/-- `A004396(A315548(n)+n)` -/
def P5053263121900408007.Spec : Prop :=
  ∀ n, P5053263121900408007.a n = A314720 n

end A314720

/-! ## A314720.P1230731281681963599

`A004396(A315709(n)+n)`
-/

namespace A314720.P1230731281681963599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315709 n + (n : ℤ)).toNat

end

end A314720.P1230731281681963599

namespace A314720

/-- `A004396(A315709(n)+n)` -/
def P1230731281681963599.Spec : Prop :=
  ∀ n, P1230731281681963599.a n = A314720 n

end A314720

/-! ## A314720.P1820084063855331207

`A274616(A315548(n)+n)`
-/

namespace A314720.P1820084063855331207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315548 n + (n : ℤ)).toNat

end

end A314720.P1820084063855331207

namespace A314720

/-- `A274616(A315548(n)+n)` -/
def P1820084063855331207.Spec : Prop :=
  ∀ n, P1820084063855331207.a n = A314720 n

end A314720

/-! ## A314720.P9271420488205994359

`A004396(A310456(2*n)-A008585(n))`
-/

namespace A314720.P9271420488205994359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310456 (2 * n) - A008585 n).toNat

end

end A314720.P9271420488205994359

namespace A314720

/-- `A004396(A310456(2*n)-A008585(n))` -/
def P9271420488205994359.Spec : Prop :=
  ∀ n, P9271420488205994359.a n = A314720 n

end A314720

/-!
# A314721: Coordination sequence Gal.6.477.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314721, there is no canonical definition to state claims against.
-/

/-! ## A314721.P6898706649416350715

`A314719(n)+A000045(A165877(n))`
-/

namespace A314721.P6898706649416350715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314719 n + A000045 (A165877 n).toNat

end

end A314721.P6898706649416350715

/-! ## A314721.P4279015363032461181

`or(A112609(A213432(n)), A312125(n))`
-/

namespace A314721.P4279015363032461181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112609 (A213432 n).toNat) (A312125 n)

end

end A314721.P4279015363032461181

/-! ## A314721.P17521014119162618643

`A314719(n)+A165877(A061862(n+1))`
-/

namespace A314721.P17521014119162618643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314719 n + A165877 (A061862 (n + 1)).toNat

end

end A314721.P17521014119162618643

/-! ## A314721.P7674339106933671785

`or(A000164(A267946(n+1)), A311327(n))`
-/

namespace A314721.P7674339106933671785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000164 (A267946 (n + 1)).toNat) (A311327 n)

end

end A314721.P7674339106933671785

/-! ## A314721.P13677083755501121248

`A331383(A098575(n))+A184117(3*n+1)`
-/

namespace A314721.P13677083755501121248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A098575 n).toNat + A184117 (3 * n + 1)

end

end A314721.P13677083755501121248

/-!
# A314722: Coordination sequence Gal.6.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314722, there is no canonical definition to state claims against.
-/

/-! ## A314722.P456692563525251525

`or(A124760(A241519(n)), A314720(n))`
-/

namespace A314722.P456692563525251525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124760 (A241519 n).toNat) (A314720 n)

end

end A314722.P456692563525251525

/-! ## A314722.P9240201544162865007

`or(A023582(A111286(n+1)), A312939(n))`
-/

namespace A314722.P9240201544162865007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023582 (A111286 (n + 1)).toNat) (A312939 n)

end

end A314722.P9240201544162865007

/-! ## A314722.P7392440168502461230

`or(A001221(A056332(n+1)), A314720(n))`
-/

namespace A314722.P7392440168502461230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A056332 (n + 1)).toNat) (A314720 n)

end

end A314722.P7392440168502461230

/-! ## A314722.P12896184181361115973

`or(A124769(A060187(n+1)), A312125(n))`
-/

namespace A314722.P12896184181361115973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124769 (A060187 (n + 1)).toNat) (A312125 n)

end

end A314722.P12896184181361115973

/-! ## A314722.P334384553571624838

`or(A007318(n), A311620(A062399(n)))`
-/

namespace A314722.P334384553571624838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 n) (A311620 (A062399 n).toNat)

end

end A314722.P334384553571624838

/-!
# A314723: Coordination sequence Gal.6.458.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314723, there is no canonical definition to state claims against.
-/

/-! ## A314723.P4961545205831213053

`or(A001221(A069944(n+1)), A314720(n))`
-/

namespace A314723.P4961545205831213053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A069944 (n + 1)).toNat) (A314720 n)

end

end A314723.P4961545205831213053

/-! ## A314723.P11853970512834786913

`or(A044949(n!), A312943(n))`
-/

namespace A314723.P11853970512834786913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044949 (Nat.factorial n)) (A312943 n)

end

end A314723.P11853970512834786913

/-! ## A314723.P7559972128776940562

`A132399(A249936(n))+A008586(n)`
-/

namespace A314723.P7559972128776940562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (A249936 n).toNat + A008586 n

end

end A314723.P7559972128776940562

/-! ## A314723.P7968203715988841650

`A314168(n)-A001222(A068764(n))`
-/

namespace A314723.P7968203715988841650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314168 n - A001222 (A068764 n).toNat

end

end A314723.P7968203715988841650

/-! ## A314723.P5575229112058446924

`or(A001222(A000266(n)), A314720(n))`
-/

namespace A314723.P5575229112058446924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A000266 n).toNat) (A314720 n)

end

end A314723.P5575229112058446924

/-!
# A314724: Coordination sequence Gal.6.76.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314724, there is no canonical definition to state claims against.
-/

/-! ## A314724.P16488045470728286861

`A311260(n)+A001221(A000667(n))`
-/

namespace A314724.P16488045470728286861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311260 n + A001221 (A000667 n).toNat

end

end A314724.P16488045470728286861

/-! ## A314724.P5511803350573295959

`A250120(n)-A182850(A056323(n))`
-/

namespace A314724.P5511803350573295959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A182850 (A056323 n).toNat

end

end A314724.P5511803350573295959

/-! ## A314724.P10778009212905607760

`A250120(n)-A373247(A033321(n))`
-/

namespace A314724.P10778009212905607760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A373247 (A033321 n).toNat

end

end A314724.P10778009212905607760

/-! ## A314724.P3518461106069596820

`A314847(n)-A046660(A038813(n+1))`
-/

namespace A314724.P3518461106069596820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n - A046660 (A038813 (n + 1)).toNat

end

end A314724.P3518461106069596820

/-! ## A314724.P10309771233566199382

`A315543(n)-A029837(A143742(n+1))`
-/

namespace A314724.P10309771233566199382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - A029837 (A143742 (n + 1)).toNat

end

end A314724.P10309771233566199382

/-!
# A314725: Coordination sequence Gal.5.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314725, the canonical program `A314725.P3459812041028605119` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314725 has offset 0).

The definition of A314725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314725.P3459812041028605119

`A330025(n)+A311552(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314725

/-- `A330025(n)+A311552(n)` -/
def P3459812041028605119.Spec : Prop :=
  ∀ n, P3459812041028605119.a n = A314725 n

theorem P3459812041028605119.correct : P3459812041028605119.Spec := by
  intro n
  simp only [A314725]

end A314725

/-! ## A314725.P3073785216312224616

`abs(A008591(n)-A313025(n))`
-/

namespace A314725.P3073785216312224616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313025 n|

end

end A314725.P3073785216312224616

namespace A314725

/-- `abs(A008591(n)-A313025(n))` -/
def P3073785216312224616.Spec : Prop :=
  ∀ n, P3073785216312224616.a n = A314725 n

end A314725

/-! ## A314725.P17505310684097572786

`A151988(n)+A314708(n)-n`
-/

namespace A314725.P17505310684097572786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A314708 n - (n : ℤ))

end

end A314725.P17505310684097572786

namespace A314725

/-- `A151988(n)+A314708(n)-n` -/
def P17505310684097572786.Spec : Prop :=
  ∀ n, P17505310684097572786.a n = A314725 n

end A314725

/-! ## A314725.P625201091297152165

`abs(A008592(n)-(A313025(n)+n))`
-/

namespace A314725.P625201091297152165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313025 n + (n : ℤ))|

end

end A314725.P625201091297152165

namespace A314725

/-- `abs(A008592(n)-(A313025(n)+n))` -/
def P625201091297152165.Spec : Prop :=
  ∀ n, P625201091297152165.a n = A314725 n

end A314725

/-! ## A314725.P8693473820096265148

`A047363(n+1)+A311440(n)-n`
-/

namespace A314725.P8693473820096265148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A311440 n - (n : ℤ))

end

end A314725.P8693473820096265148

namespace A314725

/-- `A047363(n+1)+A311440(n)-n` -/
def P8693473820096265148.Spec : Prop :=
  ∀ n, P8693473820096265148.a n = A314725 n

end A314725

/-! ## A314725.P14277349340958822949

`A008574(n)+A004525(A151988(n))`
-/

namespace A314725.P14277349340958822949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A151988 n).toNat

end

end A314725.P14277349340958822949

namespace A314725

/-- `A008574(n)+A004525(A151988(n))` -/
def P14277349340958822949.Spec : Prop :=
  ∀ n, P14277349340958822949.a n = A314725 n

end A314725

/-! ## A314725.P17015208151388895683

`A005843(A008574(n))+n-A313025(n)`
-/

namespace A314725.P17015208151388895683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313025 n)

end

end A314725.P17015208151388895683

namespace A314725

/-- `A005843(A008574(n))+n-A313025(n)` -/
def P17015208151388895683.Spec : Prop :=
  ∀ n, P17015208151388895683.a n = A314725 n

end A314725

/-! ## A314725.P17991704713730831433

`A008458(n)+A008486(n)-A313025(n)`
-/

namespace A314725.P17991704713730831433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313025 n)

end

end A314725.P17991704713730831433

namespace A314725

/-- `A008458(n)+A008486(n)-A313025(n)` -/
def P17991704713730831433.Spec : Prop :=
  ∀ n, P17991704713730831433.a n = A314725 n

end A314725

/-! ## A314725.P11726333061693697109

`A311440(n)+A004525(A008706(n)-A311440(n))`
-/

namespace A314725.P11726333061693697109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A004525 (A008706 n - A311440 n).toNat

end

end A314725.P11726333061693697109

namespace A314725

/-- `A311440(n)+A004525(A008706(n)-A311440(n))` -/
def P11726333061693697109.Spec : Prop :=
  ∀ n, P11726333061693697109.a n = A314725 n

end A314725

/-! ## A314725.P16207241465090287034

`A313537(n)-A330025(n-A330025(n))`
-/

namespace A314725.P16207241465090287034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A314725.P16207241465090287034

namespace A314725

/-- `A313537(n)-A330025(n-A330025(n))` -/
def P16207241465090287034.Spec : Prop :=
  ∀ n, P16207241465090287034.a n = A314725 n

theorem P16207241465090287034.correct : P16207241465090287034.Spec := by
  intro n
  simp only [A314725, Nat.add_sub_cancel, A314725.P16207241465090287034.a, A314725.P3459812041028605119.a, A311552, A311552.P8027257067959777641.a, A313537, A313537.P8184197836610671294.a, A330025, A330025.P16976327817596103196.a, A008591, A008591.P8937864482545511630.a, A011558, A011558.P14291727921269463220.a, A253262, A253262.P6184646248567078382.a, A312077, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314725

/-! ## A314725.P17066494057253295360

`A315397(n)-A253262(n)`
-/

namespace A314725.P17066494057253295360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n - A253262 n

end

end A314725.P17066494057253295360

namespace A314725

/-- `A315397(n)-A253262(n)` -/
def P17066494057253295360.Spec : Prop :=
  ∀ n, P17066494057253295360.a n = A314725 n

theorem P17066494057253295360.correct : P17066494057253295360.Spec := by
  intro n
  simp only [A314725, Nat.add_sub_cancel, A314725.P17066494057253295360.a, A314725.P3459812041028605119.a, A253262, A253262.P6184646248567078382.a, A311552, A311552.P8027257067959777641.a, A315397, A315397.P1916688396986312343.a, A330025, A330025.P16976327817596103196.a, A008591, A008591.P8937864482545511630.a, A011558, A011558.P14291727921269463220.a, A312077, A312077.P5583150468324327588.a, A313506, A313506.P8115017678468763868.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314725

/-! ## A314725.P3985841914716667079

`(A315215(n)+A008574(n))/2`
-/

namespace A314725.P3985841914716667079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315215 n + A008574 n : ℚ) / 2

end

end A314725.P3985841914716667079

namespace A314725

/-- `(A315215(n)+A008574(n))/2` -/
def P3985841914716667079.Spec : Prop :=
  ∀ n, P3985841914716667079.a n = (A314725 n : ℚ)

end A314725

/-! ## A314725.P5800546302614035729

`abs(10*n-A314209(n))`
-/

namespace A314725.P5800546302614035729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314209 n|

end

end A314725.P5800546302614035729

namespace A314725

/-- `abs(10*n-A314209(n))` -/
def P5800546302614035729.Spec : Prop :=
  ∀ n, P5800546302614035729.a n = A314725 n

end A314725

/-! ## A314725.P8833868585884223665

`A008458(n)+A008574(n)-A314209(n)`
-/

namespace A314725.P8833868585884223665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314209 n)

end

end A314725.P8833868585884223665

namespace A314725

/-- `A008458(n)+A008574(n)-A314209(n)` -/
def P8833868585884223665.Spec : Prop :=
  ∀ n, P8833868585884223665.a n = A314725 n

end A314725

/-! ## A314725.P12965605096371778897

`A315496(n)-n`
-/

namespace A314725.P12965605096371778897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 n - (n : ℤ)

end

end A314725.P12965605096371778897

namespace A314725

/-- `A315496(n)-n` -/
def P12965605096371778897.Spec : Prop :=
  ∀ n, P12965605096371778897.a n = A314725 n

theorem P12965605096371778897.correct : P12965605096371778897.Spec := by
  intro n
  simp only [A314725, Nat.add_sub_cancel, A314725.P12965605096371778897.a, A314725.P3459812041028605119.a, A311552, A311552.P8027257067959777641.a, A315496, A315496.P12709107915748676081.a, A330025, A330025.P16976327817596103196.a, A008591, A008591.P8937864482545511630.a, A011558, A011558.P14291727921269463220.a, A253262, A253262.P6184646248567078382.a, A312077, A312077.P5583150468324327588.a, A315397, A315397.P1916688396986312343.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A313506, A313506.P8115017678468763868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314725

/-! ## A314725.P16078101222207737941

`A315547(n)-A047263(n+1)`
-/

namespace A314725.P16078101222207737941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047263 (n + 1)

end

end A314725.P16078101222207737941

namespace A314725

/-- `A315547(n)-A047263(n+1)` -/
def P16078101222207737941.Spec : Prop :=
  ∀ n, P16078101222207737941.a n = A314725 n

end A314725

/-! ## A314725.P9531562430680406159

`A005843(A008458(n)-n)-A314209(n)`
-/

namespace A314725.P9531562430680406159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314209 n

end

end A314725.P9531562430680406159

namespace A314725

/-- `A005843(A008458(n)-n)-A314209(n)` -/
def P9531562430680406159.Spec : Prop :=
  ∀ n, P9531562430680406159.a n = A314725 n

end A314725

/-! ## A314725.P883835911688439486

`A004525(A313752(n))+2*n`
-/

namespace A314725.P883835911688439486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313752 n).toNat + (2 * n : ℤ)

end

end A314725.P883835911688439486

namespace A314725

/-- `A004525(A313752(n))+2*n` -/
def P883835911688439486.Spec : Prop :=
  ∀ n, P883835911688439486.a n = A314725 n

end A314725

/-! ## A314725.P15983949487760105703

`A004525(A314972(n))+2*n`
-/

namespace A314725.P15983949487760105703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314972 n).toNat + (2 * n : ℤ)

end

end A314725.P15983949487760105703

namespace A314725

/-- `A004525(A314972(n))+2*n` -/
def P15983949487760105703.Spec : Prop :=
  ∀ n, P15983949487760105703.a n = A314725 n

end A314725

/-! ## A314725.P13085490445945494751

`A004525(A315069(n))+2*n`
-/

namespace A314725.P13085490445945494751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315069 n).toNat + (2 * n : ℤ)

end

end A314725.P13085490445945494751

namespace A314725

/-- `A004525(A315069(n))+2*n` -/
def P13085490445945494751.Spec : Prop :=
  ∀ n, P13085490445945494751.a n = A314725 n

end A314725

/-!
# A314726: Coordination sequence Gal.6.259.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314726, the canonical program `A314726.P6332999963874052355` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314726 has offset 0).

The definition of A314726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314726.P6332999963874052355

`A311196(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314726

/-- `A311196(n)+A004525(n)` -/
def P6332999963874052355.Spec : Prop :=
  ∀ n, P6332999963874052355.a n = A314726 n

theorem P6332999963874052355.correct : P6332999963874052355.Spec := by
  intro n
  simp only [A314726]

end A314726

/-! ## A314726.P1303456335276972756

`A312184(n)+A128834(n)`
-/

namespace A314726.P1303456335276972756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A128834 n

end

end A314726.P1303456335276972756

namespace A314726

/-- `A312184(n)+A128834(n)` -/
def P1303456335276972756.Spec : Prop :=
  ∀ n, P1303456335276972756.a n = A314726 n

end A314726

/-! ## A314726.P16532500860571474180

`abs(A008592(n)-(A313023(n)+n))`
-/

namespace A314726.P16532500860571474180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313023 n + (n : ℤ))|

end

end A314726.P16532500860571474180

namespace A314726

/-- `abs(A008592(n)-(A313023(n)+n))` -/
def P16532500860571474180.Spec : Prop :=
  ∀ n, P16532500860571474180.a n = A314726 n

end A314726

/-! ## A314726.P10448736066578892367

`A047229(n+1)+A311196(n)-n`
-/

namespace A314726.P10448736066578892367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) + (A311196 n - (n : ℤ))

end

end A314726.P10448736066578892367

namespace A314726

/-- `A047229(n+1)+A311196(n)-n` -/
def P10448736066578892367.Spec : Prop :=
  ∀ n, P10448736066578892367.a n = A314726 n

end A314726

/-! ## A314726.P6441795905879889050

`A047424(n+1)+A311512(n)-n`
-/

namespace A314726.P6441795905879889050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A311512 n - (n : ℤ))

end

end A314726.P6441795905879889050

namespace A314726

/-- `A047424(n+1)+A311512(n)-n` -/
def P6441795905879889050.Spec : Prop :=
  ∀ n, P6441795905879889050.a n = A314726 n

end A314726

/-! ## A314726.P9168805061101624824

`A008458(n)+A008486(n)-A313023(n)`
-/

namespace A314726.P9168805061101624824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313023 n)

end

end A314726.P9168805061101624824

namespace A314726

/-- `A008458(n)+A008486(n)-A313023(n)` -/
def P9168805061101624824.Spec : Prop :=
  ∀ n, P9168805061101624824.a n = A314726 n

end A314726

/-! ## A314726.P6853278593314741372

`A313583(n)-A002264(n+1)`
-/

namespace A314726.P6853278593314741372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A002264 (n + 1)

end

end A314726.P6853278593314741372

namespace A314726

/-- `A313583(n)-A002264(n+1)` -/
def P6853278593314741372.Spec : Prop :=
  ∀ n, P6853278593314741372.a n = A314726 n

end A314726

/-! ## A314726.P17575994532163896036

`A004396(n)+A313583(n)-n`
-/

namespace A314726.P17575994532163896036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313583 n - (n : ℤ))

end

end A314726.P17575994532163896036

namespace A314726

/-- `A004396(n)+A313583(n)-n` -/
def P17575994532163896036.Spec : Prop :=
  ∀ n, P17575994532163896036.a n = A314726 n

end A314726

/-! ## A314726.P1966646884639180889

`A008576(n)+A313583(n)-A008486(n)`
-/

namespace A314726.P1966646884639180889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313583 n - A008486 n)

end

end A314726.P1966646884639180889

namespace A314726

/-- `A008576(n)+A313583(n)-A008486(n)` -/
def P1966646884639180889.Spec : Prop :=
  ∀ n, P1966646884639180889.a n = A314726 n

end A314726

/-! ## A314726.P6477717868377289038

`A313739(n)-A004524(n+1)`
-/

namespace A314726.P6477717868377289038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A004524 (n + 1)

end

end A314726.P6477717868377289038

namespace A314726

/-- `A313739(n)-A004524(n+1)` -/
def P6477717868377289038.Spec : Prop :=
  ∀ n, P6477717868377289038.a n = A314726 n

end A314726

/-! ## A314726.P9599960774497946713

`A004525(n)+A313739(n)-n`
-/

namespace A314726.P9599960774497946713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313739 n - (n : ℤ))

end

end A314726.P9599960774497946713

namespace A314726

/-- `A004525(n)+A313739(n)-n` -/
def P9599960774497946713.Spec : Prop :=
  ∀ n, P9599960774497946713.a n = A314726 n

end A314726

/-! ## A314726.P14527361182502260544

`abs(A008593(n)-(A314208(n)+n))`
-/

namespace A314726.P14527361182502260544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A314208 n + (n : ℤ))|

end

end A314726.P14527361182502260544

namespace A314726

/-- `abs(A008593(n)-(A314208(n)+n))` -/
def P14527361182502260544.Spec : Prop :=
  ∀ n, P14527361182502260544.a n = A314726 n

end A314726

/-! ## A314726.P16645582449953763254

`A008458(n)+A008574(n)-A314208(n)`
-/

namespace A314726.P16645582449953763254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314208 n)

end

end A314726.P16645582449953763254

namespace A314726

/-- `A008458(n)+A008574(n)-A314208(n)` -/
def P16645582449953763254.Spec : Prop :=
  ∀ n, P16645582449953763254.a n = A314726 n

end A314726

/-! ## A314726.P1172449059964890410

`A315499(n)-n`
-/

namespace A314726.P1172449059964890410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315499 n - (n : ℤ)

end

end A314726.P1172449059964890410

namespace A314726

/-- `A315499(n)-n` -/
def P1172449059964890410.Spec : Prop :=
  ∀ n, P1172449059964890410.a n = A314726 n

end A314726

/-! ## A314726.P13927035147359978812

`A004525(A313754(n))+2*n`
-/

namespace A314726.P13927035147359978812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313754 n).toNat + (2 * n : ℤ)

end

end A314726.P13927035147359978812

namespace A314726

/-- `A004525(A313754(n))+2*n` -/
def P13927035147359978812.Spec : Prop :=
  ∀ n, P13927035147359978812.a n = A314726 n

end A314726

/-! ## A314726.P5722237079700956311

`A004525(A314974(n))+2*n`
-/

namespace A314726.P5722237079700956311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314974 n).toNat + (2 * n : ℤ)

end

end A314726.P5722237079700956311

namespace A314726

/-- `A004525(A314974(n))+2*n` -/
def P5722237079700956311.Spec : Prop :=
  ∀ n, P5722237079700956311.a n = A314726 n

end A314726

/-! ## A314726.P3667988982947387510

`A004525(A315421(n))+2*n`
-/

namespace A314726.P3667988982947387510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315421 n).toNat + (2 * n : ℤ)

end

end A314726.P3667988982947387510

namespace A314726

/-- `A004525(A315421(n))+2*n` -/
def P3667988982947387510.Spec : Prop :=
  ∀ n, P3667988982947387510.a n = A314726 n

end A314726

/-! ## A314726.P14051805203964539154

`A004396(A314737(n)+A004396(n))+n`
-/

namespace A314726.P14051805203964539154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314737 n + A004396 n).toNat + (n : ℤ)

end

end A314726.P14051805203964539154

namespace A314726

/-- `A004396(A314737(n)+A004396(n))+n` -/
def P14051805203964539154.Spec : Prop :=
  ∀ n, P14051805203964539154.a n = A314726 n

end A314726

/-! ## A314726.P103840992420583600

`A004396(A314903(n)+A004525(n))+n`
-/

namespace A314726.P103840992420583600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314903 n + A004525 n).toNat + (n : ℤ)

end

end A314726.P103840992420583600

namespace A314726

/-- `A004396(A314903(n)+A004525(n))+n` -/
def P103840992420583600.Spec : Prop :=
  ∀ n, P103840992420583600.a n = A314726 n

end A314726

/-! ## A314726.P10751697889439893580

`A004396(n)+A004396(A313583(n)+n)`
-/

namespace A314726.P10751697889439893580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313583 n + (n : ℤ)).toNat

end

end A314726.P10751697889439893580

namespace A314726

/-- `A004396(n)+A004396(A313583(n)+n)` -/
def P10751697889439893580.Spec : Prop :=
  ∀ n, P10751697889439893580.a n = A314726 n

end A314726

/-!
# A314727: Coordination sequence Gal.6.360.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314727, there is no canonical definition to state claims against.
-/

/-! ## A314727.P10557468522749229419

`A313036(n)+A101455(n)`
-/

namespace A314727.P10557468522749229419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n + A101455 n

end

end A314727.P10557468522749229419

/-! ## A314727.P3576964737824314014

`A313036(n)-A056594(n+1)`
-/

namespace A314727.P3576964737824314014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n - A056594 (n + 1)

end

end A314727.P3576964737824314014

/-! ## A314727.P13485169089585467854

`A056594(n+3)+A313036(n)`
-/

namespace A314727.P13485169089585467854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 3) + A313036 n

end

end A314727.P13485169089585467854

/-! ## A314727.P17194685456624706221

`A313036(n)-A176742(n+1)/2`
-/

namespace A314727.P17194685456624706221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313036 n : ℚ) - (A176742 (n + 1) : ℚ) / 2

end

end A314727.P17194685456624706221

/-! ## A314727.P2261383056184876823

`A313036(n)-A110161(3*n+4)`
-/

namespace A314727.P2261383056184876823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n - A110161 (3 * n + 4)

end

end A314727.P2261383056184876823

/-!
# A314728: Coordination sequence Gal.6.294.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314728, there is no canonical definition to state claims against.
-/

/-! ## A314728.P8401309950723774034

`A322028(A150590(n))+A311340(n)`
-/

namespace A314728.P8401309950723774034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (A150590 n).toNat + A311340 n

end

end A314728.P8401309950723774034

/-! ## A314728.P6996173545800385882

`A250120(n)-A001842(A071731(n))`
-/

namespace A314728.P6996173545800385882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001842 (A071731 n).toNat

end

end A314728.P6996173545800385882

/-! ## A314728.P4558975429356491832

`A314763(n)-A014081(A003701(n))`
-/

namespace A314728.P4558975429356491832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314763 n - A014081 (A003701 n).toNat

end

end A314728.P4558975429356491832

/-! ## A314728.P10536768565257081998

`A250120(n)-A051010(A356934(n))`
-/

namespace A314728.P10536768565257081998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A051010 (A356934 n).toNat

end

end A314728.P10536768565257081998

/-!
# A314729: Coordination sequence Gal.6.469.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314729, there is no canonical definition to state claims against.
-/

/-! ## A314729.P8515936202402363544

`A039996(A259792(n))+4*n`
-/

namespace A314729.P8515936202402363544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A259792 n).toNat + (4 * n : ℤ)

end

end A314729.P8515936202402363544

/-! ## A314729.P10555326513362217969

`A314735(n)-A074290(A215694(n))`
-/

namespace A314729.P10555326513362217969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314735 n - A074290 (A215694 n).toNat

end

end A314729.P10555326513362217969

/-! ## A314729.P13263362256034282380

`4*n+A037904(A149136(n))+1-A074290(A215694(n))`
-/

namespace A314729.P13263362256034282380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A037904 (A149136 n).toNat + 1) - A074290 (A215694 n).toNat

end

end A314729.P13263362256034282380

/-! ## A314729.P1989296853396911952

`A222254(A085500(n+1)+A001222(4^n))+A222254(n)`
-/

namespace A314729.P1989296853396911952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A085500 (n + 1) + A001222 (4 ^ n)).toNat + A222254 n

end

end A314729.P1989296853396911952

/-!
# A314730: Coordination sequence Gal.6.580.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314730, there is no canonical definition to state claims against.
-/

/-! ## A314730.P8661443547728909545

`A301697(n)-A001222(A000958(n+1))`
-/

namespace A314730.P8661443547728909545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A001222 (A000958 (n + 1)).toNat

end

end A314730.P8661443547728909545

/-! ## A314730.P15802946383659132217

`A314734(n)+A178798(n²)`
-/

namespace A314730.P15802946383659132217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314734 n + A178798 (n ^ 2)

end

end A314730.P15802946383659132217

/-! ## A314730.P9749702995326125953

`A250120(n)-A000925(A001550(n))`
-/

namespace A314730.P9749702995326125953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000925 (A001550 n).toNat

end

end A314730.P9749702995326125953

/-! ## A314730.P867093545667620151

`A250120(n)-A035169(A001732(n))`
-/

namespace A314730.P867093545667620151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A035169 (A001732 n).toNat

end

end A314730.P867093545667620151

/-! ## A314730.P4357044000474151368

`A315518(n)-A069903(A006012(n))`
-/

namespace A314730.P4357044000474151368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A069903 (A006012 n).toNat

end

end A314730.P4357044000474151368

/-!
# A314731: Coordination sequence Gal.6.189.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314731, there is no canonical definition to state claims against.
-/

/-! ## A314731.P15716409648672932811

`or(A051731(A115098(n)), A311624(n))`
-/

namespace A314731.P15716409648672932811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A115098 n).toNat) (A311624 n)

end

end A314731.P15716409648672932811

/-! ## A314731.P5595389487311896231

`or(A132138(A037028(n)), A311624(n))`
-/

namespace A314731.P5595389487311896231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132138 (A037028 n).toNat) (A311624 n)

end

end A314731.P5595389487311896231

/-! ## A314731.P5665200415286578472

`A010883(A112425(n+1))+4*n`
-/

namespace A314731.P5665200415286578472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A112425 (n + 1)).toNat + (4 * n : ℤ)

end

end A314731.P5665200415286578472

/-! ## A314731.P6833951532771849822

`A325166(A127632(n))+A016813(n)`
-/

namespace A314731.P6833951532771849822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A127632 n).toNat + A016813 n

end

end A314731.P6833951532771849822

/-! ## A314731.P3491411148078384743

`A359325(A000244(n))+A311341(n)`
-/

namespace A314731.P3491411148078384743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (A000244 n).toNat + A311341 n

end

end A314731.P3491411148078384743

/-!
# A314732: Coordination sequence Gal.6.173.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314732, there is no canonical definition to state claims against.
-/

/-! ## A314732.P5210324442980407495

`A311546(n)+A000007(A181153(n))`
-/

namespace A314732.P5210324442980407495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311546 n + A000007 (A181153 n).toNat

end

end A314732.P5210324442980407495

/-! ## A314732.P18230018625792626292

`A354767(3*n+1)+A120891(A354781(2*n+1))`
-/

namespace A314732.P18230018625792626292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (3 * n + 1) + A120891 (A354781 (2 * n + 1)).toNat

end

end A314732.P18230018625792626292

/-! ## A314732.P17607711481873160624

`∑[A338491(∏{p}[n+1, #²])]`
-/

namespace A314732.P17607711481873160624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314732.P17607711481873160624

/-! ## A314732.P1977768249447709134

`∑[A338491(A078615(n+1))]`
-/

namespace A314732.P1977768249447709134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (A078615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314732.P1977768249447709134

/-! ## A314732.P12770082332299037753

`A242535(A335663(A335663(A184117(2*n+1))))`
-/

namespace A314732.P12770082332299037753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242535 (A335663 (A335663 (A184117 (2 * n + 1)).toNat).toNat).toNat

end

end A314732.P12770082332299037753

/-!
# A314733: Coordination sequence Gal.6.280.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314733, there is no canonical definition to state claims against.
-/

/-! ## A314733.P7497774157078429570

`A084582(n+1)-A071866(A002526(n))`
-/

namespace A314733.P7497774157078429570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084582 (n + 1) - A071866 (A002526 n).toNat

end

end A314733.P7497774157078429570

/-! ## A314733.P12614942415805542926

`A314915(n)-A307598(A268809(n+1))`
-/

namespace A314733.P12614942415805542926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314915 n - A307598 (A268809 (n + 1)).toNat

end

end A314733.P12614942415805542926

/-! ## A314733.P16629577021635650998

`A346129(A310697(n))`
-/

namespace A314733.P16629577021635650998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (A310697 n).toNat

end

end A314733.P16629577021635650998

/-! ## A314733.P1740644567731184852

`A276854(n)+record[A335519(n+1)]`
-/

namespace A314733.P1740644567731184852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314733.P1740644567731184852

/-!
# A314734: Coordination sequence Gal.6.485.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314734, there is no canonical definition to state claims against.
-/

/-! ## A314734.P17618904645833321023

`∑[A001222(A347193(n+1)+1)+3]-(n+3)`
-/

namespace A314734.P17618904645833321023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A347193 (n + 1) + 1).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A314734.P17618904645833321023

/-! ## A314734.P16747599601701230639

`A160755(A311512(n))+A110654(n)`
-/

namespace A314734.P16747599601701230639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A311512 n).toNat + A110654 n

end

end A314734.P16747599601701230639

/-! ## A314734.P4010399978696914362

`A227394(A313800(n)+A096921(n))`
-/

namespace A314734.P4010399978696914362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A313800 n + A096921 n).toNat

end

end A314734.P4010399978696914362

/-! ## A314734.P10873697157494713737

`A313746(n)-A001221(A297708(n))`
-/

namespace A314734.P10873697157494713737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A001221 (A297708 n).toNat

end

end A314734.P10873697157494713737

/-! ## A314734.P9522778946371544501

`A312144(n)+A284792(A214663(n+1))`
-/

namespace A314734.P9522778946371544501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A284792 (A214663 (n + 1)).toNat

end

end A314734.P9522778946371544501

/-!
# A314735: Coordination sequence Gal.5.167.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314735, there is no canonical definition to state claims against.
-/

/-! ## A314735.P3636354827210992259

`A313647(n)-A001221(A346661(n))`
-/

namespace A314735.P3636354827210992259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313647 n - A001221 (A346661 n).toNat

end

end A314735.P3636354827210992259

/-! ## A314735.P14598945634467602625

`A314737(n)-A347519(A008574(2*n+3))`
-/

namespace A314735.P14598945634467602625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314737 n - A347519 (A008574 (2 * n + 3)).toNat

end

end A314735.P14598945634467602625

/-! ## A314735.P7658489167669608826

`A301678(n)-A001222(A091147(n))`
-/

namespace A314735.P7658489167669608826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A001222 (A091147 n).toNat

end

end A314735.P7658489167669608826

/-! ## A314735.P6534345342544660745

`A338006(A052905(n))+A047226(n+1)`
-/

namespace A314735.P6534345342544660745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A052905 n).toNat + A047226 (n + 1)

end

end A314735.P6534345342544660745

/-!
# A314736: Coordination sequence Gal.5.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314736, the canonical program `A314736.P3794098761063289759` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314736 has offset 0).

The definition of A314736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314736.P1226264087675285632

`A311344(n)+A004396(A004396(n))`
-/

namespace A314736.P1226264087675285632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + A004396 (A004396 n).toNat

end

end A314736.P1226264087675285632

namespace A314736

/-- `A311344(n)+A004396(A004396(n))` -/
def P1226264087675285632.Spec : Prop :=
  ∀ n, P1226264087675285632.a n = A314736 n

end A314736

/-! ## A314736.P3794098761063289759

`A314428(n)+A004396(A006369(n)-A004396(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314736

/-- `A314428(n)+A004396(A006369(n)-A004396(n))` -/
def P3794098761063289759.Spec : Prop :=
  ∀ n, P3794098761063289759.a n = A314736 n

theorem P3794098761063289759.correct : P3794098761063289759.Spec := by
  intro n
  simp only [A314736]

end A314736

/-! ## A314736.P15293260546127486981

`A313580(n)-A004396(n-A004396(n))`
-/

namespace A314736.P15293260546127486981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314736.P15293260546127486981

namespace A314736

/-- `A313580(n)-A004396(n-A004396(n))` -/
def P15293260546127486981.Spec : Prop :=
  ∀ n, P15293260546127486981.a n = A314736 n

end A314736

/-! ## A314736.P10867835745058707834

`A315214(n)-A004396(A004396(n))`
-/

namespace A314736.P10867835745058707834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n - A004396 (A004396 n).toNat

end

end A314736.P10867835745058707834

namespace A314736

/-- `A315214(n)-A004396(A004396(n))` -/
def P10867835745058707834.Spec : Prop :=
  ∀ n, P10867835745058707834.a n = A314736 n

end A314736

/-! ## A314736.P12134238960259672820

`abs(A008592(n)-A314205(n))`
-/

namespace A314736.P12134238960259672820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314205 n|

end

end A314736.P12134238960259672820

namespace A314736

/-- `abs(A008592(n)-A314205(n))` -/
def P12134238960259672820.Spec : Prop :=
  ∀ n, P12134238960259672820.a n = A314736 n

end A314736

/-! ## A314736.P4355478723081286112

`2*A008706(n)-A314205(n)`
-/

namespace A314736.P4355478723081286112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314205 n

end

end A314736.P4355478723081286112

namespace A314736

/-- `2*A008706(n)-A314205(n)` -/
def P4355478723081286112.Spec : Prop :=
  ∀ n, P4355478723081286112.a n = A314736 n

end A314736

/-! ## A314736.P15463335737820359521

`A008458(n)+A008574(n)-A314205(n)`
-/

namespace A314736.P15463335737820359521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314205 n)

end

end A314736.P15463335737820359521

namespace A314736

/-- `A008458(n)+A008574(n)-A314205(n)` -/
def P15463335737820359521.Spec : Prop :=
  ∀ n, P15463335737820359521.a n = A314736 n

end A314736

/-! ## A314736.P10037510966057379994

`∑{d}[A008592(n)-A314205(n), A000010(#)]`
-/

namespace A314736.P10037510966057379994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314736.P10037510966057379994

namespace A314736

/-- `∑{d}[A008592(n)-A314205(n), A000010(#)]` -/
def P10037510966057379994.Spec : Prop :=
  ∀ n, P10037510966057379994.a n = A314736 n

end A314736

/-! ## A314736.P15321361309055595715

`A315343(n)-A004396(2*A004396(n))`
-/

namespace A314736.P15321361309055595715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - A004396 (2 * A004396 n).toNat

end

end A314736.P15321361309055595715

namespace A314736

/-- `A315343(n)-A004396(2*A004396(n))` -/
def P15321361309055595715.Spec : Prop :=
  ∀ n, P15321361309055595715.a n = A314736 n

end A314736

/-! ## A314736.P2490085189892184513

`A004525(A315267(n))+2*n`
-/

namespace A314736.P2490085189892184513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315267 n).toNat + (2 * n : ℤ)

end

end A314736.P2490085189892184513

namespace A314736

/-- `A004525(A315267(n))+2*n` -/
def P2490085189892184513.Spec : Prop :=
  ∀ n, P2490085189892184513.a n = A314736 n

end A314736

/-! ## A314736.P6174925887699321692

`A005843(n)+A004525(A315267(n))`
-/

namespace A314736.P6174925887699321692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315267 n).toNat

end

end A314736.P6174925887699321692

namespace A314736

/-- `A005843(n)+A004525(A315267(n))` -/
def P6174925887699321692.Spec : Prop :=
  ∀ n, P6174925887699321692.a n = A314736 n

end A314736

/-! ## A314736.P8919954261827218385

`A004525(A315398(2*n))`
-/

namespace A314736.P8919954261827218385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315398 (2 * n)).toNat

end

end A314736.P8919954261827218385

namespace A314736

/-- `A004525(A315398(2*n))` -/
def P8919954261827218385.Spec : Prop :=
  ∀ n, P8919954261827218385.a n = A314736 n

end A314736

/-! ## A314736.P15181169825054164302

`A004525(A315267(n)+A008574(n))`
-/

namespace A314736.P15181169825054164302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315267 n + A008574 n).toNat

end

end A314736.P15181169825054164302

namespace A314736

/-- `A004525(A315267(n)+A008574(n))` -/
def P15181169825054164302.Spec : Prop :=
  ∀ n, P15181169825054164302.a n = A314736 n

end A314736

/-! ## A314736.P12730918824070669146

`A315510(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314736.P12730918824070669146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314736.P12730918824070669146

namespace A314736

/-- `A315510(2*n)+A008458(n+1)-(12*n+6)` -/
def P12730918824070669146.Spec : Prop :=
  ∀ n, P12730918824070669146.a n = A314736 n

end A314736

/-!
# A314737: Coordination sequence Gal.6.260.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314737, the canonical program `A314737.P17028861215793571548` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314737 has offset 0).

The definition of A314737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314737.P7529896383808213149

`A311312(n)+Δ[ceil(C(n, 2)/2)]`
-/

namespace A314737.P7529896383808213149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (f1 (n + 1) - f1 n)

end

end A314737.P7529896383808213149

namespace A314737

/-- `A311312(n)+Δ[ceil(C(n, 2)/2)]` -/
def P7529896383808213149.Spec : Prop :=
  ∀ n, P7529896383808213149.a n = A314737 n

end A314737

/-! ## A314737.P17002259855639389474

`A311312(n)+A004525(n)`
-/

namespace A314737.P17002259855639389474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004525 n

end

end A314737.P17002259855639389474

namespace A314737

/-- `A311312(n)+A004525(n)` -/
def P17002259855639389474.Spec : Prop :=
  ∀ n, P17002259855639389474.a n = A314737 n

end A314737

/-! ## A314737.P10538559600307363091

`A313064(n)+A101455(n)`
-/

namespace A314737.P10538559600307363091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313064 n + A101455 n

end

end A314737.P10538559600307363091

namespace A314737

/-- `A313064(n)+A101455(n)` -/
def P10538559600307363091.Spec : Prop :=
  ∀ n, P10538559600307363091.a n = A314737 n

end A314737

/-! ## A314737.P2886048585627283184

`abs(A008592(n)-A314204(n))`
-/

namespace A314737.P2886048585627283184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314204 n|

end

end A314737.P2886048585627283184

namespace A314737

/-- `abs(A008592(n)-A314204(n))` -/
def P2886048585627283184.Spec : Prop :=
  ∀ n, P2886048585627283184.a n = A314737 n

end A314737

/-! ## A314737.P615717931142437835

`A313754(n)-∑[A021913(n)]`
-/

namespace A314737.P615717931142437835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314737.P615717931142437835

namespace A314737

/-- `A313754(n)-∑[A021913(n)]` -/
def P615717931142437835.Spec : Prop :=
  ∀ n, P615717931142437835.a n = A314737 n

end A314737

/-! ## A314737.P16037574008771182840

`A311312(n)+Δ[A054925(n)]`
-/

namespace A314737.P16037574008771182840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (f1 (n + 1) - f1 n)

end

end A314737.P16037574008771182840

namespace A314737

/-- `A311312(n)+Δ[A054925(n)]` -/
def P16037574008771182840.Spec : Prop :=
  ∀ n, P16037574008771182840.a n = A314737 n

end A314737

/-! ## A314737.P13723219040425878831

`A313754(n)-Δ[A011848(n)]`
-/

namespace A314737.P13723219040425878831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - (f1 (n + 1) - f1 n)

end

end A314737.P13723219040425878831

namespace A314737

/-- `A313754(n)-Δ[A011848(n)]` -/
def P13723219040425878831.Spec : Prop :=
  ∀ n, P13723219040425878831.a n = A314737 n

end A314737

/-! ## A314737.P13491177388623917093

`A313754(n)-A004524(n+1)`
-/

namespace A314737.P13491177388623917093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - A004524 (n + 1)

end

end A314737.P13491177388623917093

namespace A314737

/-- `A313754(n)-A004524(n+1)` -/
def P13491177388623917093.Spec : Prop :=
  ∀ n, P13491177388623917093.a n = A314737 n

end A314737

/-! ## A314737.P10668847231748592660

`A004525(n)+A313754(n)-n`
-/

namespace A314737.P10668847231748592660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313754 n - (n : ℤ))

end

end A314737.P10668847231748592660

namespace A314737

/-- `A004525(n)+A313754(n)-n` -/
def P10668847231748592660.Spec : Prop :=
  ∀ n, P10668847231748592660.a n = A314737 n

end A314737

/-! ## A314737.P391520102905622613

`A311312(n)+n-∑[A021913(n)]`
-/

namespace A314737.P391520102905622613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314737.P391520102905622613

namespace A314737

/-- `A311312(n)+n-∑[A021913(n)]` -/
def P391520102905622613.Spec : Prop :=
  ∀ n, P391520102905622613.a n = A314737 n

end A314737

/-! ## A314737.P1191359414683592939

`A311312(n)+n-Δ[A011848(n)]`
-/

namespace A314737.P1191359414683592939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314737.P1191359414683592939

namespace A314737

/-- `A311312(n)+n-Δ[A011848(n)]` -/
def P1191359414683592939.Spec : Prop :=
  ∀ n, P1191359414683592939.a n = A314737 n

end A314737

/-! ## A314737.P5408453160975413838

`A311536(n)+A004396(A004525(n))`
-/

namespace A314737.P5408453160975413838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A004396 (A004525 n).toNat

end

end A314737.P5408453160975413838

namespace A314737

/-- `A311536(n)+A004396(A004525(n))` -/
def P5408453160975413838.Spec : Prop :=
  ∀ n, P5408453160975413838.a n = A314737 n

end A314737

/-! ## A314737.P16600518296776434862

`A004525(n)+A314903(n)-A004396(n)`
-/

namespace A314737.P16600518296776434862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314903 n - A004396 n)

end

end A314737.P16600518296776434862

namespace A314737

/-- `A004525(n)+A314903(n)-A004396(n)` -/
def P16600518296776434862.Spec : Prop :=
  ∀ n, P16600518296776434862.a n = A314737 n

end A314737

/-! ## A314737.P5847676290640770119

`A008458(n)+A008574(n)-A314204(n)`
-/

namespace A314737.P5847676290640770119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314204 n)

end

end A314737.P5847676290640770119

namespace A314737

/-- `A008458(n)+A008574(n)-A314204(n)` -/
def P5847676290640770119.Spec : Prop :=
  ∀ n, P5847676290640770119.a n = A314737 n

end A314737

/-! ## A314737.P17028861215793571548

`A313583(n)-A004525(n-A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314737

/-- `A313583(n)-A004525(n-A004396(n))` -/
def P17028861215793571548.Spec : Prop :=
  ∀ n, P17028861215793571548.a n = A314737 n

theorem P17028861215793571548.correct : P17028861215793571548.Spec := by
  intro n
  simp only [A314737]

end A314737

/-! ## A314737.P3717086864247208900

`A004525(A004396(n))+A314970(n)-A004396(n)`
-/

namespace A314737.P3717086864247208900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314970 n - A004396 n)

end

end A314737.P3717086864247208900

namespace A314737

/-- `A004525(A004396(n))+A314970(n)-A004396(n)` -/
def P3717086864247208900.Spec : Prop :=
  ∀ n, P3717086864247208900.a n = A314737 n

end A314737

/-! ## A314737.P1848443132552252225

`A004396(A004525(n))+A314964(n)-A004396(n)`
-/

namespace A314737.P1848443132552252225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314964 n - A004396 n)

end

end A314737.P1848443132552252225

namespace A314737

/-- `A004396(A004525(n))+A314964(n)-A004396(n)` -/
def P1848443132552252225.Spec : Prop :=
  ∀ n, P1848443132552252225.a n = A314737 n

end A314737

/-! ## A314737.P13303904926568495854

`A004525(n)+A004396(A314742(n))+n`
-/

namespace A314737.P13303904926568495854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A314742 n).toNat + (n : ℤ))

end

end A314737.P13303904926568495854

namespace A314737

/-- `A004525(n)+A004396(A314742(n))+n` -/
def P13303904926568495854.Spec : Prop :=
  ∀ n, P13303904926568495854.a n = A314737 n

end A314737

/-!
# A314738: Coordination sequence Gal.5.269.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314738, there is no canonical definition to state claims against.
-/

/-! ## A314738.P10932660754199531954

`A314741(n)-A011658(A234040(n))`
-/

namespace A314738.P10932660754199531954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314741 n - A011658 (A234040 n).toNat

end

end A314738.P10932660754199531954

/-! ## A314738.P2304507175461381148

`A314741(n)-A318962(A003945(n))`
-/

namespace A314738.P2304507175461381148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314741 n - A318962 (A003945 n).toNat

end

end A314738.P2304507175461381148

/-! ## A314738.P10526522007460785922

`A314973(n)-A255337(A095109(n+1))`
-/

namespace A314738.P10526522007460785922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314973 n - A255337 (A095109 (n + 1)).toNat

end

end A314738.P10526522007460785922

/-! ## A314738.P9353966367578284263

`A314741(n)-A188020(A200080(n+1))`
-/

namespace A314738.P9353966367578284263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314741 n - A188020 (A200080 (n + 1)).toNat

end

end A314738.P9353966367578284263

/-! ## A314738.P5526602754571173494

`A253620(n+1)+A026354(n+1)`
-/

namespace A314738.P5526602754571173494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253620 (n + 1) + A026354 (n + 1)

end

end A314738.P5526602754571173494

/-!
# A314739: Coordination sequence Gal.5.273.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314739, there is no canonical definition to state claims against.
-/

/-! ## A314739.P11894111426800493036

`A005117(3*n+2)-A327523(A066781(n+1))`
-/

namespace A314739.P11894111426800493036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A327523 (A066781 (n + 1)).toNat

end

end A314739.P11894111426800493036

/-! ## A314739.P17116524113322567835

`A161895(A149108(n))+A008586(n)`
-/

namespace A314739.P17116524113322567835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A149108 n).toNat + A008586 n

end

end A314739.P17116524113322567835

/-! ## A314739.P2207480296935094207

`A313622(n)-A001822(A148397(n))`
-/

namespace A314739.P2207480296935094207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - A001822 (A148397 n).toNat

end

end A314739.P2207480296935094207

/-! ## A314739.P13805851332237886942

`A297243(A070050(n+1))+A016813(n)`
-/

namespace A314739.P13805851332237886942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A070050 (n + 1)).toNat + A016813 n

end

end A314739.P13805851332237886942

/-! ## A314739.P13838146678907497285

`A312203(n)+A244895(A179274(n+1))`
-/

namespace A314739.P13838146678907497285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312203 n + A244895 (A179274 (n + 1)).toNat

end

end A314739.P13838146678907497285

/-!
# A314740: Coordination sequence Gal.5.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314740, the canonical program `A314740.P9773231279088824093` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314740 has offset 0).

The definition of A314740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314740.P10247526343814276655

`A315402(n)-A253262(n)`
-/

namespace A314740.P10247526343814276655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315402 n - A253262 n

end

end A314740.P10247526343814276655

namespace A314740

/-- `A315402(n)-A253262(n)` -/
def P10247526343814276655.Spec : Prop :=
  ∀ n, P10247526343814276655.a n = A314740 n

theorem P10247526343814276655.correct : P10247526343814276655.Spec := by
  intro n
  simp only [A314740, Nat.add_sub_cancel, A314740.P10247526343814276655.a, A314740.P9773231279088824093.a, A092202, A092202.P11242649411789298935.a, A253262, A253262.P6184646248567078382.a, A312979, A312979.P10469328530055326609.a, A315402, A315402.P15354869192594561044.a, A014019, A014019.P11985016477220557845.a, A310398, A310398.P3945335365291150677.f1, A310398.P3945335365291150677.a, A011858, A011858.P16234308487928340219.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A330025, A330025.P16976327817596103196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314740

/-! ## A314740.P16085191526384342481

`A315195(n)-A330025(n)`
-/

namespace A314740.P16085191526384342481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315195 n - A330025 n

end

end A314740.P16085191526384342481

namespace A314740

/-- `A315195(n)-A330025(n)` -/
def P16085191526384342481.Spec : Prop :=
  ∀ n, P16085191526384342481.a n = A314740 n

end A314740

/-! ## A314740.P9773231279088824093

`A312979(n)-A092202(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314740

/-- `A312979(n)-A092202(n+2)` -/
def P9773231279088824093.Spec : Prop :=
  ∀ n, P9773231279088824093.a n = A314740 n

theorem P9773231279088824093.correct : P9773231279088824093.Spec := by
  intro n
  simp only [A314740]

end A314740

/-! ## A314740.P14808024043922719457

`abs(A008592(n)-A314203(n))`
-/

namespace A314740.P14808024043922719457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314203 n|

end

end A314740.P14808024043922719457

namespace A314740

/-- `abs(A008592(n)-A314203(n))` -/
def P14808024043922719457.Spec : Prop :=
  ∀ n, P14808024043922719457.a n = A314740 n

end A314740

/-! ## A314740.P1361040492798602351

`2*A008706(n)-A314203(n)`
-/

namespace A314740.P1361040492798602351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314203 n

end

end A314740.P1361040492798602351

namespace A314740

/-- `2*A008706(n)-A314203(n)` -/
def P1361040492798602351.Spec : Prop :=
  ∀ n, P1361040492798602351.a n = A314740 n

end A314740

/-! ## A314740.P4259883826493329159

`A008458(n)+A008574(n)-A314203(n)`
-/

namespace A314740.P4259883826493329159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314203 n)

end

end A314740.P4259883826493329159

namespace A314740

/-- `A008458(n)+A008574(n)-A314203(n)` -/
def P4259883826493329159.Spec : Prop :=
  ∀ n, P4259883826493329159.a n = A314740 n

end A314740

/-! ## A314740.P4478019580937170308

`A314203(n)-A005843(A314203(n)-A008706(n))`
-/

namespace A314740.P4478019580937170308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A005843 (A314203 n - A008706 n).toNat

end

end A314740.P4478019580937170308

namespace A314740

/-- `A314203(n)-A005843(A314203(n)-A008706(n))` -/
def P4478019580937170308.Spec : Prop :=
  ∀ n, P4478019580937170308.a n = A314740 n

end A314740

/-! ## A314740.P17448936677355468603

`A313801(n)-A047486(n+1)+n`
-/

namespace A314740.P17448936677355468603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n - A047486 (n + 1) + (n : ℤ)

end

end A314740.P17448936677355468603

namespace A314740

/-- `A313801(n)-A047486(n+1)+n` -/
def P17448936677355468603.Spec : Prop :=
  ∀ n, P17448936677355468603.a n = A314740 n

end A314740

/-! ## A314740.P11122138577277683781

`A064429(A313078(n)+A000007(n))`
-/

namespace A314740.P11122138577277683781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A313078 n + A000007 n).toNat

end

end A314740.P11122138577277683781

namespace A314740

/-- `A064429(A313078(n)+A000007(n))` -/
def P11122138577277683781.Spec : Prop :=
  ∀ n, P11122138577277683781.a n = A314740 n

end A314740

/-! ## A314740.P18380697673510424142

`A005843(A008706(n))-A314203(n)`
-/

namespace A314740.P18380697673510424142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314203 n

end

end A314740.P18380697673510424142

namespace A314740

/-- `A005843(A008706(n))-A314203(n)` -/
def P18380697673510424142.Spec : Prop :=
  ∀ n, P18380697673510424142.a n = A314740 n

end A314740

/-! ## A314740.P7173637819814065795

`A312979(n)+A014019(A017101(n))`
-/

namespace A314740.P7173637819814065795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n + A014019 (A017101 n).toNat

end

end A314740.P7173637819814065795

namespace A314740

/-- `A312979(n)+A014019(A017101(n))` -/
def P7173637819814065795.Spec : Prop :=
  ∀ n, P7173637819814065795.a n = A314740 n

end A314740

/-!
# A314741: Coordination sequence Gal.6.261.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314741, the canonical program `A314741.P7975438954197835180` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314741 has offset 0).

The definition of A314741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314741.P2749775258941807705

`(A315188(n)+A311635(n))/2`
-/

namespace A314741.P2749775258941807705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315188 n + A311635 n : ℚ) / 2

end

end A314741.P2749775258941807705

namespace A314741

/-- `(A315188(n)+A311635(n))/2` -/
def P2749775258941807705.Spec : Prop :=
  ∀ n, P2749775258941807705.a n = (A314741 n : ℚ)

end A314741

/-! ## A314741.P7975438954197835180

`abs(A008592(n)-A314202(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A314741

/-- `abs(A008592(n)-A314202(n))` -/
def P7975438954197835180.Spec : Prop :=
  ∀ n, P7975438954197835180.a n = A314741 n

theorem P7975438954197835180.correct : P7975438954197835180.Spec := by
  intro n
  simp only [A314741]

end A314741

/-! ## A314741.P11821900080520235080

`2*A008706(n)-A314202(n)`
-/

namespace A314741.P11821900080520235080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314202 n

end

end A314741.P11821900080520235080

namespace A314741

/-- `2*A008706(n)-A314202(n)` -/
def P11821900080520235080.Spec : Prop :=
  ∀ n, P11821900080520235080.a n = A314741 n

end A314741

/-! ## A314741.P14659905897709226969

`A008458(n)+A008574(n)-A314202(n)`
-/

namespace A314741.P14659905897709226969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314202 n)

end

end A314741.P14659905897709226969

namespace A314741

/-- `A008458(n)+A008574(n)-A314202(n)` -/
def P14659905897709226969.Spec : Prop :=
  ∀ n, P14659905897709226969.a n = A314741 n

end A314741

/-! ## A314741.P16030685366232767915

`A311385(n)+A004525(A313753(n)-A311385(n))`
-/

namespace A314741.P16030685366232767915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A004525 (A313753 n - A311385 n).toNat

end

end A314741.P16030685366232767915

namespace A314741

/-- `A311385(n)+A004525(A313753(n)-A311385(n))` -/
def P16030685366232767915.Spec : Prop :=
  ∀ n, P16030685366232767915.a n = A314741 n

end A314741

/-! ## A314741.P2058949828644093754

`A313024(n)+A315216(n)-A313718(n)`
-/

namespace A314741.P2058949828644093754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n + (A315216 n - A313718 n)

end

end A314741.P2058949828644093754

namespace A314741

/-- `A313024(n)+A315216(n)-A313718(n)` -/
def P2058949828644093754.Spec : Prop :=
  ∀ n, P2058949828644093754.a n = A314741 n

end A314741

/-! ## A314741.P16263319982960426058

`A005843(A008706(n))-A314202(n)`
-/

namespace A314741.P16263319982960426058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314202 n

end

end A314741.P16263319982960426058

namespace A314741

/-- `A005843(A008706(n))-A314202(n)` -/
def P16263319982960426058.Spec : Prop :=
  ∀ n, P16263319982960426058.a n = A314741 n

end A314741

/-! ## A314741.P17499033109292753195

`A065502(A008458(n))-A314202(n)`
-/

namespace A314741.P17499033109292753195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314202 n

end

end A314741.P17499033109292753195

namespace A314741

/-- `A065502(A008458(n))-A314202(n)` -/
def P17499033109292753195.Spec : Prop :=
  ∀ n, P17499033109292753195.a n = A314741 n

end A314741

/-! ## A314741.P16160051892485561548

`A004525(A313753(n)+A311385(n))`
-/

namespace A314741.P16160051892485561548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313753 n + A311385 n).toNat

end

end A314741.P16160051892485561548

namespace A314741

/-- `A004525(A313753(n)+A311385(n))` -/
def P16160051892485561548.Spec : Prop :=
  ∀ n, P16160051892485561548.a n = A314741 n

end A314741

/-! ## A314741.P6729811663687595738

`A004525(A315188(n)+A311635(n))`
-/

namespace A314741.P6729811663687595738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315188 n + A311635 n).toNat

end

end A314741.P6729811663687595738

namespace A314741

/-- `A004525(A315188(n)+A311635(n))` -/
def P6729811663687595738.Spec : Prop :=
  ∀ n, P6729811663687595738.a n = A314741 n

end A314741

/-!
# A314742: Coordination sequence Gal.6.262.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314742, the canonical program `A314742.P12640656443291314387` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314742 has offset 0).

The definition of A314742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314742.P12640656443291314387

`A311332(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314742

/-- `A311332(n)+A004525(n)` -/
def P12640656443291314387.Spec : Prop :=
  ∀ n, P12640656443291314387.a n = A314742 n

theorem P12640656443291314387.correct : P12640656443291314387.Spec := by
  intro n
  simp only [A314742]

end A314742

/-! ## A314742.P17538825289268379226

`A312206(n)+A128834(n)`
-/

namespace A314742.P17538825289268379226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + A128834 n

end

end A314742.P17538825289268379226

namespace A314742

/-- `A312206(n)+A128834(n)` -/
def P17538825289268379226.Spec : Prop :=
  ∀ n, P17538825289268379226.a n = A314742 n

end A314742

/-! ## A314742.P16054360888448330175

`abs(A008592(n)-A314201(n))`
-/

namespace A314742.P16054360888448330175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314201 n|

end

end A314742.P16054360888448330175

namespace A314742

/-- `abs(A008592(n)-A314201(n))` -/
def P16054360888448330175.Spec : Prop :=
  ∀ n, P16054360888448330175.a n = A314742 n

end A314742

/-! ## A314742.P6712867263350774212

`floor(A010015(n)/A314201(n))`
-/

namespace A314742.P6712867263350774212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314201 n : ℚ)⌋

end

end A314742.P6712867263350774212

namespace A314742

/-- `floor(A010015(n)/A314201(n))` -/
def P6712867263350774212.Spec : Prop :=
  ∀ n, P6712867263350774212.a n = A314742 n

end A314742

/-! ## A314742.P11147300948285086946

`A311332(n)+Δ[A054925(n)]`
-/

namespace A314742.P11147300948285086946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311332 n + (f1 (n + 1) - f1 n)

end

end A314742.P11147300948285086946

namespace A314742

/-- `A311332(n)+Δ[A054925(n)]` -/
def P11147300948285086946.Spec : Prop :=
  ∀ n, P11147300948285086946.a n = A314742 n

end A314742

/-! ## A314742.P12888821261567843816

`A099480(n)+A311549(n)-1`
-/

namespace A314742.P12888821261567843816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099480 n + (A311549 n - 1)

end

end A314742.P12888821261567843816

namespace A314742

/-- `A099480(n)+A311549(n)-1` -/
def P12888821261567843816.Spec : Prop :=
  ∀ n, P12888821261567843816.a n = A314742 n

end A314742

/-! ## A314742.P15773322547824287824

`A312206(n)-A010892(n+2)`
-/

namespace A314742.P15773322547824287824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n - A010892 (n + 2)

end

end A314742.P15773322547824287824

namespace A314742

/-- `A312206(n)-A010892(n+2)` -/
def P15773322547824287824.Spec : Prop :=
  ∀ n, P15773322547824287824.a n = A314742 n

end A314742

/-! ## A314742.P14165542842735065400

`2*A008706(n)-A314201(n)`
-/

namespace A314742.P14165542842735065400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314201 n

end

end A314742.P14165542842735065400

namespace A314742

/-- `2*A008706(n)-A314201(n)` -/
def P14165542842735065400.Spec : Prop :=
  ∀ n, P14165542842735065400.a n = A314742 n

end A314742

/-! ## A314742.P10732173497379347093

`A311549(n)+A004525(A004396(n))`
-/

namespace A314742.P10732173497379347093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004525 (A004396 n).toNat

end

end A314742.P10732173497379347093

namespace A314742

/-- `A311549(n)+A004525(A004396(n))` -/
def P10732173497379347093.Spec : Prop :=
  ∀ n, P10732173497379347093.a n = A314742 n

theorem P10732173497379347093.correct : P10732173497379347093.Spec := by
  intro n
  simp only [A314742, Nat.add_sub_cancel, A314742.P10732173497379347093.a, A314742.P12640656443291314387.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A311332, A311332.P5397505913384543494.a, A311549, A311549.P16203180800236196570.a, A046978, A046978.P71107966793699888.a, A314688, A314688.P9311445367984874380.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A311257, A311257.P2429482415252635039.a, A002264, A002264.P5647656940077635922.a, A312909, A312909.P9930151025395677949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314742

/-! ## A314742.P33581674869380658

`A008458(n)+A008574(n)-A314201(n)`
-/

namespace A314742.P33581674869380658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314201 n)

end

end A314742.P33581674869380658

namespace A314742

/-- `A008458(n)+A008574(n)-A314201(n)` -/
def P33581674869380658.Spec : Prop :=
  ∀ n, P33581674869380658.a n = A314742 n

end A314742

/-! ## A314742.P10310908844122267722

`A004525(A004396(n))+A314974(n)-A004396(n)`
-/

namespace A314742.P10310908844122267722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314974 n - A004396 n)

end

end A314742.P10310908844122267722

namespace A314742

/-- `A004525(A004396(n))+A314974(n)-A004396(n)` -/
def P10310908844122267722.Spec : Prop :=
  ∀ n, P10310908844122267722.a n = A314742 n

theorem P10310908844122267722.correct : P10310908844122267722.Spec := by
  intro n
  simp only [A314742, Nat.add_sub_cancel, A314742.P10310908844122267722.a, A314742.P12640656443291314387.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A311332, A311332.P5397505913384543494.a, A314974, A314974.P14920294554282777166.a, A046978, A046978.P71107966793699888.a, A314688, A314688.P9311445367984874380.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A311257, A311257.P2429482415252635039.a, A002264, A002264.P5647656940077635922.a, A312909, A312909.P9930151025395677949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314742

/-! ## A314742.P13283175939612253765

`A313592(n)-A004525(A301710(n)-A313592(n))`
-/

namespace A314742.P13283175939612253765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313592 n - A004525 (A301710 n - A313592 n).toNat

end

end A314742.P13283175939612253765

namespace A314742

/-- `A313592(n)-A004525(A301710(n)-A313592(n))` -/
def P13283175939612253765.Spec : Prop :=
  ∀ n, P13283175939612253765.a n = A314742 n

end A314742

/-! ## A314742.P11943413559662071029

`A074067(A314201(n))`
-/

namespace A314742.P11943413559662071029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314201 n).toNat

end

end A314742.P11943413559662071029

namespace A314742

/-- `A074067(A314201(n))` -/
def P11943413559662071029.Spec : Prop :=
  ∀ n, P11943413559662071029.a n = A314742 n

end A314742

/-! ## A314742.P11188516572773062974

`A005843(A008706(n))-A314201(n)`
-/

namespace A314742.P11188516572773062974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314201 n

end

end A314742.P11188516572773062974

namespace A314742

/-- `A005843(A008706(n))-A314201(n)` -/
def P11188516572773062974.Spec : Prop :=
  ∀ n, P11188516572773062974.a n = A314742 n

end A314742

/-! ## A314742.P7352640653497896366

`A004525(3*(A311312(n)-n))`
-/

namespace A314742.P7352640653497896366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * (A311312 n - (n : ℤ))).toNat

end

end A314742.P7352640653497896366

namespace A314742

/-- `A004525(3*(A311312(n)-n))` -/
def P7352640653497896366.Spec : Prop :=
  ∀ n, P7352640653497896366.a n = A314742 n

end A314742

/-!
# A314743: Coordination sequence Gal.5.195.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314743, there is no canonical definition to state claims against.
-/

/-! ## A314743.P5769432135592030020

`A004525(A315986(n)+A301299(n))`
-/

namespace A314743.P5769432135592030020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315986 n + A301299 n).toNat

end

end A314743.P5769432135592030020

/-! ## A314743.P961625746426669586

`A314744(n)-A178798(A055999(n))`
-/

namespace A314743.P961625746426669586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 n - A178798 (A055999 n).toNat

end

end A314743.P961625746426669586

/-! ## A314743.P14929533925570847135

`A089050(A003094(n))+4*n+1`
-/

namespace A314743.P14929533925570847135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (A003094 n).toNat + (4 * n + 1 : ℤ)

end

end A314743.P14929533925570847135

/-! ## A314743.P9846593352251467414

`A314744(A330025(A159712(n))+n)`
-/

namespace A314743.P9846593352251467414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 (A330025 (A159712 n).toNat + (n : ℤ)).toNat

end

end A314743.P9846593352251467414

/-! ## A314743.P5330890465271591264

`A314744(n-A185284(A000124(n)))`
-/

namespace A314743.P5330890465271591264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 ((n : ℤ) - A185284 (A000124 n).toNat).toNat

end

end A314743.P5330890465271591264

/-!
# A314744: Coordination sequence Gal.5.194.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314744, there is no canonical definition to state claims against.
-/

/-! ## A314744.P7972840181556573600

`A314743(n)+A178798(A055999(n))`
-/

namespace A314744.P7972840181556573600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314743 n + A178798 (A055999 n).toNat

end

end A314744.P7972840181556573600

/-! ## A314744.P6348968991731376696

`A343640(A222955(n+1))+A314696(n)`
-/

namespace A314744.P6348968991731376696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (A222955 (n + 1)).toNat + A314696 n

end

end A314744.P6348968991731376696

/-! ## A314744.P13002822147345444145

`A336138(A336142(n))+4*n`
-/

namespace A314744.P13002822147345444145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336138 (A336142 n).toNat + (4 * n : ℤ)

end

end A314744.P13002822147345444145

/-! ## A314744.P14462856599830295569

`A314743(n)+A185284(A000124(n))`
-/

namespace A314744.P14462856599830295569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314743 n + A185284 (A000124 n).toNat

end

end A314744.P14462856599830295569

/-! ## A314744.P6163037315972311676

`A358135(A000110(n))+A314841(n)`
-/

namespace A314744.P6163037315972311676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358135 (A000110 n).toNat + A314841 n

end

end A314744.P6163037315972311676

/-!
# A314745: Coordination sequence Gal.6.456.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314745, there is no canonical definition to state claims against.
-/

/-! ## A314745.P12570541095623856435

`A314744(n)+A178798(n²)²`
-/

namespace A314745.P12570541095623856435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 n + A178798 (n ^ 2) ^ 2

end

end A314745.P12570541095623856435

/-! ## A314745.P1051852859898806951

`A311347(n)+A001221(A041551(n))`
-/

namespace A314745.P1051852859898806951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A001221 (A041551 n).toNat

end

end A314745.P1051852859898806951

/-! ## A314745.P1666946217575395793

`A311342(n)+A001221(A151091(n))`
-/

namespace A314745.P1666946217575395793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311342 n + A001221 (A151091 n).toNat

end

end A314745.P1666946217575395793

/-! ## A314745.P1246420283552000826

`A039956(n+1)-A027750(A047692(n))`
-/

namespace A314745.P1246420283552000826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A027750 (A047692 n).toNat

end

end A314745.P1246420283552000826

/-! ## A314745.P2424315539022059059

`or(A185304(A049345(n+3)), A311627(n))`
-/

namespace A314745.P2424315539022059059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185304 (A049345 (n + 3)).toNat) (A311627 n)

end

end A314745.P2424315539022059059

/-!
# A314746: Coordination sequence Gal.6.456.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314746, there is no canonical definition to state claims against.
-/

/-! ## A314746.P6875238192758563238

`A236860(3*n+2)+A001222(A318420(n+1))`
-/

namespace A314746.P6875238192758563238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (3 * n + 2) + A001222 (A318420 (n + 1)).toNat

end

end A314746.P6875238192758563238

/-! ## A314746.P2054813068205577368

`A105245(A013915(n))+A045672(n)`
-/

namespace A314746.P2054813068205577368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105245 (A013915 n).toNat + A045672 n

end

end A314746.P2054813068205577368

/-! ## A314746.P14443406938201793841

`A314447(n)+A213728(A001769(n))`
-/

namespace A314746.P14443406938201793841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314447 n + A213728 (A001769 n).toNat

end

end A314746.P14443406938201793841

/-! ## A314746.P6035772837172626298

`A314923(n)-A213728(A220084(n))`
-/

namespace A314746.P6035772837172626298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314923 n - A213728 (A220084 n).toNat

end

end A314746.P6035772837172626298

/-! ## A314746.P4675856740306664379

`or(A055090(A001047(n)), A311757(n))`
-/

namespace A314746.P4675856740306664379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055090 (A001047 n).toNat) (A311757 n)

end

end A314746.P4675856740306664379

/-!
# A314748: Coordination sequence Gal.5.237.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314748, there is no canonical definition to state claims against.
-/

/-! ## A314748.P3676730805201920817

`A301291(∑{e}[C(2^n, 2)+4^n, #])`
-/

namespace A314748.P3676730805201920817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2 + 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A314748.P3676730805201920817

/-! ## A314748.P4431262476383473963

`A301291(∑{e}[Δ[A006516(n)], #])`
-/

namespace A314748.P4431262476383473963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A314748.P4431262476383473963

/-! ## A314748.P117076895942705180

`or(A051903(A150286(n)), A311642(n))`
-/

namespace A314748.P117076895942705180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (A150286 n).toNat) (A311642 n)

end

end A314748.P117076895942705180

/-! ## A314748.P9331146818696103882

`A167688(A062516(n+1))+A016813(n)`
-/

namespace A314748.P9331146818696103882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A062516 (n + 1)).toNat + A016813 n

end

end A314748.P9331146818696103882

/-! ## A314748.P2730324189707856764

`or(A045673(A032559(n+1)), A045683(n))`
-/

namespace A314748.P2730324189707856764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045673 (A032559 (n + 1)).toNat) (A045683 n)

end

end A314748.P2730324189707856764

/-!
# A314750: Coordination sequence Gal.6.508.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314750, there is no canonical definition to state claims against.
-/

/-! ## A314750.P17331852490788047659

`A352513(A001629(n))+A314628(n)`
-/

namespace A314750.P17331852490788047659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A001629 n).toNat + A314628 n

end

end A314750.P17331852490788047659

/-! ## A314750.P17041969367781271757

`or(A001222(A076322(n+1)), A314638(n))`
-/

namespace A314750.P17041969367781271757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A076322 (n + 1)).toNat) (A314638 n)

end

end A314750.P17041969367781271757

/-! ## A314750.P10091938022802227673

`A026431(3*n+2)-A156264(A256046(n))`
-/

namespace A314750.P10091938022802227673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026431 (3 * n + 2) - A156264 (A256046 n).toNat

end

end A314750.P10091938022802227673

/-!
# A314751: Coordination sequence Gal.6.213.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314751, there is no canonical definition to state claims against.
-/

/-! ## A314751.P10152876386287785734

`or(A095827(A067945(n+1)), A312966(n))`
-/

namespace A314751.P10152876386287785734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095827 (A067945 (n + 1)).toNat) (A312966 n)

end

end A314751.P10152876386287785734

/-! ## A314751.P3536070829019641465

`or(A046213(A018366(n+1)), A311478(n))`
-/

namespace A314751.P3536070829019641465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046213 (A018366 (n + 1)).toNat) (A311478 n)

end

end A314751.P3536070829019641465

/-! ## A314751.P2769913498768305902

`or(A053164(A344521(3*n+4)), A360403(n+1))`
-/

namespace A314751.P2769913498768305902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053164 (A344521 (3 * n + 4)).toNat) (A360403 (n + 1))

end

end A314751.P2769913498768305902

/-! ## A314751.P16301458323751043124

`A000120(A361242(n))+4*n`
-/

namespace A314751.P16301458323751043124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A361242 n).toNat + (4 * n : ℤ)

end

end A314751.P16301458323751043124

/-! ## A314751.P3501637489703156660

`or(ceil(n*ϕ^3), A218344(A325452(n)))`
-/

namespace A314751.P3501637489703156660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉ (A218344 (A325452 n).toNat)

end

end A314751.P3501637489703156660

/-!
# A314752: Coordination sequence Gal.6.258.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314752, the canonical program `A314752.P2908824843405131660` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314752 has offset 0).

The definition of A314752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314752.P2908824843405131660

`A314894(n)-Δ[A011864(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314752

/-- `A314894(n)-Δ[A011864(n)]` -/
def P2908824843405131660.Spec : Prop :=
  ∀ n, P2908824843405131660.a n = A314752 n

theorem P2908824843405131660.correct : P2908824843405131660.Spec := by
  intro n
  simp only [A314752]

end A314752

/-! ## A314752.P15418885269161893710

`abs(A008592(n)-A314194(n))`
-/

namespace A314752.P15418885269161893710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314194 n|

end

end A314752.P15418885269161893710

namespace A314752

/-- `abs(A008592(n)-A314194(n))` -/
def P15418885269161893710.Spec : Prop :=
  ∀ n, P15418885269161893710.a n = A314752 n

end A314752

/-! ## A314752.P17642594840194769993

`2*A008706(n)-A314194(n)`
-/

namespace A314752.P17642594840194769993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314194 n

end

end A314752.P17642594840194769993

namespace A314752

/-- `2*A008706(n)-A314194(n)` -/
def P17642594840194769993.Spec : Prop :=
  ∀ n, P17642594840194769993.a n = A314752 n

end A314752

/-! ## A314752.P10599779154806464117

`A008458(n)+A008574(n)-A314194(n)`
-/

namespace A314752.P10599779154806464117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314194 n)

end

end A314752.P10599779154806464117

namespace A314752

/-- `A008458(n)+A008574(n)-A314194(n)` -/
def P10599779154806464117.Spec : Prop :=
  ∀ n, P10599779154806464117.a n = A314752 n

end A314752

/-! ## A314752.P17001290398538269421

`(A008592(n)-A314194(n))^A070750(n+1)²`
-/

namespace A314752.P17001290398538269421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A314194 n : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A314752.P17001290398538269421

namespace A314752

/-- `(A008592(n)-A314194(n))^A070750(n+1)²` -/
def P17001290398538269421.Spec : Prop :=
  ∀ n, P17001290398538269421.a n = (A314752 n : ℚ)

end A314752

/-! ## A314752.P8098029880174971620

`A004525(A313772(n))+2*n`
-/

namespace A314752.P8098029880174971620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313772 n).toNat + (2 * n : ℤ)

end

end A314752.P8098029880174971620

namespace A314752

/-- `A004525(A313772(n))+2*n` -/
def P8098029880174971620.Spec : Prop :=
  ∀ n, P8098029880174971620.a n = A314752 n

end A314752

/-! ## A314752.P11537981068865884726

`A004525(A313779(n))+2*n`
-/

namespace A314752.P11537981068865884726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313779 n).toNat + (2 * n : ℤ)

end

end A314752.P11537981068865884726

namespace A314752

/-- `A004525(A313779(n))+2*n` -/
def P11537981068865884726.Spec : Prop :=
  ∀ n, P11537981068865884726.a n = A314752 n

end A314752

/-! ## A314752.P7191918489611070640

`A004525(A314038(n))+2*n`
-/

namespace A314752.P7191918489611070640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314038 n).toNat + (2 * n : ℤ)

end

end A314752.P7191918489611070640

namespace A314752

/-- `A004525(A314038(n))+2*n` -/
def P7191918489611070640.Spec : Prop :=
  ∀ n, P7191918489611070640.a n = A314752 n

end A314752

/-! ## A314752.P4696933854000258232

`A004525(A315272(n))+2*n`
-/

namespace A314752.P4696933854000258232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315272 n).toNat + (2 * n : ℤ)

end

end A314752.P4696933854000258232

namespace A314752

/-- `A004525(A315272(n))+2*n` -/
def P4696933854000258232.Spec : Prop :=
  ∀ n, P4696933854000258232.a n = A314752 n

end A314752

/-! ## A314752.P10522976582806141832

`A005843(n)+A004525(A313772(n))`
-/

namespace A314752.P10522976582806141832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313772 n).toNat

end

end A314752.P10522976582806141832

namespace A314752

/-- `A005843(n)+A004525(A313772(n))` -/
def P10522976582806141832.Spec : Prop :=
  ∀ n, P10522976582806141832.a n = A314752 n

end A314752

/-! ## A314752.P8346663969913809061

`A005843(n)+A004525(A313779(n))`
-/

namespace A314752.P8346663969913809061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313779 n).toNat

end

end A314752.P8346663969913809061

namespace A314752

/-- `A005843(n)+A004525(A313779(n))` -/
def P8346663969913809061.Spec : Prop :=
  ∀ n, P8346663969913809061.a n = A314752 n

end A314752

/-! ## A314752.P9975618063541002998

`A005843(n)+A004525(A314038(n))`
-/

namespace A314752.P9975618063541002998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314038 n).toNat

end

end A314752.P9975618063541002998

namespace A314752

/-- `A005843(n)+A004525(A314038(n))` -/
def P9975618063541002998.Spec : Prop :=
  ∀ n, P9975618063541002998.a n = A314752 n

end A314752

/-! ## A314752.P4797069013815859603

`A004396(A310404(2*n)-A008585(n))`
-/

namespace A314752.P4797069013815859603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310404 (2 * n) - A008585 n).toNat

end

end A314752.P4797069013815859603

namespace A314752

/-- `A004396(A310404(2*n)-A008585(n))` -/
def P4797069013815859603.Spec : Prop :=
  ∀ n, P4797069013815859603.a n = A314752 n

end A314752

/-! ## A314752.P9879884896499661798

`A314057(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314752.P9879884896499661798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314057 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314752.P9879884896499661798

namespace A314752

/-- `A314057(2*n)+A008458(n+1)-(12*n+6)` -/
def P9879884896499661798.Spec : Prop :=
  ∀ n, P9879884896499661798.a n = A314752 n

end A314752

/-! ## A314752.P16152909866771908930

`A004525(A312944(2*n))`
-/

namespace A314752.P16152909866771908930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312944 (2 * n)).toNat

end

end A314752.P16152909866771908930

namespace A314752

/-- `A004525(A312944(2*n))` -/
def P16152909866771908930.Spec : Prop :=
  ∀ n, P16152909866771908930.a n = A314752 n

end A314752

/-! ## A314752.P9707307735176631431

`A004525(A314720(2*n))`
-/

namespace A314752.P9707307735176631431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314720 (2 * n)).toNat

end

end A314752.P9707307735176631431

namespace A314752

/-- `A004525(A314720(2*n))` -/
def P9707307735176631431.Spec : Prop :=
  ∀ n, P9707307735176631431.a n = A314752 n

end A314752

/-! ## A314752.P16109926656494366578

`A004396(A313620(2*n))-2*n`
-/

namespace A314752.P16109926656494366578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313620 (2 * n)).toNat - (2 * n : ℤ)

end

end A314752.P16109926656494366578

namespace A314752

/-- `A004396(A313620(2*n))-2*n` -/
def P16109926656494366578.Spec : Prop :=
  ∀ n, P16109926656494366578.a n = A314752 n

end A314752

/-! ## A314752.P14648105774974121087

`A004396(A310404(2*n))-A005843(n)`
-/

namespace A314752.P14648105774974121087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310404 (2 * n)).toNat - A005843 n

end

end A314752.P14648105774974121087

namespace A314752

/-- `A004396(A310404(2*n))-A005843(n)` -/
def P14648105774974121087.Spec : Prop :=
  ∀ n, P14648105774974121087.a n = A314752 n

end A314752

/-!
# A314753: Coordination sequence Gal.4.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314753, the canonical program `A314753.P9843815199901969934` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314753 has offset 0).

The definition of A314753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314753.P11764275565578610457

`A312549(n)+A175629(n)`
-/

namespace A314753.P11764275565578610457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A175629 n

end

end A314753.P11764275565578610457

namespace A314753

/-- `A312549(n)+A175629(n)` -/
def P11764275565578610457.Spec : Prop :=
  ∀ n, P11764275565578610457.a n = A314753 n

end A314753

/-! ## A314753.P9843815199901969934

`A312974(n)+A238469(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314753

/-- `A312974(n)+A238469(n)` -/
def P9843815199901969934.Spec : Prop :=
  ∀ n, P9843815199901969934.a n = A314753 n

theorem P9843815199901969934.correct : P9843815199901969934.Spec := by
  intro n
  simp only [A314753]

end A314753

/-! ## A314753.P3990404052471834924

`A312974(n)+A238470(2*n)`
-/

namespace A314753.P3990404052471834924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A238470 (2 * n)

end

end A314753.P3990404052471834924

namespace A314753

/-- `A312974(n)+A238470(2*n)` -/
def P3990404052471834924.Spec : Prop :=
  ∀ n, P3990404052471834924.a n = A314753 n

end A314753

/-! ## A314753.P3918743719187218237

`A022144(n)-A191275(2*n+1)`
-/

namespace A314753.P3918743719187218237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A191275 (2 * n + 1)

end

end A314753.P3918743719187218237

namespace A314753

/-- `A022144(n)-A191275(2*n+1)` -/
def P3918743719187218237.Spec : Prop :=
  ∀ n, P3918743719187218237.a n = A314753 n

end A314753

/-! ## A314753.P12331879815651011558

`A008574(n)+A004525(round(8*n/7))`
-/

namespace A314753.P12331879815651011558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))).toNat

end

end A314753.P12331879815651011558

namespace A314753

/-- `A008574(n)+A004525(round(8*n/7))` -/
def P12331879815651011558.Spec : Prop :=
  ∀ n, P12331879815651011558.a n = A314753 n

end A314753

/-! ## A314753.P17770295011458283541

`A008574(2*n)-A191275(2*n+1)`
-/

namespace A314753.P17770295011458283541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A191275 (2 * n + 1)

end

end A314753.P17770295011458283541

namespace A314753

/-- `A008574(2*n)-A191275(2*n+1)` -/
def P17770295011458283541.Spec : Prop :=
  ∀ n, P17770295011458283541.a n = A314753 n

end A314753

/-! ## A314753.P5365762688152807352

`A004277(4*n)-A191275(2*n+1)`
-/

namespace A314753.P5365762688152807352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (4 * n) - A191275 (2 * n + 1)

end

end A314753.P5365762688152807352

namespace A314753

/-- `A004277(4*n)-A191275(2*n+1)` -/
def P5365762688152807352.Spec : Prop :=
  ∀ n, P5365762688152807352.a n = A314753 n

end A314753

/-! ## A314753.P180501557886628989

`A314838(n)+A238469(2*n)`
-/

namespace A314753.P180501557886628989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + A238469 (2 * n)

end

end A314753.P180501557886628989

namespace A314753

/-- `A314838(n)+A238469(2*n)` -/
def P180501557886628989.Spec : Prop :=
  ∀ n, P180501557886628989.a n = A314753 n

end A314753

/-! ## A314753.P1266194027969953036

`A314954(n)-Δ[A011860(n)]`
-/

namespace A314753.P1266194027969953036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n - (f1 (n + 1) - f1 n)

end

end A314753.P1266194027969953036

namespace A314753

/-- `A314954(n)-Δ[A011860(n)]` -/
def P1266194027969953036.Spec : Prop :=
  ∀ n, P1266194027969953036.a n = A314753 n

end A314753

/-! ## A314753.P9431083503371271044

`abs(A008592(n)-A314193(n))`
-/

namespace A314753.P9431083503371271044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314193 n|

end

end A314753.P9431083503371271044

namespace A314753

/-- `abs(A008592(n)-A314193(n))` -/
def P9431083503371271044.Spec : Prop :=
  ∀ n, P9431083503371271044.a n = A314753 n

end A314753

/-! ## A314753.P9488156587261358633

`A008458(n)+A008574(n)-A314193(n)`
-/

namespace A314753.P9488156587261358633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314193 n)

end

end A314753.P9488156587261358633

namespace A314753

/-- `A008458(n)+A008574(n)-A314193(n)` -/
def P9488156587261358633.Spec : Prop :=
  ∀ n, P9488156587261358633.a n = A314753 n

end A314753

/-! ## A314753.P8133264949315916419

`A004525(A313780(n))+2*n`
-/

namespace A314753.P8133264949315916419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313780 n).toNat + (2 * n : ℤ)

end

end A314753.P8133264949315916419

namespace A314753

/-- `A004525(A313780(n))+2*n` -/
def P8133264949315916419.Spec : Prop :=
  ∀ n, P8133264949315916419.a n = A314753 n

end A314753

/-! ## A314753.P12816811464300630264

`A004525(A315273(n))+2*n`
-/

namespace A314753.P12816811464300630264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315273 n).toNat + (2 * n : ℤ)

end

end A314753.P12816811464300630264

namespace A314753

/-- `A004525(A315273(n))+2*n` -/
def P12816811464300630264.Spec : Prop :=
  ∀ n, P12816811464300630264.a n = A314753 n

end A314753

/-! ## A314753.P17247323787350274458

`A004525(A315423(n))+2*n`
-/

namespace A314753.P17247323787350274458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315423 n).toNat + (2 * n : ℤ)

end

end A314753.P17247323787350274458

namespace A314753

/-- `A004525(A315423(n))+2*n` -/
def P17247323787350274458.Spec : Prop :=
  ∀ n, P17247323787350274458.a n = A314753 n

end A314753

/-! ## A314753.P17867037786896851642

`A004396(A315204(n)+2*n)`
-/

namespace A314753.P17867037786896851642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315204 n + (2 * n : ℤ)).toNat

end

end A314753.P17867037786896851642

namespace A314753

/-- `A004396(A315204(n)+2*n)` -/
def P17867037786896851642.Spec : Prop :=
  ∀ n, P17867037786896851642.a n = A314753 n

end A314753

/-! ## A314753.P9475464990038291262

`A004396(A315204(n)+n+n)`
-/

namespace A314753.P9475464990038291262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315204 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314753.P9475464990038291262

namespace A314753

/-- `A004396(A315204(n)+n+n)` -/
def P9475464990038291262.Spec : Prop :=
  ∀ n, P9475464990038291262.a n = A314753 n

end A314753

/-! ## A314753.P15606943728750511657

`A314674(2*n)-4*n`
-/

namespace A314753.P15606943728750511657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 (2 * n) - (4 * n : ℤ)

end

end A314753.P15606943728750511657

namespace A314753

/-- `A314674(2*n)-4*n` -/
def P15606943728750511657.Spec : Prop :=
  ∀ n, P15606943728750511657.a n = A314753 n

end A314753

/-! ## A314753.P3377470047665769425

`A315175(2*n)/gcd(2, A315175(n))`
-/

namespace A314753.P3377470047665769425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315175 (2 * n) : ℚ) / (Int.gcd 2 (A315175 n) : ℚ)

end

end A314753.P3377470047665769425

namespace A314753

/-- `A315175(2*n)/gcd(2, A315175(n))` -/
def P3377470047665769425.Spec : Prop :=
  ∀ n, P3377470047665769425.a n = (A314753 n : ℚ)

end A314753

/-! ## A314753.P4694567184885564802

`2*A008574(2*n)-A314249(2*n)`
-/

namespace A314753.P4694567184885564802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314249 (2 * n)

end

end A314753.P4694567184885564802

namespace A314753

/-- `2*A008574(2*n)-A314249(2*n)` -/
def P4694567184885564802.Spec : Prop :=
  ∀ n, P4694567184885564802.a n = A314753 n

end A314753

/-! ## A314753.P12400607625162631443

`A004525(A313487(2*n))`
-/

namespace A314753.P12400607625162631443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313487 (2 * n)).toNat

end

end A314753.P12400607625162631443

namespace A314753

/-- `A004525(A313487(2*n))` -/
def P12400607625162631443.Spec : Prop :=
  ∀ n, P12400607625162631443.a n = A314753 n

end A314753

/-!
# A314754: Coordination sequence Gal.5.82.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314754, the canonical program `A314754.P13873104734098981522` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314754 has offset 0).

The definition of A314754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314754.P7493279263217973749

`A330033(n)+A310375(n)`
-/

namespace A314754.P7493279263217973749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A310375 n

end

end A314754.P7493279263217973749

namespace A314754

/-- `A330033(n)+A310375(n)` -/
def P7493279263217973749.Spec : Prop :=
  ∀ n, P7493279263217973749.a n = A314754 n

end A314754

/-! ## A314754.P1361457985928523213

`A008458(n)-A004525(A047363(2*n+1))`
-/

namespace A314754.P1361457985928523213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047363 (2 * n + 1)).toNat

end

end A314754.P1361457985928523213

namespace A314754

/-- `A008458(n)-A004525(A047363(2*n+1))` -/
def P1361457985928523213.Spec : Prop :=
  ∀ n, P1361457985928523213.a n = A314754 n

end A314754

/-! ## A314754.P13873104734098981522

`A008486(2*n)-A004525(A047363(2*n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314754

/-- `A008486(2*n)-A004525(A047363(2*n+1))` -/
def P13873104734098981522.Spec : Prop :=
  ∀ n, P13873104734098981522.a n = A314754 n

theorem P13873104734098981522.correct : P13873104734098981522.Spec := by
  intro n
  simp only [A314754]

end A314754

/-! ## A314754.P10315727460216411364

`A314943(n)-A047263(n+1)+n`
-/

namespace A314754.P10315727460216411364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A047263 (n + 1) + (n : ℤ)

end

end A314754.P10315727460216411364

namespace A314754

/-- `A314943(n)-A047263(n+1)+n` -/
def P10315727460216411364.Spec : Prop :=
  ∀ n, P10315727460216411364.a n = A314754 n

theorem P10315727460216411364.correct : P10315727460216411364.Spec := by
  intro n
  simp only [A314754, Nat.add_sub_cancel, A314754.P10315727460216411364.a, A314754.P13873104734098981522.a, A004525, A004525.P4158271949796742323.a, A008486, A008486.P11623131867527198563.a, A047263, A047263.P10177617567604490545.a, A047363, A047363.P7486090247302327639.a, A314943, A314943.P18056239451754514052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314754

/-! ## A314754.P9953511955050627084

`A008574(n)+A315333(n)-A250120(n)`
-/

namespace A314754.P9953511955050627084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315333 n - A250120 n)

end

end A314754.P9953511955050627084

namespace A314754

/-- `A008574(n)+A315333(n)-A250120(n)` -/
def P9953511955050627084.Spec : Prop :=
  ∀ n, P9953511955050627084.a n = A314754 n

end A314754

/-! ## A314754.P6546424715990254445

`abs(A008592(n)-A314191(n))`
-/

namespace A314754.P6546424715990254445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314191 n|

end

end A314754.P6546424715990254445

namespace A314754

/-- `abs(A008592(n)-A314191(n))` -/
def P6546424715990254445.Spec : Prop :=
  ∀ n, P6546424715990254445.a n = A314754 n

end A314754

/-! ## A314754.P18198785789596207009

`A008458(n)+A008574(n)-A314191(n)`
-/

namespace A314754.P18198785789596207009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314191 n)

end

end A314754.P18198785789596207009

namespace A314754

/-- `A008458(n)+A008574(n)-A314191(n)` -/
def P18198785789596207009.Spec : Prop :=
  ∀ n, P18198785789596207009.a n = A314754 n

end A314754

/-! ## A314754.P981973978195423893

`A004525(A313782(n))+2*n`
-/

namespace A314754.P981973978195423893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313782 n).toNat + (2 * n : ℤ)

end

end A314754.P981973978195423893

namespace A314754

/-- `A004525(A313782(n))+2*n` -/
def P981973978195423893.Spec : Prop :=
  ∀ n, P981973978195423893.a n = A314754 n

end A314754

/-! ## A314754.P4026571281041003729

`A004525(A314049(n))+2*n`
-/

namespace A314754.P4026571281041003729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314049 n).toNat + (2 * n : ℤ)

end

end A314754.P4026571281041003729

namespace A314754

/-- `A004525(A314049(n))+2*n` -/
def P4026571281041003729.Spec : Prop :=
  ∀ n, P4026571281041003729.a n = A314754 n

end A314754

/-! ## A314754.P60336155493354849

`A004525(A315275(n))+2*n`
-/

namespace A314754.P60336155493354849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315275 n).toNat + (2 * n : ℤ)

end

end A314754.P60336155493354849

namespace A314754

/-- `A004525(A315275(n))+2*n` -/
def P60336155493354849.Spec : Prop :=
  ∀ n, P60336155493354849.a n = A314754 n

end A314754

/-! ## A314754.P16299705604664155925

`A005843(n)+A004525(A313782(n))`
-/

namespace A314754.P16299705604664155925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313782 n).toNat

end

end A314754.P16299705604664155925

namespace A314754

/-- `A005843(n)+A004525(A313782(n))` -/
def P16299705604664155925.Spec : Prop :=
  ∀ n, P16299705604664155925.a n = A314754 n

end A314754

/-! ## A314754.P16540455948100417607

`A005843(n)+A004525(A314049(n))`
-/

namespace A314754.P16540455948100417607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314049 n).toNat

end

end A314754.P16540455948100417607

namespace A314754

/-- `A005843(n)+A004525(A314049(n))` -/
def P16540455948100417607.Spec : Prop :=
  ∀ n, P16540455948100417607.a n = A314754 n

end A314754

/-! ## A314754.P5124710678328327469

`A005843(n)+A004525(A315275(n))`
-/

namespace A314754.P5124710678328327469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315275 n).toNat

end

end A314754.P5124710678328327469

namespace A314754

/-- `A005843(n)+A004525(A315275(n))` -/
def P5124710678328327469.Spec : Prop :=
  ∀ n, P5124710678328327469.a n = A314754 n

end A314754

/-! ## A314754.P14214929453081575338

`A004525(A313090(2*n))`
-/

namespace A314754.P14214929453081575338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313090 (2 * n)).toNat

end

end A314754.P14214929453081575338

namespace A314754

/-- `A004525(A313090(2*n))` -/
def P14214929453081575338.Spec : Prop :=
  ∀ n, P14214929453081575338.a n = A314754 n

end A314754

/-! ## A314754.P4682083686109205966

`A004525(A301718(2*n)-2*n)`
-/

namespace A314754.P4682083686109205966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301718 (2 * n) - (2 * n : ℤ)).toNat

end

end A314754.P4682083686109205966

namespace A314754

/-- `A004525(A301718(2*n)-2*n)` -/
def P4682083686109205966.Spec : Prop :=
  ∀ n, P4682083686109205966.a n = A314754 n

end A314754

/-! ## A314754.P14710088116094857687

`A004525(A311440(n)+A008587(n))`
-/

namespace A314754.P14710088116094857687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311440 n + A008587 n).toNat

end

end A314754.P14710088116094857687

namespace A314754

/-- `A004525(A311440(n)+A008587(n))` -/
def P14710088116094857687.Spec : Prop :=
  ∀ n, P14710088116094857687.a n = A314754 n

end A314754

/-! ## A314754.P7963496040482360813

`A004525(A311440(n)+A008706(n))`
-/

namespace A314754.P7963496040482360813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311440 n + A008706 n).toNat

end

end A314754.P7963496040482360813

namespace A314754

/-- `A004525(A311440(n)+A008706(n))` -/
def P7963496040482360813.Spec : Prop :=
  ∀ n, P7963496040482360813.a n = A314754 n

end A314754

/-! ## A314754.P17104499404638706447

`A004525(A047486(2*n+1)+A008458(n))`
-/

namespace A314754.P17104499404638706447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047486 (2 * n + 1) + A008458 n).toNat

end

end A314754.P17104499404638706447

namespace A314754

/-- `A004525(A047486(2*n+1)+A008458(n))` -/
def P17104499404638706447.Spec : Prop :=
  ∀ n, P17104499404638706447.a n = A314754 n

end A314754

/-! ## A314754.P16574267252154035404

`A004525(A314252(2*n)-A151988(2*n))`
-/

namespace A314754.P16574267252154035404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314252 (2 * n) - A151988 (2 * n)).toNat

end

end A314754.P16574267252154035404

namespace A314754

/-- `A004525(A314252(2*n)-A151988(2*n))` -/
def P16574267252154035404.Spec : Prop :=
  ∀ n, P16574267252154035404.a n = A314754 n

end A314754

/-! ## A314754.P7251087377100592990

`A004525(A047486(2*n+1)+A008486(2*n))`
-/

namespace A314754.P7251087377100592990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047486 (2 * n + 1) + A008486 (2 * n)).toNat

end

end A314754.P7251087377100592990

namespace A314754

/-- `A004525(A047486(2*n+1)+A008486(2*n))` -/
def P7251087377100592990.Spec : Prop :=
  ∀ n, P7251087377100592990.a n = A314754 n

end A314754

/-!
# A314755: Coordination sequence Gal.6.466.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314755, there is no canonical definition to state claims against.
-/

/-! ## A314755.P14161136461692808284

`or(A083054(A000079(n)), A314753(n))`
-/

namespace A314755.P14161136461692808284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083054 (A000079 n).toNat) (A314753 n)

end

end A314755.P14161136461692808284

/-! ## A314755.P4881831055463806262

`or(A036064(n), A209900(A315277(n)))`
-/

namespace A314755.P4881831055463806262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036064 n) (A209900 (A315277 n).toNat)

end

end A314755.P4881831055463806262

/-! ## A314755.P5448568088953667420

`or(A124778(A057825(n+1)), A314753(n))`
-/

namespace A314755.P5448568088953667420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124778 (A057825 (n + 1)).toNat) (A314753 n)

end

end A314755.P5448568088953667420

/-! ## A314755.P13825097502849640502

`or(A277872(A000740(n+1)), A314753(n))`
-/

namespace A314755.P13825097502849640502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277872 (A000740 (n + 1)).toNat) (A314753 n)

end

end A314755.P13825097502849640502

/-! ## A314755.P10621827550661652674

`A337736(A022177(n))+A301291(n)`
-/

namespace A314755.P10621827550661652674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337736 (A022177 n).toNat + A301291 n

end

end A314755.P10621827550661652674

/-!
# A314756: Coordination sequence Gal.5.248.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314756, there is no canonical definition to state claims against.
-/

/-! ## A314756.P733532408719714720

`A301291(n)+A038189(A323967(n))`
-/

namespace A314756.P733532408719714720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A038189 (A323967 n).toNat

end

end A314756.P733532408719714720

/-! ## A314756.P10904657844756591493

`A301291(n)+A010051(A360788(n))`
-/

namespace A314756.P10904657844756591493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A010051 (A360788 n).toNat

end

end A314756.P10904657844756591493

/-! ## A314756.P17820995005587578369

`A301291(n)+A156660(A297205(n+1))`
-/

namespace A314756.P17820995005587578369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A156660 (A297205 (n + 1)).toNat

end

end A314756.P17820995005587578369

/-! ## A314756.P17757078470421743221

`A314757(n)-A339172(A346061(2*(n+1)))`
-/

namespace A314756.P17757078470421743221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314757 n - A339172 (A346061 (2 * (n + 1))).toNat

end

end A314756.P17757078470421743221

/-! ## A314756.P14054405466629624925

`A376652(n+1)-A123594(A053285(n))`
-/

namespace A314756.P14054405466629624925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376652 (n + 1) - A123594 (A053285 n).toNat

end

end A314756.P14054405466629624925

/-!
# A314757: Coordination sequence Gal.5.247.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314757, there is no canonical definition to state claims against.
-/

/-! ## A314757.P12819655560163274692

`or(A007949(A077741(n+1)), A314756(n))`
-/

namespace A314757.P12819655560163274692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A077741 (n + 1)).toNat) (A314756 n)

end

end A314757.P12819655560163274692

/-! ## A314757.P1206569978475444808

`A250120(n)-A191250(A038691(n+1))`
-/

namespace A314757.P1206569978475444808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A191250 (A038691 (n + 1)).toNat

end

end A314757.P1206569978475444808

/-! ## A314757.P8714438425395402638

`or(A035152(A027385(n+1)), A314756(n))`
-/

namespace A314757.P8714438425395402638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035152 (A027385 (n + 1)).toNat) (A314756 n)

end

end A314757.P8714438425395402638

/-! ## A314757.P2833828169467343702

`or(A046660(A039791(n+1)), A314756(n))`
-/

namespace A314757.P2833828169467343702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046660 (A039791 (n + 1)).toNat) (A314756 n)

end

end A314757.P2833828169467343702

/-! ## A314757.P11233096273626541939

`or(A079174(A264714(n+1)), A314756(n))`
-/

namespace A314757.P11233096273626541939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079174 (A264714 (n + 1)).toNat) (A314756 n)

end

end A314757.P11233096273626541939

/-!
# A314758: Coordination sequence Gal.6.193.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314758, the canonical program `A314758.P11719452081678354248` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314758 has offset 0).

The definition of A314758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314758.P14287481740646217853

`A313774(n)-∑[char[or(2, n)]]`
-/

namespace A314758.P14287481740646217853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314758.P14287481740646217853

namespace A314758

/-- `A313774(n)-∑[char[or(2, n)]]` -/
def P14287481740646217853.Spec : Prop :=
  ∀ n, P14287481740646217853.a n = A314758 n

end A314758

/-! ## A314758.P11719452081678354248

`A042965(A314712(n)+1-n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314758

/-- `A042965(A314712(n)+1-n)` -/
def P11719452081678354248.Spec : Prop :=
  ∀ n, P11719452081678354248.a n = A314758 n

theorem P11719452081678354248.correct : P11719452081678354248.Spec := by
  intro n
  simp only [A314758]

end A314758

/-! ## A314758.P2937993796305035478

`A042965(1-(n-A314712(n)))`
-/

namespace A314758.P2937993796305035478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (1 - ((n : ℤ) - A314712 n)).toNat

end

end A314758.P2937993796305035478

namespace A314758

/-- `A042965(1-(n-A314712(n)))` -/
def P2937993796305035478.Spec : Prop :=
  ∀ n, P2937993796305035478.a n = A314758 n

theorem P2937993796305035478.correct : P2937993796305035478.Spec := by
  intro n
  simp only [A314758, Nat.add_sub_cancel, A314758.P2937993796305035478.a, A314758.P11719452081678354248.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A314758

/-! ## A314758.P1236090041022179755

`A313611(n)-A004525(n-A004396(n))`
-/

namespace A314758.P1236090041022179755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314758.P1236090041022179755

namespace A314758

/-- `A313611(n)-A004525(n-A004396(n))` -/
def P1236090041022179755.Spec : Prop :=
  ∀ n, P1236090041022179755.a n = A314758 n

end A314758

/-! ## A314758.P5896546229771242149

`A313622(n)-∑[A022003(n)]`
-/

namespace A314758.P5896546229771242149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314758.P5896546229771242149

namespace A314758

/-- `A313622(n)-∑[A022003(n)]` -/
def P5896546229771242149.Spec : Prop :=
  ∀ n, P5896546229771242149.a n = A314758 n

end A314758

/-! ## A314758.P18071553016639005235

`A008576(n)+A313622(n)-A008486(n)`
-/

namespace A314758.P18071553016639005235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313622 n - A008486 n)

end

end A314758.P18071553016639005235

namespace A314758

/-- `A008576(n)+A313622(n)-A008486(n)` -/
def P18071553016639005235.Spec : Prop :=
  ∀ n, P18071553016639005235.a n = A314758 n

end A314758

/-! ## A314758.P17371634221132073764

`A314060(n)-∑[2*A022003(n)]`
-/

namespace A314758.P17371634221132073764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314060 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314758.P17371634221132073764

namespace A314758

/-- `A314060(n)-∑[2*A022003(n)]` -/
def P17371634221132073764.Spec : Prop :=
  ∀ n, P17371634221132073764.a n = A314758 n

end A314758

/-! ## A314758.P6322619215215161418

`A004396(A310405(n))+2*A004396(n)`
-/

namespace A314758.P6322619215215161418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310405 n).toNat + 2 * A004396 n

end

end A314758.P6322619215215161418

namespace A314758

/-- `A004396(A310405(n))+2*A004396(n)` -/
def P6322619215215161418.Spec : Prop :=
  ∀ n, P6322619215215161418.a n = A314758 n

end A314758

/-! ## A314758.P6702224239006836019

`A004396(A313583(n))+2*A004396(n)`
-/

namespace A314758.P6702224239006836019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313583 n).toNat + 2 * A004396 n

end

end A314758.P6702224239006836019

namespace A314758

/-- `A004396(A313583(n))+2*A004396(n)` -/
def P6702224239006836019.Spec : Prop :=
  ∀ n, P6702224239006836019.a n = A314758 n

end A314758

/-! ## A314758.P9796131473562847317

`A004525(A313789(n))+2*n`
-/

namespace A314758.P9796131473562847317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313789 n).toNat + (2 * n : ℤ)

end

end A314758.P9796131473562847317

namespace A314758

/-- `A004525(A313789(n))+2*n` -/
def P9796131473562847317.Spec : Prop :=
  ∀ n, P9796131473562847317.a n = A314758 n

end A314758

/-! ## A314758.P12677987790744679827

`A004525(A313794(n))+2*n`
-/

namespace A314758.P12677987790744679827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313794 n).toNat + (2 * n : ℤ)

end

end A314758.P12677987790744679827

namespace A314758

/-- `A004525(A313794(n))+2*n` -/
def P12677987790744679827.Spec : Prop :=
  ∀ n, P12677987790744679827.a n = A314758 n

end A314758

/-! ## A314758.P9570853103056996088

`A004525(A314054(n))+2*n`
-/

namespace A314758.P9570853103056996088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314054 n).toNat + (2 * n : ℤ)

end

end A314758.P9570853103056996088

namespace A314758

/-- `A004525(A314054(n))+2*n` -/
def P9570853103056996088.Spec : Prop :=
  ∀ n, P9570853103056996088.a n = A314758 n

end A314758

/-! ## A314758.P6684404551915979965

`A004525(A314060(n))+2*n`
-/

namespace A314758.P6684404551915979965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314060 n).toNat + (2 * n : ℤ)

end

end A314758.P6684404551915979965

namespace A314758

/-- `A004525(A314060(n))+2*n` -/
def P6684404551915979965.Spec : Prop :=
  ∀ n, P6684404551915979965.a n = A314758 n

end A314758

/-! ## A314758.P11883616983277930478

`A004525(A314066(n))+2*n`
-/

namespace A314758.P11883616983277930478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314066 n).toNat + (2 * n : ℤ)

end

end A314758.P11883616983277930478

namespace A314758

/-- `A004525(A314066(n))+2*n` -/
def P11883616983277930478.Spec : Prop :=
  ∀ n, P11883616983277930478.a n = A314758 n

end A314758

/-! ## A314758.P8897677179573885996

`A004396(A314947(n)+2*n)`
-/

namespace A314758.P8897677179573885996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314947 n + (2 * n : ℤ)).toNat

end

end A314758.P8897677179573885996

namespace A314758

/-- `A004396(A314947(n)+2*n)` -/
def P8897677179573885996.Spec : Prop :=
  ∀ n, P8897677179573885996.a n = A314758 n

end A314758

/-! ## A314758.P13407424899011978306

`A004396(A314959(n)+2*n)`
-/

namespace A314758.P13407424899011978306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314959 n + (2 * n : ℤ)).toNat

end

end A314758.P13407424899011978306

namespace A314758

/-- `A004396(A314959(n)+2*n)` -/
def P13407424899011978306.Spec : Prop :=
  ∀ n, P13407424899011978306.a n = A314758 n

end A314758

/-! ## A314758.P298161350812969743

`A004396(2*(A314712(n)-n))`
-/

namespace A314758.P298161350812969743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314712 n - (n : ℤ))).toNat

end

end A314758.P298161350812969743

namespace A314758

/-- `A004396(2*(A314712(n)-n))` -/
def P298161350812969743.Spec : Prop :=
  ∀ n, P298161350812969743.a n = A314758 n

end A314758

/-! ## A314758.P4686747056748051124

`A004396(A314947(n)+n+n)`
-/

namespace A314758.P4686747056748051124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314947 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314758.P4686747056748051124

namespace A314758

/-- `A004396(A314947(n)+n+n)` -/
def P4686747056748051124.Spec : Prop :=
  ∀ n, P4686747056748051124.a n = A314758 n

end A314758

/-! ## A314758.P4876927407443678264

`A004396(A314959(n)+n+n)`
-/

namespace A314758.P4876927407443678264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314959 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314758.P4876927407443678264

namespace A314758

/-- `A004396(A314959(n)+n+n)` -/
def P4876927407443678264.Spec : Prop :=
  ∀ n, P4876927407443678264.a n = A314758 n

end A314758

/-!
# A314759: Coordination sequence Gal.6.558.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314759, there is no canonical definition to state claims against.
-/

/-! ## A314759.P10242544462296464354

`A301291(n)+A035699(A028755(2*(n+2)))`
-/

namespace A314759.P10242544462296464354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A035699 (A028755 (2 * (n + 2))).toNat

end

end A314759.P10242544462296464354

/-! ## A314759.P1532809747193367782

`A311464(n)+A001222(A042235(n))`
-/

namespace A314759.P1532809747193367782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311464 n + A001222 (A042235 n).toNat

end

end A314759.P1532809747193367782

/-! ## A314759.P9551687346235386087

`A106744(A313783(n)+1)`
-/

namespace A314759.P9551687346235386087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313783 n + 1).toNat

end

end A314759.P9551687346235386087

/-! ## A314759.P242712760548480643

`A057536(A000108(n))+4*n`
-/

namespace A314759.P242712760548480643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (A000108 n).toNat + (4 * n : ℤ)

end

end A314759.P242712760548480643

/-! ## A314759.P8379752618847808774

`or(A099238(A155803(n)), A311548(n))`
-/

namespace A314759.P8379752618847808774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099238 (A155803 n).toNat) (A311548 n)

end

end A314759.P8379752618847808774

/-!
# A314760: Coordination sequence Gal.6.507.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314760, there is no canonical definition to state claims against.
-/

/-! ## A314760.P6139208241931948930

`or(A001222(A047024(n+2)), A311549(n))`
-/

namespace A314760.P6139208241931948930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A047024 (n + 2)).toNat) (A311549 n)

end

end A314760.P6139208241931948930

/-! ## A314760.P1852504627724526585

`or(A181625(n+1), A309400(A323860(n+1)))`
-/

namespace A314760.P1852504627724526585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181625 (n + 1)) (A309400 (A323860 (n + 1)).toNat)

end

end A314760.P1852504627724526585

/-! ## A314760.P1326471804359480297

`A156724(A324854(Δ[n²])+2)`
-/

namespace A314760.P1326471804359480297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A324854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2).toNat

end

end A314760.P1326471804359480297

/-! ## A314760.P15481532679111804267

`or(A151962(A322262(n)), A314725(n))`
-/

namespace A314760.P15481532679111804267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151962 (A322262 n).toNat) (A314725 n)

end

end A314760.P15481532679111804267

/-! ## A314760.P8246911371897949552

`A196068(A249567(n+1))`
-/

namespace A314760.P8246911371897949552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (A249567 (n + 1)).toNat

end

end A314760.P8246911371897949552

/-!
# A314761: Coordination sequence Gal.6.357.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314761, there is no canonical definition to state claims against.
-/

/-! ## A314761.P8577268616249765216

`A313093(n)+A101455(n)`
-/

namespace A314761.P8577268616249765216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n + A101455 n

end

end A314761.P8577268616249765216

/-! ## A314761.P17499505694394068275

`A313093(n)-A056594(n+1)`
-/

namespace A314761.P17499505694394068275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n - A056594 (n + 1)

end

end A314761.P17499505694394068275

/-! ## A314761.P17398778891911567564

`A313093(n)+A046978(2*n)`
-/

namespace A314761.P17398778891911567564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n + A046978 (2 * n)

end

end A314761.P17398778891911567564

/-! ## A314761.P5226654897458085583

`A313093(n)+A132380(2*n)`
-/

namespace A314761.P5226654897458085583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313093 n + A132380 (2 * n)

end

end A314761.P5226654897458085583

/-! ## A314761.P17184828256138021511

`A348613(A328508(n+4))+A314720(n)`
-/

namespace A314761.P17184828256138021511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A328508 (n + 4)).toNat + A314720 n

end

end A314761.P17184828256138021511

/-!
# A314762: Coordination sequence Gal.5.199.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314762, there is no canonical definition to state claims against.
-/

/-! ## A314762.P6645875826549143955

`A250120(n)-A063725(A026150(n))`
-/

namespace A314762.P6645875826549143955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A063725 (A026150 n).toNat

end

end A314762.P6645875826549143955

/-! ## A314762.P1168354338850131954

`A314312(n)+A001222(A266238(n+1))`
-/

namespace A314762.P1168354338850131954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314312 n + A001222 (A266238 (n + 1)).toNat

end

end A314762.P1168354338850131954

/-! ## A314762.P10722717999337454730

`A250120(n)-A318652(A038445(n+1))`
-/

namespace A314762.P10722717999337454730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A318652 (A038445 (n + 1)).toNat

end

end A314762.P10722717999337454730

/-! ## A314762.P485526699758084287

`A346128(A186156(n+2)-2)`
-/

namespace A314762.P485526699758084287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346128 (A186156 (n + 2) - 2).toNat

end

end A314762.P485526699758084287

/-! ## A314762.P1609420359507382635

`A382876((n+1)²)+A045672(n)`
-/

namespace A314762.P1609420359507382635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382876 ((n + 1) ^ 2) + A045672 n

end

end A314762.P1609420359507382635

/-!
# A314763: Coordination sequence Gal.5.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314763, the canonical program `A314763.P16038055828271141937` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314763 has offset 0).

The definition of A314763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314763.P16038055828271141937

`A310355(n)+A102283(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314763

/-- `A310355(n)+A102283(n)` -/
def P16038055828271141937.Spec : Prop :=
  ∀ n, P16038055828271141937.a n = A314763 n

theorem P16038055828271141937.correct : P16038055828271141937.Spec := by
  intro n
  simp only [A314763]

end A314763

/-! ## A314763.P17883463793939458853

`A310355(n)+A163810(2*n+3)`
-/

namespace A314763.P17883463793939458853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310355 n + A163810 (2 * n + 3)

end

end A314763.P17883463793939458853

namespace A314763

/-- `A310355(n)+A163810(2*n+3)` -/
def P17883463793939458853.Spec : Prop :=
  ∀ n, P17883463793939458853.a n = A314763 n

end A314763

/-! ## A314763.P17120326649040186128

`A301291(n)+A127322(A127296(n))`
-/

namespace A314763.P17120326649040186128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A127322 (A127296 n).toNat

end

end A314763.P17120326649040186128

namespace A314763

/-- `A301291(n)+A127322(A127296(n))` -/
def P17120326649040186128.Spec : Prop :=
  ∀ n, P17120326649040186128.a n = A314763 n

end A314763

/-! ## A314763.P18172614307280125675

`A314893(n)-A000035(A000292(3*n+4))`
-/

namespace A314763.P18172614307280125675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n - A000035 (A000292 (3 * n + 4)).toNat

end

end A314763.P18172614307280125675

namespace A314763

/-- `A314893(n)-A000035(A000292(3*n+4))` -/
def P18172614307280125675.Spec : Prop :=
  ∀ n, P18172614307280125675.a n = A314763 n

end A314763

/-! ## A314763.P71721870128345275

`A250120(n)-A014586(A085012(n+2))`
-/

namespace A314763.P71721870128345275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A014586 (A085012 (n + 2)).toNat

end

end A314763.P71721870128345275

namespace A314763

/-- `A250120(n)-A014586(A085012(n+2))` -/
def P71721870128345275.Spec : Prop :=
  ∀ n, P71721870128345275.a n = A314763 n

end A314763

/-!
# A314764: Coordination sequence Gal.6.569.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314764, there is no canonical definition to state claims against.
-/

/-! ## A314764.P1866075473361587451

`A314714(n)+A314789(n)-A314775(n)`
-/

namespace A314764.P1866075473361587451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314714 n + (A314789 n - A314775 n)

end

end A314764.P1866075473361587451

/-! ## A314764.P3005459747806539327

`xor(A314768(n), A319081(A184963(n+1)))`
-/

namespace A314764.P3005459747806539327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314768 n) (A319081 (A184963 (n + 1)).toNat)

end

end A314764.P3005459747806539327

/-! ## A314764.P10379145701206739230

`∑[A013632(A255286(n))]-char[4]`
-/

namespace A314764.P10379145701206739230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A255286 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314764.P10379145701206739230

/-! ## A314764.P6094928033550079899

`record[and(A114502(2*n+1), A114519(n+2))]`
-/

namespace A314764.P6094928033550079899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114502 (2 * n + 1)) (A114519 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314764.P6094928033550079899

/-! ## A314764.P2145136253225857835

`A314778(n)-A134402(A051786(n))`
-/

namespace A314764.P2145136253225857835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314778 n - A134402 (A051786 n).toNat

end

end A314764.P2145136253225857835

/-!
# A314765: Coordination sequence Gal.6.194.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314765, the canonical program `A314765.P9746236482672661847` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314765 has offset 0).

The definition of A314765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314765.P5101319902244039601

`A314915(n)-Δ[A011864(n)]`
-/

namespace A314765.P5101319902244039601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314915 n - (f1 (n + 1) - f1 n)

end

end A314765.P5101319902244039601

namespace A314765

/-- `A314915(n)-Δ[A011864(n)]` -/
def P5101319902244039601.Spec : Prop :=
  ∀ n, P5101319902244039601.a n = A314765 n

theorem P5101319902244039601.correct : P5101319902244039601.Spec := by
  intro n
  simp only [A314765, Nat.add_sub_cancel, A314765.P5101319902244039601.f1, A314765.P5101319902244039601.a, A314765.P9746236482672661847.a, A008592, A008592.P4981059802862696142.a, A011864, A011864.P3547417513882699266.a, A314186, A314186.P10880923475952212698.f1, A314186.P10880923475952212698.a, A314915, A314915.P8542026392828308054.f1, A314915.P8542026392828308054.a, A314106, A314106.P7807750276630759076.a, A047486, A047486.P6506762595393263252.a, A312891, A312891.P482666226062443179.a, A008574, A008574.P1300280032690682112.a, A310367, A310367.P12244695363259660047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314765

/-! ## A314765.P9746236482672661847

`abs(A008592(n)-A314186(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A314765

/-- `abs(A008592(n)-A314186(n))` -/
def P9746236482672661847.Spec : Prop :=
  ∀ n, P9746236482672661847.a n = A314765 n

theorem P9746236482672661847.correct : P9746236482672661847.Spec := by
  intro n
  simp only [A314765]

end A314765

/-! ## A314765.P237212360465596204

`2*A008706(n)-A314186(n)`
-/

namespace A314765.P237212360465596204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314186 n

end

end A314765.P237212360465596204

namespace A314765

/-- `2*A008706(n)-A314186(n)` -/
def P237212360465596204.Spec : Prop :=
  ∀ n, P237212360465596204.a n = A314765 n

end A314765

/-! ## A314765.P1140098775667367785

`A008458(n)+A008574(n)-A314186(n)`
-/

namespace A314765.P1140098775667367785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314186 n)

end

end A314765.P1140098775667367785

namespace A314765

/-- `A008458(n)+A008574(n)-A314186(n)` -/
def P1140098775667367785.Spec : Prop :=
  ∀ n, P1140098775667367785.a n = A314765 n

end A314765

/-! ## A314765.P10529539263503345034

`A314186(n)-A005843(A314186(n)-A008706(n))`
-/

namespace A314765.P10529539263503345034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314186 n - A005843 (A314186 n - A008706 n).toNat

end

end A314765.P10529539263503345034

namespace A314765

/-- `A314186(n)-A005843(A314186(n)-A008706(n))` -/
def P10529539263503345034.Spec : Prop :=
  ∀ n, P10529539263503345034.a n = A314765 n

end A314765

/-! ## A314765.P10563988622017673148

`A005843(A008706(n))-A314186(n)`
-/

namespace A314765.P10563988622017673148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314186 n

end

end A314765.P10563988622017673148

namespace A314765

/-- `A005843(A008706(n))-A314186(n)` -/
def P10563988622017673148.Spec : Prop :=
  ∀ n, P10563988622017673148.a n = A314765 n

end A314765

/-! ## A314765.P13812511057934708869

`A004396(A313639(n)+2*n)`
-/

namespace A314765.P13812511057934708869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313639 n + (2 * n : ℤ)).toNat

end

end A314765.P13812511057934708869

namespace A314765

/-- `A004396(A313639(n)+2*n)` -/
def P13812511057934708869.Spec : Prop :=
  ∀ n, P13812511057934708869.a n = A314765 n

end A314765

/-! ## A314765.P18376574335445157104

`A004396(A315212(n)+2*n)`
-/

namespace A314765.P18376574335445157104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315212 n + (2 * n : ℤ)).toNat

end

end A314765.P18376574335445157104

namespace A314765

/-- `A004396(A315212(n)+2*n)` -/
def P18376574335445157104.Spec : Prop :=
  ∀ n, P18376574335445157104.a n = A314765 n

end A314765

/-! ## A314765.P6372387287522159365

`A004396(A313639(n)+n+n)`
-/

namespace A314765.P6372387287522159365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313639 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314765.P6372387287522159365

namespace A314765

/-- `A004396(A313639(n)+n+n)` -/
def P6372387287522159365.Spec : Prop :=
  ∀ n, P6372387287522159365.a n = A314765 n

end A314765

/-! ## A314765.P14211364317474115741

`A004396(A315212(n)+n+n)`
-/

namespace A314765.P14211364317474115741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315212 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314765.P14211364317474115741

namespace A314765

/-- `A004396(A315212(n)+n+n)` -/
def P14211364317474115741.Spec : Prop :=
  ∀ n, P14211364317474115741.a n = A314765 n

end A314765

/-!
# A314766: Coordination sequence Gal.4.24.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314766, there is no canonical definition to state claims against.
-/

/-! ## A314766.P800217008320981865

`A314920(n)-A121262(A000984(n))`
-/

namespace A314766.P800217008320981865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n - A121262 (A000984 n).toNat

end

end A314766.P800217008320981865

/-! ## A314766.P11901280538183488660

`A250120(n)-A083037(A365380(2*n+3))`
-/

namespace A314766.P11901280538183488660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A083037 (A365380 (2 * n + 3)).toNat

end

end A314766.P11901280538183488660

/-! ## A314766.P13787831172597865021

`A278040(n)+A104414(A078008(n))`
-/

namespace A314766.P13787831172597865021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + A104414 (A078008 n).toNat

end

end A314766.P13787831172597865021

/-! ## A314766.P10058967927378463665

`A349294(A311576(n))+A321391(A214965(n+2))`
-/

namespace A314766.P10058967927378463665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A311576 n).toNat + A321391 (A214965 (n + 2)).toNat

end

end A314766.P10058967927378463665

/-!
# A314767: Coordination sequence Gal.4.96.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314767, there is no canonical definition to state claims against.
-/

/-! ## A314767.P148922220142050921

`xor(A314768(n), A319081(A184963(n)))`
-/

namespace A314767.P148922220142050921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314768 n) (A319081 (A184963 n).toNat)

end

end A314767.P148922220142050921

/-! ## A314767.P15086682166084775466

`A000120(A266695(n))+4*n`
-/

namespace A314767.P15086682166084775466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A266695 n).toNat + (4 * n : ℤ)

end

end A314767.P15086682166084775466

/-! ## A314767.P13878804377141764911

`A314920(n)-A287125(A151282(n))`
-/

namespace A314767.P13878804377141764911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n - A287125 (A151282 n).toNat

end

end A314767.P13878804377141764911

/-! ## A314767.P1932632738784493219

`xor(A185217(A309861(n)), A314768(n))`
-/

namespace A314767.P1932632738784493219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185217 (A309861 n).toNat) (A314768 n)

end

end A314767.P1932632738784493219

/-! ## A314767.P8526413262825010421

`A314766(n)+A269247(A001260(n+1))`
-/

namespace A314767.P8526413262825010421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314766 n + A269247 (A001260 (n + 1)).toNat

end

end A314767.P8526413262825010421

/-!
# A314768: Coordination sequence Gal.6.464.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314768, there is no canonical definition to state claims against.
-/

/-! ## A314768.P62570055849079849

`A008574(n)+A000120(A052831(n))`
-/

namespace A314768.P62570055849079849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000120 (A052831 n).toNat

end

end A314768.P62570055849079849

/-! ## A314768.P10233022025046187046

`A008574(n)+A001822(A152035(n))`
-/

namespace A314768.P10233022025046187046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001822 (A152035 n).toNat

end

end A314768.P10233022025046187046

/-! ## A314768.P2303801741286212502

`A313785(n)-A001221(A094433(n))`
-/

namespace A314768.P2303801741286212502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313785 n - A001221 (A094433 n).toNat

end

end A314768.P2303801741286212502

/-! ## A314768.P14352996524216022183

`A301291(n)+A001221(A147318(n+1))`
-/

namespace A314768.P14352996524216022183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A001221 (A147318 (n + 1)).toNat

end

end A314768.P14352996524216022183

/-! ## A314768.P14951099141304807372

`A116452(A007716(n))+A063732(3*n+1)`
-/

namespace A314768.P14951099141304807372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116452 (A007716 n).toNat + A063732 (3 * n + 1)

end

end A314768.P14951099141304807372

/-!
# A314769: Coordination sequence Gal.4.98.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314769, there is no canonical definition to state claims against.
-/

/-! ## A314769.P14840928323558905814

`A315212(n)-A001222(A149997(n))`
-/

namespace A314769.P14840928323558905814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315212 n - A001222 (A149997 n).toNat

end

end A314769.P14840928323558905814

/-! ## A314769.P452468595261184657

`gcd(n-1, A008683(n!))+4*n`
-/

namespace A314769.P452468595261184657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (A008683 (Nat.factorial n)) + 4 * n

end

end A314769.P452468595261184657

/-! ## A314769.P1298905335805797323

`A137203(A187981(n+1))`
-/

namespace A314769.P1298905335805797323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137203 (A187981 (n + 1)).toNat

end

end A314769.P1298905335805797323

/-! ## A314769.P5550619109139101441

`A314770(A267116(3^n))`
-/

namespace A314769.P5550619109139101441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314770 (A267116 (3 ^ n)).toNat

end

end A314769.P5550619109139101441

/-! ## A314769.P6985505234289041225

`A314770(n)%A095625(n)`
-/

namespace A314769.P6985505234289041225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314770 n) (A095625 n)

end

end A314769.P6985505234289041225

/-!
# A314770: Coordination sequence Gal.6.195.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314770, the canonical program `A314770.P11227293715083121856` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314770 has offset 0).

The definition of A314770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314770.P11227293715083121856

`A311475(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314770

/-- `A311475(n)+A004525(n)` -/
def P11227293715083121856.Spec : Prop :=
  ∀ n, P11227293715083121856.a n = A314770 n

theorem P11227293715083121856.correct : P11227293715083121856.Spec := by
  intro n
  simp only [A314770]

end A314770

/-! ## A314770.P5709639797791154387

`A313103(n)+A101455(n)`
-/

namespace A314770.P5709639797791154387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313103 n + A101455 n

end

end A314770.P5709639797791154387

namespace A314770

/-- `A313103(n)+A101455(n)` -/
def P5709639797791154387.Spec : Prop :=
  ∀ n, P5709639797791154387.a n = A314770 n

end A314770

/-! ## A314770.P8513775044306972896

`A311475(n)+n-∑[A021913(n)]`
-/

namespace A314770.P8513775044306972896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314770.P8513775044306972896

namespace A314770

/-- `A311475(n)+n-∑[A021913(n)]` -/
def P8513775044306972896.Spec : Prop :=
  ∀ n, P8513775044306972896.a n = A314770 n

end A314770

/-! ## A314770.P7275109332135714637

`A311475(n)+n-Δ[A011848(n)]`
-/

namespace A314770.P7275109332135714637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314770.P7275109332135714637

namespace A314770

/-- `A311475(n)+n-Δ[A011848(n)]` -/
def P7275109332135714637.Spec : Prop :=
  ∀ n, P7275109332135714637.a n = A314770 n

end A314770

/-! ## A314770.P11083583060558881265

`A313646(n)-∑[A022003(n)]`
-/

namespace A314770.P11083583060558881265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314770.P11083583060558881265

namespace A314770

/-- `A313646(n)-∑[A022003(n)]` -/
def P11083583060558881265.Spec : Prop :=
  ∀ n, P11083583060558881265.a n = A314770 n

theorem P11083583060558881265.correct : P11083583060558881265.Spec := by
  intro n
  simp only [A314770, Nat.add_sub_cancel, A314770.P11083583060558881265.f1, A314770.P11083583060558881265.a, A314770.P11227293715083121856.a, A004525, A004525.P4158271949796742323.a, A022003, A022003.P8302093470414743033.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A313646, A313646.P5789065148866305681.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314770

/-! ## A314770.P4359498715136795925

`A313646(n)-A002264(n+1)`
-/

namespace A314770.P4359498715136795925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A002264 (n + 1)

end

end A314770.P4359498715136795925

namespace A314770

/-- `A313646(n)-A002264(n+1)` -/
def P4359498715136795925.Spec : Prop :=
  ∀ n, P4359498715136795925.a n = A314770 n

end A314770

/-! ## A314770.P14759052900780863032

`A004396(n)+A313646(n)-n`
-/

namespace A314770.P14759052900780863032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313646 n - (n : ℤ))

end

end A314770.P14759052900780863032

namespace A314770

/-- `A004396(n)+A313646(n)-n` -/
def P14759052900780863032.Spec : Prop :=
  ∀ n, P14759052900780863032.a n = A314770 n

end A314770

/-! ## A314770.P18411321215661404740

`A313646(n)-A008615(2*n+1)`
-/

namespace A314770.P18411321215661404740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A008615 (2 * n + 1)

end

end A314770.P18411321215661404740

namespace A314770

/-- `A313646(n)-A008615(2*n+1)` -/
def P18411321215661404740.Spec : Prop :=
  ∀ n, P18411321215661404740.a n = A314770 n

end A314770

/-! ## A314770.P7877311486443410195

`A008576(n)+A313646(n)-A008486(n)`
-/

namespace A314770.P7877311486443410195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313646 n - A008486 n)

end

end A314770.P7877311486443410195

namespace A314770

/-- `A008576(n)+A313646(n)-A008486(n)` -/
def P7877311486443410195.Spec : Prop :=
  ∀ n, P7877311486443410195.a n = A314770 n

end A314770

/-! ## A314770.P12852382371857847210

`abs(A008592(n)-A314185(n))`
-/

namespace A314770.P12852382371857847210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314185 n|

end

end A314770.P12852382371857847210

namespace A314770

/-- `abs(A008592(n)-A314185(n))` -/
def P12852382371857847210.Spec : Prop :=
  ∀ n, P12852382371857847210.a n = A314770 n

end A314770

/-! ## A314770.P12414773187670614256

`A008458(n)+A008574(n)-A314185(n)`
-/

namespace A314770.P12414773187670614256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314185 n)

end

end A314770.P12414773187670614256

namespace A314770

/-- `A008458(n)+A008574(n)-A314185(n)` -/
def P12414773187670614256.Spec : Prop :=
  ∀ n, P12414773187670614256.a n = A314770 n

end A314770

/-! ## A314770.P11515114093200371544

`A313789(n)-∑[char[or(2, n)]]`
-/

namespace A314770.P11515114093200371544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314770.P11515114093200371544

namespace A314770

/-- `A313789(n)-∑[char[or(2, n)]]` -/
def P11515114093200371544.Spec : Prop :=
  ∀ n, P11515114093200371544.a n = A314770 n

end A314770

/-! ## A314770.P11419898326792055579

`A313789(n)-∑[A021913(n)]`
-/

namespace A314770.P11419898326792055579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314770.P11419898326792055579

namespace A314770

/-- `A313789(n)-∑[A021913(n)]` -/
def P11419898326792055579.Spec : Prop :=
  ∀ n, P11419898326792055579.a n = A314770 n

end A314770

/-! ## A314770.P10262517109443563565

`A313789(n)-Δ[A011848(n)]`
-/

namespace A314770.P10262517109443563565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - (f1 (n + 1) - f1 n)

end

end A314770.P10262517109443563565

namespace A314770

/-- `A313789(n)-Δ[A011848(n)]` -/
def P10262517109443563565.Spec : Prop :=
  ∀ n, P10262517109443563565.a n = A314770 n

end A314770

/-! ## A314770.P5863226343457699771

`A004525(n)+A313789(n)-n`
-/

namespace A314770.P5863226343457699771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313789 n - (n : ℤ))

end

end A314770.P5863226343457699771

namespace A314770

/-- `A004525(n)+A313789(n)-n` -/
def P5863226343457699771.Spec : Prop :=
  ∀ n, P5863226343457699771.a n = A314770 n

theorem P5863226343457699771.correct : P5863226343457699771.Spec := by
  intro n
  simp only [A314770, Nat.add_sub_cancel, A314770.P5863226343457699771.a, A314770.P11227293715083121856.a, A004525, A004525.P4158271949796742323.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A313789, A313789.P14929352302420444219.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314770

/-! ## A314770.P6184288648380571247

`Δ[A054925(n)]+A313789(n)-n`
-/

namespace A314770.P6184288648380571247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313789 n - (n : ℤ))

end

end A314770.P6184288648380571247

namespace A314770

/-- `Δ[A054925(n)]+A313789(n)-n` -/
def P6184288648380571247.Spec : Prop :=
  ∀ n, P6184288648380571247.a n = A314770 n

end A314770

/-! ## A314770.P5769804211380186502

`A004525(n)+A004396(A314903(n))+n`
-/

namespace A314770.P5769804211380186502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A314903 n).toNat + (n : ℤ))

end

end A314770.P5769804211380186502

namespace A314770

/-- `A004525(n)+A004396(A314903(n))+n` -/
def P5769804211380186502.Spec : Prop :=
  ∀ n, P5769804211380186502.a n = A314770 n

end A314770

/-!
# A314771: Coordination sequence Gal.4.102.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314771, there is no canonical definition to state claims against.
-/

/-! ## A314771.P12924020154810400160

`xor(A248640((n+1)²), A312206(n))`
-/

namespace A314771.P12924020154810400160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A248640 ((n + 1) ^ 2)) (A312206 n)

end

end A314771.P12924020154810400160

/-! ## A314771.P12564037086837348469

`A311603(n)+A001221(A178119(n))`
-/

namespace A314771.P12564037086837348469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 n + A001221 (A178119 n).toNat

end

end A314771.P12564037086837348469

/-! ## A314771.P15167478129460864897

`A314908(n)-A080679(A079284(2*n))`
-/

namespace A314771.P15167478129460864897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314908 n - A080679 (A079284 (2 * n)).toNat

end

end A314771.P15167478129460864897

/-! ## A314771.P8969206365316473521

`A348613(A224812(3*n))+A314720(n)`
-/

namespace A314771.P8969206365316473521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A224812 (3 * n)).toNat + A314720 n

end

end A314771.P8969206365316473521

/-! ## A314771.P14048943991235402854

`A314761(n)+A037802(A027480(3*n+1))`
-/

namespace A314771.P14048943991235402854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314761 n + A037802 (A027480 (3 * n + 1)).toNat

end

end A314771.P14048943991235402854

/-!
# A314772: Coordination sequence Gal.4.126.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314772, there is no canonical definition to state claims against.
-/

/-! ## A314772.P7450243486693198203

`or(A005470(A342060(n+3)), A312185(n))`
-/

namespace A314772.P7450243486693198203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005470 (A342060 (n + 3)).toNat) (A312185 n)

end

end A314772.P7450243486693198203

/-! ## A314772.P17306038363858714543

`or(A005470(A342060(n+3)), A312979(n))`
-/

namespace A314772.P17306038363858714543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005470 (A342060 (n + 3)).toNat) (A312979 n)

end

end A314772.P17306038363858714543

/-! ## A314772.P14710499629725434403

`or(A001221(A000667(n)), A312000(n))`
-/

namespace A314772.P14710499629725434403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000667 n).toNat) (A312000 n)

end

end A314772.P14710499629725434403

/-! ## A314772.P1524482739286010119

`or(A001222(A143500(n)), A314770(n))`
-/

namespace A314772.P1524482739286010119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A143500 n).toNat) (A314770 n)

end

end A314772.P1524482739286010119

/-! ## A314772.P15851225920169587417

`A315037(n)-A359327(A141697(3*(n+1)))`
-/

namespace A314772.P15851225920169587417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315037 n - A359327 (A141697 (3 * (n + 1))).toNat

end

end A314772.P15851225920169587417

/-!
# A314775: Coordination sequence Gal.6.569.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314775, there is no canonical definition to state claims against.
-/

/-! ## A314775.P15423997375966820632

`A314714(n)+A314789(n)-A314764(n)`
-/

namespace A314775.P15423997375966820632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314714 n + (A314789 n - A314764 n)

end

end A314775.P15423997375966820632

/-! ## A314775.P12905516517461327972

`A314960(n)-A187752(A181318(n))`
-/

namespace A314775.P12905516517461327972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314960 n - A187752 (A181318 n).toNat

end

end A314775.P12905516517461327972

/-! ## A314775.P14539915537308988329

`A314784(n)-A275855(A000110(n))`
-/

namespace A314775.P14539915537308988329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314784 n - A275855 (A000110 n).toNat

end

end A314775.P14539915537308988329

/-! ## A314775.P5095666344398752986

`A314784(n)-A010894(A314779(n))`
-/

namespace A314775.P5095666344398752986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314784 n - A010894 ((A314779 n).toNat + 21)

end

end A314775.P5095666344398752986

/-! ## A314775.P3403120747266913567

`A314784(n)-A010894(A314781(n))`
-/

namespace A314775.P3403120747266913567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314784 n - A010894 ((A314781 n).toNat + 21)

end

end A314775.P3403120747266913567

/-!
# A314776: Coordination sequence Gal.6.478.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314776, the canonical program `A314776.P3434978247879640605` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314776 has offset 0).

The definition of A314776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314776.P3434978247879640605

`A257088(A004525(n))+4*n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314776

/-- `A257088(A004525(n))+4*n` -/
def P3434978247879640605.Spec : Prop :=
  ∀ n, P3434978247879640605.a n = A314776 n

theorem P3434978247879640605.correct : P3434978247879640605.Spec := by
  intro n
  simp only [A314776]

end A314776

/-! ## A314776.P13335077679870814471

`A022998(A004525(n))+A008574(n)`
-/

namespace A314776.P13335077679870814471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A004525 n).toNat + A008574 n

end

end A314776.P13335077679870814471

namespace A314776

/-- `A022998(A004525(n))+A008574(n)` -/
def P13335077679870814471.Spec : Prop :=
  ∀ n, P13335077679870814471.a n = A314776 n

end A314776

/-! ## A314776.P6739760267042782015

`A008574(n)+A004396(A028390(n))`
-/

namespace A314776.P6739760267042782015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A028390 n).toNat

end

end A314776.P6739760267042782015

namespace A314776

/-- `A008574(n)+A004396(A028390(n))` -/
def P6739760267042782015.Spec : Prop :=
  ∀ n, P6739760267042782015.a n = A314776 n

end A314776

/-! ## A314776.P17520065629985285830

`A022998(A004525(n))+A008706(n)-n`
-/

namespace A314776.P17520065629985285830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A004525 n).toNat + (A008706 n - (n : ℤ))

end

end A314776.P17520065629985285830

namespace A314776

/-- `A022998(A004525(n))+A008706(n)-n` -/
def P17520065629985285830.Spec : Prop :=
  ∀ n, P17520065629985285830.a n = A314776 n

end A314776

/-! ## A314776.P6155683109250629562

`A315505(n)-n`
-/

namespace A314776.P6155683109250629562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315505 n - (n : ℤ)

end

end A314776.P6155683109250629562

namespace A314776

/-- `A315505(n)-n` -/
def P6155683109250629562.Spec : Prop :=
  ∀ n, P6155683109250629562.a n = A314776 n

theorem P6155683109250629562.correct : P6155683109250629562.Spec := by
  intro n
  simp only [A314776, Nat.add_sub_cancel, A314776.P6155683109250629562.a, A314776.P3434978247879640605.a, A004525, A004525.P4158271949796742323.a, A257088, A257088.P18062701801236014187.a, A315505, A315505.P9032332142105930141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314776

/-! ## A314776.P17832845548318669763

`A004525(A315237(n))+2*n`
-/

namespace A314776.P17832845548318669763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315237 n).toNat + (2 * n : ℤ)

end

end A314776.P17832845548318669763

namespace A314776

/-- `A004525(A315237(n))+2*n` -/
def P17832845548318669763.Spec : Prop :=
  ∀ n, P17832845548318669763.a n = A314776 n

end A314776

/-! ## A314776.P6096596816817516559

`A004526(A315237(n))+A004277(n)`
-/

namespace A314776.P6096596816817516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315237 n).toNat + A004277 n

end

end A314776.P6096596816817516559

namespace A314776

/-- `A004526(A315237(n))+A004277(n)` -/
def P6096596816817516559.Spec : Prop :=
  ∀ n, P6096596816817516559.a n = A314776 n

end A314776

/-! ## A314776.P4529740742276942527

`A005843(n)+A004525(A315237(n))`
-/

namespace A314776.P4529740742276942527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315237 n).toNat

end

end A314776.P4529740742276942527

namespace A314776

/-- `A005843(n)+A004525(A315237(n))` -/
def P4529740742276942527.Spec : Prop :=
  ∀ n, P4529740742276942527.a n = A314776 n

end A314776

/-! ## A314776.P8906142468284897730

`A004396(A008458(n))+A004396(A028390(n))`
-/

namespace A314776.P8906142468284897730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008458 n).toNat + A004396 (A028390 n).toNat

end

end A314776.P8906142468284897730

namespace A314776

/-- `A004396(A008458(n))+A004396(A028390(n))` -/
def P8906142468284897730.Spec : Prop :=
  ∀ n, P8906142468284897730.a n = A314776 n

end A314776

/-! ## A314776.P4802056413479442011

`A004396(A028390(n)+A008458(n))`
-/

namespace A314776.P4802056413479442011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A028390 n + A008458 n).toNat

end

end A314776.P4802056413479442011

namespace A314776

/-- `A004396(A028390(n)+A008458(n))` -/
def P4802056413479442011.Spec : Prop :=
  ∀ n, P4802056413479442011.a n = A314776 n

end A314776

/-! ## A314776.P7421260767051106453

`A004396(A008706(n)+A028390(n)+n)`
-/

namespace A314776.P7421260767051106453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008706 n + (A028390 n + (n : ℤ))).toNat

end

end A314776.P7421260767051106453

namespace A314776

/-- `A004396(A008706(n)+A028390(n)+n)` -/
def P7421260767051106453.Spec : Prop :=
  ∀ n, P7421260767051106453.a n = A314776 n

end A314776

/-! ## A314776.P13334435279325721536

`A065033(A315237(n)+4*n)`
-/

namespace A314776.P13334435279325721536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315237 n + (4 * n : ℤ)).toNat

end

end A314776.P13334435279325721536

namespace A314776

/-- `A065033(A315237(n)+4*n)` -/
def P13334435279325721536.Spec : Prop :=
  ∀ n, P13334435279325721536.a n = A314776 n

end A314776

/-! ## A314776.P4877763674895419124

`A001281(A315237(n)+A008458(n))-n`
-/

namespace A314776.P4877763674895419124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315237 n + A008458 n).toNat - (n : ℤ)

end

end A314776.P4877763674895419124

namespace A314776

/-- `A001281(A315237(n)+A008458(n))-n` -/
def P4877763674895419124.Spec : Prop :=
  ∀ n, P4877763674895419124.a n = A314776 n

end A314776

/-!
# A314777: Coordination sequence Gal.6.368.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314777, there is no canonical definition to state claims against.
-/

/-! ## A314777.P16015616074330459663

`A301722(n)-A001222(A155069(n))`
-/

namespace A314777.P16015616074330459663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A001222 (A155069 n).toNat

end

end A314777.P16015616074330459663

/-! ## A314777.P7305099155851031758

`A346700(A001790(n))+A016813(n)`
-/

namespace A314777.P7305099155851031758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A001790 n).toNat + A016813 n

end

end A314777.P7305099155851031758

/-! ## A314777.P4451455024574015774

`A106744(A314152(n)+A010052(n))`
-/

namespace A314777.P4451455024574015774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314152 n + A010052 n).toNat

end

end A314777.P4451455024574015774

/-! ## A314777.P4493996683764418773

`A314943(n)+A131852(A149333(n))`
-/

namespace A314777.P4493996683764418773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n + A131852 (A149333 n).toNat

end

end A314777.P4493996683764418773

/-! ## A314777.P16387507032571449829

`A315208(n)-A382972(A201646(n+1))`
-/

namespace A314777.P16387507032571449829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315208 n - A382972 (A201646 (n + 1)).toNat

end

end A314777.P16387507032571449829

/-!
# A314778: Coordination sequence Gal.5.252.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314778, there is no canonical definition to state claims against.
-/

/-! ## A314778.P3455732015401941838

`∑[A013632(A255286(n))]`
-/

namespace A314778.P3455732015401941838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A255286 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314778.P3455732015401941838

/-! ## A314778.P7086698047789312503

`∑[A294336(A354178(n+1))]`
-/

namespace A314778.P7086698047789312503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (A354178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314778.P7086698047789312503

/-! ## A314778.P14816102151974554372

`∑[A294336(A354179(n+1)²)]`
-/

namespace A314778.P14816102151974554372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (A354179 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314778.P14816102151974554372

/-! ## A314778.P9284821150001162279

`3*A023416(A271216(n))+n+1`
-/

namespace A314778.P9284821150001162279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023416 (A271216 n).toNat + (n + 1 : ℤ)

end

end A314778.P9284821150001162279

/-! ## A314778.P15031217313235778852

`A314764(n)+A010894(A314779(n))`
-/

namespace A314778.P15031217313235778852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314764 n + A010894 ((A314779 n).toNat + 21)

end

end A314778.P15031217313235778852

/-!
# A314779: Coordination sequence Gal.6.384.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314779, there is no canonical definition to state claims against.
-/

/-! ## A314779.P6199751861228302863

`A312979(n)+A118175(A001008(n+1))`
-/

namespace A314779.P6199751861228302863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n + A118175 (A001008 (n + 1)).toNat

end

end A314779.P6199751861228302863

/-! ## A314779.P159520698537666624

`A311536(n)+A001221(A083588(n))`
-/

namespace A314779.P159520698537666624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A001221 (A083588 n).toNat

end

end A314779.P159520698537666624

/-! ## A314779.P8268089065631535692

`A314643(n)+A127323(A008937(n))`
-/

namespace A314779.P8268089065631535692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314643 n + A127323 (A008937 n).toNat

end

end A314779.P8268089065631535692

/-! ## A314779.P4315960153390536995

`A313624(n)-A103582(A318748(n))`
-/

namespace A314779.P4315960153390536995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313624 n - A103582 (A318748 n).toNat

end

end A314779.P4315960153390536995

/-!
# A314780: Coordination sequence Gal.5.263.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314780, there is no canonical definition to state claims against.
-/

/-! ## A314780.P9903557543692669425

`eq[A000925(n), A062756(A222963(n+2))]`
-/

namespace A314780.P9903557543692669425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A222963 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314780.P9903557543692669425

/-!
# A314781: Coordination sequence Gal.5.216.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314781, there is no canonical definition to state claims against.
-/

/-! ## A314781.P15998014193370071012

`A160755(or(A212957(n+1), A310420(n)))`
-/

namespace A314781.P15998014193370071012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A212957 (n + 1)) (A310420 n)).toNat

end

end A314781.P15998014193370071012

/-! ## A314781.P8500191049734864890

`A112318(A140489(n+1)+A008587(n))`
-/

namespace A314781.P8500191049734864890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A140489 (n + 1) + A008587 n).toNat

end

end A314781.P8500191049734864890

/-!
# A314782: Coordination sequence Gal.6.586.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314782, there is no canonical definition to state claims against.
-/

/-! ## A314782.P15694769491813819550

`A313646(n)-A180160(A201447(n+1))`
-/

namespace A314782.P15694769491813819550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A180160 (A201447 (n + 1)).toNat

end

end A314782.P15694769491813819550

/-! ## A314782.P1601348208021410383

`A225630(A061563(n))+A045750(n)`
-/

namespace A314782.P1601348208021410383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 (A061563 n).toNat + A045750 n

end

end A314782.P1601348208021410383

/-! ## A314782.P1079335215627324510

`xor(A234585(A000110(n)), A250120(n))`
-/

namespace A314782.P1079335215627324510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A234585 (A000110 n).toNat) (A250120 n)

end

end A314782.P1079335215627324510

/-! ## A314782.P10631900819460020727

`A057354(n)+A314762(n)-A102683(A160747(n))`
-/

namespace A314782.P10631900819460020727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (A314762 n - A102683 (A160747 n).toNat)

end

end A314782.P10631900819460020727

/-! ## A314782.P9179545360380094906

`A016340(A081848(n+1))+A314758(n)+A057354(n)`
-/

namespace A314782.P9179545360380094906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (A081848 (n + 1)).toNat + (A314758 n + A057354 n)

end

end A314782.P9179545360380094906

/-!
# A314784: Coordination sequence Gal.6.365.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314784, there is no canonical definition to state claims against.
-/

/-! ## A314784.P1331753537303031227

`A314775(n)+A275855(A000110(n))`
-/

namespace A314784.P1331753537303031227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A275855 (A000110 n).toNat

end

end A314784.P1331753537303031227

/-! ## A314784.P8377946021638097669

`A314775(n)+A010894(A314779(n))`
-/

namespace A314784.P8377946021638097669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A010894 ((A314779 n).toNat + 21)

end

end A314784.P8377946021638097669

/-! ## A314784.P7503556359322471791

`A314775(n)+A010894(A314781(n))`
-/

namespace A314784.P7503556359322471791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A010894 ((A314781 n).toNat + 21)

end

end A314784.P7503556359322471791

/-! ## A314784.P7856499669567956807

`A314775(n)+A010894(A314782(n))`
-/

namespace A314784.P7856499669567956807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A010894 ((A314782 n).toNat + 21)

end

end A314784.P7856499669567956807

/-! ## A314784.P5423434450900298234

`A314775(n)+A010894(A314960(n))`
-/

namespace A314784.P5423434450900298234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A010894 ((A314960 n).toNat + 21)

end

end A314784.P5423434450900298234

/-!
# A314785: Coordination sequence Gal.6.572.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314785, there is no canonical definition to state claims against.
-/

/-! ## A314785.P7479321185131037363

`A314980(n)-A059841(A088218(n))`
-/

namespace A314785.P7479321185131037363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314980 n - A059841 (A088218 n).toNat

end

end A314785.P7479321185131037363

/-! ## A314785.P5451537128272242625

`A314599(n)+A004200(A000183(n+1))`
-/

namespace A314785.P5451537128272242625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314599 n + A004200 (A000183 (n + 1)).toNat

end

end A314785.P5451537128272242625

/-!
# A314786: Coordination sequence Gal.6.565.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314786, there is no canonical definition to state claims against.
-/

/-! ## A314786.P2500103172594672544

`∑[A046951(record[A028977(n)])]`
-/

namespace A314786.P2500103172594672544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314786.P2500103172594672544

/-! ## A314786.P13015663607567577701

`eq[and(1, n), A164999(A091869(n+1))]`
-/

namespace A314786.P13015663607567577701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (A091869 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A314786.P13015663607567577701

/-! ## A314786.P4617899006430699257

`or(A314646(n), A355242(A027423(n+1)))`
-/

namespace A314786.P4617899006430699257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314646 n) (A355242 (A027423 (n + 1)).toNat)

end

end A314786.P4617899006430699257

/-! ## A314786.P11402655417375671583

`or(A314646(n), A355242(A163714(n+1)))`
-/

namespace A314786.P11402655417375671583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314646 n) (A355242 (A163714 (n + 1)).toNat)

end

end A314786.P11402655417375671583

/-! ## A314786.P6457871054478573213

`or(A010055(A000244(n)), A111199(2*n+1))`
-/

namespace A314786.P6457871054478573213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010055 (A000244 n).toNat) (A111199 (2 * n + 1))

end

end A314786.P6457871054478573213

/-!
# A314787: Coordination sequence Gal.6.267.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314787, there is no canonical definition to state claims against.
-/

/-! ## A314787.P13053269178024466300

`A356220(n+1)-A001222(A026134(n+3))`
-/

namespace A314787.P13053269178024466300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356220 (n + 1) - A001222 (A026134 (n + 3)).toNat

end

end A314787.P13053269178024466300

/-! ## A314787.P17047923075485763398

`or(A050361(n+1), A224401(A233819(3*n+1)))`
-/

namespace A314787.P17047923075485763398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050361 (n + 1)) (A224401 (A233819 (3 * n + 1)).toNat)

end

end A314787.P17047923075485763398

/-! ## A314787.P835655097963485312

`or(A224401(A233819(3*n+1)), A318749(n+1))`
-/

namespace A314787.P835655097963485312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224401 (A233819 (3 * n + 1)).toNat) (A318749 (n + 1))

end

end A314787.P835655097963485312

/-! ## A314787.P12312749573514198989

`A047263(A001222(n+2))+A068509(A273500(n))+n`
-/

namespace A314787.P12312749573514198989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A001222 (n + 2)).toNat + (A068509 (A273500 n).toNat + (n : ℤ))

end

end A314787.P12312749573514198989

/-!
# A314789: Coordination sequence Gal.3.42.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314789, there is no canonical definition to state claims against.
-/

/-! ## A314789.P9253061818598301984

`A314764(n)+A314775(n)-A314714(n)`
-/

namespace A314789.P9253061818598301984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314764 n + (A314775 n - A314714 n)

end

end A314789.P9253061818598301984

/-! ## A314789.P13570440655711040768

`A313786(n)-(A313321(n)-A250122(2*n))`
-/

namespace A314789.P13570440655711040768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - (A313321 n - A250122 (2 * n))

end

end A314789.P13570440655711040768

/-! ## A314789.P1072842121632114346

`A314778(n)+A038189(A000110(n))`
-/

namespace A314789.P1072842121632114346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314778 n + A038189 (A000110 n).toNat

end

end A314789.P1072842121632114346

/-! ## A314789.P5154251934978116599

`or(A135528(A109245(n)), A314778(n))`
-/

namespace A314789.P5154251934978116599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135528 (A109245 n).toNat) (A314778 n)

end

end A314789.P5154251934978116599

/-! ## A314789.P9032042043812099436

`A314778(n)+A135528(A109245(n)+2)`
-/

namespace A314789.P9032042043812099436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314778 n + A135528 (A109245 n + 2).toNat

end

end A314789.P9032042043812099436

/-!
# A314790: Coordination sequence Gal.6.473.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314790, there is no canonical definition to state claims against.
-/

/-! ## A314790.P14442000761104559786

`A301724(n)-A252736(A001550(n))`
-/

namespace A314790.P14442000761104559786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301724 n - A252736 (A001550 n).toNat

end

end A314790.P14442000761104559786

/-! ## A314790.P4360745018841907748

`xor(A001222(A101562(n)), A311662(n))`
-/

namespace A314790.P4360745018841907748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A101562 n).toNat) (A311662 n)

end

end A314790.P4360745018841907748

/-! ## A314790.P6160826904643878970

`A001792(n+1)%∑[A001222(n!+4)]+3*n+n+1-A079294(n)`
-/

namespace A314790.P6160826904643878970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001792 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) + (3 * n + (n + 1) : ℤ) - A079294 n

end

end A314790.P6160826904643878970

/-!
# A314791: Coordination sequence Gal.6.314.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314791, there is no canonical definition to state claims against.
-/

/-! ## A314791.P15541891328986049681

`A314461(n)+A014707(A065960(n+1))`
-/

namespace A314791.P15541891328986049681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314461 n + A014707 (A065960 (n + 1)).toNat

end

end A314791.P15541891328986049681

/-! ## A314791.P15375466719096831234

`or(A189163(A279397(n+1)), A314461(n))`
-/

namespace A314791.P15375466719096831234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189163 (A279397 (n + 1)).toNat) (A314461 n)

end

end A314791.P15375466719096831234

/-!
# A314792: Coordination sequence Gal.5.128.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314792, there is no canonical definition to state claims against.
-/

/-! ## A314792.P2078767340452701905

`A001792(n+1)%∑[A001222(n!+4)]+3*n+n+1`
-/

namespace A314792.P2078767340452701905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001792 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j) + (3 * n + (n + 1) : ℤ)

end

end A314792.P2078767340452701905

/-! ## A314792.P14327363247139759199

`A313878(n)-A329647(record[A278822(n)])`
-/

namespace A314792.P14327363247139759199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313878 n - A329647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A314792.P14327363247139759199

/-! ## A314792.P5495151433419765931

`A156243(n+1)+A056239(A001790(n))`
-/

namespace A314792.P5495151433419765931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + A056239 (A001790 n).toNat

end

end A314792.P5495151433419765931

/-! ## A314792.P2113510199756827661

`A259934(n)+A161916(A307634(3*(n+1)))`
-/

namespace A314792.P2113510199756827661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n + A161916 (A307634 (3 * (n + 1))).toNat

end

end A314792.P2113510199756827661

/-! ## A314792.P11394009023005334885

`A094077(A000040(2*(n+1)))-A107110(3*n+4)`
-/

namespace A314792.P11394009023005334885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094077 (A000040 (2 * (n + 1))).toNat - A107110 (3 * n + 4)

end

end A314792.P11394009023005334885

/-!
# A314794: Coordination sequence Gal.6.502.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314794, there is no canonical definition to state claims against.
-/

/-! ## A314794.P9011274250849637496

`or(A268341(A090036(n)), A301684(n))`
-/

namespace A314794.P9011274250849637496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268341 (A090036 n).toNat) (A301684 n)

end

end A314794.P9011274250849637496

/-!
# A314799: Coordination sequence Gal.5.288.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314799, there is no canonical definition to state claims against.
-/

/-! ## A314799.P9098177415653564911

`or(A004736(A176566(3*n)), A312232(n))`
-/

namespace A314799.P9098177415653564911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (A176566 (3 * n)).toNat) (A312232 n)

end

end A314799.P9098177415653564911

